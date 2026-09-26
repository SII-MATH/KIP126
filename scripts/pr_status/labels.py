#!/usr/bin/env python3
"""Managed-label registry and idempotent label reconciliation."""

from __future__ import annotations

import urllib.parse


def label_map(config: dict) -> dict[str, dict]:
    return {item["name"]: item for item in config["labels"]}


def desired_changes(current_labels: list[str], target_label: str | None, config: dict) -> dict:
    managed = set(label_map(config))
    current = sorted(set(current_labels).intersection(managed))
    return {
        "remove": [name for name in current if name != target_label],
        "add": target_label if target_label and target_label not in current else None,
    }


def reconcile_registry(repository: str, config: dict, gh_json, dry_run: bool) -> dict:
    pages = gh_json(["api", "--paginate", "--slurp", f"repos/{repository}/labels?per_page=100"])
    existing = {
        item["name"]: item
        for page in pages if isinstance(page, list)
        for item in page if isinstance(item, dict) and isinstance(item.get("name"), str)
    }
    created, updated, unchanged = [], [], []
    for name, wanted in label_map(config).items():
        actual = existing.get(name)
        if actual is None:
            created.append(name)
            if not dry_run:
                gh_json([
                    "api", "--method", "POST", f"repos/{repository}/labels",
                    "-f", f"name={name}", "-f", f"color={wanted['color']}",
                    "-f", f"description={wanted['description']}",
                ])
        elif (
            str(actual.get("color") or "").lower() != wanted["color"].lower()
            or str(actual.get("description") or "") != wanted["description"]
        ):
            updated.append(name)
            if not dry_run:
                quoted = urllib.parse.quote(name, safe="")
                gh_json([
                    "api", "--method", "PATCH", f"repos/{repository}/labels/{quoted}",
                    "-f", f"color={wanted['color']}", "-f", f"description={wanted['description']}",
                ])
        else:
            unchanged.append(name)
    return {"created": created, "updated": updated, "unchanged": unchanged, "dry_run": dry_run}


def apply_changes(repository: str, pull_request: int, changes: dict, gh_json) -> None:
    if changes["add"]:
        gh_json([
            "api", "--method", "POST", f"repos/{repository}/issues/{pull_request}/labels",
            "-f", f"labels[]={changes['add']}",
        ])
    for name in changes["remove"]:
        quoted = urllib.parse.quote(name, safe="")
        try:
            gh_json(["api", "--method", "DELETE", f"repos/{repository}/issues/{pull_request}/labels/{quoted}"])
        except RuntimeError as error:
            if "HTTP 404" not in str(error) and "does not exist" not in str(error):
                raise
