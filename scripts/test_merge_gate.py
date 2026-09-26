#!/usr/bin/env python3
"""Regression tests for branch reconciliation and merge automation wiring."""

from __future__ import annotations

import importlib.util
import json
import pathlib
import unittest
from unittest import mock


ROOT = pathlib.Path(__file__).resolve().parents[1]
SPEC = importlib.util.spec_from_file_location("merge_gate", ROOT / "scripts" / "merge_gate.py")
if SPEC is None or SPEC.loader is None:
    raise RuntimeError("cannot load scripts/merge_gate.py")
merge_gate = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(merge_gate)


def pull_request(**overrides: object) -> dict:
    pull = {
        "number": 17,
        "node_id": "PR_node_17",
        "state": "open",
        "draft": False,
        "base": {"ref": "main"},
        "head": {
            "sha": "1" * 40,
            "repo": {"full_name": "SII-MATH/KIP126"},
        },
        "labels": [],
        "auto_merge": None,
        "mergeable": True,
        "mergeable_state": "behind",
    }
    pull.update(overrides)
    return pull


class GhJsonTests(unittest.TestCase):
    def test_read_retries_transient_server_error(self) -> None:
        failed = mock.Mock(returncode=1, stderr="gh: HTTP 504", stdout="")
        succeeded = mock.Mock(returncode=0, stderr="", stdout='{"ok": true}')
        with (
            mock.patch.object(merge_gate.subprocess, "run", side_effect=[failed, succeeded]) as run,
            mock.patch.object(merge_gate.time, "sleep") as sleep,
        ):
            result = merge_gate.gh_json(["api", "repos/SII-MATH/KIP126"], retry_transient=True)
        self.assertEqual(result, {"ok": True})
        self.assertEqual(run.call_count, 2)
        sleep.assert_called_once_with(1.0)

    def test_write_does_not_blindly_retry_transient_server_error(self) -> None:
        failed = mock.Mock(returncode=1, stderr="gh: HTTP 502", stdout="")
        with mock.patch.object(merge_gate.subprocess, "run", return_value=failed) as run:
            with self.assertRaises(merge_gate.GitHubCommandError) as raised:
                merge_gate.gh_json(["api", "--method", "POST", "repos/SII-MATH/KIP126/labels"])
        self.assertTrue(raised.exception.transient)
        run.assert_called_once()

    def test_projection_read_retries_transient_server_error(self) -> None:
        expected = {"head_sha": "1" * 40}
        operation = mock.Mock(side_effect=[RuntimeError("gh: HTTP 504"), expected])
        with mock.patch.object(merge_gate.time, "sleep") as sleep:
            result = merge_gate.retry_transient_read(operation)
        self.assertEqual(result, expected)
        self.assertEqual(operation.call_count, 2)
        sleep.assert_called_once_with(1.0)


class EvaluateTests(unittest.TestCase):
    def evaluate(self, pull: dict, decision: dict, queued: set[int] | None = None) -> tuple[str, bool]:
        with (
            mock.patch.object(merge_gate, "pull_request_identity", return_value=pull),
            mock.patch.object(merge_gate.status_cli, "fetch_facts", return_value={}),
            mock.patch.object(merge_gate.projection, "reduce_facts", return_value=decision),
        ):
            return merge_gate.evaluate("SII-MATH/KIP126", pull["number"], queued, False)

    def test_ready_pull_request_enables_native_auto_merge(self) -> None:
        with mock.patch.object(merge_gate, "enqueue", return_value="#17: native auto-merge enabled") as enqueue:
            message, changed = self.evaluate(
                pull_request(mergeable_state="clean"),
                {"target_label": "ready-to-merge", "reason": "fresh-exact-head-scoreboard-green"},
            )
        self.assertTrue(changed)
        self.assertEqual(message, "#17: native auto-merge enabled")
        enqueue.assert_called_once()

    def test_existing_auto_merge_does_not_hide_behind_reconciliation(self) -> None:
        pull = pull_request(auto_merge={"merge_method": "merge"})
        decision = {"target_label": "awaiting-review", "reason": "mergeability-ambiguous:behind"}
        with mock.patch.object(
            merge_gate,
            "update_behind_branch",
            return_value="#17: updated behind branch with MERGE old -> new",
        ) as update:
            message, changed = self.evaluate(pull, decision)
        self.assertTrue(changed)
        self.assertIn("updated behind branch", message)
        update.assert_called_once_with("SII-MATH/KIP126", pull, False)

    def test_behind_pull_request_uses_queue_when_one_exists(self) -> None:
        decision = {"target_label": "awaiting-review", "reason": "mergeability-ambiguous:behind"}
        with (
            mock.patch.object(merge_gate, "enqueue", return_value="#17: enqueued (QUEUED)") as enqueue,
            mock.patch.object(merge_gate, "update_behind_branch") as update,
        ):
            message, changed = self.evaluate(pull_request(), decision, queued=set())
        self.assertTrue(changed)
        self.assertEqual(message, "#17: enqueued (QUEUED)")
        enqueue.assert_called_once()
        update.assert_not_called()

    def test_hold_label_skips_before_reading_expensive_evidence(self) -> None:
        pull = pull_request(labels=[{"name": "hold"}])
        with (
            mock.patch.object(merge_gate, "pull_request_identity", return_value=pull),
            mock.patch.object(merge_gate.status_cli, "fetch_facts") as fetch,
        ):
            message, changed = merge_gate.evaluate("SII-MATH/KIP126", 17, None, False)
        self.assertFalse(changed)
        self.assertEqual(message, "#17: skip hold label")
        fetch.assert_not_called()


class EnqueueTests(unittest.TestCase):
    def test_native_auto_merge_uses_squash_independently_of_branch_update(self) -> None:
        result = {
            "data": {
                "enablePullRequestAutoMerge": {
                    "pullRequest": {
                        "number": 17,
                        "autoMergeRequest": {"mergeMethod": "SQUASH"},
                    }
                }
            }
        }
        with (
            mock.patch.object(merge_gate, "pull_request_identity", return_value=pull_request()),
            mock.patch.object(merge_gate, "gh_json", return_value=result) as gh_json,
        ):
            message = merge_gate.enqueue("SII-MATH/KIP126", pull_request(), False, False)
        self.assertEqual(message, "#17: native auto-merge enabled (SQUASH)")
        args = gh_json.call_args.args[0]
        self.assertIn("method=SQUASH", args)
        self.assertEqual(merge_gate.BRANCH_UPDATE_METHOD, "MERGE")

    def test_transient_auto_merge_error_is_reconciled_from_live_state(self) -> None:
        error = merge_gate.GitHubCommandError("gh: HTTP 504", transient=True)
        with (
            mock.patch.object(merge_gate, "pull_request_identity", return_value=pull_request()),
            mock.patch.object(merge_gate, "gh_json", side_effect=error),
            mock.patch.object(merge_gate, "wait_for_auto_merge", return_value=True) as wait,
        ):
            message = merge_gate.enqueue("SII-MATH/KIP126", pull_request(), False, False)
        self.assertIn("confirmed after transient GitHub error", message)
        wait.assert_called_once_with("SII-MATH/KIP126", 17)

    def test_native_auto_merge_stops_if_head_changed_before_mutation(self) -> None:
        changed = pull_request(head={
            "sha": "2" * 40,
            "repo": {"full_name": "SII-MATH/KIP126"},
        })
        with (
            mock.patch.object(merge_gate, "pull_request_identity", return_value=changed),
            mock.patch.object(merge_gate, "gh_json") as gh_json,
        ):
            with self.assertRaisesRegex(RuntimeError, "head changed before auto-merge"):
                merge_gate.enqueue("SII-MATH/KIP126", pull_request(), False, False)
        gh_json.assert_not_called()

    def test_transient_queue_error_is_reconciled_from_live_state(self) -> None:
        error = merge_gate.GitHubCommandError("gh: HTTP 503", transient=True)
        with (
            mock.patch.object(merge_gate, "gh_json", side_effect=error),
            mock.patch.object(merge_gate, "wait_for_queue_entry", return_value=True) as wait,
        ):
            message = merge_gate.enqueue("SII-MATH/KIP126", pull_request(), False, True)
        self.assertIn("confirmed after transient GitHub error", message)
        wait.assert_called_once_with("SII-MATH/KIP126", 17)


class BranchUpdateTests(unittest.TestCase):
    def test_blueprint_only_surface_uses_only_blueprint_recheck(self) -> None:
        files = [[{"filename": "blueprint/src/content.tex"}]]
        with mock.patch.object(merge_gate, "gh_json", return_value=files):
            self.assertEqual(
                merge_gate.recheck_workflows("SII-MATH/KIP126", 17),
                ("blueprint-pr.yml",),
            )

    def test_mixed_surface_stays_on_the_lean_scope_gate(self) -> None:
        files = [[
            {"filename": "blueprint/src/content.tex"},
            {"filename": "KIP126/Core.lean"},
        ]]
        with mock.patch.object(merge_gate, "gh_json", return_value=files):
            self.assertEqual(
                merge_gate.recheck_workflows("SII-MATH/KIP126", 17),
                merge_gate.RECHECK_WORKFLOWS,
            )

    def test_same_repository_branch_updates_and_dispatches_exact_head_checks(self) -> None:
        new_head = "2" * 40
        update_result = {
            "data": {
                "updatePullRequestBranch": {
                    "pullRequest": {"number": 17, "headRefOid": new_head}
                }
            }
        }
        files = [[{"filename": "KIP126/Core.lean"}]]
        with mock.patch.object(
            merge_gate, "gh_json", side_effect=[update_result, files, None, None]
        ) as gh_json:
            message = merge_gate.update_behind_branch("SII-MATH/KIP126", pull_request(), False)
        self.assertIn("111111111111 -> 222222222222", message)
        self.assertIn("pr-build.yml, pr-profile.yml", message)
        self.assertEqual(gh_json.call_count, 4)
        dispatched = [call.args[0][3] for call in gh_json.call_args_list[2:]]
        self.assertEqual(
            dispatched,
            [
                "repos/SII-MATH/KIP126/actions/workflows/pr-build.yml/dispatches",
                "repos/SII-MATH/KIP126/actions/workflows/pr-profile.yml/dispatches",
            ],
        )
        self.assertIn("inputs[refresh_review]=true", gh_json.call_args_list[2].args[0])
        self.assertNotIn("inputs[refresh_review]=true", gh_json.call_args_list[3].args[0])

    def test_stale_mutation_head_waits_for_rest_consistency(self) -> None:
        new_head = "2" * 40
        update_result = {
            "data": {
                "updatePullRequestBranch": {
                    "pullRequest": {"number": 17, "headRefOid": "1" * 40}
                }
            }
        }
        files = [[{"filename": "KIP126/Core.lean"}]]
        with (
            mock.patch.object(
                merge_gate, "gh_json", side_effect=[update_result, files, None, None]
            ),
            mock.patch.object(
                merge_gate, "wait_for_updated_head", return_value=new_head
            ) as wait,
        ):
            message = merge_gate.update_behind_branch("SII-MATH/KIP126", pull_request(), False)
        wait.assert_called_once_with("SII-MATH/KIP126", 17, "1" * 40)
        self.assertIn("111111111111 -> 222222222222", message)

    def test_transient_branch_update_error_reconciles_before_dispatch(self) -> None:
        new_head = "2" * 40
        error = merge_gate.GitHubCommandError("gh: HTTP 504", transient=True)
        files = [[{"filename": "KIP126/Core.lean"}]]
        with (
            mock.patch.object(merge_gate, "gh_json", side_effect=[error, files, None, None]),
            mock.patch.object(
                merge_gate, "wait_for_updated_head", return_value=new_head
            ) as wait,
        ):
            message = merge_gate.update_behind_branch("SII-MATH/KIP126", pull_request(), False)
        wait.assert_called_once_with("SII-MATH/KIP126", 17, "1" * 40)
        self.assertIn("111111111111 -> 222222222222", message)

    def test_updated_head_poll_observes_eventual_consistency(self) -> None:
        old = pull_request()
        new = pull_request()
        new["head"]["sha"] = "2" * 40
        with (
            mock.patch.object(merge_gate, "pull_request_identity", side_effect=[old, new]),
            mock.patch.object(merge_gate.time, "sleep") as sleep,
        ):
            observed = merge_gate.wait_for_updated_head("SII-MATH/KIP126", 17, "1" * 40)
        self.assertEqual(observed, "2" * 40)
        sleep.assert_called_once_with(1.0)

    def test_dry_run_has_no_side_effects(self) -> None:
        with mock.patch.object(merge_gate, "gh_json") as gh_json:
            message = merge_gate.update_behind_branch("SII-MATH/KIP126", pull_request(), True)
        self.assertIn("would update behind branch", message)
        gh_json.assert_not_called()

    def test_fork_is_never_rewritten(self) -> None:
        pull = pull_request()
        pull["head"]["repo"]["full_name"] = "contributor/KIP126"
        with mock.patch.object(merge_gate, "gh_json") as gh_json:
            message = merge_gate.update_behind_branch("SII-MATH/KIP126", pull, False)
        self.assertEqual(message, "#17: skip behind fork — author must update the branch")
        gh_json.assert_not_called()

    def test_graphql_failure_is_fail_closed(self) -> None:
        with mock.patch.object(merge_gate, "gh_json", return_value={"errors": [{"message": "stale head"}]}):
            with self.assertRaisesRegex(RuntimeError, "branch update failed"):
                merge_gate.update_behind_branch("SII-MATH/KIP126", pull_request(), False)


class MergeTrainTests(unittest.TestCase):
    READY = {"target_label": "ready-to-merge", "reason": "fresh-exact-head-scoreboard-green"}
    BEHIND = {"target_label": "awaiting-review", "reason": "mergeability-ambiguous:behind"}

    def reconcile(
        self,
        pulls: list[dict],
        decisions: dict[int, dict],
        requested: int | None = None,
        dry_run: bool = False,
    ) -> tuple[list[str], mock.Mock, mock.Mock]:
        by_number = {pull["number"]: pull for pull in pulls}

        def decide(_repository: str, pull: dict) -> tuple[dict | None, str | None]:
            return decisions[pull["number"]], None

        label = mock.Mock()
        apply = mock.Mock(
            side_effect=lambda _repo, pull, _decision, _queue, _dry: (
                f"#{pull['number']}: advanced",
                True,
            )
        )
        with (
            mock.patch.object(merge_gate, "pull_request_identity", side_effect=lambda _repo, number: by_number[number]),
            mock.patch.object(merge_gate, "pull_decision", side_effect=decide),
            mock.patch.object(merge_gate, "set_train_label", label),
            mock.patch.object(merge_gate, "apply_decision", apply),
        ):
            messages = merge_gate.reconcile_train(
                "SII-MATH/KIP126",
                [pull["number"] for pull in pulls],
                requested,
                dry_run,
            )
        return messages, label, apply

    def test_clean_candidate_precedes_behind_candidate_and_only_one_advances(self) -> None:
        behind = pull_request(number=10)
        clean = pull_request(number=11, mergeable_state="clean")
        messages, label, apply = self.reconcile(
            [behind, clean],
            {10: self.BEHIND, 11: self.READY},
        )
        label.assert_called_once_with("SII-MATH/KIP126", 11, True, False)
        apply.assert_called_once_with("SII-MATH/KIP126", clean, self.READY, None, False)
        self.assertEqual(messages, ["#11: claimed merge-train head", "#11: advanced"])

    def test_oldest_number_wins_within_the_same_readiness_class(self) -> None:
        newer = pull_request(number=19)
        older = pull_request(number=12)
        _, label, apply = self.reconcile(
            [newer, older],
            {19: self.BEHIND, 12: self.BEHIND},
        )
        label.assert_called_once_with("SII-MATH/KIP126", 12, True, False)
        self.assertEqual(apply.call_args.args[1]["number"], 12)

    def test_behind_fork_is_not_claimed_by_the_fallback_train(self) -> None:
        fork = pull_request(number=12)
        fork["head"]["repo"]["full_name"] = "contributor/KIP126"
        messages, label, apply = self.reconcile([fork], {12: self.BEHIND})
        self.assertEqual(messages, ["merge train idle — no exact-head-green candidate"])
        label.assert_not_called()
        apply.assert_not_called()

    def test_existing_head_blocks_another_requested_pr_without_reading_evidence(self) -> None:
        head = pull_request(number=10, labels=[{"name": merge_gate.TRAIN_LABEL}])
        other = pull_request(number=11)
        with (
            mock.patch.object(
                merge_gate,
                "pull_request_identity",
                side_effect=lambda _repo, number: {10: head, 11: other}[number],
            ),
            mock.patch.object(merge_gate, "pull_decision") as decision,
        ):
            messages = merge_gate.reconcile_train("SII-MATH/KIP126", [10, 11], 11, False)
        self.assertEqual(messages, ["#11: skip — merge train is occupied by #10"])
        decision.assert_not_called()

    def test_multiple_heads_fail_closed(self) -> None:
        first = pull_request(number=10, labels=[{"name": merge_gate.TRAIN_LABEL}])
        second = pull_request(number=11, labels=[{"name": merge_gate.TRAIN_LABEL}])
        with mock.patch.object(
            merge_gate,
            "pull_request_identity",
            side_effect=lambda _repo, number: {10: first, 11: second}[number],
        ):
            with self.assertRaisesRegex(RuntimeError, "multiple merge-train heads: #10, #11"):
                merge_gate.reconcile_train("SII-MATH/KIP126", [10, 11], None, False)

    def test_multiple_unmanaged_auto_merge_requests_fail_closed(self) -> None:
        first = pull_request(number=10, auto_merge={"merge_method": "squash"})
        second = pull_request(number=11, auto_merge={"merge_method": "squash"})
        with mock.patch.object(
            merge_gate,
            "pull_request_identity",
            side_effect=lambda _repo, number: {10: first, 11: second}[number],
        ):
            with self.assertRaisesRegex(RuntimeError, "multiple native auto-merge requests"):
                merge_gate.reconcile_train("SII-MATH/KIP126", [10, 11], None, False)

    def test_pending_head_waits_without_releasing_or_advancing_another_pr(self) -> None:
        head = pull_request(number=10, labels=[{"name": merge_gate.TRAIN_LABEL}])
        waiting = {"target_label": "awaiting-CI", "reason": "mechanical-not-green:build:pending"}
        with (
            mock.patch.object(merge_gate, "pull_decision", return_value=(waiting, None)),
            mock.patch.object(merge_gate, "release_train_head") as release,
            mock.patch.object(merge_gate, "apply_decision") as apply,
        ):
            message = merge_gate.advance_train_head("SII-MATH/KIP126", head, False)
        self.assertIn("merge-train head waiting", message)
        release.assert_not_called()
        apply.assert_not_called()

    def test_missing_mechanical_evidence_retries_exact_head_workflows(self) -> None:
        head = pull_request(number=10, labels=[{"name": merge_gate.TRAIN_LABEL}])
        missing = {"target_label": "awaiting-CI", "reason": "mechanical-not-green:build:missing"}
        with (
            mock.patch.object(merge_gate, "pull_decision", return_value=(missing, None)),
            mock.patch.object(merge_gate, "head_check_states", return_value={}),
            mock.patch.object(merge_gate, "recheck_workflows", return_value=merge_gate.RECHECK_WORKFLOWS),
            mock.patch.object(merge_gate, "dispatch_recheck") as dispatch,
        ):
            message = merge_gate.advance_train_head("SII-MATH/KIP126", head, False)
        self.assertEqual(dispatch.call_count, 2)
        self.assertEqual(
            [call.args[1] for call in dispatch.call_args_list],
            ["pr-build.yml", "pr-profile.yml"],
        )
        self.assertEqual(message, "#10: re-dispatched missing exact-head checks")

    def test_missing_status_waits_while_exact_head_build_is_active(self) -> None:
        head = pull_request(number=10, labels=[{"name": merge_gate.TRAIN_LABEL}])
        missing = {"target_label": "awaiting-CI", "reason": "mechanical-not-green:build:missing"}
        with (
            mock.patch.object(merge_gate, "pull_decision", return_value=(missing, None)),
            mock.patch.object(
                merge_gate,
                "head_check_states",
                return_value={"sandboxed-build": "in_progress", "performance-gate": "completed"},
            ),
            mock.patch.object(merge_gate, "recheck_workflows", return_value=merge_gate.RECHECK_WORKFLOWS),
            mock.patch.object(merge_gate, "dispatch_recheck") as dispatch,
        ):
            message = merge_gate.advance_train_head("SII-MATH/KIP126", head, False)
        dispatch.assert_not_called()
        self.assertEqual(message, "#10: merge-train head waiting — exact-head build is active")

    def test_missing_blueprint_evidence_retries_only_blueprint_workflow(self) -> None:
        head = pull_request(number=10, labels=[{"name": merge_gate.TRAIN_LABEL}])
        missing = {"target_label": "awaiting-CI", "reason": "mechanical-not-green:build:missing"}
        with (
            mock.patch.object(merge_gate, "pull_decision", return_value=(missing, None)),
            mock.patch.object(merge_gate, "head_check_states", return_value={}),
            mock.patch.object(
                merge_gate,
                "recheck_workflows",
                return_value=merge_gate.BLUEPRINT_RECHECK_WORKFLOWS,
            ),
            mock.patch.object(merge_gate, "dispatch_recheck") as dispatch,
        ):
            message = merge_gate.advance_train_head("SII-MATH/KIP126", head, False)
        dispatch.assert_called_once_with("SII-MATH/KIP126", "blueprint-pr.yml", 10)
        self.assertEqual(message, "#10: re-dispatched missing exact-head checks")

    def test_missing_scoreboard_retries_only_the_reviewer(self) -> None:
        head = pull_request(number=10, labels=[{"name": merge_gate.TRAIN_LABEL}])
        missing = {
            "target_label": "awaiting-review",
            "reason": "scoreboard:absent",
        }
        with (
            mock.patch.object(merge_gate, "pull_decision", return_value=(missing, None)),
            mock.patch.object(merge_gate, "dispatch_review") as review,
            mock.patch.object(merge_gate, "dispatch_recheck") as recheck,
        ):
            message = merge_gate.advance_train_head("SII-MATH/KIP126", head, False)
        review.assert_called_once_with("SII-MATH/KIP126", 10)
        recheck.assert_not_called()
        self.assertEqual(message, "#10: re-dispatched missing exact-head TauCeti scoreboard")

    def test_terminal_head_releases_label_and_native_auto_merge(self) -> None:
        head = pull_request(
            number=10,
            labels=[{"name": merge_gate.TRAIN_LABEL}],
            auto_merge={"merge_method": "squash"},
        )
        terminal = {"target_label": "awaiting-author", "reason": "scoreboard:blocked"}
        with (
            mock.patch.object(merge_gate, "pull_decision", return_value=(terminal, None)),
            mock.patch.object(merge_gate, "disable_auto_merge") as disable,
            mock.patch.object(merge_gate, "set_train_label") as label,
        ):
            message = merge_gate.advance_train_head("SII-MATH/KIP126", head, False)
        disable.assert_called_once_with("SII-MATH/KIP126", head, False)
        label.assert_called_once_with("SII-MATH/KIP126", 10, False, False)
        self.assertEqual(message, "#10: released merge-train head — scoreboard:blocked")

    def test_dry_run_never_writes_the_train_label(self) -> None:
        with mock.patch.object(merge_gate, "gh_json") as gh_json:
            merge_gate.set_train_label("SII-MATH/KIP126", 17, True, True)
            merge_gate.set_train_label("SII-MATH/KIP126", 17, False, True)
        gh_json.assert_not_called()

    def test_closed_train_labels_are_cleared_without_touching_plain_issues(self) -> None:
        pages = [[
            {"number": 10, "pull_request": {"url": "https://example.test/pulls/10"}},
            {"number": 11},
        ]]
        with (
            mock.patch.object(merge_gate, "gh_json", return_value=pages),
            mock.patch.object(merge_gate, "set_train_label") as label,
        ):
            messages = merge_gate.cleanup_closed_train_heads("SII-MATH/KIP126", False)
        label.assert_called_once_with("SII-MATH/KIP126", 10, False, False)
        self.assertEqual(messages, ["#10: cleared stale merge-train label"])


class WorkflowContractTests(unittest.TestCase):
    def text(self, relative: str) -> str:
        return (ROOT / relative).read_text(encoding="utf-8")

    def test_sync_callers_can_dispatch_rechecks(self) -> None:
        for workflow in (".github/workflows/auto-merge.yml", ".github/workflows/merge-sweep.yml"):
            self.assertIn("actions: write", self.text(workflow))

    def test_fallback_train_is_global_and_advances_after_main_push(self) -> None:
        auto_merge = self.text(".github/workflows/auto-merge.yml")
        sweep = self.text(".github/workflows/merge-sweep.yml")
        for workflow in (auto_merge, sweep):
            self.assertIn("group: kip126-merge-train", workflow)
            self.assertIn("issues: write", workflow)
        self.assertIn("push:\n    branches: [main]", sweep)

    def test_auto_merge_waits_for_explicit_reviewer_handoff(self) -> None:
        auto_merge = self.text(".github/workflows/auto-merge.yml")
        self.assertIn("workflow_dispatch:", auto_merge)
        self.assertIn("DISPATCH_PR", auto_merge)
        self.assertNotIn("issue_comment:", auto_merge)
        self.assertNotIn("github.event_name == 'issue_comment'", auto_merge)

    def test_dispatched_build_refreshes_review_and_labels(self) -> None:
        build = self.text(".github/workflows/pr-build.yml")
        review = self.text(".github/workflows/review.yml")
        self.assertIn("actions: write", build)
        self.assertIn("inputs.refresh_review", build)
        self.assertIn("review.yml", build)
        self.assertIn("-f retry=true", build)
        self.assertIn("workflow_dispatch:", review)
        self.assertIn("inputs.retry", review)
        self.assertIn("DISPATCH_RETRY", review)
        self.assertIn("RUN_ID", review)
        self.assertIn("actions: write", review)
        self.assertIn("pr-labels.yml", review)

    def test_review_retry_is_exact_and_keeps_mechanical_checks(self) -> None:
        review = self.text(".github/workflows/review.yml")
        self.assertIn("grep -qxE '[[:space:]]*/review-retry[[:space:]]*'", review)
        self.assertIn("admin|write|maintain", review)
        self.assertIn("for CHECK in scope build bump-guard", review)
        for context in ("scope", "build", "bump-guard"):
            self.assertIn(f'evidence("{context}")', review)
        self.assertIn('RETRY_SEED="$RUN_ID"', review)
        self.assertIn("WEBHOOK_IDEMPOTENCY_KEY=\"tauceti-review-retry-$RETRY_KEY\"", review)

    def test_perf_remains_advisory_to_merge_gate(self) -> None:
        config = json.loads(self.text("scripts/pr_status/config.json"))
        self.assertNotIn("perf", config["mechanical_contexts"])
        self.assertIn("unstable", config["ready_mergeable_states"])
        self.assertIn("advisory", self.text(".github/workflows/pr-profile.yml").lower())


if __name__ == "__main__":
    unittest.main()
