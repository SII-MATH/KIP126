#!/usr/bin/env python3
"""Fail-closed, exact-head merge eligibility for KIP126.

Both auto-merge and merge-sweep call this file.  It gathers live GitHub facts
with a read-only token, verifies the trusted mechanical and semantic evidence,
and emits a decision.  It never mints a token or mutates GitHub.
"""

from __future__ import annotations

import argparse
import json
import pathlib
import re
import subprocess
import sys
from typing import Any


EULER_MARKER = "<!-- euler-semantic-review:v1 -->"
EULER_META = re.compile(r"<!-- euler-meta:(\{.*?\}) -->", re.DOTALL)
CLOSE_INTENT = re.compile(
    r"^(?:Closes|Fixes|Resolves):?\s+([A-Z][A-Z0-9]*-[1-9][0-9]*)\s*$",
    re.IGNORECASE | re.MULTILINE,
)
INITIALIZER_MARKER = re.compile(
    r"^(?:Initialization PR|Initialization Repair) for [A-Z][A-Z0-9]*-[1-9][0-9]*\s*$",
    re.MULTILINE,
)
VALIDATION_MARKER = re.compile(
    r"^Euler Validation for [A-Z][A-Z0-9]*-[1-9][0-9]*\s*$", re.MULTILINE
)
EXCLUDED_HEAD_PREFIXES = (
    "agent/euler-initializer/",
    "validation/",
    "review-smoke/",
)
KEEP_LABELS = {"keep", "hold", "wip", "human", "do-not-merge", "do-not-close"}
ALLOWED_FILES = {"KIP126.lean", "lake-manifest.json", "lean-toolchain"}
REQUIRED_CONTEXTS = {"scope", "build", "bump-guard", "perf", "semantic-review"}
MECHANICAL_CONTEXTS = {"scope", "build", "bump-guard", "perf"}
GITHUB_ACTIONS_LOGIN = "github-actions[bot]"


class DecisionError(RuntimeError):
    pass


def _gh_json(args: list[str]) -> Any:
    completed = subprocess.run(
        ["gh", *args], text=True, capture_output=True, check=False
    )
    if completed.returncode != 0:
        raise DecisionError(completed.stderr.strip() or "GitHub API request failed")
    try:
        return json.loads(completed.stdout or "null")
    except json.JSONDecodeError as error:
        raise DecisionError("GitHub API returned invalid JSON") from error


def _paged(endpoint: str) -> list[dict[str, Any]]:
    pages = _gh_json(["api", "--paginate", "--slurp", endpoint])
    if not isinstance(pages, list):
        raise DecisionError(f"unexpected paginated response for {endpoint}")
    result: list[dict[str, Any]] = []
    for page in pages:
        if not isinstance(page, list):
            raise DecisionError(f"unexpected page shape for {endpoint}")
        result.extend(item for item in page if isinstance(item, dict))
    return result


def gather_snapshot(repository: str, pull_request: int) -> dict[str, Any]:
    if repository.count("/") != 1:
        raise DecisionError("repository must be owner/name")
    owner, name = repository.split("/", 1)
    pull = _gh_json(["api", f"repos/{repository}/pulls/{pull_request}"])
    if not isinstance(pull, dict):
        raise DecisionError("pull request response is not an object")
    head = (pull.get("head") or {}).get("sha")
    base_ref = (pull.get("base") or {}).get("ref")
    if not isinstance(head, str) or not re.fullmatch(r"[0-9a-f]{40}", head):
        raise DecisionError("pull request has no exact 40-character head")
    if not isinstance(base_ref, str) or not base_ref:
        raise DecisionError("pull request has no base ref")
    statuses = _paged(f"repos/{repository}/commits/{head}/statuses?per_page=100")
    comments = _paged(f"repos/{repository}/issues/{pull_request}/comments?per_page=100")
    files = _paged(f"repos/{repository}/pulls/{pull_request}/files?per_page=100")
    settings = _gh_json(["api", f"repos/{repository}"])
    protection = _gh_json(
        ["api", f"repos/{repository}/branches/{base_ref}/protection"]
    )
    queue_query = (
        "query($owner:String!,$name:String!,$number:Int!){"
        "repository(owner:$owner,name:$name){pullRequest(number:$number){"
        "mergeQueueEntry{position state}}}}"
    )
    queue = _gh_json(
        [
            "api",
            "graphql",
            "-f",
            f"query={queue_query}",
            "-f",
            f"owner={owner}",
            "-f",
            f"name={name}",
            "-F",
            f"number={pull_request}",
        ]
    )
    queue_entry = (
        (((queue or {}).get("data") or {}).get("repository") or {})
        .get("pullRequest", {})
        .get("mergeQueueEntry")
    )
    return {
        "repository": repository,
        "pull_request": pull,
        "statuses": statuses,
        "comments": comments,
        "files": files,
        "settings": settings,
        "protection": protection,
        "queue_entry": queue_entry,
    }


def _newest_status(statuses: list[dict[str, Any]], context: str) -> dict[str, Any] | None:
    matches = [status for status in statuses if status.get("context") == context]
    if not matches:
        return None
    return max(
        matches,
        key=lambda status: (
            str(status.get("updated_at") or status.get("created_at") or ""),
            int(status.get("id") or 0),
        ),
    )


def _comment_for_status(
    comments: list[dict[str, Any]], status: dict[str, Any]
) -> dict[str, Any] | None:
    target = status.get("target_url")
    matches = [comment for comment in comments if comment.get("html_url") == target]
    return max(matches, key=lambda comment: int(comment.get("id") or 0), default=None)


def _protection_reasons(protection: Any) -> list[str]:
    if not isinstance(protection, dict):
        return ["branch protection is unavailable"]
    reasons: list[str] = []
    required = protection.get("required_status_checks") or {}
    contexts = set(required.get("contexts") or [])
    if required.get("strict") is not True:
        reasons.append("required status checks are not strict")
    if contexts != REQUIRED_CONTEXTS:
        reasons.append(
            "required contexts differ: " + ",".join(sorted(contexts))
        )
    checks = {
        check.get("context"): check.get("app_id")
        for check in required.get("checks") or []
        if isinstance(check, dict)
    }
    for context in MECHANICAL_CONTEXTS:
        if checks.get(context) != 15368:
            reasons.append(f"{context} is not bound to GitHub Actions app 15368")
    reviews = protection.get("required_pull_request_reviews") or {}
    if int(reviews.get("required_approving_review_count") or 0) < 1:
        reasons.append("at least one GitHub approving review is not required")
    required_flags = {
        "enforce_admins": "admin enforcement is disabled",
        "required_linear_history": "linear history is disabled",
        "required_conversation_resolution": "conversation resolution is disabled",
    }
    for key, message in required_flags.items():
        if (protection.get(key) or {}).get("enabled") is not True:
            reasons.append(message)
    if (protection.get("allow_force_pushes") or {}).get("enabled") is not False:
        reasons.append("force pushes are allowed")
    if (protection.get("allow_deletions") or {}).get("enabled") is not False:
        reasons.append("branch deletion is allowed")
    return reasons


def evaluate_snapshot(
    snapshot: dict[str, Any],
    *,
    expected_head: str,
    rubric_revision: str,
    semantic_trusted_creators: set[str],
) -> dict[str, Any]:
    reasons: list[str] = []
    repository = snapshot.get("repository")
    pull = snapshot.get("pull_request") or {}
    number = pull.get("number")
    head = (pull.get("head") or {}).get("sha")
    head_ref = (pull.get("head") or {}).get("ref") or ""
    head_repo = ((pull.get("head") or {}).get("repo") or {}).get("full_name")
    base_ref = (pull.get("base") or {}).get("ref")
    base_repo = ((pull.get("base") or {}).get("repo") or {}).get("full_name")
    body = pull.get("body") or ""
    labels = {
        str(label.get("name") or "").lower()
        for label in pull.get("labels") or []
        if isinstance(label, dict)
    }

    if pull.get("state") != "open" or pull.get("draft") is True:
        reasons.append("pull request is not open and non-draft")
    if head != expected_head:
        reasons.append(f"head mismatch: live={head} expected={expected_head}")
    if base_ref != "main" or base_repo != repository:
        reasons.append("pull request does not target this repository's main branch")
    if head_repo != repository:
        reasons.append("fork heads are not eligible for automatic merge")
    if head_ref.startswith(EXCLUDED_HEAD_PREFIXES):
        reasons.append(f"excluded head branch: {head_ref}")
    if INITIALIZER_MARKER.search(body):
        reasons.append("initializer repair/bootstrap marker is excluded")
    if VALIDATION_MARKER.search(body):
        reasons.append("validation marker is excluded")
    if labels & KEEP_LABELS:
        reasons.append("hold/keep label excludes automatic merge")

    close_matches = CLOSE_INTENT.findall(body)
    close_issue = close_matches[0].upper() if len(close_matches) == 1 else None
    if close_issue is None:
        reasons.append("body must contain exactly one line `Closes AIM-N`")

    files = snapshot.get("files")
    if not isinstance(files, list) or not files:
        reasons.append("changed-file inventory is empty or unavailable")
        files = []
    if len(files) > 2000:
        reasons.append("changed-file inventory exceeds 2000 files")
    pin_changed = False
    for item in files:
        path = item.get("filename") if isinstance(item, dict) else None
        if not isinstance(path, str):
            reasons.append("changed-file entry has no filename")
            continue
        if path in {"lake-manifest.json", "lean-toolchain"}:
            pin_changed = True
        if not (path.startswith("KIP126/") or path in ALLOWED_FILES):
            reasons.append(f"path is outside the KIP126 merge policy: {path}")

    statuses = snapshot.get("statuses")
    if not isinstance(statuses, list):
        statuses = []
        reasons.append("commit statuses are unavailable")
    selected: dict[str, dict[str, Any]] = {}
    for context in sorted(REQUIRED_CONTEXTS):
        status = _newest_status(statuses, context)
        if status is None:
            reasons.append(f"missing {context} status")
            continue
        selected[context] = status
        creator = (status.get("creator") or {}).get("login")
        trusted = (
            creator == GITHUB_ACTIONS_LOGIN
            if context in MECHANICAL_CONTEXTS
            else creator in semantic_trusted_creators
        )
        if not trusted:
            reasons.append(f"newest {context} status has untrusted creator {creator}")
        if status.get("state") != "success":
            reasons.append(f"newest {context} status is {status.get('state')}")
        if context in MECHANICAL_CONTEXTS:
            expected_url = f"https://github.com/{repository}/actions/runs/"
            if not str(status.get("target_url") or "").startswith(expected_url):
                reasons.append(f"{context} status does not target a repository Actions run")

    if pin_changed and selected.get("bump-guard", {}).get("state") != "success":
        reasons.append("Lake pin changes require a successful bump-guard")

    semantic = selected.get("semantic-review")
    if semantic is not None:
        comment = _comment_for_status(snapshot.get("comments") or [], semantic)
        if comment is None:
            reasons.append("semantic-review status is not bound to a PR comment")
        else:
            body_text = comment.get("body") or ""
            author = (comment.get("user") or {}).get("login")
            creator = (semantic.get("creator") or {}).get("login")
            if author != creator or author not in semantic_trusted_creators:
                reasons.append("semantic comment/status publisher identity is not trusted")
            matches = EULER_META.findall(body_text)
            try:
                metadata = json.loads(matches[-1]) if matches else None
            except json.JSONDecodeError:
                metadata = None
            if EULER_MARKER not in body_text or not isinstance(metadata, dict):
                reasons.append("semantic comment lacks canonical Euler metadata")
            else:
                if metadata.get("head_sha") != expected_head:
                    reasons.append("semantic scoreboard is stale")
                if metadata.get("verdict") != "approve":
                    reasons.append("semantic scoreboard is not approved")
                if metadata.get("rubric_revision") != rubric_revision:
                    reasons.append("semantic scoreboard rubric revision does not match")

    if (snapshot.get("settings") or {}).get("allow_auto_merge") is not True:
        reasons.append("repository auto-merge is disabled")
    reasons.extend(_protection_reasons(snapshot.get("protection")))
    if pull.get("mergeable") is not True:
        reasons.append("GitHub does not report the exact head as mergeable")
    if pull.get("mergeable_state") not in {"clean", "has_hooks"}:
        reasons.append(f"mergeable state is {pull.get('mergeable_state')}")

    return {
        "schema": "kip126.euler-merge-decision/v1",
        "eligible": not reasons,
        "repository": repository,
        "pull_request": number,
        "head_sha": head,
        "expected_head": expected_head,
        "close_issue": close_issue,
        "queue_entry": snapshot.get("queue_entry"),
        "reasons": reasons,
    }


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--repo", required=True)
    parser.add_argument("--pr", required=True, type=int)
    parser.add_argument("--expected-head", required=True)
    parser.add_argument("--rubric-revision", required=True)
    parser.add_argument(
        "--status-config", default=".github/euler/status-labels.json"
    )
    parser.add_argument("--output")
    args = parser.parse_args()
    if not re.fullmatch(r"[0-9a-f]{40}", args.expected_head):
        parser.error("--expected-head must be a 40-character lowercase SHA")
    if not args.rubric_revision.strip():
        parser.error("--rubric-revision must be non-empty")
    try:
        config = json.loads(pathlib.Path(args.status_config).read_text(encoding="utf-8"))
        trusted = set(config["semantic_trusted_creators"])
        if not trusted:
            raise DecisionError("semantic trusted-creator set is empty")
        decision = evaluate_snapshot(
            gather_snapshot(args.repo, args.pr),
            expected_head=args.expected_head,
            rubric_revision=args.rubric_revision,
            semantic_trusted_creators=trusted,
        )
    except (OSError, KeyError, json.JSONDecodeError, DecisionError) as error:
        print(f"merge decision failed closed: {error}", file=sys.stderr)
        return 1
    rendered = json.dumps(decision, sort_keys=True, indent=2) + "\n"
    if args.output:
        pathlib.Path(args.output).write_text(rendered, encoding="utf-8")
    print(rendered, end="")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
