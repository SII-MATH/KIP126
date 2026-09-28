#!/usr/bin/env python3
"""Diff complete Git trees without GitHub's capped PR/compare file lists."""

import argparse
import json
import re
import subprocess


def inventory(payload):
    if payload.get("truncated") is not False or not isinstance(payload.get("tree"), list):
        raise ValueError("Git tree is incomplete; refusing partial scope evidence")
    files = {}
    for entry in payload["tree"]:
        if entry.get("type") == "tree":
            continue
        path = entry.get("path")
        if (not isinstance(path, str) or not path or path.startswith("/")
                or ".." in path.split("/") or any(ord(c) < 32 for c in path)):
            raise ValueError("invalid Git tree path")
        if entry.get("type") not in {"blob", "commit"} or not entry.get("sha") or not entry.get("mode"):
            raise ValueError("invalid Git tree entry")
        if path in files:
            raise ValueError("duplicate Git tree path")
        files[path] = (entry["mode"], entry["type"], entry["sha"])
    return files


def changed_files(base, head):
    before, after = inventory(base), inventory(head)
    result = []
    for path in sorted(before.keys() | after.keys()):
        if before.get(path) != after.get(path):
            status = "added" if path not in before else "removed" if path not in after else "modified"
            result.append({"filename": path, "status": status})
    return result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("repository")
    parser.add_argument("base")
    parser.add_argument("head")
    parser.add_argument("--head-repository", help="head repository, defaulting to repository")
    parser.add_argument("--merge-base", action="store_true",
                        help="compare the exact head to its merge base with the exact base")
    parser.add_argument("--names", action="store_true")
    args = parser.parse_args()
    head_repository = args.repository if args.head_repository is None else args.head_repository
    for repository in (args.repository, head_repository):
        if not re.fullmatch(r"[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+", repository):
            parser.error("invalid repository")
    for sha in (args.base, args.head):
        if not re.fullmatch(r"[0-9a-f]{40}", sha):
            parser.error("base and head must be exact commit SHAs")
    base = args.base
    if args.merge_base:
        head_owner = head_repository.split("/", 1)[0]
        base = subprocess.check_output([
            "gh", "api", f"repos/{args.repository}/compare/{args.base}...{head_owner}:{args.head}",
            "--jq", ".merge_base_commit.sha",
        ], text=True, timeout=60).strip()
        if not re.fullmatch(r"[0-9a-f]{40}", base):
            parser.error("compare response must contain an exact merge-base commit SHA")
    trees = []
    for repository, sha in ((args.repository, base), (head_repository, args.head)):
        trees.append(json.loads(subprocess.check_output([
            "gh", "api", f"repos/{repository}/git/trees/{sha}?recursive=1",
        ], text=True, timeout=60)))
    result = changed_files(*trees)
    if args.names:
        for entry in result:
            print(entry["filename"])
    else:
        print(json.dumps(result))


if __name__ == "__main__":
    main()
