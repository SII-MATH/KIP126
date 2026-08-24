#!/usr/bin/env python3
"""Reduce exact-head GitHub facts to one KIP126 status projection."""

from __future__ import annotations

import json
import pathlib
import time

try:
    from . import scoreboard
except ImportError:  # direct script execution from scripts/pr_status
    import scoreboard


SCHEMA = "kip126-pr-status/v2"
ACCEPTED_STATUS_STATES = {"pending", "success", "failure", "error"}


class ProjectionError(RuntimeError):
    pass


def load_config(path: str | pathlib.Path) -> dict:
    try:
        value = json.loads(pathlib.Path(path).read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError) as error:
        raise ProjectionError(f"cannot read projection config: {error}") from error
    return validate_config(value)


def validate_config(config: object) -> dict:
    if not isinstance(config, dict) or config.get("schema") != SCHEMA:
        raise ProjectionError(f"config must use {SCHEMA}")
    contexts = config.get("mechanical_contexts")
    if not isinstance(contexts, list) or not contexts or len(contexts) != len(set(contexts)):
        raise ProjectionError("mechanical_contexts must be a non-empty unique list")
    rubrics = config.get("review_rubrics")
    profiles = {"lean", "blueprint", "reviewer-mixed-sync"}
    if not isinstance(rubrics, dict) or set(rubrics) != profiles:
        raise ProjectionError("review_rubrics must define lean, blueprint, and reviewer-mixed-sync")
    if any(not isinstance(values, list) or not values or len(values) != len(set(values)) for values in rubrics.values()):
        raise ProjectionError("every review rubric profile must be a non-empty unique list")
    for key in (
        "mechanical_trusted_creators",
        "scoreboard_trusted_associations",
        "sync_trusted_creators",
        "ready_mergeable_states",
    ):
        values = config.get(key)
        if not isinstance(values, list) or not values or not all(isinstance(value, str) for value in values):
            raise ProjectionError(f"{key} must be a non-empty string list")
    if not isinstance(config.get("review_rubrics_sha"), str) or len(config["review_rubrics_sha"]) != 40:
        raise ProjectionError("review_rubrics_sha must be an exact 40-character commit")
    if not isinstance(config.get("sync_context"), str) or not config["sync_context"]:
        raise ProjectionError("sync_context must be set")
    labels = config.get("labels")
    expected = {"awaiting-CI", "awaiting-review", "review-in-progress", "awaiting-author", "ready-to-merge"}
    if not isinstance(labels, list) or {item.get("name") for item in labels if isinstance(item, dict)} != expected:
        raise ProjectionError("config must define the five managed labels")
    return config


def classify_profile(paths: list[str]) -> str:
    blueprint = any(path.startswith("blueprint/src/") for path in paths)
    lean = any(path == "KIP126.lean" or path.startswith("KIP126/") and path.endswith(".lean") for path in paths)
    if blueprint and lean:
        return "reviewer-mixed-sync"
    if blueprint:
        return "blueprint"
    return "lean"


def _creator_login(status: dict) -> str | None:
    creator = status.get("creator")
    return creator.get("login") if isinstance(creator, dict) else status.get("creator_login")


def resolve_status(statuses: list[dict], context: str, head_sha: str, trusted_creators: set[str]) -> dict:
    relevant = [
        status for status in statuses
        if isinstance(status, dict) and status.get("context") == context and status.get("sha", head_sha) == head_sha
    ]
    trusted = [status for status in relevant if _creator_login(status) in trusted_creators]
    if not trusted:
        return {"state": "absent", "reason": f"{context}:absent"}
    chosen = max(trusted, key=lambda status: (str(status.get("created_at") or status.get("updated_at") or ""), status.get("id") or 0))
    state = chosen.get("state")
    if state not in ACCEPTED_STATUS_STATES:
        return {"state": "ambiguous", "reason": f"{context}:invalid-state"}
    return {"state": state, "reason": f"{context}:{state}", "evidence": chosen}


def _mechanical_state(value: str) -> str:
    return {
        "success": "success",
        "pending": "pending",
        "failure": "failure",
        "error": "failure",
        "absent": "absent",
        "ambiguous": "failure",
    }[value]


def reduce_facts(facts: object, config: object, now_epoch: int | None = None) -> dict:
    config = validate_config(config)
    if not isinstance(facts, dict):
        raise ProjectionError("facts must be an object")
    state = facts.get("state")
    merged = facts.get("merged") is True or state == "merged"
    head_sha = facts.get("head_sha")
    if not isinstance(head_sha, str) or len(head_sha) != 40:
        raise ProjectionError("facts must contain the current 40-character head_sha")
    profile = facts.get("profile") or classify_profile(facts.get("paths") or [])
    if profile not in config["review_rubrics"]:
        raise ProjectionError(f"unsupported profile: {profile!r}")

    base = {
        "head_sha": head_sha,
        "mechanical": {},
        "review": {"scoreboard_state": "absent", "scoreboard_head": None, "url": None},
        "sync": facts.get("sync") or {
            "profile": profile,
            "authorization_valid": profile != "reviewer-mixed-sync",
            "ancestry_valid": profile != "reviewer-mixed-sync",
            "paths_valid": profile != "reviewer-mixed-sync",
        },
        "merge_allowed": False,
        "phase": "awaiting-review",
        "target_label": "awaiting-review",
        "reason": "scoreboard:absent",
        "reasons": ["scoreboard:absent"],
    }
    if merged or state == "closed":
        return {**base, "phase": "terminal", "target_label": None, "reason": "pull-request-terminal", "reasons": ["pull-request-terminal"]}
    if state != "open":
        raise ProjectionError(f"unsupported pull request state: {state!r}")
    if facts.get("draft") is True:
        return {**base, "phase": "awaiting-author", "target_label": "awaiting-author", "reason": "pull-request-draft", "reasons": ["pull-request-draft"]}

    statuses = facts.get("statuses")
    comments = facts.get("comments")
    if not isinstance(statuses, list) or not isinstance(comments, list):
        raise ProjectionError("facts must contain status and comment lists")
    contexts = list(config["mechanical_contexts"])
    if profile in {"blueprint", "reviewer-mixed-sync"}:
        contexts.append("blueprint")
    resolved = {
        context: resolve_status(statuses, context, head_sha, set(config["mechanical_trusted_creators"]))
        for context in contexts
    }
    mechanical = {context.replace("-", "_"): _mechanical_state(result["state"]) for context, result in resolved.items()}
    if "blueprint" not in mechanical:
        mechanical["blueprint"] = "not_required"
    base["mechanical"] = mechanical
    mechanical_failures = [result["reason"] for result in resolved.values() if result["state"] in {"failure", "error", "ambiguous"}]
    if mechanical_failures:
        return {**base, "phase": "awaiting-author", "target_label": "awaiting-author", "reason": mechanical_failures[0], "reasons": mechanical_failures}
    mechanical_waiting = [result["reason"] for result in resolved.values() if result["state"] in {"absent", "pending"}]
    if mechanical_waiting:
        return {**base, "phase": "awaiting-CI", "target_label": "awaiting-CI", "reason": mechanical_waiting[0], "reasons": mechanical_waiting}

    if profile == "reviewer-mixed-sync":
        sync = base["sync"]
        if not all(sync.get(key) is True for key in ("authorization_valid", "ancestry_valid", "paths_valid")):
            reason = str(sync.get("reason") or "mixed-sync:invalid")
            return {**base, "phase": "awaiting-author", "target_label": "awaiting-author", "reason": reason, "reasons": [reason]}

    review = scoreboard.evaluate(
        comments,
        str(facts.get("repository") or ""),
        int(facts.get("number")),
        head_sha,
        set(config["review_rubrics"][profile]),
        config["review_rubrics_sha"],
        set(config["scoreboard_trusted_associations"]),
    )
    base["review"] = {
        "scoreboard_state": review["state"],
        "scoreboard_head": review.get("head_sha"),
        "url": review.get("url"),
    }
    if review["state"] == "blocked":
        return {**base, "phase": "awaiting-author", "target_label": "awaiting-author", "reason": review["reason"], "reasons": [review["reason"]]}
    if review["state"] == "running" or scoreboard.review_in_progress(
        comments, head_sha, int(time.time()) if now_epoch is None else now_epoch,
        set(config["scoreboard_trusted_associations"]),
    ):
        return {**base, "phase": "review-in-progress", "target_label": "review-in-progress", "reason": review["reason"], "reasons": [review["reason"]]}
    if review["state"] != "green":
        return {**base, "phase": "awaiting-review", "target_label": "awaiting-review", "reason": review["reason"], "reasons": [review["reason"]]}

    mergeable = facts.get("mergeable")
    mergeable_state = facts.get("mergeable_state")
    if mergeable is False or mergeable_state in {"dirty", "blocked"}:
        reason = f"merge-blocked:{mergeable_state}"
        return {**base, "phase": "awaiting-author", "target_label": "awaiting-author", "reason": reason, "reasons": [reason]}
    if mergeable_state == "behind":
        reason = "mergeability-ambiguous:behind"
        return {**base, "phase": "awaiting-review", "target_label": "awaiting-review", "reason": reason, "reasons": [reason]}
    if mergeable is not True or mergeable_state not in set(config["ready_mergeable_states"]):
        reason = f"mergeability-ambiguous:{mergeable_state}"
        return {**base, "phase": "awaiting-review", "target_label": "awaiting-review", "reason": reason, "reasons": [reason]}
    return {
        **base,
        "merge_allowed": True,
        "phase": "ready-to-merge",
        "target_label": "ready-to-merge",
        "reason": "fresh-exact-head-scoreboard-green",
        "reasons": ["fresh-exact-head-scoreboard-green"],
    }
