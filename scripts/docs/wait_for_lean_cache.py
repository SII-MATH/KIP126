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


def exact_cache(payload, key, refs=("refs/heads/main",)):
    # The API's key filter is a PREFIX filter, not an equality check.
    return any(
        item.get("key") == key
        and item.get("ref") in refs
        and item.get("size_in_bytes", 0) > 0
        for item in payload.get("actions_caches", [])
    )


def wait_for_cache(repo, keys, sha, workflow, *, timeout=3600, interval=30,
                   api=github, clock=time.monotonic, sleep=time.sleep,
                   producer_run_id=None, cache_ref="refs/heads/main"):
    # Explicit diagnostic dispatches have the workflow ref's head_sha, not the
    # candidate head_sha. The run id selects what to wait for, never what to trust:
    # outputs still need an exact input+contract key. Ordinary runs remain main-only.
    if cache_ref != "refs/heads/main" and producer_run_id is None:
        raise ValueError("a diagnostic cache ref requires an explicit producer run")
    refs = list(dict.fromkeys(("refs/heads/main", cache_ref)))
    deadline = clock() + timeout
    missing_since = None
    while True:
        for key in keys:
            for ref in refs:
                if exact_cache(api(repo, "actions/caches", key=key,
                                   ref=ref, per_page=100), key, refs=(ref,)):
                    return key
        if producer_run_id is not None:
            latest = api(repo, f"actions/runs/{producer_run_id}")
            if (latest.get("id") != producer_run_id or
                    latest.get("path", "").split("@")[0] != f".github/workflows/{workflow}"):
                raise RuntimeError("explicit producer run does not match the requested workflow")
        else:
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
    parser.add_argument("--producer-run-id", type=int)
    parser.add_argument("--cache-ref", default="refs/heads/main")
    args = parser.parse_args()
    if not re.fullmatch(r"[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+", args.repo):
        parser.error("invalid repository")
    if not re.fullmatch(r"[0-9a-f]{40}", args.sha):
        parser.error("expected an immutable commit SHA")
    if args.producer_run_id is not None and args.producer_run_id <= 0:
        parser.error("producer run id must be positive")
    if not args.cache_ref.startswith("refs/heads/") or any(c.isspace() for c in args.cache_ref):
        parser.error("expected a branch cache ref")
    for key in args.key:
        if not re.fullmatch(
            r"kip126-(main-build-v2|pr-build-v1)-[A-Za-z0-9_-]+-[0-9a-f]{64}"
            r"(-[0-9a-f]{32})?", key
        ):
            parser.error("invalid Lean cache key")
    key = wait_for_cache(args.repo, args.key, args.sha, args.workflow, timeout=args.timeout,
                         producer_run_id=args.producer_run_id, cache_ref=args.cache_ref)
    print(f"Exact-input Lean outputs ready: {key}")
    if output := os.environ.get("GITHUB_OUTPUT"):
        with open(output, "a", encoding="utf-8") as stream:
            stream.write(f"key={key}\n")


if __name__ == "__main__":
    main()
