"""Exercise queue evidence rejection, cache ordering, preview routing and review skips."""
import copy
import json
import os
from pathlib import Path
import subprocess
import tempfile
import unittest

import yaml
from scripts.ci_queue_reuse import reusable_head

ROOT = Path(__file__).resolve().parents[1]
SHA = "a" * 40


def workflow(name):
    return yaml.safe_load((ROOT / ".github/workflows" / name).read_text())


class QueueEvidenceTests(unittest.TestCase):
    def setUp(self):
        self.kwargs = dict(repo="test/repo", head_ref="refs/heads/gh-readonly-queue/main/pr-42-" + "b" * 40,
            attestation="build:v1 input=full-input contract=current", input_digest="full-input",
            contract="current", platform="Linux-X64")
        self.pr = {"state": "open", "head": {"sha": SHA, "repo": {"full_name": "test/repo"}}}
        self.statuses = [{"id": 1, "context": "build", "creator": {"login": "github-actions[bot]"},
            "state": "success", "description": self.kwargs["attestation"],
            "target_url": "https://github.com/test/repo/actions/runs/123"}]
        self.run = {"status": "completed", "conclusion": "success", "head_sha": SHA,
                    "path": ".github/workflows/pr-build.yml", "event": "pull_request_target"}
        self.cache = {"key": "kip126-pr-build-v1-Linux-X64-full-input-current",
                      "ref": "refs/heads/main", "size_in_bytes": 123}

    def api(self, path):
        if "/pulls/" in path:
            return self.pr
        if "/statuses?" in path:
            return self.statuses
        if "/runs/" in path:
            return self.run
        if "/caches?" in path:
            return {"actions_caches": [self.cache]}
        raise AssertionError(path)

    def result(self):
        return reusable_head(self.api, **self.kwargs)

    def test_identical_combined_inputs_and_completed_run_reuse(self):
        self.assertEqual(self.result(), SHA)

    def test_changed_batch_inputs_or_contract_rebuild(self):
        for description in ("build:v1 input=other-pr contract=current",
                            "build:v1 input=full-input contract=old"):
            with self.subTest(description=description):
                self.statuses[0]["description"] = description
                self.assertIsNone(self.result())

    def test_newer_failure_cannot_be_ignored(self):
        newer = {**self.statuses[0], "id": 2, "state": "failure"}
        self.statuses.append(newer)
        self.assertIsNone(self.result())

    def test_user_status_and_foreign_run_are_not_evidence(self):
        self.statuses[0]["creator"]["login"] = "someone"
        self.assertIsNone(self.result())
        self.statuses[0]["creator"]["login"] = "github-actions[bot]"
        self.statuses[0]["target_url"] = "https://github.com/other/repo/actions/runs/123"
        self.assertIsNone(self.result())

    def test_wrong_run_head_workflow_or_conclusion_rebuild(self):
        original = copy.deepcopy(self.run)
        for key, value in (("head_sha", "b" * 40), ("path", ".github/workflows/unrelated.yml"),
                           ("conclusion", "failure"), ("status", "in_progress"), ("event", "pull_request")):
            with self.subTest(key=key):
                self.run = {**original, key: value}
                self.assertIsNone(self.result())

    def test_evicted_empty_or_foreign_cache_rebuild(self):
        original = self.cache.copy()
        for key, value in (("key", "other-inputs"), ("size_in_bytes", 0), ("ref", "refs/pull/42/merge")):
            self.cache = {**original, key: value}
            self.assertIsNone(self.result())

    def test_closed_fork_or_unrecognized_queue_hint_rebuild(self):
        self.pr["state"] = "closed"
        self.assertIsNone(self.result())
        self.pr["state"] = "open"
        self.pr["head"]["repo"]["full_name"] = "other/repo"
        self.assertIsNone(self.result())
        self.kwargs["head_ref"] = "refs/heads/main"
        self.assertIsNone(self.result())

    def test_api_failure_falls_back_without_publishing_reuse(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            (root / "gh").write_text("#!/bin/sh\nexit 1\n")
            (root / "gh").chmod(0o755)
            env = {**os.environ, "PATH": f"{root}:{os.environ['PATH']}",
                   "GITHUB_REPOSITORY": "test/repo", "QUEUE_HEAD_REF": self.kwargs["head_ref"],
                   "BUILD_ATTESTATION": self.kwargs["attestation"], "BUILD_INPUT_DIGEST": "full-input",
                   "BUILD_CONTRACT": "current", "CACHE_PLATFORM": "Linux-X64", "GITHUB_ENV": str(root / "env")}
            result = subprocess.run(["python3", ROOT / "scripts/ci_queue_reuse.py"], env=env,
                                    text=True, capture_output=True)
            self.assertEqual(result.returncode, 0, result.stderr)
            self.assertFalse((root / "env").exists())


class WorkflowBoundaryTests(unittest.TestCase):
    def test_dependency_environment_saved_only_before_candidate_execution(self):
        steps = workflow("pr-build.yml")["jobs"]["sandboxed-build"]["steps"]
        ids = {s["id"]: s for s in steps if "id" in s}
        save = next(s for s in steps if s.get("name") == "Save trusted dependency environment before candidate execution")
        self.assertIn("github.event_name != 'merge_group'", save["if"])
        self.assertLess(steps.index(save), steps.index(ids["compile"]))
        self.assertLess(steps.index(ids["dependency-complete"]), steps.index(save))
        self.assertIn("some files were not found in the cache", ids["dependency-complete"]["run"])
        self.assertEqual(ids["dependency-cache"]["with"]["path"], save["with"]["path"])
        self.assertTrue(ids["dependency-cache"]["continue-on-error"])
        self.assertNotIn("restore-keys", ids["dependency-cache"]["with"])
        self.assertNotIn("base/.lake/build", save["with"]["path"])
        for path in ("lean-toolchain", "lake-manifest.json", "lakefile.lean"):
            self.assertIn(path, ids["dependency-cache"]["with"]["key"])

    def test_queue_reuse_checks_actual_overlay_and_runs_after_guards(self):
        steps = workflow("pr-build.yml")["jobs"]["sandboxed-build"]["steps"]
        reuse = next(s for s in steps if s.get("id") == "queue-reuse")
        self.assertIn('diff -qr -- "base/$path" "pr/$path"', reuse["run"])
        self.assertIn("KIPBase", reuse["run"])
        self.assertIn("-type l", reuse["run"])
        guards = [i for i, s in enumerate(steps) if "guard" in s.get("name", "").lower()
                  and "Report" not in s.get("name", "")]
        self.assertGreater(steps.index(reuse), max(guards))

    def test_pr_api_docs_require_opt_in_and_mechanical_links_still_run(self):
        data = workflow("pages.yml")
        self.assertIn("contains(github.event.pull_request.labels.*.name, 'docs-preview')", data["jobs"]["docs"]["if"])
        self.assertIn("github.event_name != 'pull_request'", data["jobs"]["docs"]["if"])
        self.assertNotIn("docs-preview", data["jobs"]["links"].get("if", ""))
        events = data.get("on", data.get(True))
        self.assertIn("labeled", events["pull_request"]["types"])


class ReviewEligibilityTests(unittest.TestCase):
    def run_resolver(self, *, draft=False, stale=False, source="KIP126/A.lean", scope="success",
                     title="PROJ-1 source change", event="workflow_run", api_failure=False):
        steps = workflow("review.yml")["jobs"]["resolve"]["steps"]
        script = next(s["run"] for s in steps if s.get("id") == "resolve")
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            (root / "event.json").write_text(json.dumps({"workflow_run": {"pull_requests": [{"number": 42}],
                                                         "head_sha": "b" * 40 if stale else SHA}}))
            pr = {"state": "open", "draft": draft, "title": title, "body": "", "head": {"sha": SHA, "ref": "feature"},
                  "base": {"sha": "b" * 40}}
            statuses = {"statuses": [{"context": c, "state": scope if c == "scope" else "success",
                "updated_at": "2026-09-27", "id": 1, "target_url": "https://example.invalid"}
                for c in ("scope", "build", "bump-guard")]}
            (root / "gh").write_text('''#!/usr/bin/env python3
import json, os, sys
path = sys.argv[2]
if os.environ['API_FAILURE'] == '1': sys.exit(1)
if '/files' in ' '.join(sys.argv): print(os.environ['SOURCE'])
elif '/compare/' in path: print('b' * 40)
elif path.endswith('/status'): print(os.environ['STATUSES'])
else: print(os.environ['PR_JSON'])
''')
            (root / "gh").chmod(0o755)
            env = {**os.environ, "PATH": f"{root}:{os.environ['PATH']}", "EVENT": event,
                "GITHUB_EVENT_PATH": str(root / "event.json"), "GITHUB_OUTPUT": str(root / "output"),
                "REPO": "test/repo", "PR_JSON": json.dumps(pr), "STATUSES": json.dumps(statuses), "SOURCE": source,
                "API_FAILURE": str(int(api_failure)), "RUBRIC_REVISION": "c" * 40, "DISPATCH_PR": "42",
                "DISPATCH_RETRY": "false", "RUN_ID": "123", "COMMENT_ID": ""}
            result = subprocess.run(["bash", "-c", script], cwd=root, env=env, text=True, capture_output=True)
            output = (root / "output").read_text() if (root / "output").exists() else ""
            return result, output, (root / "request.json").exists()

    def test_routine_ineligible_events_skip_without_dispatch_identity(self):
        for kwargs in ({"draft": True}, {"stale": True}, {"source": "scripts/tool.py"},
                       {"scope": "failure"}, {"title": "ordinary source change"}):
            with self.subTest(kwargs=kwargs):
                result, output, request = self.run_resolver(**kwargs)
                self.assertEqual(result.returncode, 0, result.stderr)
                self.assertIn("Review skipped:", result.stdout)
                self.assertNotIn("idempotency_key=", output)
                self.assertFalse(request)

    def test_eligible_request_still_produces_exact_head_identity(self):
        result, output, request = self.run_resolver()
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertIn("idempotency_key=tauceti-review-", output)
        self.assertTrue(request)

    def test_explicit_ineligible_request_and_real_api_error_still_fail(self):
        for kwargs in ({"event": "workflow_dispatch", "draft": True}, {"api_failure": True}):
            result, output, request = self.run_resolver(**kwargs)
            self.assertNotEqual(result.returncode, 0)
            self.assertFalse(request)

    def test_webhook_requires_completed_request_identity(self):
        steps = workflow("review.yml")["jobs"]["resolve"]["steps"]
        dispatch = next(s for s in steps if s["name"] == "Dispatch the Multica Euler reviewer webhook")
        self.assertIn("steps.resolve.outputs.idempotency_key != ''", dispatch["if"])


if __name__ == "__main__":
    unittest.main()
