import unittest

from scripts.docs.wait_for_lean_cache import exact_cache, wait_for_cache


KEY = "kip126-main-build-v2-Linux-X64-" + "a" * 64
SHA = "b" * 40


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


if __name__ == "__main__":
    unittest.main()
