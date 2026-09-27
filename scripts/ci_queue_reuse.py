#!/usr/bin/env python3
"""Reuse a PR build only when the combined queue inputs and trusted evidence match."""
import json
import os
from pathlib import Path
import re
import subprocess
from urllib.parse import urlencode


def gh_json(path):
    return json.loads(subprocess.check_output(["gh", "api", path], text=True))


def reusable_head(api, *, repo, head_ref, attestation, input_digest, contract, platform):
    # This hint identifies a candidate PR, never evidence that the whole batch passed.
    match = re.fullmatch(r"refs/heads/gh-readonly-queue/.+/pr-(\d+)-[0-9a-f]{40}", head_ref)
    if not match:
        return None
    pr = api(f"repos/{repo}/pulls/{match[1]}")
    if pr.get("state") != "open" or pr.get("head", {}).get("repo", {}).get("full_name") != repo:
        return None
    sha = pr["head"]["sha"]
    if not re.fullmatch(r"[0-9a-f]{40}", sha):
        return None
    statuses = api(f"repos/{repo}/commits/{sha}/statuses?per_page=100")
    trusted = [s for s in statuses if s.get("context") == "build"
               and s.get("creator", {}).get("login") == "github-actions[bot]"]
    if not trusted:
        return None
    status = max(trusted, key=lambda s: s["id"])
    if status.get("state") != "success" or status.get("description") != attestation:
        return None
    run_match = re.fullmatch(re.escape(f"https://github.com/{repo}/actions/runs/") + r"(\d+)",
                             status.get("target_url", ""))
    if not run_match:
        return None
    run = api(f"repos/{repo}/actions/runs/{run_match[1]}")
    if (run.get("conclusion") != "success" or run.get("status") != "completed"
            or run.get("head_sha") != sha or run.get("path") != ".github/workflows/pr-build.yml"
            or run.get("event") not in ("pull_request_target", "workflow_dispatch")):
        return None
    # Consumers still need actual outputs. An evicted cache means compile again.
    for key in (f"kip126-pr-build-v1-{platform}-{input_digest}-{contract}",
                f"kip126-main-build-v2-{platform}-{input_digest}"):
        caches = api(f"repos/{repo}/actions/caches?" + urlencode(
            {"key": key, "ref": "refs/heads/main", "per_page": 100}))
        if any(c.get("key") == key and c.get("ref") == "refs/heads/main"
               and c.get("size_in_bytes", 0) > 0 for c in caches.get("actions_caches", [])):
            return sha
    return None


def main():
    try:
        sha = reusable_head(gh_json, repo=os.environ["GITHUB_REPOSITORY"],
            head_ref=os.environ["QUEUE_HEAD_REF"], attestation=os.environ["BUILD_ATTESTATION"],
            input_digest=os.environ["BUILD_INPUT_DIGEST"], contract=os.environ["BUILD_CONTRACT"],
            platform=os.environ["CACHE_PLATFORM"])
    except (AttributeError, KeyError, TypeError, ValueError, subprocess.CalledProcessError) as exc:
        print(f"Queue evidence unavailable ({type(exc).__name__}); running normal compilation.")
        return
    if sha:
        with Path(os.environ["GITHUB_ENV"]).open("a") as out:
            out.write(f"BUILD_REUSED=1\nBUILD_REUSED_FROM={sha}\n")
        print(f"Reusing completed PR build {sha}: combined inputs, contract and outputs match.")
    else:
        print("No equivalent completed PR build with available outputs; running normal compilation.")


if __name__ == "__main__":
    main()
