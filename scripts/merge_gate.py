#!/usr/bin/env python3
"""Advance KIP126 pull requests through a fail-closed merge train."""

from __future__ import annotations

import argparse
from collections.abc import Callable
import importlib.util
import json
import pathlib
import re
import subprocess
import sys
import time
import urllib.parse


ROOT = pathlib.Path(__file__).resolve().parents[1]
PROJECTION_PATH = ROOT / ".github" / "euler" / "status_projection.py"
CONFIG_PATH = ROOT / ".github" / "euler" / "status-labels.json"
SPEC = importlib.util.spec_from_file_location("status_projection", PROJECTION_PATH)
if SPEC is None or SPEC.loader is None:
    raise RuntimeError(f"cannot load {PROJECTION_PATH}")
projection = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(projection)
CONFIG = projection.validate_config(json.loads(CONFIG_PATH.read_text(encoding="utf-8")))
BRANCH_UPDATE_METHOD = "MERGE"
AUTO_MERGE_METHOD = "SQUASH"
RECHECK_WORKFLOWS = ("pr-build.yml", "pr-profile.yml")
BLUEPRINT_RECHECK_WORKFLOWS = ("blueprint-pr.yml",)
TRAIN_LABEL = "merge-train-head"
TRAIN_LABEL_COLOR = "5319e7"
TRAIN_LABEL_DESCRIPTION = "The only PR currently advancing through KIP126's fallback merge train"
HOLD_LABELS = frozenset({"keep", "hold", "wip", "human", "do-not-close"})
ACTIVE_CHECK_STATES = frozenset({"queued", "in_progress", "waiting", "pending", "requested"})
GH_READ_RETRY_DELAYS = (1.0, 2.0, 4.0)
BRANCH_UPDATE_POLL_DELAYS = (0.0, 1.0, 2.0, 4.0)
TRANSIENT_GH_ERROR = re.compile(r"\bHTTP\s+5\d{2}\b", re.IGNORECASE)


class GitHubCommandError(RuntimeError):
    def __init__(self, message: str, *, transient: bool) -> None:
        super().__init__(message)
        self.transient = transient


def retry_transient_read(operation: Callable[[], object]) -> object:
    for attempt in range(len(GH_READ_RETRY_DELAYS) + 1):
        try:
            return operation()
        except RuntimeError as error:
            if not TRANSIENT_GH_ERROR.search(str(error)) or attempt == len(GH_READ_RETRY_DELAYS):
                raise
            time.sleep(GH_READ_RETRY_DELAYS[attempt])
    raise AssertionError("unreachable")


def gh_json(args: list[str], *, retry_transient: bool = False) -> object:
    delays = GH_READ_RETRY_DELAYS if retry_transient else ()
    for attempt in range(len(delays) + 1):
        completed = subprocess.run(["gh", *args], text=True, capture_output=True)
        if completed.returncode == 0:
            try:
                return json.loads(completed.stdout or "null")
            except json.JSONDecodeError as error:
                raise RuntimeError("gh returned malformed JSON") from error
        message = completed.stderr.strip() or "gh command failed"
        transient = bool(TRANSIENT_GH_ERROR.search(message))
        if transient and attempt < len(delays):
            time.sleep(delays[attempt])
            continue
        raise GitHubCommandError(message, transient=transient)
    raise AssertionError("unreachable")


def pull_request_identity(repository: str, number: int) -> dict:
    pull = gh_json([
        "api", f"repos/{repository}/pulls/{number}",
    ], retry_transient=True)
    if not isinstance(pull, dict):
        raise RuntimeError("unexpected pull request response")
    return pull


def wait_for_auto_merge(repository: str, number: int) -> bool:
    for delay in BRANCH_UPDATE_POLL_DELAYS:
        if delay:
            time.sleep(delay)
        live = pull_request_identity(repository, number)
        auto_merge = live.get("auto_merge") or {}
        method = auto_merge.get("merge_method") if isinstance(auto_merge, dict) else None
        if isinstance(method, str) and method.upper() == AUTO_MERGE_METHOD:
            return True
    return False


def wait_for_queue_entry(repository: str, number: int) -> bool:
    for delay in BRANCH_UPDATE_POLL_DELAYS:
        if delay:
            time.sleep(delay)
        queued = queue_entries(repository)
        if queued is not None and number in queued:
            return True
    return False


def review_surface(repository: str, number: int) -> str:
    pages = gh_json([
        "api", "--paginate", "--slurp",
        f"repos/{repository}/pulls/{number}/files?per_page=100",
    ], retry_transient=True)
    if not isinstance(pages, list):
        raise RuntimeError(f"#{number}: unexpected pull request files response")
    paths = [
        item.get("filename")
        for page in pages
        if isinstance(page, list)
        for item in page
        if isinstance(item, dict) and isinstance(item.get("filename"), str)
    ]
    if not paths:
        raise RuntimeError(f"#{number}: pull request files response is empty")
    blueprint = any(path.startswith("blueprint/src/") for path in paths)
    lean = any(
        path.endswith(".lean") or path in {"lake-manifest.json", "lean-toolchain"}
        for path in paths
    )
    if blueprint and not lean and all(path.startswith("blueprint/src/") for path in paths):
        return "blueprint"
    return "lean"


def recheck_workflows(repository: str, number: int) -> tuple[str, ...]:
    return (BLUEPRINT_RECHECK_WORKFLOWS
            if review_surface(repository, number) == "blueprint" else RECHECK_WORKFLOWS)


def pull_labels(pull: dict) -> set[str]:
    return {
        label.get("name")
        for label in pull.get("labels") or []
        if isinstance(label, dict) and isinstance(label.get("name"), str)
    }


def eligibility_skip(pull: dict) -> str | None:
    number = pull.get("number", "?")
    if pull.get("state") != "open" or pull.get("draft"):
        return f"#{number}: skip closed/draft"
    if pull.get("base", {}).get("ref") != "main":
        return f"#{number}: skip non-main base"
    if pull_labels(pull).intersection(HOLD_LABELS):
        return f"#{number}: skip hold label"
    return None


def pull_decision(repository: str, pull: dict) -> tuple[dict | None, str | None]:
    skip = eligibility_skip(pull)
    if skip:
        return None, skip
    facts = retry_transient_read(
        lambda: projection.fetch_facts(repository, pull["number"], CONFIG)
    )
    return projection.reduce_facts(facts, CONFIG), None


def queue_entries(repository: str) -> set[int] | None:
    query = """
    query($owner: String!, $name: String!) {
      repository(owner: $owner, name: $name) {
        mergeQueue(branch: \"main\") {
          entries(first: 100) {
            nodes { pullRequest { number } }
            pageInfo { hasNextPage }
          }
        }
      }
    }
    """
    owner, name = repository.split("/", 1)
    result = gh_json([
        "api", "graphql", "-f", f"query={query}", "-F", f"owner={owner}", "-F", f"name={name}",
    ], retry_transient=True)
    if not isinstance(result, dict) or result.get("errors"):
        raise RuntimeError(f"cannot read merge queue: {result}")
    repository_data = ((result.get("data") or {}).get("repository") or {})
    queue = repository_data.get("mergeQueue") or {}
    if not queue:
        return None
    entries = queue.get("entries") or {}
    if (entries.get("pageInfo") or {}).get("hasNextPage"):
        raise RuntimeError("merge queue has more than 100 entries; refusing partial state")
    nodes = entries.get("nodes") or []
    return {
        (node.get("pullRequest") or {}).get("number")
        for node in nodes
        if isinstance(node, dict) and isinstance((node.get("pullRequest") or {}).get("number"), int)
    }


def enqueue(repository: str, pull: dict, dry_run: bool, has_queue: bool) -> str:
    number = pull["number"]
    node_id = pull.get("node_id")
    head = (pull.get("head") or {}).get("sha")
    if not node_id or not head:
        raise RuntimeError(f"#{number}: missing pull request node/head")
    if dry_run:
        action = "enqueue" if has_queue else f"enable native auto-merge ({AUTO_MERGE_METHOD})"
        return f"#{number}: would {action} {head[:12]}"
    if not has_queue:
        query = """
        mutation($prId: ID!, $method: PullRequestMergeMethod!) {
          enablePullRequestAutoMerge(input: { pullRequestId: $prId, mergeMethod: $method }) {
            pullRequest { number autoMergeRequest { mergeMethod } }
          }
        }
        """
        try:
            result = gh_json([
                "api", "graphql", "-f", f"query={query}",
                "-F", f"prId={node_id}", "-f", f"method={AUTO_MERGE_METHOD}",
            ])
        except GitHubCommandError as error:
            if not error.transient or not wait_for_auto_merge(repository, number):
                raise
            return (
                f"#{number}: native auto-merge enabled ({AUTO_MERGE_METHOD}); "
                "confirmed after transient GitHub error"
            )
        if not isinstance(result, dict) or result.get("errors"):
            raise RuntimeError(f"#{number}: enabling native auto-merge failed: {result}")
        request = (((result.get("data") or {}).get("enablePullRequestAutoMerge") or {}).get("pullRequest") or {})
        auto_merge = request.get("autoMergeRequest") or {}
        if request.get("number") != number:
            raise RuntimeError(f"#{number}: native auto-merge returned an invalid pull request: {result}")
        if auto_merge and auto_merge.get("mergeMethod") != AUTO_MERGE_METHOD:
            raise RuntimeError(f"#{number}: native auto-merge returned an invalid method: {result}")
        return f"#{number}: native auto-merge enabled ({AUTO_MERGE_METHOD})"
    query = """
    mutation($prId: ID!, $headOid: GitObjectID!) {
      enqueuePullRequest(input: { pullRequestId: $prId, expectedHeadOid: $headOid }) {
        mergeQueueEntry { position state }
      }
    }
    """
    try:
        result = gh_json([
            "api", "graphql", "-f", f"query={query}", "-F", f"prId={node_id}", "-F", f"headOid={head}",
        ])
    except GitHubCommandError as error:
        if not error.transient or not wait_for_queue_entry(repository, number):
            raise
        return f"#{number}: enqueued; confirmed after transient GitHub error"
    if not isinstance(result, dict) or result.get("errors"):
        raise RuntimeError(f"#{number}: enqueue failed: {result}")
    entry = (((result.get("data") or {}).get("enqueuePullRequest") or {}).get("mergeQueueEntry") or {})
    return f"#{number}: enqueued ({entry.get('state', 'unknown')})"


def dispatch_recheck(repository: str, workflow: str, number: int) -> None:
    args = [
        "api", "--method", "POST",
        f"repos/{repository}/actions/workflows/{workflow}/dispatches",
        "-f", "ref=main", "-F", f"inputs[pr]={number}",
    ]
    if workflow == "pr-build.yml":
        args.extend(["-F", "inputs[refresh_review]=true"])
    gh_json(args)


def dispatch_review(repository: str, number: int) -> None:
    gh_json([
        "api", "--method", "POST",
        f"repos/{repository}/actions/workflows/review.yml/dispatches",
        "-f", "ref=main", "-F", f"inputs[pr]={number}",
    ])


def head_check_states(repository: str, pull: dict) -> dict[str, str]:
    number = pull["number"]
    head = (pull.get("head") or {}).get("sha")
    if not isinstance(head, str) or len(head) != 40:
        raise RuntimeError(f"#{number}: missing pull request head")
    result = gh_json([
        "api", f"repos/{repository}/commits/{head}/check-runs?filter=latest&per_page=100",
    ], retry_transient=True)
    if not isinstance(result, dict) or not isinstance(result.get("check_runs"), list):
        raise RuntimeError(f"#{number}: unexpected check-runs response")
    return {
        run["name"]: run["status"]
        for run in result["check_runs"]
        if isinstance(run, dict)
        and isinstance(run.get("name"), str)
        and isinstance(run.get("status"), str)
    }


def wait_for_updated_head(repository: str, number: int, previous_head: str) -> str:
    for delay in BRANCH_UPDATE_POLL_DELAYS:
        if delay:
            time.sleep(delay)
        live = pull_request_identity(repository, number)
        live_head = (live.get("head") or {}).get("sha")
        if isinstance(live_head, str) and len(live_head) == 40 and live_head != previous_head:
            return live_head
    raise RuntimeError(f"#{number}: branch update did not move the head after consistency wait")


def update_behind_branch(repository: str, pull: dict, dry_run: bool) -> str:
    number = pull["number"]
    node_id = pull.get("node_id")
    head = (pull.get("head") or {}).get("sha")
    head_repository = ((pull.get("head") or {}).get("repo") or {}).get("full_name")
    if not node_id or not head:
        raise RuntimeError(f"#{number}: missing pull request node/head")
    if not isinstance(head_repository, str) or head_repository.lower() != repository.lower():
        return f"#{number}: skip behind fork — author must update the branch"
    if pull.get("mergeable") is not True or pull.get("mergeable_state") != "behind":
        return f"#{number}: skip ambiguous behind state"
    workflows = ", ".join(RECHECK_WORKFLOWS)
    if dry_run:
        return (
            f"#{number}: would update behind branch with {BRANCH_UPDATE_METHOD} "
            f"at {head[:12]} and dispatch {workflows}"
        )

    query = """
    mutation($prId: ID!, $headOid: GitObjectID!, $method: PullRequestBranchUpdateMethod!) {
      updatePullRequestBranch(input: {
        pullRequestId: $prId,
        expectedHeadOid: $headOid,
        updateMethod: $method
      }) {
        pullRequest { number headRefOid }
      }
    }
    """
    try:
        result = gh_json([
            "api", "graphql", "-f", f"query={query}",
            "-F", f"prId={node_id}", "-F", f"headOid={head}",
            "-f", f"method={BRANCH_UPDATE_METHOD}",
        ])
    except GitHubCommandError as error:
        if not error.transient:
            raise
        updated_head = wait_for_updated_head(repository, number, head)
    else:
        if not isinstance(result, dict) or result.get("errors"):
            raise RuntimeError(f"#{number}: branch update failed: {result}")
        updated = (((result.get("data") or {}).get("updatePullRequestBranch") or {}).get("pullRequest") or {})
        updated_head = updated.get("headRefOid")
        if updated.get("number") != number or not isinstance(updated_head, str) or len(updated_head) != 40:
            raise RuntimeError(f"#{number}: branch update returned an invalid pull request: {result}")
        if updated_head == head:
            updated_head = wait_for_updated_head(repository, number, head)
    selected_workflows = recheck_workflows(repository, number)
    workflows = ", ".join(selected_workflows)
    for workflow in selected_workflows:
        dispatch_recheck(repository, workflow, number)
    return (
        f"#{number}: updated behind branch with {BRANCH_UPDATE_METHOD} "
        f"{head[:12]} -> {updated_head[:12]}; dispatched {workflows}"
    )


def ensure_train_label(repository: str) -> None:
    pages = gh_json([
        "api", "--paginate", "--slurp", f"repos/{repository}/labels?per_page=100",
    ], retry_transient=True)
    if not isinstance(pages, list):
        raise RuntimeError("unexpected repository label pages")
    names = {
        label.get("name")
        for page in pages
        if isinstance(page, list)
        for label in page
        if isinstance(label, dict)
    }
    if TRAIN_LABEL in names:
        return
    result = gh_json([
        "api", "--method", "POST", f"repos/{repository}/labels",
        "-f", f"name={TRAIN_LABEL}",
        "-f", f"color={TRAIN_LABEL_COLOR}",
        "-f", f"description={TRAIN_LABEL_DESCRIPTION}",
    ])
    if not isinstance(result, dict) or result.get("name") != TRAIN_LABEL:
        raise RuntimeError(f"could not create {TRAIN_LABEL}: {result}")


def set_train_label(repository: str, number: int, present: bool, dry_run: bool) -> None:
    if dry_run:
        return
    if present:
        ensure_train_label(repository)
        result = gh_json([
            "api", "--method", "POST", f"repos/{repository}/issues/{number}/labels",
            "-f", f"labels[]={TRAIN_LABEL}",
        ])
        if not isinstance(result, list) or TRAIN_LABEL not in {
            label.get("name") for label in result if isinstance(label, dict)
        }:
            raise RuntimeError(f"#{number}: could not claim merge train: {result}")
        return
    encoded = urllib.parse.quote(TRAIN_LABEL, safe="")
    gh_json([
        "api", "--method", "DELETE", f"repos/{repository}/issues/{number}/labels/{encoded}",
    ])


def disable_auto_merge(repository: str, pull: dict, dry_run: bool) -> None:
    if dry_run or not pull.get("auto_merge"):
        return
    number = pull["number"]
    node_id = pull.get("node_id")
    if not node_id:
        raise RuntimeError(f"#{number}: missing pull request node")
    query = """
    mutation($prId: ID!) {
      disablePullRequestAutoMerge(input: { pullRequestId: $prId }) {
        pullRequest { number autoMergeRequest { enabledAt } }
      }
    }
    """
    result = gh_json([
        "api", "graphql", "-f", f"query={query}", "-F", f"prId={node_id}",
    ])
    if not isinstance(result, dict) or result.get("errors"):
        raise RuntimeError(f"#{number}: disabling native auto-merge failed: {result}")


def release_train_head(repository: str, pull: dict, reason: str, dry_run: bool) -> str:
    number = pull["number"]
    disable_auto_merge(repository, pull, dry_run)
    set_train_label(repository, number, False, dry_run)
    action = "would release" if dry_run else "released"
    return f"#{number}: {action} merge-train head — {reason}"


def cleanup_closed_train_heads(repository: str, dry_run: bool) -> list[str]:
    encoded = urllib.parse.quote(TRAIN_LABEL, safe="")
    pages = gh_json([
        "api", "--paginate", "--slurp",
        f"repos/{repository}/issues?state=closed&labels={encoded}&per_page=100",
    ], retry_transient=True)
    if not isinstance(pages, list):
        raise RuntimeError("unexpected closed train-head pages")
    messages = []
    for page in pages:
        if not isinstance(page, list):
            continue
        for issue in page:
            if not isinstance(issue, dict) or not isinstance(issue.get("pull_request"), dict):
                continue
            number = issue.get("number")
            if not isinstance(number, int):
                continue
            set_train_label(repository, number, False, dry_run)
            action = "would clear" if dry_run else "cleared"
            messages.append(f"#{number}: {action} stale merge-train label")
    return messages


def apply_decision(
    repository: str,
    pull: dict,
    decision: dict,
    queued: set[int] | None,
    dry_run: bool,
) -> tuple[str, bool]:
    number = pull["number"]
    if decision["target_label"] == "ready-to-merge":
        if pull.get("auto_merge"):
            return f"#{number}: native auto-merge already enabled", False
        return enqueue(repository, pull, dry_run, queued is not None), True
    if decision["reason"] == "mergeability-ambiguous:behind":
        if queued is not None:
            if pull.get("auto_merge"):
                return f"#{number}: auto-merge already waiting for the merge queue", False
            return enqueue(repository, pull, dry_run, True), True
        message = update_behind_branch(repository, pull, dry_run)
        return message, message.startswith(f"#{number}: would update") or message.startswith(f"#{number}: updated")
    return f"#{number}: skip — {decision['reason']}", False


def evaluate(repository: str, number: int, queued: set[int] | None, dry_run: bool) -> tuple[str, bool]:
    pull = pull_request_identity(repository, number)
    decision, skip = pull_decision(repository, pull)
    if skip:
        return skip, False
    if queued is not None and number in queued:
        return f"#{number}: already queued", False
    if decision is None:
        raise RuntimeError(f"#{number}: missing merge decision")
    return apply_decision(repository, pull, decision, queued, dry_run)


def train_candidate(repository: str, pull: dict) -> tuple[tuple[int, int], dict] | None:
    decision, skip = pull_decision(repository, pull)
    if skip or decision is None:
        return None
    if decision["target_label"] == "ready-to-merge":
        return (0, pull["number"]), decision
    if decision["reason"] != "mergeability-ambiguous:behind":
        return None
    head_repository = ((pull.get("head") or {}).get("repo") or {}).get("full_name")
    if not isinstance(head_repository, str) or head_repository.lower() != repository.lower():
        return None
    return (1, pull["number"]), decision


def advance_train_head(repository: str, pull: dict, dry_run: bool) -> str:
    decision, skip = pull_decision(repository, pull)
    if skip:
        return release_train_head(repository, pull, skip.removeprefix(f"#{pull['number']}: "), dry_run)
    if decision is None:
        raise RuntimeError(f"#{pull['number']}: missing merge decision")
    reason = decision["reason"]
    if decision["target_label"] == "ready-to-merge":
        if pull.get("auto_merge"):
            return f"#{pull['number']}: merge-train head waiting for native auto-merge"
        message, _ = apply_decision(repository, pull, decision, None, dry_run)
        return message
    if reason == "mergeability-ambiguous:behind":
        message, _ = apply_decision(repository, pull, decision, None, dry_run)
        return message
    if decision["target_label"] == "awaiting-CI":
        if ":missing" in reason:
            checks = head_check_states(repository, pull)
            workflows = recheck_workflows(repository, pull["number"])
            active_checks = ({"blueprint-check"} if workflows == BLUEPRINT_RECHECK_WORKFLOWS
                             else {"sandboxed-build", "performance-gate"})
            if any(checks.get(name) in ACTIVE_CHECK_STATES for name in active_checks):
                return f"#{pull['number']}: merge-train head waiting — exact-head build is active"
            if not dry_run:
                for workflow in workflows:
                    if workflow != "pr-profile.yml" or "performance-gate" not in checks:
                        dispatch_recheck(repository, workflow, pull["number"])
            action = "would re-dispatch" if dry_run else "re-dispatched"
            return f"#{pull['number']}: {action} missing exact-head checks"
        if ":ambiguous" not in reason:
            return f"#{pull['number']}: merge-train head waiting — {reason}"
    if decision["target_label"] == "review-in-progress":
        return f"#{pull['number']}: merge-train head waiting — {reason}"
    if reason == "semantic-unavailable:semantic-review:missing":
        if not dry_run:
            dispatch_review(repository, pull["number"])
        action = "would re-dispatch" if dry_run else "re-dispatched"
        return f"#{pull['number']}: {action} missing exact-head semantic review"
    return release_train_head(repository, pull, reason, dry_run)


def reconcile_train(
    repository: str,
    numbers: list[int],
    requested: int | None,
    dry_run: bool,
) -> list[str]:
    pulls = [pull_request_identity(repository, number) for number in numbers]
    labelled = [pull for pull in pulls if TRAIN_LABEL in pull_labels(pull)]
    if len(labelled) > 1:
        conflicts = ", ".join(f"#{pull['number']}" for pull in labelled)
        raise RuntimeError(f"multiple merge-train heads: {conflicts}")
    if labelled:
        head = labelled[0]
        if requested is not None and head["number"] != requested:
            return [f"#{requested}: skip — merge train is occupied by #{head['number']}"]
        return [advance_train_head(repository, head, dry_run)]

    auto_merge = [pull for pull in pulls if pull.get("auto_merge")]
    if len(auto_merge) > 1:
        conflicts = ", ".join(f"#{pull['number']}" for pull in auto_merge)
        raise RuntimeError(f"multiple native auto-merge requests without a train head: {conflicts}")
    if auto_merge:
        head = auto_merge[0]
        if requested is not None and head["number"] != requested:
            return [f"#{requested}: skip — native auto-merge is occupied by #{head['number']}"]
        set_train_label(repository, head["number"], True, dry_run)
        prefix = "would adopt" if dry_run else "adopted"
        return [
            f"#{head['number']}: {prefix} native auto-merge as merge-train head",
            advance_train_head(repository, head, dry_run),
        ]

    candidates = []
    for pull in pulls:
        candidate = train_candidate(repository, pull)
        if candidate is not None:
            priority, decision = candidate
            candidates.append((priority, pull, decision))
    if not candidates:
        if requested is not None:
            requested_pull = next((pull for pull in pulls if pull["number"] == requested), None)
            if requested_pull is None:
                return [f"#{requested}: skip — pull request is not open"]
            decision, skip = pull_decision(repository, requested_pull)
            if skip:
                return [skip]
            if decision is None:
                raise RuntimeError(f"#{requested}: missing merge decision")
            return [f"#{requested}: skip — {decision['reason']}"]
        return ["merge train idle — no exact-head-green candidate"]

    _, head, decision = min(candidates, key=lambda item: item[0])
    if requested is not None and head["number"] != requested:
        return [f"#{requested}: skip — merge-train candidate #{head['number']} has priority"]
    set_train_label(repository, head["number"], True, dry_run)
    claim = "would claim" if dry_run else "claimed"
    message, _ = apply_decision(repository, head, decision, None, dry_run)
    return [f"#{head['number']}: {claim} merge-train head", message]


def open_pull_requests(repository: str) -> list[int]:
    pages = gh_json([
        "api", "--paginate", "--slurp", f"repos/{repository}/pulls?state=open&per_page=100",
    ], retry_transient=True)
    if not isinstance(pages, list):
        raise RuntimeError("unexpected pull request pages")
    return sorted({
        pull["number"]
        for page in pages
        if isinstance(page, list)
        for pull in page
        if isinstance(pull, dict) and isinstance(pull.get("number"), int)
    })


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repo", required=True)
    parser.add_argument("--pr", type=int)
    parser.add_argument("--all-open", action="store_true")
    parser.add_argument("--dry-run", action="store_true")
    args = parser.parse_args()
    if (args.pr is None) == (not args.all_open):
        parser.error("exactly one of --pr or --all-open is required")
    try:
        queued = queue_entries(args.repo)
        cleanup_messages = cleanup_closed_train_heads(args.repo, args.dry_run)
        if queued is None:
            numbers = open_pull_requests(args.repo)
            for message in cleanup_messages + reconcile_train(args.repo, numbers, args.pr, args.dry_run):
                print(message)
            return 0
        for message in cleanup_messages:
            print(message)
        numbers = [args.pr] if args.pr is not None else open_pull_requests(args.repo)
        failures = 0
        for number in numbers:
            try:
                message, _ = evaluate(args.repo, number, queued, args.dry_run)
                print(message)
            except Exception as error:
                failures += 1
                print(f"#{number}: failed closed — {error}", file=sys.stderr)
        return 1 if failures else 0
    except Exception as error:
        print(f"merge gate failed closed: {error}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
