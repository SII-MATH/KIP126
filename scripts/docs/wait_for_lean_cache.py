"""Wait for an exact-input producer cache; never silently start a second build.

Only default-branch cache entries are accepted. Candidate outputs have a
separate namespace, including the trusted build contract, and cannot seed the
main baseline. Cache availability is NOT a successful build/audit attestation.
"""

import argparse
import json
import os
import re
import subprocess
import time
import urllib.parse


def github(repo, endpoint, **query):
    url = f"repos/{repo}/{endpoint}"
    if query:
        url += "?" + urllib.parse.urlencode(query)
    result = subprocess.run(
        ["gh", "api", url], check=True, capture_output=True, text=True, timeout=45
    )
    return json.loads(result.stdout)


def exact_cache(payload, key):
    # The API's key filter is a PREFIX filter, not an equality check.
    return any(
        item.get("key") == key
        and item.get("ref") == "refs/heads/main"
        and item.get("size_in_bytes", 0) > 0
        for item in payload.get("actions_caches", [])
    )


def wait_for_cache(repo, keys, sha, workflow, *, timeout=3600, interval=30,
                   api=github, clock=time.monotonic, sleep=time.sleep):
    deadline = clock() + timeout
    missing_since = None
    while True:
        for key in keys:
            if exact_cache(api(repo, "actions/caches", key=key,
                               ref="refs/heads/main", per_page=100), key):
                return key
        runs = api(repo, f"actions/workflows/{workflow}/runs",
                   head_sha=sha, per_page=100).get("workflow_runs", [])
        runs = [run for run in runs if run.get("head_sha") == sha
                and run.get("path", "").split("@")[0] == f".github/workflows/{workflow}"]
        latest = max(runs, key=lambda run: run["id"]) if runs else None
        if latest and latest.get("status") == "completed":
            raise RuntimeError(
                f"Producer {latest.get('html_url', latest['id'])} completed "
                f"({latest.get('conclusion')}) without matching Lean outputs. "
                "Fix/re-run the producer; refusing a duplicate compilation."
            )
        if latest is None:
            missing_since = clock() if missing_since is None else missing_since
            if clock() - missing_since >= 180:
                raise RuntimeError(
                    "No matching cache or producer run found. Run the main CI or "
                    "pr-build producer first; refusing a duplicate compilation."
                )
        else:
            missing_since = None
        if clock() >= deadline:
            raise TimeoutError("Timed out waiting for exact-input Lean outputs; no fallback build.")
        print(f"Waiting for {workflow} at {sha[:12]} to publish Lean outputs", flush=True)
        sleep(min(interval, max(0, deadline - clock())))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repo", required=True)
    parser.add_argument("--key", action="append", required=True)
    parser.add_argument("--sha", required=True)
    parser.add_argument("--workflow", choices=["ci.yml", "pr-build.yml"], required=True)
    parser.add_argument("--timeout", type=int, default=3600)
    args = parser.parse_args()
    if not re.fullmatch(r"[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+", args.repo):
        parser.error("invalid repository")
    if not re.fullmatch(r"[0-9a-f]{40}", args.sha):
        parser.error("expected an immutable commit SHA")
    for key in args.key:
        if not re.fullmatch(
            r"kip126-(main-build-v2|pr-build-v1)-[A-Za-z0-9_-]+-[0-9a-f]{64}"
            r"(-[0-9a-f]{32})?", key
        ):
            parser.error("invalid Lean cache key")
    key = wait_for_cache(args.repo, args.key, args.sha, args.workflow, timeout=args.timeout)
    print(f"Exact-input Lean outputs ready: {key}")
    if output := os.environ.get("GITHUB_OUTPUT"):
        with open(output, "a", encoding="utf-8") as stream:
            stream.write(f"key={key}\n")


if __name__ == "__main__":
    main()
