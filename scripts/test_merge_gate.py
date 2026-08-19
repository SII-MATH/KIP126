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
            "repo": {"full_name": "surenny/KIP126"},
        },
        "labels": [],
        "auto_merge": None,
        "mergeable": True,
        "mergeable_state": "behind",
    }
    pull.update(overrides)
    return pull


class EvaluateTests(unittest.TestCase):
    def evaluate(self, pull: dict, decision: dict, queued: set[int] | None = None) -> tuple[str, bool]:
        with (
            mock.patch.object(merge_gate, "pull_request_identity", return_value=pull),
            mock.patch.object(merge_gate.projection, "fetch_facts", return_value={}),
            mock.patch.object(merge_gate.projection, "reduce_facts", return_value=decision),
        ):
            return merge_gate.evaluate("surenny/KIP126", pull["number"], queued, False)

    def test_ready_pull_request_enables_native_auto_merge(self) -> None:
        with mock.patch.object(merge_gate, "enqueue", return_value="#17: native auto-merge enabled") as enqueue:
            message, changed = self.evaluate(
                pull_request(mergeable_state="clean"),
                {"target_label": "ready-to-merge", "reason": "fresh-exact-head-evidence-green"},
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
        update.assert_called_once_with("surenny/KIP126", pull, False)

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
            mock.patch.object(merge_gate.projection, "fetch_facts") as fetch,
        ):
            message, changed = merge_gate.evaluate("surenny/KIP126", 17, None, False)
        self.assertFalse(changed)
        self.assertEqual(message, "#17: skip hold label")
        fetch.assert_not_called()


class BranchUpdateTests(unittest.TestCase):
    def test_same_repository_branch_updates_and_dispatches_exact_head_checks(self) -> None:
        new_head = "2" * 40
        update_result = {
            "data": {
                "updatePullRequestBranch": {
                    "pullRequest": {"number": 17, "headRefOid": new_head}
                }
            }
        }
        with mock.patch.object(merge_gate, "gh_json", side_effect=[update_result, None, None]) as gh_json:
            message = merge_gate.update_behind_branch("surenny/KIP126", pull_request(), False)
        self.assertIn("111111111111 -> 222222222222", message)
        self.assertIn("pr-build.yml, pr-profile.yml", message)
        self.assertEqual(gh_json.call_count, 3)
        dispatched = [call.args[0][3] for call in gh_json.call_args_list[1:]]
        self.assertEqual(
            dispatched,
            [
                "repos/surenny/KIP126/actions/workflows/pr-build.yml/dispatches",
                "repos/surenny/KIP126/actions/workflows/pr-profile.yml/dispatches",
            ],
        )
        self.assertIn("inputs[refresh_review]=true", gh_json.call_args_list[1].args[0])
        self.assertNotIn("inputs[refresh_review]=true", gh_json.call_args_list[2].args[0])

    def test_dry_run_has_no_side_effects(self) -> None:
        with mock.patch.object(merge_gate, "gh_json") as gh_json:
            message = merge_gate.update_behind_branch("surenny/KIP126", pull_request(), True)
        self.assertIn("would update behind branch", message)
        gh_json.assert_not_called()

    def test_fork_is_never_rewritten(self) -> None:
        pull = pull_request()
        pull["head"]["repo"]["full_name"] = "contributor/KIP126"
        with mock.patch.object(merge_gate, "gh_json") as gh_json:
            message = merge_gate.update_behind_branch("surenny/KIP126", pull, False)
        self.assertEqual(message, "#17: skip behind fork — author must update the branch")
        gh_json.assert_not_called()

    def test_graphql_failure_is_fail_closed(self) -> None:
        with mock.patch.object(merge_gate, "gh_json", return_value={"errors": [{"message": "stale head"}]}):
            with self.assertRaisesRegex(RuntimeError, "branch update failed"):
                merge_gate.update_behind_branch("surenny/KIP126", pull_request(), False)


class WorkflowContractTests(unittest.TestCase):
    def text(self, relative: str) -> str:
        return (ROOT / relative).read_text(encoding="utf-8")

    def test_sync_callers_can_dispatch_rechecks(self) -> None:
        for workflow in (".github/workflows/auto-merge.yml", ".github/workflows/merge-sweep.yml"):
            self.assertIn("actions: write", self.text(workflow))

    def test_dispatched_build_refreshes_review_and_labels(self) -> None:
        build = self.text(".github/workflows/pr-build.yml")
        review = self.text(".github/workflows/review.yml")
        self.assertIn("actions: write", build)
        self.assertIn("inputs.refresh_review", build)
        self.assertIn("review.yml", build)
        self.assertIn("workflow_dispatch:", review)
        self.assertIn("actions: write", review)
        self.assertIn("pr-labels.yml", review)

    def test_perf_remains_advisory_to_merge_gate(self) -> None:
        config = json.loads(self.text(".github/euler/status-labels.json"))
        self.assertNotIn("perf", config["mechanical_contexts"])
        self.assertIn("unstable", config["ready_mergeable_states"])
        self.assertIn("advisory", self.text(".github/workflows/pr-profile.yml").lower())


if __name__ == "__main__":
    unittest.main()
