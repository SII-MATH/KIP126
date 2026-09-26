"""Regression tests for queue cache routing and candidate CI preflight."""

import pathlib
import shutil
import subprocess
import tempfile
import unittest

import yaml

from scripts.check_ci_syntax import check


ROOT = pathlib.Path(__file__).resolve().parents[1]


class FastPathTests(unittest.TestCase):
    def test_python_bytecode_does_not_invalidate_build_contract(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = pathlib.Path(tmp)
            shutil.copytree(ROOT / "scripts", root / "scripts")
            shutil.copytree(ROOT / ".github", root / ".github")

            def digest():
                return subprocess.check_output(
                    ["bash", str(root / "scripts/ci-build-contract.sh"), str(root)], text=True
                ).strip()

            before = digest()
            cache = root / "scripts/perf/__pycache__"
            cache.mkdir(exist_ok=True)
            (cache / "measure.cpython-314.pyc").write_bytes(b"local interpreter output")
            (root / "scripts/perf/measure.pyc").write_bytes(b"legacy bytecode")
            self.assertEqual(before, digest())
            source = root / "scripts/perf/measure.py"
            source.write_text(source.read_text() + "\n# contract change\n")
            self.assertNotEqual(before, digest())

    def test_queue_computes_identity_and_restores_exact_cache_before_build(self):
        workflow = yaml.safe_load((ROOT / ".github/workflows/pr-build.yml").read_text())
        steps = workflow["jobs"]["sandboxed-build"]["steps"]
        ids = {s["id"]: s for s in steps if "id" in s}
        identity = ids["candidate-build-identity"]
        self.assertNotIn("merge_group", identity["if"])
        cache = ids["candidate-build-cache"]
        self.assertNotIn("merge_group", cache["if"])
        self.assertIn("env.BUILD_INPUT_DIGEST", cache["with"]["restore-keys"])
        self.assertNotIn("env.BUILD_CONTRACT", cache["with"]["restore-keys"])
        self.assertIn("env.BUILD_INPUT_DIGEST", cache["with"]["key"])
        self.assertIn("env.BUILD_CONTRACT", cache["with"]["key"])
        self.assertLess(steps.index(identity), steps.index(cache))
        self.assertLess(steps.index(cache), steps.index(ids["build"]))
        # Cache presence alone must never bypass the combined-tree build/audit.
        self.assertNotIn("cache", ids["build"]["if"])
        self.assertIn("sandbox-build.sh", ids["build"]["run"])

    def test_incremental_seed_is_scoped_and_cannot_waive_build_or_audit(self):
        workflow = yaml.safe_load((ROOT / ".github/workflows/pr-build.yml").read_text())
        steps = workflow["jobs"]["sandboxed-build"]["steps"]
        ids = {s["id"]: s for s in steps if "id" in s}
        seed = ids["incremental-build-cache"]
        self.assertIn("github.event_name != 'merge_group'", seed["if"])
        self.assertIn("steps.candidate-build-cache.outputs.cache-matched-key == ''", seed["if"])
        for key in ("key", "restore-keys"):
            value = seed["with"][key]
            self.assertIn("steps.pr.outputs.num", value)
            for path in ("lakefile.lean", "lake-manifest.json", "lean-toolchain"):
                self.assertIn("base/" + path, value)
        self.assertLess(steps.index(seed), steps.index(ids["compile"]))
        self.assertNotIn("cache", ids["compile"]["if"])
        self.assertEqual(ids["build"]["if"], "${{ steps.compile.outcome == 'success' }}")
        save = next(s for s in steps if s["name"] == "Save this PR's incremental compilation")
        self.assertEqual(save["with"]["key"], seed["with"]["key"])
        self.assertIn("steps.publish-inputs.outputs.matched == 'true'", save["if"])
        self.assertLess(steps.index(ids["compile"]), steps.index(save))
        self.assertLess(steps.index(save), steps.index(ids["build"]))
        waiter = (ROOT / "scripts/docs/wait_for_lean_cache.py").read_text()
        self.assertNotIn("pr-incremental", waiter)

    def test_cache_publisher_explicitly_opts_in_and_verifies_actual_outputs(self):
        workflow = yaml.safe_load((ROOT / ".github/workflows/pr-build.yml").read_text())
        self.assertNotIn("cache-mode", workflow)
        job = workflow["jobs"]["sandboxed-build"]
        self.assertEqual(job["cache-mode"], "write")
        steps = job["steps"]
        confirm = next(s for s in steps if s["name"] == "Confirm exact candidate cache was actually published")
        self.assertIn("steps.publish-inputs.outputs.matched == 'true'", confirm["if"])
        for required in (".key == $key", ".ref == $ref", ".size_in_bytes > 0"):
            self.assertIn(required, confirm["run"])
        for step in steps:
            if "/save@" in step.get("uses", ""):
                self.assertTrue(step["with"]["key"].startswith("kip126-pr-"))
            if step.get("id") in ("compile", "build"):
                command = step["run"].split("landrun --rox", 1)[1].split("-- bash", 1)[0]
                self.assertNotIn("--env GH_TOKEN", command)
                self.assertNotIn("--env ACTIONS_RUNTIME_TOKEN", command)

    def test_preflight_is_unprivileged_and_bounded(self):
        workflow = yaml.safe_load((ROOT / ".github/workflows/automation-checks.yml").read_text())
        # PyYAML's YAML 1.1 loader parses the unquoted key 'on' as True.
        events = workflow.get("on", workflow.get(True))
        self.assertIn("pull_request", events)
        self.assertNotIn("pull_request_target", events)
        self.assertEqual(workflow["permissions"], {"contents": "read"})
        job = workflow["jobs"]["automation-tests"]
        self.assertLessEqual(job["timeout-minutes"], 10)
        self.assertFalse(job["steps"][0]["with"]["persist-credentials"])

    def test_main_audit_does_not_collide_with_required_queue_status(self):
        workflow = yaml.safe_load((ROOT / ".github/workflows/ci.yml").read_text())
        for key, job in workflow["jobs"].items():
            self.assertNotEqual(job.get("name", key), "build")

    def test_embedded_broken_shell_is_caught_without_execution(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = pathlib.Path(tmp)
            (root / "scripts").mkdir()
            workflows = root / ".github/workflows"
            workflows.mkdir(parents=True)
            workflow = workflows / "test.yml"
            workflow.write_text("jobs:\n  test:\n    steps:\n      - run: |\n          if true; then\n")
            with self.assertRaisesRegex(ValueError, "syntax error"):
                check(root)
            workflow.write_text("jobs:\n  test:\n    steps:\n      - run: exit 99\n")
            check(root)


if __name__ == "__main__":
    unittest.main()
