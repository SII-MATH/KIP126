import copy
import io
import json
import unittest
import zipfile

from scripts.docs.wait_for_lean_cache import exact_cache, resolve_tooling, wait_for_cache


KEY = "kip126-main-build-v2-Linux-X64-" + "a" * 64
SHA = "b" * 40
REPO = "SII-MATH/KIP126"
TOOLING_SHA = "c" * 40


class CacheWaitTests(unittest.TestCase):
    def entry(self, **overrides):
        return {"key": KEY, "ref": "refs/heads/main", "size_in_bytes": 123, **overrides}

    def test_accepts_only_nonempty_exact_key_on_main(self):
        self.assertTrue(exact_cache({"actions_caches": [self.entry()]}, KEY))
        for change in [
            {"key": KEY + "-stale"},
            {"key": "another-key"},
            {"ref": "refs/pull/119/merge"},
            {"size_in_bytes": 0},
        ]:
            with self.subTest(change=change):
                self.assertFalse(exact_cache({"actions_caches": [self.entry(**change)]}, KEY))

    def run_wait(self, *, cache_at=None, runs=None, timeout=300, keys=None):
        now = [0]
        seen = []

        def api(repo, endpoint, **query):
            seen.append((endpoint, query))
            if endpoint == "actions/caches":
                if cache_at is not None and now[0] >= cache_at and query["key"] == KEY:
                    return {"actions_caches": [self.entry()]}
                return {"actions_caches": []}
            return {"workflow_runs": runs or []}

        def sleep(seconds):
            now[0] += seconds

        result = wait_for_cache(
            "SII-MATH/KIP126", keys or [KEY], SHA, "pr-build.yml",
            api=api, clock=lambda: now[0], sleep=sleep, timeout=timeout, interval=30
        )
        return result, now[0], seen

    def run_record(self, **overrides):
        return {"id": 1, "head_sha": SHA, "path": ".github/workflows/pr-build.yml",
                "status": "in_progress", "conclusion": None, **overrides}

    def test_immediate_hit_never_queries_producer(self):
        result, elapsed, calls = self.run_wait(cache_at=0)
        self.assertEqual((result, elapsed), (KEY, 0))
        self.assertEqual(len(calls), 1)

    def test_waits_for_running_producer_then_reuses_cache(self):
        result, elapsed, _ = self.run_wait(cache_at=60, runs=[self.run_record()])
        self.assertEqual((result, elapsed), (KEY, 60))

    def test_can_choose_second_exact_key(self):
        result, _, _ = self.run_wait(cache_at=0, keys=["other", KEY])
        self.assertEqual(result, KEY)

    def test_terminal_producer_without_cache_is_not_rebuilt(self):
        for conclusion in ["failure", "cancelled", "success", "timed_out"]:
            with self.subTest(conclusion=conclusion), self.assertRaisesRegex(
                RuntimeError, "refusing a duplicate compilation"
            ):
                self.run_wait(runs=[self.run_record(status="completed", conclusion=conclusion)])

    def test_later_rerun_supersedes_old_failure(self):
        result, _, _ = self.run_wait(
            cache_at=30, runs=[self.run_record(status="completed", conclusion="failure"),
                               self.run_record(id=2)]
        )
        self.assertEqual(result, KEY)

    def test_missing_or_wrong_producer_fails_boundedly(self):
        for runs in [[], [self.run_record(head_sha="c" * 40)],
                     [self.run_record(path=".github/workflows/untrusted.yml")]]:
            with self.subTest(runs=runs), self.assertRaisesRegex(RuntimeError, "No matching"):
                self.run_wait(runs=runs)

    def test_timeout_never_invokes_a_build(self):
        with self.assertRaisesRegex(TimeoutError, "no fallback build"):
            self.run_wait(runs=[self.run_record()], timeout=60)

    def test_api_failure_is_not_treated_as_a_cache_hit(self):
        def api(*args, **kwargs):
            raise RuntimeError("network unavailable")

        with self.assertRaisesRegex(RuntimeError, "network unavailable"):
            wait_for_cache("SII-MATH/KIP126", [KEY], SHA, "ci.yml", api=api)

    def test_diagnostic_dispatch_waits_for_explicit_run_and_exact_branch_cache(self):
        now = [0]
        ref = "refs/heads/ci/diagnostic"
        calls = []

        def api(repo, endpoint, **query):
            calls.append(endpoint)
            if endpoint == "actions/caches":
                entries = [self.entry(ref=ref)] if now[0] >= 30 and query["ref"] == ref else []
                return {"actions_caches": entries}
            self.assertEqual(endpoint, "actions/runs/42")
            return self.run_record(id=42, head_sha="c" * 40)

        result = wait_for_cache("SII-MATH/KIP126", [KEY], SHA, "pr-build.yml",
            producer_run_id=42, cache_ref=ref, api=api, clock=lambda: now[0],
            sleep=lambda seconds: now.__setitem__(0, now[0] + seconds))
        self.assertEqual(result, KEY)
        self.assertEqual(now[0], 30)
        self.assertIn("actions/runs/42", calls)

    def test_diagnostic_cache_ref_cannot_change_normal_run_trust(self):
        with self.assertRaises(ValueError):
            wait_for_cache("SII-MATH/KIP126", [KEY], SHA, "pr-build.yml",
                           cache_ref="refs/heads/untrusted")

    def test_explicit_run_must_match_workflow(self):
        def api(repo, endpoint, **query):
            if endpoint == "actions/caches":
                return {"actions_caches": []}
            return self.run_record(id=42, path=".github/workflows/another.yml")
        with self.assertRaisesRegex(RuntimeError, "does not match"):
            wait_for_cache("SII-MATH/KIP126", [KEY], SHA, "pr-build.yml",
                           producer_run_id=42, api=api)

    def test_bound_cache_hit_still_checks_trusted_run_and_attempt(self):
        good = {**self.run_record(id=42), "run_attempt": 2,
                "event": "pull_request_target", "repository": {"full_name": REPO}}
        for change in [{"run_attempt": 3}, {"head_sha": "d" * 40},
                       {"repository": {"full_name": "attacker/KIP126"}},
                       {"event": "pull_request"}, {"id": 43},
                       {"path": ".github/workflows/forged.yml"}]:
            with self.subTest(change=change):
                calls = []

                def api(repo, endpoint, **query):
                    calls.append(endpoint)
                    if endpoint == "actions/caches":
                        return {"actions_caches": [self.entry()]}
                    return {**good, **change}

                with self.assertRaisesRegex(RuntimeError, "identity/attempt"):
                    wait_for_cache(REPO, [KEY], SHA, "pr-build.yml", producer_run_id=42,
                                   producer_run_attempt=2, api=api)
                self.assertEqual(calls, ["actions/runs/42"])

    def test_bound_cache_rechecks_attempt_after_hit(self):
        calls = []

        def api(repo, endpoint, **query):
            calls.append(endpoint)
            if endpoint == "actions/caches":
                return {"actions_caches": [self.entry()]}
            return {**self.run_record(id=42), "event": "pull_request_target",
                    "repository": {"full_name": REPO},
                    "run_attempt": 2 if len(calls) == 1 else 3}

        with self.assertRaisesRegex(RuntimeError, "identity/attempt"):
            wait_for_cache(REPO, [KEY], SHA, "pr-build.yml", producer_run_id=42,
                           producer_run_attempt=2, api=api)
        self.assertEqual(calls, ["actions/runs/42", "actions/caches", "actions/runs/42"])

    def test_bound_wait_keeps_selected_run_instead_of_reselecting_newer_run(self):
        now = [0]

        def api(repo, endpoint, **query):
            if endpoint == "actions/caches":
                return {"actions_caches": [self.entry()] if now[0] >= 30 else []}
            self.assertEqual(endpoint, "actions/runs/42")
            return {**self.run_record(id=42), "event": "pull_request_target",
                    "repository": {"full_name": REPO}, "run_attempt": 2}

        self.assertEqual(wait_for_cache(
            REPO, [KEY], SHA, "pr-build.yml", producer_run_id=42, producer_run_attempt=2,
            api=api, clock=lambda: now[0], sleep=lambda n: now.__setitem__(0, now[0] + n)), KEY)


class ProducerToolingTests(unittest.TestCase):
    def setUp(self):
        self.now = 0
        self.run = {
            "id": 42, "run_attempt": 2, "head_sha": SHA,
            "path": ".github/workflows/pr-build.yml", "event": "pull_request_target",
            "repository": {"id": 10, "full_name": REPO},
            # Fork heads are allowed; they do not own the trusted workflow.
            "head_repository": {"id": 99, "full_name": "contributor/KIP126"},
            "status": "in_progress",
        }
        self.runs = [self.run]
        self.artifact = {
            "id": 70, "name": "lean-producer-tooling-42-2", "expired": False,
            "size_in_bytes": 600,
            "workflow_run": {"id": 42, "repository_id": 10, "head_sha": SHA},
        }
        self.artifacts = [self.artifact]
        self.metadata = {
            "schema": 1, "repository": REPO, "head_sha": SHA, "tooling_sha": TOOLING_SHA,
            "run_id": 42, "run_attempt": 2, "event": "pull_request_target",
            "workflow_path": ".github/workflows/pr-build.yml",
            "workflow_ref": f"{REPO}/.github/workflows/pr-build.yml@refs/heads/main",
        }
        self.calls = []
        self.downloads = []
        self.archive_override = None
        self.on_download = lambda: None

    @staticmethod
    def archive(files):
        output = io.BytesIO()
        with zipfile.ZipFile(output, "w", zipfile.ZIP_DEFLATED) as zipped:
            for name, contents in files:
                zipped.writestr(name, contents)
        return output.getvalue()

    def api(self, repo, endpoint, **query):
        self.assertEqual(repo, REPO)
        self.calls.append((endpoint, query))
        if endpoint == "":
            return {"id": 10, "full_name": REPO, "default_branch": "main"}
        if endpoint == "actions/workflows/pr-build.yml/runs":
            self.assertEqual(query["head_sha"], SHA)
            self.assertEqual(query["event"], "pull_request_target")
            return {"workflow_runs": copy.deepcopy(self.runs)}
        if endpoint == "actions/runs/42":
            return copy.deepcopy(self.run)
        if endpoint == "actions/runs/42/artifacts":
            return {"artifacts": copy.deepcopy(self.artifacts)}
        self.fail(f"unexpected API request: {endpoint}")

    def download(self, repo, artifact_id):
        self.downloads.append((repo, artifact_id))
        self.on_download()
        if self.archive_override is not None:
            return self.archive_override
        return self.archive([("tooling.json", json.dumps(self.metadata))])

    def resolve(self, **kwargs):
        def sleep(seconds):
            self.now += seconds
        return resolve_tooling(REPO, SHA, api=self.api, download=self.download,
                               clock=lambda: self.now, sleep=sleep, **kwargs)

    def test_trusted_fork_producer_supplies_exact_immutable_tooling(self):
        self.assertEqual(self.resolve(), self.metadata)
        self.assertEqual(self.downloads, [(REPO, 70)])
        # The selected run is re-read after downloading the artifact.
        self.assertEqual(sum(path == "actions/runs/42" for path, _ in self.calls), 2)

    def test_rejects_untrusted_run_even_with_matching_head_and_artifact_name(self):
        for change in [{"event": "pull_request"}, {"event": "workflow_dispatch"},
                       {"path": ".github/workflows/forged.yml"},
                       {"head_sha": "d" * 40},
                       {"repository": {"id": 10, "full_name": "attacker/KIP126"}},
                       {"repository": {"id": 99, "full_name": REPO}}]:
            with self.subTest(change=change):
                self.setUp()
                self.runs = [{**self.run, **change}]
                with self.assertRaisesRegex(RuntimeError, "No trusted"):
                    self.resolve()
                self.assertEqual(self.downloads, [])

    def test_rejects_artifact_with_wrong_origin_expiry_or_size(self):
        for change in [{"workflow_run": {"id": 43, "repository_id": 10, "head_sha": SHA}},
                       {"workflow_run": {"id": 42, "repository_id": 99, "head_sha": SHA}},
                       {"workflow_run": {"id": 42, "repository_id": 10, "head_sha": "d" * 40}},
                       {"expired": True}, {"size_in_bytes": 16385}, {"size_in_bytes": 0}]:
            with self.subTest(change=change):
                self.setUp()
                self.artifact.update(change)
                with self.assertRaisesRegex(RuntimeError, "provenance or size"):
                    self.resolve()
                self.assertEqual(self.downloads, [])

    def test_metadata_fields_cannot_select_a_different_run_or_tooling_ref(self):
        changes = {"schema": True, "repository": "attacker/KIP126", "head_sha": "d" * 40,
                   "run_id": 43, "run_attempt": 1, "event": "pull_request",
                   "workflow_path": ".github/workflows/forged.yml",
                   "workflow_ref": f"{REPO}/.github/workflows/pr-build.yml@refs/heads/candidate",
                   "tooling_sha": "refs/heads/main"}
        for key, value in changes.items():
            with self.subTest(key=key):
                self.setUp()
                self.metadata[key] = value
                with self.assertRaises(RuntimeError):
                    self.resolve()

    def test_rejects_ambiguous_or_missing_current_attempt_artifacts(self):
        self.artifacts.append(copy.deepcopy(self.artifact))
        with self.assertRaisesRegex(RuntimeError, "ambiguous"):
            self.resolve()
        self.setUp()
        self.artifact["name"] = "lean-producer-tooling-42-1"
        self.run["status"] = "completed"
        with self.assertRaisesRegex(RuntimeError, "Deploy the metadata publisher"):
            self.resolve()
        self.assertEqual(self.downloads, [])

    def test_completed_old_producer_requires_new_default_branch_definition(self):
        self.artifacts = []
        self.run["status"] = "completed"
        with self.assertRaisesRegex(RuntimeError, "rerunning an old workflow definition"):
            self.resolve()
        self.assertEqual(self.downloads, [])

    def test_rerun_during_metadata_download_is_rejected(self):
        self.on_download = lambda: self.run.update(run_attempt=3)
        with self.assertRaisesRegex(RuntimeError, "identity/attempt"):
            self.resolve()

    def test_zip_never_extracts_arbitrary_or_oversized_files(self):
        for archive in [b"x" * 16385,
                        self.archive([("../tooling.json", "{}")]),
                        self.archive([("tooling.json", "{}"), ("other", "x")]),
                        self.archive([("tooling.json", "x" * 4097)])]:
            with self.subTest(size=len(archive)):
                self.archive_override = archive
                with self.assertRaises(RuntimeError):
                    self.resolve()

    def test_waits_for_metadata_but_never_uses_a_fallback_commit(self):
        original_api = self.api

        def api(repo, endpoint, **query):
            result = original_api(repo, endpoint, **query)
            if endpoint == "actions/runs/42/artifacts" and self.now < 30:
                return {"artifacts": []}
            return result

        self.api = api
        self.assertEqual(self.resolve()["tooling_sha"], TOOLING_SHA)
        self.assertEqual(self.now, 30)
        self.artifacts = []
        with self.assertRaisesRegex(TimeoutError, "no fallback contract"):
            self.resolve(timeout=60)


if __name__ == "__main__":
    unittest.main()
