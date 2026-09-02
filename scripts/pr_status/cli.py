#!/usr/bin/env python3
"""Read GitHub truth, project one KIP126 PR state, and reconcile labels."""

from __future__ import annotations

import argparse
import json
import pathlib
import subprocess
import sys
import time

try:
    from . import labels, projection, sync
except ImportError:  # direct execution
    import labels
    import projection
    import sync


ROOT = pathlib.Path(__file__).resolve().parents[2]
DEFAULT_CONFIG = ROOT / "scripts" / "pr_status" / "config.json"


def gh_json(args: list[str]) -> object:
    completed = subprocess.run(["gh", *args], text=True, capture_output=True)
    if completed.returncode != 0:
        message = completed.stderr.strip().splitlines()
        raise RuntimeError(message[-1][-400:] if message else "GitHub CLI request failed")
    try:
        return json.loads(completed.stdout or "null")
    except json.JSONDecodeError as error:
        raise RuntimeError("GitHub CLI returned malformed JSON") from error


def paged(endpoint: str) -> list:
    pages = gh_json(["api", "--paginate", "--slurp", endpoint])
    if not isinstance(pages, list):
        raise RuntimeError(f"unexpected paginated response for {endpoint}")
    return [item for page in pages if isinstance(page, list) for item in page]


def _check_runs(repository: str, head_sha: str) -> list[dict]:
    pages = gh_json(["api", "--paginate", "--slurp", f"repos/{repository}/commits/{head_sha}/check-runs?per_page=100"])
    result = []
    for page in pages if isinstance(pages, list) else []:
        if isinstance(page, dict) and isinstance(page.get("check_runs"), list):
            result.extend(page["check_runs"])
    return result


def _failed_check_statuses(check_runs: list[dict], head_sha: str, contexts: set[str]) -> list[dict]:
    result = []
    for check in check_runs:
        app = check.get("app") or {}
        if (
            check.get("name") not in contexts
            or check.get("head_sha") != head_sha
            or app.get("slug") != "github-actions"
            or check.get("status") != "completed"
            or check.get("conclusion") == "success"
        ):
            continue
        result.append({
            "id": check.get("id"),
            "sha": head_sha,
            "context": check.get("name"),
            "state": "failure" if check.get("conclusion") in {"failure", "cancelled", "timed_out", "action_required"} else "error",
            "created_at": check.get("completed_at") or check.get("started_at") or check.get("created_at"),
            "creator": {"login": "github-actions[bot]"},
            "target_url": check.get("html_url") or check.get("details_url"),
        })
    return result


def fetch_sync_facts(repository: str, pull_request: int, config: dict, pull: dict | None = None) -> dict:
    pull = pull or gh_json(["api", f"repos/{repository}/pulls/{pull_request}"])
    if not isinstance(pull, dict):
        raise RuntimeError("unexpected pull request response")
    head_sha = (pull.get("head") or {}).get("sha")
    if pull.get("state") != "open" or not isinstance(head_sha, str) or len(head_sha) != 40:
        raise RuntimeError("pull request is not open or has no exact head")
    paths = [
        item["filename"] for item in paged(f"repos/{repository}/pulls/{pull_request}/files?per_page=100")
        if isinstance(item, dict) and isinstance(item.get("filename"), str)
    ]
    if projection.classify_profile(paths) != "reviewer-mixed-sync":
        raise RuntimeError("pull request is not an authorized Lean/Blueprint mixed-sync candidate")
    commit = gh_json(["api", f"repos/{repository}/commits/{head_sha}"])
    if not isinstance(commit, dict):
        raise RuntimeError("unexpected head commit response")
    message = str((commit.get("commit") or {}).get("message") or "")
    source, _ = sync.parse_trailers(message)
    source_statuses = paged(f"repos/{repository}/commits/{source}/statuses?per_page=100") if source else []
    for status in source_statuses:
        if isinstance(status, dict):
            status.setdefault("sha", source)
    compare = gh_json(["api", f"repos/{repository}/compare/{source}...{head_sha}"]) if source else {}
    compare_files = compare.get("files") if isinstance(compare, dict) else None
    if isinstance(compare_files, list) and len(compare_files) >= 300:
        raise RuntimeError("source-to-head comparison reached GitHub's 300-file cap")
    changed = [
        item["filename"] for item in (compare_files or [])
        if isinstance(item, dict) and isinstance(item.get("filename"), str)
    ]
    return sync.validate(
        head_sha,
        str(((pull.get("head") or {}).get("repo") or {}).get("full_name") or ""),
        repository,
        commit,
        changed,
        source_statuses,
        config["sync_context"],
        set(config["sync_trusted_creators"]),
    )


def fetch_facts(repository: str, pull_request: int, config: dict, pull: dict | None = None) -> dict:
    pull = pull or gh_json(["api", f"repos/{repository}/pulls/{pull_request}"])
    if not isinstance(pull, dict):
        raise RuntimeError("unexpected pull request response")
    head_sha = (pull.get("head") or {}).get("sha")
    if not isinstance(head_sha, str) or len(head_sha) != 40:
        raise RuntimeError("pull request has no exact head")
    paths = [
        item["filename"] for item in paged(f"repos/{repository}/pulls/{pull_request}/files?per_page=100")
        if isinstance(item, dict) and isinstance(item.get("filename"), str)
    ] if pull.get("state") == "open" else []
    profile = projection.classify_profile(paths)
    statuses = paged(f"repos/{repository}/commits/{head_sha}/statuses?per_page=100") if pull.get("state") == "open" else []
    for status in statuses:
        if isinstance(status, dict):
            status.setdefault("sha", head_sha)
    contexts = set(config["mechanical_contexts"]) | {"blueprint"}
    if pull.get("state") == "open":
        try:
            statuses.extend(_failed_check_statuses(_check_runs(repository, head_sha), head_sha, contexts))
        except RuntimeError as error:
            if "HTTP 404" not in str(error) and "Not Found" not in str(error):
                raise
    comments = paged(f"repos/{repository}/issues/{pull_request}/comments?per_page=100") if pull.get("state") == "open" else []
    sync_facts = {
        "profile": profile,
        "authorization_valid": profile != "reviewer-mixed-sync",
        "ancestry_valid": profile != "reviewer-mixed-sync",
        "paths_valid": profile != "reviewer-mixed-sync",
        "reason": "mixed-sync:not-required" if profile != "reviewer-mixed-sync" else "mixed-sync:not-read",
    }
    if profile == "reviewer-mixed-sync" and pull.get("state") == "open":
        sync_facts = fetch_sync_facts(repository, pull_request, config, pull)
    return {
        "repository": repository,
        "number": pull_request,
        "state": pull.get("state"),
        "merged": pull.get("merged") is True,
        "draft": pull.get("draft") is True,
        "head_sha": head_sha,
        "mergeable": pull.get("mergeable"),
        "mergeable_state": pull.get("mergeable_state"),
        "labels": [item["name"] for item in pull.get("labels") or [] if isinstance(item, dict) and isinstance(item.get("name"), str)],
        "paths": paths,
        "profile": profile,
        "statuses": statuses,
        "comments": comments,
        "sync": sync_facts,
    }


def project(repository: str, pull_request: int, config: dict, pull: dict | None = None, now_epoch: int | None = None) -> dict:
    return projection.reduce_facts(fetch_facts(repository, pull_request, config, pull), config, now_epoch)


def reconcile_one(repository: str, pull_request: int, config: dict, dry_run: bool, now_epoch: int | None) -> dict:
    registry = labels.reconcile_registry(repository, config, gh_json, dry_run)
    facts = fetch_facts(repository, pull_request, config)
    decision = projection.reduce_facts(facts, config, now_epoch)
    changes = labels.desired_changes(facts["labels"], decision["target_label"], config)
    if not dry_run:
        live = fetch_facts(repository, pull_request, config)
        if live["head_sha"] != facts["head_sha"]:
            raise RuntimeError("pull request head changed during label reconciliation")
        labels.apply_changes(repository, pull_request, changes, gh_json)
    return {
        "repository": repository,
        "pull_request": pull_request,
        "head_sha": facts["head_sha"],
        "projection": decision,
        "label_changes": changes,
        "label_registry": registry,
        "result": "dry-run" if dry_run else "reconciled",
    }


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--config", default=str(DEFAULT_CONFIG))
    commands = parser.add_subparsers(dest="command", required=True)
    project_command = commands.add_parser("project")
    project_command.add_argument("--repo", required=True)
    project_command.add_argument("--pr", required=True, type=int)
    sync_command = commands.add_parser("validate-sync")
    sync_command.add_argument("--repo", required=True)
    sync_command.add_argument("--pr", required=True, type=int)
    reconcile_command = commands.add_parser("reconcile")
    reconcile_command.add_argument("--repo", required=True)
    reconcile_command.add_argument("--pr", required=True, type=int)
    reconcile_command.add_argument("--dry-run", action="store_true")
    install_command = commands.add_parser("install-labels")
    install_command.add_argument("--repo", required=True)
    install_command.add_argument("--dry-run", action="store_true")
    args = parser.parse_args(argv)
    try:
        config = projection.load_config(args.config)
        if args.command == "project":
            output = project(args.repo, args.pr, config)
        elif args.command == "validate-sync":
            output = fetch_sync_facts(args.repo, args.pr, config)
        elif args.command == "reconcile":
            output = reconcile_one(args.repo, args.pr, config, args.dry_run, int(time.time()))
        else:
            output = labels.reconcile_registry(args.repo, config, gh_json, args.dry_run)
    except (projection.ProjectionError, RuntimeError) as error:
        print(json.dumps({"result": "failed", "reason": str(error)}, sort_keys=True), file=sys.stderr)
        return 1
    print(json.dumps(output, indent=2, sort_keys=True))
    if args.command == "validate-sync" and output.get("reason") != "mixed-sync:valid":
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
