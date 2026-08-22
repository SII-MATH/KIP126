#!/usr/bin/env python3
"""Project exact-head GitHub facts onto one advisory Euler PR status label."""

from __future__ import annotations

import argparse
import datetime as dt
import json
import pathlib
import re
import subprocess
import sys
import urllib.parse


SCHEMA = "euler-pr-status-projection/v1"
ACCEPTED_STATUS_STATES = {"pending", "success", "failure", "error"}
REVIEW_MARKER = "<!-- euler-semantic-review:v1 -->"
LEGACY_REVIEW_MARKERS = ("<!-- lean-mas-semantic-review:v1 -->",)
REVIEW_META = re.compile(r"<!-- euler-meta:(\{.*?\}) -->", re.DOTALL)
LEGACY_REVIEW_META = re.compile(r"<!-- lean-mas-meta:(\{.*?\}) -->", re.DOTALL)
TAUCETI_MARKER = "<!--tauceti-scoreboard-->"
TAUCETI_META = re.compile(r"<!--tauceti-meta:v1 (.*?)-->", re.DOTALL)
KIP126_MARKER = "<!--kip126-scoreboard-->"
KIP126_META = re.compile(r"<!--kip126-meta:v1\s+(.*?)\s*-->", re.DOTALL)


class ProjectionError(RuntimeError):
    pass


def _timestamp(value: str) -> dt.datetime:
    try:
        parsed = dt.datetime.fromisoformat(value.replace("Z", "+00:00"))
    except (AttributeError, ValueError) as error:
        raise ProjectionError(f"invalid status timestamp: {value!r}") from error
    if parsed.tzinfo is None:
        raise ProjectionError(f"status timestamp lacks timezone: {value!r}")
    return parsed.astimezone(dt.timezone.utc)


def _now(value: str | None = None) -> dt.datetime:
    return _timestamp(value) if value else dt.datetime.now(dt.timezone.utc)


def load_json(path: str | pathlib.Path) -> object:
    try:
        return json.loads(pathlib.Path(path).read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError) as error:
        raise ProjectionError(f"cannot read JSON from {path}: {error}") from error


def validate_config(config: object) -> dict:
    if not isinstance(config, dict) or config.get("schema") != SCHEMA:
        raise ProjectionError(f"config must use {SCHEMA}")
    contexts = config.get("mechanical_contexts")
    if not isinstance(contexts, list) or not contexts or not all(isinstance(value, str) for value in contexts):
        raise ProjectionError("mechanical_contexts must be a non-empty string list")
    if len(contexts) != len(set(contexts)):
        raise ProjectionError("mechanical_contexts must be unique")
    semantic_context = config.get("semantic_context")
    if not isinstance(semantic_context, str) or semantic_context in contexts:
        raise ProjectionError("semantic_context must be distinct from mechanical contexts")
    for key in ("mechanical_trusted_creators", "semantic_trusted_creators"):
        values = config.get(key)
        if not isinstance(values, list) or not values or not all(isinstance(value, str) for value in values):
            raise ProjectionError(f"{key} must be a non-empty string list")
    for key in ("semantic_pending_ttl_seconds", "semantic_review_ttl_seconds"):
        if not isinstance(config.get(key), int) or config[key] <= 0:
            raise ProjectionError(f"{key} must be a positive integer")
    ready_states = config.get("ready_mergeable_states")
    if not isinstance(ready_states, list) or not ready_states:
        raise ProjectionError("ready_mergeable_states must be a non-empty list")
    labels = config.get("labels")
    expected = {
        "awaiting-CI",
        "awaiting-review",
        "review-in-progress",
        "awaiting-author",
        "ready-to-merge",
    }
    if not isinstance(labels, list) or {label.get("name") for label in labels if isinstance(label, dict)} != expected:
        raise ProjectionError("config must define the complete Euler status label set")
    for label in labels:
        if set(label) != {"name", "color", "description"}:
            raise ProjectionError(f"invalid label definition: {label!r}")
        if not isinstance(label["color"], str) or len(label["color"]) != 6:
            raise ProjectionError(f"invalid label color for {label['name']}")
        if not isinstance(label["description"], str) or not label["description"]:
            raise ProjectionError(f"invalid label description for {label['name']}")
    return config


def _creator_login(status: dict) -> str | None:
    creator = status.get("creator")
    if isinstance(creator, dict):
        return creator.get("login")
    return status.get("creator_login")


def _resolve_status(
    statuses: list,
    context: str,
    head_sha: str,
    trusted_creators: set[str],
) -> tuple[str, dict | None, str]:
    relevant = [status for status in statuses if isinstance(status, dict) and status.get("context") == context]
    exact = [status for status in relevant if status.get("sha") == head_sha]
    if relevant and len(exact) != len(relevant):
        return "ambiguous", None, f"{context}:non-current-head-evidence"
    if not exact:
        return "missing", None, f"{context}:missing"
    try:
        timed = [(status, _timestamp(status.get("created_at"))) for status in exact]
    except ProjectionError:
        return "ambiguous", None, f"{context}:invalid-timestamp"
    trusted = [(status, created) for status, created in timed if _creator_login(status) in trusted_creators]
    if not trusted:
        return "ambiguous", None, f"{context}:untrusted-only"
    latest_time = max(created for _, created in trusted)
    latest = [status for status, created in trusted if created == latest_time]
    states = {status.get("state") for status in latest}
    if len(states) != 1 or not states.issubset(ACCEPTED_STATUS_STATES):
        return "ambiguous", None, f"{context}:conflicting-latest-evidence"
    if any(created >= latest_time and _creator_login(status) not in trusted_creators for status, created in timed):
        return "ambiguous", None, f"{context}:newer-untrusted-evidence"
    chosen = max(latest, key=lambda status: status.get("id") or 0)
    return chosen["state"], chosen, f"{context}:{chosen['state']}"


def reduce_facts(facts: object, config: object, now: dt.datetime | None = None) -> dict:
    config = validate_config(config)
    if not isinstance(facts, dict):
        raise ProjectionError("facts must be an object")
    state = facts.get("state")
    merged = facts.get("merged") is True or state == "merged"
    if merged or state == "closed":
        return {"target_label": None, "reason": "pull-request-terminal"}
    if state != "open":
        raise ProjectionError(f"unsupported pull request state: {state!r}")
    head_sha = facts.get("head_sha")
    if not isinstance(head_sha, str) or len(head_sha) != 40:
        raise ProjectionError("facts must contain the current 40-character head_sha")
    statuses = facts.get("statuses")
    if not isinstance(statuses, list):
        raise ProjectionError("facts statuses must be a list")
    if facts.get("draft") is True:
        return {"target_label": "awaiting-author", "reason": "pull-request-draft"}

    mechanical = [
        _resolve_status(
            statuses,
            context,
            head_sha,
            set(config["mechanical_trusted_creators"]),
        )
        for context in config["mechanical_contexts"]
    ]
    mechanical_states = {result[0] for result in mechanical}
    if mechanical_states.intersection({"failure", "error"}):
        reasons = ",".join(result[2] for result in mechanical if result[0] in {"failure", "error"})
        return {"target_label": "awaiting-author", "reason": f"mechanical-terminal:{reasons}"}
    if mechanical_states.intersection({"missing", "pending", "ambiguous"}):
        reasons = ",".join(result[2] for result in mechanical if result[0] != "success")
        return {"target_label": "awaiting-CI", "reason": f"mechanical-not-green:{reasons}"}
    if mechanical_states != {"success"}:
        raise ProjectionError(f"unhandled mechanical states: {sorted(mechanical_states)}")

    review_state, review, review_reason = _resolve_status(
        statuses,
        config["semantic_context"],
        head_sha,
        set(config["semantic_trusted_creators"]),
    )
    if review_state in {"missing", "ambiguous", "error"}:
        return {"target_label": "awaiting-review", "reason": f"semantic-unavailable:{review_reason}"}
    current_time = (now or _now()).astimezone(dt.timezone.utc)
    age = (current_time - _timestamp(review["created_at"])).total_seconds()
    if age < 0:
        return {"target_label": "awaiting-review", "reason": "semantic-evidence-from-future"}
    ttl = (
        config["semantic_pending_ttl_seconds"]
        if review_state == "pending"
        else config["semantic_review_ttl_seconds"]
    )
    if age > ttl:
        return {"target_label": "awaiting-review", "reason": f"semantic-expired:{review_state}"}
    if review_state == "pending":
        return {"target_label": "review-in-progress", "reason": "semantic-pending-fresh"}
    if review_state == "failure":
        if review.get("verified_verdict") is not True:
            return {"target_label": "awaiting-review", "reason": "semantic-failure-unverified-verdict"}
        return {"target_label": "awaiting-author", "reason": "semantic-request-changes"}
    if review_state != "success":
        raise ProjectionError(f"unhandled semantic state: {review_state}")
    if review.get("verified_verdict") is not True:
        return {"target_label": "awaiting-review", "reason": "semantic-success-unverified-verdict"}
    mergeable = facts.get("mergeable")
    mergeable_state = facts.get("mergeable_state")
    if mergeable is False or mergeable_state in {"dirty", "blocked"}:
        return {"target_label": "awaiting-author", "reason": f"merge-blocked:{mergeable_state}"}
    if mergeable is not True or mergeable_state not in set(config["ready_mergeable_states"]):
        return {"target_label": "awaiting-review", "reason": f"mergeability-ambiguous:{mergeable_state}"}
    return {"target_label": "ready-to-merge", "reason": "fresh-exact-head-evidence-green"}


def desired_label_changes(current_labels: list[str], target_label: str | None, config: dict) -> dict:
    status_names = {label["name"] for label in config["labels"]}
    current_status = sorted(set(current_labels).intersection(status_names))
    remove = [name for name in current_status if name != target_label]
    add = target_label if target_label and target_label not in current_status else None
    return {"remove": remove, "add": add}


def _run_gh(args: list[str], input_value: object | None = None) -> str:
    completed = subprocess.run(
        ["gh", *args],
        input=json.dumps(input_value) if input_value is not None else None,
        text=True,
        capture_output=True,
    )
    if completed.returncode != 0:
        message = completed.stderr.strip().splitlines()
        raise ProjectionError(message[-1][-300:] if message else "GitHub CLI request failed")
    return completed.stdout


def _gh_json(args: list[str], input_value: object | None = None) -> object:
    try:
        return json.loads(_run_gh(args, input_value) or "null")
    except json.JSONDecodeError as error:
        raise ProjectionError("GitHub CLI returned malformed JSON") from error


def _paged(endpoint: str) -> list:
    pages = _gh_json(["api", "--paginate", "--slurp", endpoint])
    if not isinstance(pages, list) or not all(isinstance(page, list) for page in pages):
        raise ProjectionError(f"unexpected paginated GitHub response for {endpoint}")
    return [item for page in pages for item in page]


def _check_runs(repository: str, head_sha: str) -> list:
    pages = _gh_json(
        ["api", "--paginate", "--slurp", f"repos/{repository}/commits/{head_sha}/check-runs?per_page=100"]
    )
    if not isinstance(pages, list):
        raise ProjectionError("unexpected paginated GitHub check-runs response")
    runs = []
    for page in pages:
        if not isinstance(page, dict) or not isinstance(page.get("check_runs"), list):
            raise ProjectionError("unexpected GitHub check-runs page")
        runs.extend(page["check_runs"])
    return runs


def _repository_labels(repository: str) -> dict[str, dict]:
    return {
        label["name"]: label
        for label in _paged(f"repos/{repository}/labels?per_page=100")
        if isinstance(label, dict) and isinstance(label.get("name"), str)
    }


def _issue_comments(repository: str, pull_request: int) -> list[dict]:
    try:
        return _paged(f"repos/{repository}/issues/{pull_request}/comments?per_page=100")
    except ProjectionError as error:
        if "HTTP 404" not in str(error) and "Not Found" not in str(error):
            raise
        owner, name = repository.split("/", 1)
        raw = _gh_json(["pr", "view", str(pull_request), "--repo", f"{owner}/{name}", "--json", "comments"])
        comments = raw.get("comments") if isinstance(raw, dict) else None
        if not isinstance(comments, list):
            raise ProjectionError("GitHub returned no pull request comments")
        return [
            {
                "body": item.get("body") or "",
                "updated_at": item.get("updatedAt") or item.get("createdAt") or "",
                "html_url": item.get("url") or "",
                "user": {"login": ((item.get("author") or {}).get("login") or "")},
                "author_association": item.get("authorAssociation") or "NONE",
            }
            for item in comments
            if isinstance(item, dict)
        ]


def _verify_semantic_statuses(
    statuses: list,
    comments: list,
    repository: str,
    pull_request: int,
    head_sha: str,
    trusted_creators: set[str],
) -> None:
    comments_by_url = {
        comment.get("html_url"): comment
        for comment in comments
        if isinstance(comment, dict) and isinstance(comment.get("html_url"), str)
    }
    verdict_states = {
        "approve": "success",
        "request_changes": "failure",
        "block": "failure",
        "cannot_assess": "error",
    }
    for status in statuses:
        if not isinstance(status, dict) or status.get("context") != "semantic-review":
            continue
        comment = comments_by_url.get(status.get("target_url"))
        body = (comment or {}).get("body") or ""
        author = ((comment or {}).get("user") or {}).get("login")
        if author not in trusted_creators:
            continue
        metadata_match = REVIEW_META.search(body) or LEGACY_REVIEW_META.search(body)
        if (REVIEW_MARKER in body or any(marker in body for marker in LEGACY_REVIEW_MARKERS)) and metadata_match is not None:
            try:
                metadata = json.loads(metadata_match.group(1))
            except json.JSONDecodeError:
                metadata = {}
            if (
                metadata.get("head_sha") == head_sha
                and verdict_states.get(metadata.get("verdict")) == status.get("state")
            ):
                status["verified_verdict"] = True
                continue
        tauceti = TAUCETI_META.findall(body)
        if TAUCETI_MARKER not in body or not tauceti:
            continue
        try:
            metadata = json.loads(tauceti[-1].strip())
        except json.JSONDecodeError:
            continue
        states = metadata.get("states")
        exact = (
            metadata.get("kind") == "scoreboard"
            and str(metadata.get("repo", "")).lower() == repository.lower()
            and metadata.get("pr") == pull_request
            and metadata.get("head_sha") == head_sha
            and isinstance(states, dict)
            and bool(states)
        )
        approved = exact and all(value == "green" for value in states.values())
        adverse = exact and any(value in {"blocking_request", "blocking_block"} for value in states.values())
        if (
            status.get("state") == "success"
            and approved
            and re.search(r"^## AI review — approved(?:\s|$)", body, re.MULTILINE | re.IGNORECASE)
        ) or (
            status.get("state") == "failure"
            and adverse
            and re.search(r"^## AI review — (?:blocked|changes requested)(?:\s|$)", body, re.MULTILINE | re.IGNORECASE)
        ):
            status["verified_verdict"] = True
            continue
        kip126 = KIP126_META.findall(body)
        if KIP126_MARKER not in body or not kip126:
            continue
        try:
            metadata = json.loads(kip126[-1].strip())
        except json.JSONDecodeError:
            continue
        states = metadata.get("states")
        exact = (
            metadata.get("head_sha") == head_sha
            and metadata.get("pr") == pull_request
            and str(metadata.get("repo", "")).lower() == repository.lower()
            and isinstance(states, dict)
            and bool(states)
        )
        approved = exact and all(value == "green" for value in states.values())
        adverse = exact and any(value in {"blocking_request", "blocking_block"} for value in states.values())
        if (
            status.get("state") == "success"
            and approved
            and re.search(r"^## AI review — approved(?:\s|$)", body, re.MULTILINE | re.IGNORECASE)
        ) or (
            status.get("state") == "failure"
            and adverse
            and re.search(r"^## AI review — (?:blocked|changes requested)(?:\s|$)", body, re.MULTILINE | re.IGNORECASE)
        ):
            status["verified_verdict"] = True


def _normalized_check_statuses(check_runs: list, head_sha: str, contexts: set[str]) -> list[dict]:
    normalized = []
    for check in check_runs:
        if not isinstance(check, dict) or check.get("name") not in contexts:
            continue
        app = check.get("app") or {}
        if app.get("slug") != "github-actions" or check.get("head_sha") != head_sha:
            continue
        if check.get("status") != "completed":
            continue
        elif check.get("conclusion") == "success":
            continue
        elif check.get("conclusion") in {"failure", "cancelled", "timed_out", "action_required"}:
            state = "failure"
        else:
            state = "error"
        normalized.append(
            {
                "id": check.get("id"),
                "sha": head_sha,
                "context": check.get("name"),
                "state": state,
                "created_at": check.get("completed_at") or check.get("started_at") or check.get("created_at"),
                "creator": {"login": "github-actions[bot]"},
                "target_url": check.get("html_url") or check.get("details_url"),
                "source": "check-run",
            }
        )
    return normalized


def _label_conflicts(existing: dict[str, dict], config: dict, require_all: bool) -> list[dict]:
    missing = []
    conflicts = []
    for wanted in config["labels"]:
        actual = existing.get(wanted["name"])
        if actual is None:
            missing.append(wanted)
            continue
        if (
            str(actual.get("color", "")).lower() != wanted["color"].lower()
            or (actual.get("description") or "") != wanted["description"]
        ):
            conflicts.append(wanted["name"])
    if conflicts or (require_all and missing):
        parts = []
        if missing and require_all:
            parts.append("missing=" + ",".join(label["name"] for label in missing))
        if conflicts:
            parts.append("semantic-conflicts=" + ",".join(conflicts))
        raise ProjectionError("status label preflight failed: " + " ".join(parts))
    return missing


def install_labels(repository: str, config: dict, dry_run: bool) -> dict:
    existing = _repository_labels(repository)
    missing = _label_conflicts(existing, config, require_all=False)
    if not dry_run:
        for label in missing:
            _gh_json(
                ["api", "--method", "POST", f"repos/{repository}/labels", "--input", "-"],
                label,
            )
    return {
        "repository": repository,
        "operation": "install-labels",
        "created": [label["name"] for label in missing],
        "unchanged": sorted(set(existing).intersection(label["name"] for label in config["labels"])),
        "dry_run": dry_run,
    }


def _pull_request_numbers(repository: str, number: int | None, sha: str | None, all_open: bool) -> list[int]:
    selectors = sum(value is not None and value is not False for value in (number, sha, all_open))
    if selectors != 1:
        raise ProjectionError("select exactly one of --pr, --sha, or --all-open")
    if number is not None:
        return [number]
    if sha is not None:
        pulls = _paged(f"repos/{repository}/commits/{sha}/pulls?per_page=100")
    else:
        pulls = _paged(f"repos/{repository}/pulls?state=open&per_page=100")
    return sorted(
        {
            pull["number"]
            for pull in pulls
            if isinstance(pull, dict)
            and isinstance(pull.get("number"), int)
            and (all_open or (pull.get("head") or {}).get("sha") == sha)
        }
    )


def fetch_facts(repository: str, pull_request: int, config: dict) -> dict:
    pull = _gh_json(["api", f"repos/{repository}/pulls/{pull_request}"])
    if not isinstance(pull, dict):
        raise ProjectionError(f"unexpected pull request response for {repository}#{pull_request}")
    head_sha = (pull.get("head") or {}).get("sha")
    statuses = []
    if pull.get("state") == "open":
        statuses = _paged(f"repos/{repository}/commits/{head_sha}/statuses?per_page=100")
        for status in statuses:
            if isinstance(status, dict):
                status.setdefault("sha", head_sha)
        try:
            check_runs = _check_runs(repository, head_sha)
        except ProjectionError as error:
            # Some installations expose commit statuses but deny the Check Runs endpoint. The
            # trusted status contexts remain authoritative for this repository; missing contexts
            # still fail closed below.
            if "HTTP 404" not in str(error) and "Not Found" not in str(error):
                raise
            check_runs = []
        statuses.extend(
            _normalized_check_statuses(check_runs, head_sha, set(config["mechanical_contexts"]))
        )
        comments = _issue_comments(repository, pull_request)
        _verify_semantic_statuses(
            statuses,
            comments,
            repository,
            pull_request,
            head_sha,
            set(config["semantic_trusted_creators"]),
        )
    return {
        "repository": repository,
        "number": pull_request,
        "state": pull.get("state"),
        "merged": pull.get("merged") is True,
        "draft": pull.get("draft") is True,
        "head_sha": head_sha,
        "mergeable": pull.get("mergeable"),
        "mergeable_state": pull.get("mergeable_state"),
        "labels": [label["name"] for label in pull.get("labels", []) if isinstance(label, dict)],
        "statuses": statuses,
    }


def _delete_label(repository: str, pull_request: int, label: str) -> None:
    endpoint = f"repos/{repository}/issues/{pull_request}/labels/{urllib.parse.quote(label, safe='')}"
    completed = subprocess.run(["gh", "api", "--method", "DELETE", endpoint], text=True, capture_output=True)
    if completed.returncode != 0 and "HTTP 404" not in completed.stderr:
        message = completed.stderr.strip().splitlines()
        raise ProjectionError(message[-1][-300:] if message else f"failed to remove label {label}")


def _facts_fingerprint(facts: dict, config: dict) -> str:
    status_names = set(config["mechanical_contexts"]) | {config["semantic_context"]}
    relevant_statuses = [
        {
            "id": status.get("id"),
            "context": status.get("context"),
            "state": status.get("state"),
            "created_at": status.get("created_at"),
            "creator": _creator_login(status),
            "target_url": status.get("target_url"),
            "verified_verdict": status.get("verified_verdict") is True,
        }
        for status in facts["statuses"]
        if isinstance(status, dict) and status.get("context") in status_names
    ]
    snapshot = {
        "state": facts["state"],
        "merged": facts["merged"],
        "draft": facts["draft"],
        "head_sha": facts["head_sha"],
        "mergeable": facts["mergeable"],
        "mergeable_state": facts["mergeable_state"],
        "status_labels": sorted(
            set(facts["labels"]).intersection(label["name"] for label in config["labels"])
        ),
        "statuses": sorted(relevant_statuses, key=lambda value: (value["context"], value["id"] or 0)),
    }
    return json.dumps(snapshot, sort_keys=True, separators=(",", ":"))


def reconcile_one(
    repository: str,
    pull_request: int,
    config: dict,
    dry_run: bool,
    now: dt.datetime,
    retry: bool = True,
) -> dict:
    facts = fetch_facts(repository, pull_request, config)
    decision = reduce_facts(facts, config, now)
    changes = desired_label_changes(facts["labels"], decision["target_label"], config)
    if not dry_run:
        current = fetch_facts(repository, pull_request, config)
        if _facts_fingerprint(current, config) != _facts_fingerprint(facts, config):
            if retry:
                return reconcile_one(repository, pull_request, config, dry_run, now, retry=False)
            raise ProjectionError("GitHub facts changed twice during reconciliation; no labels written")
        if changes["add"]:
            _gh_json(
                ["api", "--method", "POST", f"repos/{repository}/issues/{pull_request}/labels", "--input", "-"],
                {"labels": [changes["add"]]},
            )
        for label in changes["remove"]:
            _delete_label(repository, pull_request, label)
    return {
        "repository": repository,
        "pull_request": pull_request,
        "head_sha": facts["head_sha"],
        "old_status_labels": sorted(
            set(facts["labels"]).intersection(label["name"] for label in config["labels"])
        ),
        "target_label": decision["target_label"],
        "reason": decision["reason"],
        "changes": changes,
        "result": "dry-run" if dry_run else ("updated" if changes["remove"] or changes["add"] else "unchanged"),
    }


def reconcile(
    repository: str,
    config: dict,
    number: int | None,
    sha: str | None,
    all_open: bool,
    dry_run: bool,
    now: dt.datetime,
) -> list[dict]:
    _label_conflicts(_repository_labels(repository), config, require_all=True)
    numbers = _pull_request_numbers(repository, number, sha, all_open)
    results = []
    for pull_request in numbers:
        try:
            results.append(reconcile_one(repository, pull_request, config, dry_run, now))
        except ProjectionError as error:
            results.append(
                {
                    "repository": repository,
                    "pull_request": pull_request,
                    "result": "failed",
                    "reason": str(error),
                }
            )
    return results


def _parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description=__doc__)
    commands = parser.add_subparsers(dest="command", required=True)
    reduce_command = commands.add_parser("reduce")
    reduce_command.add_argument("--facts", required=True)
    reduce_command.add_argument("--config", required=True)
    reduce_command.add_argument("--now")
    install_command = commands.add_parser("install-labels")
    install_command.add_argument("--repo", required=True)
    install_command.add_argument("--config", required=True)
    install_command.add_argument("--dry-run", action="store_true")
    reconcile_command = commands.add_parser("reconcile")
    reconcile_command.add_argument("--repo", required=True)
    reconcile_command.add_argument("--config", required=True)
    selectors = reconcile_command.add_mutually_exclusive_group(required=True)
    selectors.add_argument("--pr", type=int)
    selectors.add_argument("--sha")
    selectors.add_argument("--all-open", action="store_true")
    reconcile_command.add_argument("--dry-run", action="store_true")
    reconcile_command.add_argument("--now")
    return parser


def main(argv: list[str] | None = None) -> int:
    args = _parser().parse_args(argv)
    try:
        config = validate_config(load_json(args.config))
        if args.command == "reduce":
            output = reduce_facts(load_json(args.facts), config, _now(args.now))
        elif args.command == "install-labels":
            output = install_labels(args.repo, config, args.dry_run)
        else:
            output = reconcile(
                args.repo,
                config,
                args.pr,
                args.sha,
                args.all_open,
                args.dry_run,
                _now(args.now),
            )
            if any(result["result"] == "failed" for result in output):
                print(json.dumps(output, indent=2, sort_keys=True))
                return 1
    except ProjectionError as error:
        print(json.dumps({"result": "failed", "reason": str(error)}, sort_keys=True), file=sys.stderr)
        return 1
    print(json.dumps(output, indent=2, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
