#!/usr/bin/env python3
"""Validate the single authorized Blueprint synchronization commit."""

from __future__ import annotations

import re


SOURCE_RE = re.compile(r"^Euler-Blueprint-Sync-From:\s*([0-9a-f]{40})\s*$", re.MULTILINE)
RECOMMENDATION_RE = re.compile(r"^Euler-Blueprint-Recommendation:\s*([0-9a-f]{64})\s*$", re.MULTILINE)


def parse_trailers(message: str) -> tuple[str | None, str | None]:
    source = SOURCE_RE.findall(message or "")
    recommendation = RECOMMENDATION_RE.findall(message or "")
    if len(source) != 1 or len(recommendation) != 1:
        return None, None
    return source[0], recommendation[0]


def _creator(status: dict) -> str | None:
    creator = status.get("creator")
    return creator.get("login") if isinstance(creator, dict) else status.get("creator_login")


def validate(
    head_sha: str,
    head_repository: str,
    repository: str,
    commit: dict,
    changed_since_source: list[str],
    authorization_statuses: list[dict],
    context: str,
    trusted_creators: set[str],
) -> dict:
    message = str((commit.get("commit") or {}).get("message") or commit.get("message") or "")
    source, recommendation = parse_trailers(message)
    parents = commit.get("parents") or []
    first_parent = (parents[0] or {}).get("sha") if parents and isinstance(parents[0], dict) else None
    ancestry_valid = bool(source and first_parent == source and source != head_sha)
    paths_valid = bool(changed_since_source) and all(path.startswith("blueprint/src/") for path in changed_since_source)
    same_repository = head_repository.lower() == repository.lower()
    relevant = [
        status for status in authorization_statuses
        if isinstance(status, dict)
        and status.get("context") == context
        and status.get("sha", source) == source
        and _creator(status) in trusted_creators
    ]
    chosen = max(
        relevant,
        key=lambda status: (str(status.get("created_at") or status.get("updated_at") or ""), status.get("id") or 0),
        default=None,
    )
    authorization_valid = bool(
        chosen
        and chosen.get("state") == "success"
        and chosen.get("description") == f"recommendation={recommendation}"
    )
    reasons = []
    if not same_repository:
        reasons.append("mixed-sync:fork-not-writable")
    if source is None or recommendation is None:
        reasons.append("mixed-sync:invalid-trailers")
    if not ancestry_valid:
        reasons.append("mixed-sync:invalid-ancestry")
    if not paths_valid:
        reasons.append("mixed-sync:invalid-paths")
    if not authorization_valid:
        reasons.append("mixed-sync:authorization-missing-or-mismatched")
    return {
        "profile": "reviewer-mixed-sync",
        "source_head": source,
        "recommendation_hash": recommendation,
        "authorization_valid": authorization_valid and same_repository,
        "ancestry_valid": ancestry_valid,
        "paths_valid": paths_valid,
        "reason": reasons[0] if reasons else "mixed-sync:valid",
        "reasons": reasons,
    }
