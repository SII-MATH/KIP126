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
        self.assertNotIn("restore-keys", cache["with"])
        self.assertIn("env.BUILD_INPUT_DIGEST", cache["with"]["key"])
        self.assertIn("env.BUILD_CONTRACT", cache["with"]["key"])
        self.assertLess(steps.index(identity), steps.index(cache))
        self.assertLess(steps.index(cache), steps.index(ids["build"]))
        # Cache presence alone must never bypass the combined-tree build/audit.
        self.assertNotIn("cache", ids["build"]["if"])
        self.assertIn("sandbox-build.sh", ids["build"]["run"])

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
