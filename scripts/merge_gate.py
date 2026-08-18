#!/usr/bin/env python3
"""Enqueue KIP126 pull requests only when trusted exact-head gates are green."""

from __future__ import annotations

import argparse
import importlib.util
import json
import pathlib
import subprocess
import sys


ROOT = pathlib.Path(__file__).resolve().parents[1]
PROJECTION_PATH = ROOT / ".github" / "euler" / "status_projection.py"
CONFIG_PATH = ROOT / ".github" / "euler" / "status-labels.json"
SPEC = importlib.util.spec_from_file_location("status_projection", PROJECTION_PATH)
if SPEC is None or SPEC.loader is None:
    raise RuntimeError(f"cannot load {PROJECTION_PATH}")
projection = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(projection)
CONFIG = projection.validate_config(json.loads(CONFIG_PATH.read_text(encoding="utf-8")))


def gh_json(args: list[str]) -> object:
    completed = subprocess.run(["gh", *args], text=True, capture_output=True)
    if completed.returncode != 0:
        raise RuntimeError(completed.stderr.strip() or "gh command failed")
    try:
        return json.loads(completed.stdout or "null")
    except json.JSONDecodeError as error:
        raise RuntimeError("gh returned malformed JSON") from error


def pull_request_identity(repository: str, number: int) -> dict:
    pull = gh_json([
        "api", f"repos/{repository}/pulls/{number}",
    ])
    if not isinstance(pull, dict):
        raise RuntimeError("unexpected pull request response")
    return pull


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
    ])
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
        action = "enqueue" if has_queue else "enable native auto-merge"
        return f"#{number}: would {action} {head[:12]}"
    if not has_queue:
        query = """
        mutation($prId: ID!) {
          enablePullRequestAutoMerge(input: { pullRequestId: $prId, mergeMethod: MERGE }) {
            pullRequest { number autoMergeRequest { mergeMethod } }
          }
        }
        """
        result = gh_json([
            "api", "graphql", "-f", f"query={query}", "-F", f"prId={node_id}",
        ])
        if not isinstance(result, dict) or result.get("errors"):
            raise RuntimeError(f"#{number}: enabling native auto-merge failed: {result}")
        return f"#{number}: native auto-merge enabled"
    query = """
    mutation($prId: ID!, $headOid: GitObjectID!) {
      enqueuePullRequest(input: { pullRequestId: $prId, expectedHeadOid: $headOid }) {
        mergeQueueEntry { position state }
      }
    }
    """
    result = gh_json([
        "api", "graphql", "-f", f"query={query}", "-F", f"prId={node_id}", "-F", f"headOid={head}",
    ])
    if not isinstance(result, dict) or result.get("errors"):
        raise RuntimeError(f"#{number}: enqueue failed: {result}")
    entry = (((result.get("data") or {}).get("enqueuePullRequest") or {}).get("mergeQueueEntry") or {})
    return f"#{number}: enqueued ({entry.get('state', 'unknown')})"


def evaluate(repository: str, number: int, queued: set[int] | None, dry_run: bool) -> tuple[str, bool]:
    pull = pull_request_identity(repository, number)
    if pull.get("state") != "open" or pull.get("draft"):
        return f"#{number}: skip closed/draft", False
    if pull.get("base", {}).get("ref") != "main":
        return f"#{number}: skip non-main base", False
    if pull.get("auto_merge"):
        return f"#{number}: native auto-merge already enabled", False
    labels = {label.get("name") for label in pull.get("labels") or [] if isinstance(label, dict)}
    if labels.intersection({"keep", "hold", "wip", "human", "do-not-close"}):
        return f"#{number}: skip hold label", False
    if queued is not None and number in queued:
        return f"#{number}: already queued", False

    facts = projection.fetch_facts(repository, number, CONFIG)
    decision = projection.reduce_facts(facts, CONFIG)
    if decision["target_label"] != "ready-to-merge":
        return f"#{number}: skip — {decision['reason']}", False
    return enqueue(repository, pull, dry_run, queued is not None), True


def open_pull_requests(repository: str) -> list[int]:
    pages = gh_json([
        "api", "--paginate", "--slurp", f"repos/{repository}/pulls?state=open&per_page=100",
    ])
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
