"""Wait for an exact-input producer cache; never silently start a second build.

Only default-branch cache entries are accepted. Candidate outputs have a
separate namespace, including the trusted build contract, and cannot seed the
main baseline. Cache availability is NOT a successful build/audit attestation.
"""

import argparse
import io
import json
import os
import re
import subprocess
import time
import urllib.parse
import zipfile


TOOLING_WORKFLOW = ".github/workflows/pr-build.yml"
MAX_METADATA_ARCHIVE = 16384
MAX_METADATA_JSON = 4096


def github(repo, endpoint, **query):
    url = f"repos/{repo}" + (f"/{endpoint}" if endpoint else "")
    if query:
        url += "?" + urllib.parse.urlencode(query)
    result = subprocess.run(
        ["gh", "api", url], check=True, capture_output=True, text=True, timeout=45
    )
    return json.loads(result.stdout)


def download_artifact(repo, artifact_id):
    # The ID comes from the selected run's artifact list, never from the JSON's
    # URL or a candidate-supplied download location. gh follows GitHub's redirect.
    result = subprocess.run(
        ["gh", "api", f"repos/{repo}/actions/artifacts/{artifact_id}/zip"],
        check=True, capture_output=True, timeout=45,
    )
    return result.stdout


def trusted_pr_run(run, repo, sha, *, run_id=None, attempt=None):
    return (
        type(run.get("id")) is int and run["id"] > 0
        and type(run.get("run_attempt")) is int and run["run_attempt"] > 0
        and run.get("repository", {}).get("full_name") == repo
        and run.get("head_sha") == sha
        and run.get("path") == TOOLING_WORKFLOW
        and run.get("event") == "pull_request_target"
        and (run_id is None or run["id"] == run_id)
        and (attempt is None or run["run_attempt"] == attempt)
    )


def require_bound_run(repo, sha, run_id, attempt, api):
    run = api(repo, f"actions/runs/{run_id}")
    if not trusted_pr_run(run, repo, sha, run_id=run_id, attempt=attempt):
        raise RuntimeError(
            "Producer identity/attempt changed or is untrusted; resolve tooling "
            "again in a new docs run (no fallback contract)."
        )
    return run


def tooling_metadata(archive, repo, sha, run, default_branch):
    if len(archive) > MAX_METADATA_ARCHIVE:
        raise RuntimeError("producer tooling archive is too large")
    with zipfile.ZipFile(io.BytesIO(archive)) as zipped:
        entries = zipped.infolist()
        if (len(entries) != 1 or entries[0].filename != "tooling.json"
                or entries[0].file_size > MAX_METADATA_JSON):
            raise RuntimeError("expected one small tooling.json in producer artifact")
        metadata = json.loads(zipped.read(entries[0]))
    expected = {
        "schema": 1, "repository": repo, "head_sha": sha,
        "run_id": run["id"], "run_attempt": run["run_attempt"],
        "event": "pull_request_target", "workflow_path": TOOLING_WORKFLOW,
        "workflow_ref": f"{repo}/{TOOLING_WORKFLOW}@refs/heads/{default_branch}",
    }
    if not isinstance(metadata, dict) or any(
        type(metadata.get(key)) is not type(value) or metadata[key] != value
        for key, value in expected.items()
    ):
        raise RuntimeError("producer tooling metadata does not match the trusted run")
    if not isinstance(metadata.get("tooling_sha"), str) or not re.fullmatch(
        r"[0-9a-f]{40}", metadata["tooling_sha"]
    ):
        raise RuntimeError("producer tooling must be an immutable commit SHA")
    return metadata


def resolve_tooling(repo, sha, *, timeout=3600, interval=30, api=github,
                    download=download_artifact, clock=time.monotonic, sleep=time.sleep):
    """Read tooling only from a trusted PR producer's run-bound setup artifact.

    The producer writes it before executing candidate code, which cannot access
    the metadata or artifact credentials in the sandbox. A same-named artifact
    from a PR workflow, another repository/run/attempt, or workflow_dispatch is
    never a source of executable tooling. Metadata is not build-success evidence.
    """
    repository = api(repo, "")
    if (repository.get("full_name") != repo
            or type(repository.get("id")) is not int
            or not repository.get("default_branch")):
        raise RuntimeError("could not identify the trusted workflow repository")
    deadline = clock() + timeout
    selected = None
    missing_since = None
    while True:
        if selected is None:
            runs = api(repo, "actions/workflows/pr-build.yml/runs",
                       head_sha=sha, event="pull_request_target", per_page=100).get("workflow_runs", [])
            runs = [run for run in runs if trusted_pr_run(run, repo, sha)
                    and run["repository"].get("id") == repository["id"]]
            selected = max(runs, key=lambda run: run["id"]) if runs else None
        if selected is not None:
            run = require_bound_run(repo, sha, selected["id"], selected["run_attempt"], api)
            name = f"lean-producer-tooling-{run['id']}-{run['run_attempt']}"
            matches = []
            page = 1
            while True:
                payload = api(repo, f"actions/runs/{run['id']}/artifacts", per_page=100, page=page)
                artifacts = payload.get("artifacts", [])
                matches.extend(item for item in artifacts if item.get("name") == name)
                if len(artifacts) < 100:
                    break
                page += 1
            if matches:
                if len(matches) != 1:
                    raise RuntimeError("ambiguous producer tooling artifact")
                artifact = matches[0]
                origin = artifact.get("workflow_run", {})
                if (artifact.get("expired") is not False
                        or type(artifact.get("id")) is not int or artifact["id"] <= 0
                        or type(artifact.get("size_in_bytes")) is not int
                        or not 0 < artifact["size_in_bytes"] <= MAX_METADATA_ARCHIVE
                        or origin.get("id") != run["id"]
                        or origin.get("repository_id") != repository["id"]
                        or origin.get("head_sha") != sha):
                    raise RuntimeError("producer tooling artifact has invalid run provenance or size")
                metadata = tooling_metadata(download(repo, artifact["id"]), repo, sha,
                                            run, repository["default_branch"])
                # A rerun may start between listing artifacts and downloading.
                require_bound_run(repo, sha, run["id"], run["run_attempt"], api)
                return metadata
            if run.get("status") == "completed":
                raise RuntimeError(
                    "Trusted producer completed without tooling metadata. Deploy the metadata "
                    "publisher on the default branch, then trigger a new producer/docs run; "
                    "rerunning an old workflow definition cannot add it. No fallback contract."
                )
        else:
            missing_since = clock() if missing_since is None else missing_since
            if clock() - missing_since >= 180:
                raise RuntimeError("No trusted pull_request_target producer found for this candidate")
        if clock() >= deadline:
            raise TimeoutError("Timed out waiting for trusted producer tooling; no fallback contract.")
        print(f"Waiting for trusted producer tooling at {sha[:12]}", flush=True)
        sleep(min(interval, max(0, deadline - clock())))


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
                   producer_run_id=None, producer_run_attempt=None, cache_ref="refs/heads/main"):
    # Explicit diagnostic dispatches have the workflow ref's head_sha, not the
    # candidate head_sha. The run id selects what to wait for, never what to trust:
    # outputs still need an exact input+contract key. Ordinary runs remain main-only.
    if cache_ref != "refs/heads/main" and producer_run_id is None:
        raise ValueError("a diagnostic cache ref requires an explicit producer run")
    if producer_run_attempt is not None and (
        producer_run_id is None or workflow != "pr-build.yml" or cache_ref != "refs/heads/main"
    ):
        raise ValueError("bound tooling requires a PR producer run and the main cache ref")
    refs = list(dict.fromkeys(("refs/heads/main", cache_ref)))
    deadline = clock() + timeout
    missing_since = None
    while True:
        bound = None
        if producer_run_attempt is not None:
            bound = require_bound_run(repo, sha, producer_run_id, producer_run_attempt, api)
        for key in keys:
            for ref in refs:
                if exact_cache(api(repo, "actions/caches", key=key,
                                   ref=ref, per_page=100), key, refs=(ref,)):
                    if bound is not None:
                        require_bound_run(repo, sha, producer_run_id, producer_run_attempt, api)
                    return key
        if bound is not None:
            latest = bound
        elif producer_run_id is not None:
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
    parser.add_argument("--key", action="append", default=[])
    parser.add_argument("--sha", required=True)
    parser.add_argument("--workflow", choices=["ci.yml", "pr-build.yml"], required=True)
    parser.add_argument("--timeout", type=int, default=3600)
    parser.add_argument("--producer-run-id", type=int)
    parser.add_argument("--producer-run-attempt", type=int)
    parser.add_argument("--resolve-tooling", action="store_true")
    parser.add_argument("--cache-ref", default="refs/heads/main")
    args = parser.parse_args()
    if not re.fullmatch(r"[A-Za-z0-9_.-]+/[A-Za-z0-9_.-]+", args.repo):
        parser.error("invalid repository")
    if not re.fullmatch(r"[0-9a-f]{40}", args.sha):
        parser.error("expected an immutable commit SHA")
    if args.producer_run_id is not None and args.producer_run_id <= 0:
        parser.error("producer run id must be positive")
    if args.producer_run_attempt is not None and args.producer_run_attempt <= 0:
        parser.error("producer run attempt must be positive")
    if args.resolve_tooling:
        if (args.workflow != "pr-build.yml" or args.key or args.producer_run_id is not None
                or args.producer_run_attempt is not None or args.cache_ref != "refs/heads/main"):
            parser.error("tooling resolution selects a trusted PR run; do not supply cache/wait options")
        metadata = resolve_tooling(args.repo, args.sha, timeout=args.timeout)
        print(f"Trusted producer tooling: {metadata['tooling_sha']} "
              f"(run {metadata['run_id']}, attempt {metadata['run_attempt']})")
        if output := os.environ.get("GITHUB_OUTPUT"):
            with open(output, "a", encoding="utf-8") as stream:
                for key in ("tooling_sha", "run_id", "run_attempt"):
                    stream.write(f"{key}={metadata[key]}\n")
        return
    if not args.key:
        parser.error("cache waiting requires at least one --key")
    if not args.cache_ref.startswith("refs/heads/") or any(c.isspace() for c in args.cache_ref):
        parser.error("expected a branch cache ref")
    for key in args.key:
        if not re.fullmatch(
            r"kip126-(main-build-v2|pr-build-v1)-[A-Za-z0-9_-]+-[0-9a-f]{64}"
            r"(-[0-9a-f]{32})?", key
        ):
            parser.error("invalid Lean cache key")
    key = wait_for_cache(args.repo, args.key, args.sha, args.workflow, timeout=args.timeout,
                         producer_run_id=args.producer_run_id,
                         producer_run_attempt=args.producer_run_attempt, cache_ref=args.cache_ref)
    print(f"Exact-input Lean outputs ready: {key}")
    if output := os.environ.get("GITHUB_OUTPUT"):
        with open(output, "a", encoding="utf-8") as stream:
            stream.write(f"key={key}\n")


if __name__ == "__main__":
    main()
