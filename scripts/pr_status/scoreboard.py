#!/usr/bin/env python3
"""Validate the canonical TauCeti scoreboard for one exact PR head."""

from __future__ import annotations

import json
import re


MARKER = "<!--tauceti-scoreboard-->"
META_RE = re.compile(r"<!--tauceti-meta:v1 (.*?)-->", re.DOTALL)
IN_PROGRESS_RE = re.compile(r"<!--tauceti-review-in-progress (.*?)-->", re.DOTALL)
BLOCKING_STATES = {"blocking_request", "blocking_block"}
KNOWN_STATES = BLOCKING_STATES | {"green", "stale", "error", "absent"}


def _association(comment: dict) -> str:
    return str(comment.get("author_association") or comment.get("authorAssociation") or "NONE")


def _updated(comment: dict) -> str:
    return str(
        comment.get("updated_at")
        or comment.get("updatedAt")
        or comment.get("created_at")
        or comment.get("createdAt")
        or ""
    )


def parse_meta(body: str) -> dict | None:
    matches = META_RE.findall(body or "")
    if not matches:
        return None
    try:
        value = json.loads(matches[-1].strip())
    except json.JSONDecodeError:
        return None
    return value if isinstance(value, dict) else None


def newest_trusted(comments: list[dict], trusted_associations: set[str]) -> tuple[dict | None, bool]:
    marked = [comment for comment in comments if MARKER in str(comment.get("body") or "")]
    trusted = [comment for comment in marked if _association(comment) in trusted_associations]
    if not trusted:
        return None, bool(marked)
    return max(trusted, key=_updated), bool(marked)


def review_in_progress(
    comments: list[dict], head_sha: str, now_epoch: int, trusted_associations: set[str]
) -> bool:
    for comment in comments:
        if _association(comment) not in trusted_associations:
            continue
        for match in IN_PROGRESS_RE.findall(str(comment.get("body") or "")):
            try:
                value = json.loads(match)
            except json.JSONDecodeError:
                continue
            expires = value.get("expires_at")
            if value.get("head") == head_sha and isinstance(expires, int) and expires > now_epoch:
                return True
    return False


def evaluate(
    comments: list[dict],
    repository: str,
    pull_request: int,
    head_sha: str,
    required_rubrics: set[str],
    expected_rubrics_sha: str,
    trusted_associations: set[str],
) -> dict:
    board, had_marked = newest_trusted(comments, trusted_associations)
    if board is None:
        state = "untrusted" if had_marked else "absent"
        return {"state": state, "head_sha": None, "url": None, "reason": f"scoreboard:{state}"}

    body = str(board.get("body") or "")
    meta = parse_meta(body)
    url = board.get("html_url") or board.get("url")
    if meta is None or meta.get("kind") != "scoreboard":
        return {"state": "error", "head_sha": None, "url": url, "reason": "scoreboard:invalid-meta"}
    board_head = str(meta.get("head_sha") or "")
    if board_head != head_sha:
        return {"state": "stale", "head_sha": board_head or None, "url": url, "reason": "scoreboard:stale"}
    if str(meta.get("repo") or "").lower() != repository.lower() or meta.get("pr") != pull_request:
        return {"state": "untrusted", "head_sha": board_head, "url": url, "reason": "scoreboard:identity-mismatch"}
    if str(meta.get("rubrics_sha") or "") != expected_rubrics_sha:
        return {"state": "untrusted", "head_sha": board_head, "url": url, "reason": "scoreboard:rubrics-sha-mismatch"}
    states = meta.get("states")
    if not isinstance(states, dict) or not states or any(value not in KNOWN_STATES for value in states.values()):
        return {"state": "error", "head_sha": board_head, "url": url, "reason": "scoreboard:invalid-states"}
    missing = sorted(required_rubrics.difference(states))
    if missing:
        return {
            "state": "running",
            "head_sha": board_head,
            "url": url,
            "reason": "scoreboard:missing-rubrics:" + ",".join(missing),
        }
    if any(value in BLOCKING_STATES for value in states.values()):
        return {"state": "blocked", "head_sha": board_head, "url": url, "reason": "scoreboard:blocked"}
    if any(value == "error" for value in states.values()):
        return {"state": "error", "head_sha": board_head, "url": url, "reason": "scoreboard:error"}
    if any(value != "green" for value in states.values()):
        return {"state": "running", "head_sha": board_head, "url": url, "reason": "scoreboard:incomplete"}
    return {"state": "green", "head_sha": board_head, "url": url, "reason": "scoreboard:green"}
