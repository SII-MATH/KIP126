"""Execute development-gate routing/staging against adversarial and failure fixtures."""

import importlib.util
import json
import os
from pathlib import Path
import subprocess
import tempfile
import unittest

import yaml

from scripts.ci_merge_group_files import changed_files

ROOT = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location("stage_blueprint", ROOT / "scripts/stage-blueprint.py")
stage = importlib.util.module_from_spec(spec)
spec.loader.exec_module(stage)


def steps(name="blueprint-pr.yml"):
    workflow = yaml.safe_load((ROOT / ".github/workflows" / name).read_text())
    return next(iter(workflow["jobs"].values()))["steps"]


class BlueprintRoutingTests(unittest.TestCase):
    def run_step(self, name, *, paths=(), **extra):
        script = next(s["run"] for s in steps() if s.get("name") == name)
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            gh = root / "gh"
            gh.write_text("#!/bin/bash\n"
                          "printf '%s\\n' \"$*\" >> \"$CALLS\"\n"
                          "if [[ $* == *'/files'* ]]; then printf '%s\\n' \"$FILES\"; "
                          "elif [[ $* != *'POST'* ]]; then echo \"0 0 $COUNT\"; fi\n")
            gh.chmod(0o755)
            env = {**os.environ, "PATH": f"{root}:{os.environ['PATH']}",
                   "FILES": "\n".join(paths), "COUNT": str(len(paths)),
                   "CALLS": str(root / "calls"), "GITHUB_OUTPUT": str(root / "output"),
                   "GITHUB_REPOSITORY": "test/repo", "PR": "119",
                   "GITHUB_SERVER_URL": "https://github.com", "GITHUB_RUN_ID": "1",
                   "HEAD_SHA": "a" * 40, **extra}
            result = subprocess.run(["bash", "-euo", "pipefail", "-c", script], env=env,
                                    capture_output=True, text=True)
            output = (root / "output").read_text() if (root / "output").exists() else ""
            calls = (root / "calls").read_text() if (root / "calls").exists() else ""
            return result, output, calls

    def test_mixed_development_pr_is_eligible_without_reviewer_trailers(self):
        for paths in (["blueprint/src/content.tex", "KIP126/A.lean"],
                      ["blueprint/src/content.tex", "scripts/import.py", "docs/status.md"],
                      ["blueprint/src/content.tex", "KIP126/A.lean", "reference/data.json"]):
            with self.subTest(paths=paths):
                result, output, _ = self.run_step("Classify the source boundary and diff size", paths=paths)
                self.assertEqual(result.returncode, 0, result.stderr)
                self.assertIn("ok=true", output)
                self.assertIn("mixed=true", output)

    def test_pure_blueprint_owns_shared_contexts(self):
        _, output, _ = self.run_step("Classify the source boundary and diff size",
                                     paths=["blueprint/src/content.tex"])
        self.assertIn("mixed=false", output)
        result, _, calls = self.run_step("Publish exact-head mechanical statuses",
            SCOPE_OK="true", ELIGIBLE="true", MIXED="false", SCOPE_REASON="pure",
            BLUEPRINT_OUTCOME="success")
        self.assertEqual(result.returncode, 0, result.stderr)
        for context in ("build", "scope", "bump-guard", "blueprint"):
            self.assertIn(f"context={context} ", calls)

    def test_mixed_or_unknown_failure_cannot_overwrite_lean_statuses(self):
        for mixed in ("true", ""):
            result, _, calls = self.run_step("Publish exact-head mechanical statuses",
                SCOPE_OK="false", ELIGIBLE="false", MIXED=mixed,
                SCOPE_REASON="incomplete", BLUEPRINT_OUTCOME="skipped")
            self.assertNotEqual(result.returncode, 0)
            self.assertIn("context=blueprint ", calls)
            for context in ("build", "scope", "bump-guard"):
                self.assertNotIn(f"context={context} ", calls)

    def test_render_precedes_lean_wait_and_candidate_tooling_is_not_installed(self):
        names = [s.get("name") for s in steps()]
        self.assertLess(names.index("Render Blueprint before waiting for Lean"),
                        names.index("Wait for the shared Lean producer"))
        install = next(s for s in steps() if s.get("name") == "Set up the pinned Blueprint renderer")
        self.assertIn("gate/requirements-blueprint.txt", install["run"])


class BlueprintStagingTests(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        self.root = Path(self.tmp.name)
        self.trusted, self.candidate = self.root / "work", self.root / "candidate"
        for root in (self.trusted, self.candidate):
            for name in ("blueprint/src/content.tex", "scripts/tool.py", "requirements-blueprint.txt",
                         "KIP126/A.lean", "KIP126.lean", "KIPBase/A.lean", "KIPBase.lean",
                         "lakefile.lean", "lake-manifest.json", "lean-toolchain"):
                path = root / name
                path.parent.mkdir(parents=True, exist_ok=True)
                path.write_text("trusted")

    def test_only_selected_source_inputs_are_overlaid(self):
        for name in ("blueprint/src/content.tex", "KIP126/A.lean", "scripts/tool.py", "requirements-blueprint.txt"):
            (self.candidate / name).write_text("candidate")
        stage.stage(self.trusted, self.candidate)
        stage.stage_lean(self.trusted, self.candidate)
        self.assertEqual((self.trusted / "blueprint/src/content.tex").read_text(), "candidate")
        self.assertEqual((self.trusted / "KIP126/A.lean").read_text(), "candidate")
        self.assertEqual((self.trusted / "scripts/tool.py").read_text(), "trusted")
        self.assertEqual((self.trusted / "requirements-blueprint.txt").read_text(), "trusted")

    def test_config_change_cannot_execute_candidate_lake_code(self):
        (self.candidate / "lakefile.lean").write_text("candidate executable code")
        stage.stage(self.trusted, self.candidate)  # rendering is still possible
        with self.assertRaisesRegex(ValueError, "configuration"):
            stage.stage_lean(self.trusted, self.candidate)
        self.assertEqual((self.trusted / "lakefile.lean").read_text(), "trusted")

    def test_source_symlink_is_rejected(self):
        path = self.candidate / "blueprint/src/content.tex"
        path.unlink()
        path.symlink_to(self.trusted / "scripts/tool.py")
        with self.assertRaisesRegex(ValueError, "symlink"):
            stage.stage(self.trusted, self.candidate)

    def test_parent_symlink_is_rejected(self):
        (self.candidate / "blueprint").rename(self.candidate / "original")
        (self.candidate / "blueprint").symlink_to(self.candidate / "original", target_is_directory=True)
        with self.assertRaisesRegex(ValueError, "symlink"):
            stage.stage(self.trusted, self.candidate)

    def test_unbuilt_legacy_delta_is_rejected(self):
        (self.candidate / "KIPBase/A.lean").write_text("different")
        with self.assertRaisesRegex(ValueError, "producer inputs"):
            stage.stage_lean(self.trusted, self.candidate)


class BuildFailureTests(unittest.TestCase):
    def run_build(self, build=0, strict=0, replay=0, audit=0, audit_log="", phase="all"):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            (root / ".lake/tmp").mkdir(parents=True)
            binpath = root / "bin"
            binpath.mkdir()
            (binpath / "lean").write_text("#!/bin/sh\nexit 0\n")
            (binpath / "lean").chmod(0o755)
            lake = binpath / "lake"
            lake.write_text("#!/bin/bash\nprintf '%s\\n' \"$*\" >> \"$CALLS\"\n"
                            "case \"$*\" in\n"
                            " 'build') exit \"$BUILD_EXIT\";;\n"
                            " 'build --no-build --iofail') exit \"$STRICT_EXIT\";;\n"
                            " 'build --no-build') exit \"$REPLAY_EXIT\";;\n"
                            " 'env lean --run scripts/Axioms.lean') printf '%s\\n' \"$AUDIT_LOG\"; exit \"$AUDIT_EXIT\";;\n"
                            " *) exit 99;;\nesac\n")
            lake.chmod(0o755)
            subprocess.run(["git", "init", "-q", str(root)], check=True)
            result = subprocess.run(["bash", ROOT / "scripts/sandbox-build.sh", phase], cwd=root,
                env={**os.environ, "PATH": f"{binpath}:{os.environ['PATH']}",
                     "WATCHDOG_TOOLCHAIN": str(root), "CALLS": str(root / "calls"),
                     "BUILD_EXIT": str(build), "STRICT_EXIT": str(strict), "REPLAY_EXIT": str(replay),
                     "AUDIT_EXIT": str(audit), "AUDIT_LOG": audit_log}, capture_output=True, text=True)
            return result, (root / "calls").read_text().splitlines()

    def test_compile_can_be_published_before_a_failed_audit(self):
        result, calls = self.run_build(phase="compile", audit=1)
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertEqual(calls, ["build"])
        result, calls = self.run_build(phase="audit", audit=1, audit_log="AXIOM_AUDIT_ERROR=1")
        self.assertEqual(result.returncode, 1)
        self.assertNotIn("build", calls)
        self.assertEqual(calls[0], "build --no-build")

    def test_audit_never_recompiles_missing_outputs(self):
        result, calls = self.run_build(phase="audit", replay=3)
        self.assertEqual(result.returncode, 3)
        self.assertEqual(calls, ["build --no-build"])

    def test_real_failure_and_timeout_do_not_start_second_compilation(self):
        for code in (1, 124, 137):
            result, calls = self.run_build(build=code)
            self.assertEqual(result.returncode, code)
            self.assertEqual(calls, ["build"])

    def test_warnings_are_replayed_without_recompilation(self):
        result, calls = self.run_build(strict=1)
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertIn("KIP126_WARNING_ONLY_BUILD=1", result.stdout)
        self.assertEqual(calls[:3], ["build", "build --no-build --iofail", "build --no-build"])

    def test_stale_outputs_and_replay_errors_are_not_warning_debt(self):
        for strict, replay, expected in ((3, 0, 3), (1, 1, 1), (137, 0, 137)):
            result, _ = self.run_build(strict=strict, replay=replay)
            self.assertEqual(result.returncode, expected)
            self.assertNotIn("KIP126_WARNING_ONLY_BUILD=1", result.stdout)

    def test_audit_errors_fail_and_classified_debt_remains_visible(self):
        result, _ = self.run_build(audit=1, audit_log="AXIOM_AUDIT_ERROR=1")
        self.assertEqual(result.returncode, 1)
        result, _ = self.run_build(audit=1, audit_log="AXIOM_AUDIT_DEBT=1\nAXIOM_AUDIT_SORRY=1")
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertIn("KIP126_SORRY_AUDIT=1", result.stdout)


class CompleteTreeDiffTests(unittest.TestCase):
    def tree(self, entries=(), truncated=False):
        return {"truncated": truncated, "tree": [
            {"path": path, "mode": "100644", "type": "blob", "sha": sha}
            for path, sha in entries]}

    def test_more_than_300_files_preserves_out_of_scope_paths(self):
        paths = [(f"KIP126/M{i}.lean", "a") for i in range(539)] + [("scripts/tool.py", "b")]
        changed = changed_files(self.tree(), self.tree(paths))
        self.assertEqual(len(changed), 540)
        self.assertIn({"filename": "scripts/tool.py", "status": "added"}, changed)

    def test_add_remove_modify_and_mode_changes(self):
        before = self.tree([("delete", "a"), ("modify", "a"), ("mode", "a")])
        after = self.tree([("added", "b"), ("modify", "b"), ("mode", "a")])
        after["tree"][-1]["mode"] = "120000"
        self.assertEqual([x["status"] for x in changed_files(before, after)],
                         ["added", "removed", "modified", "modified"])

    def test_truncated_or_malformed_trees_fail_closed(self):
        for malformed in (self.tree(truncated=True), {}, self.tree([("bad\npath", "a")])):
            with self.assertRaises(ValueError):
                changed_files(self.tree(), malformed)


if __name__ == "__main__":
    unittest.main()
