"""Execute development-gate routing/staging against adversarial and failure fixtures."""

import importlib.util
import json
import os
import re
import shutil
from pathlib import Path
import subprocess
import sys
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


TREE_BASE = "b" * 40
TREE_HEAD = "a" * 40
TREE_MERGE_BASE = "c" * 40


def complete_tree(paths=(), *, truncated=False):
    return {"truncated": truncated, "tree": [
        {"path": path, "mode": "100644", "type": "blob", "sha": "d" * 40}
        for path in paths]}


def tree_api_fixture(root, paths=(), *, head_repository="test/repo", overrides=None):
    """Run the real tree-diff helper against explicit, complete GitHub responses."""
    owner = head_repository.split("/")[0]
    responses = {
        f"repos/test/repo/compare/{TREE_BASE}...{owner}:{TREE_HEAD}": TREE_MERGE_BASE,
        f"repos/test/repo/git/trees/{TREE_MERGE_BASE}?recursive=1": complete_tree(),
        f"repos/test/repo/git/trees/{TREE_BASE}?recursive=1":
            complete_tree(["base-tip-only.txt"]),
        f"repos/{head_repository}/git/trees/{TREE_HEAD}?recursive=1": complete_tree(paths),
    }
    responses.update(overrides or {})
    fixture = root / "api.json"
    fixture.write_text(json.dumps(responses))
    gh = root / "gh"
    gh.write_text(f"#!{sys.executable}\n" + '''import json, os, sys
args = sys.argv[1:]
with open(os.environ["CALLS"], "a") as stream:
    stream.write(" ".join(args) + "\\n")
if "--method" in args and args[args.index("--method") + 1] == "POST":
    raise SystemExit(0)
with open(os.environ["API_FIXTURE"]) as stream:
    responses = json.load(stream)
if len(args) < 2 or args[0] != "api" or args[1] not in responses:
    raise SystemExit("unexpected API request: " + " ".join(args))
response = responses[args[1]]
if response is None:
    raise SystemExit("fixture API failure")
print(response if isinstance(response, str) else json.dumps(response))
''')
    gh.chmod(0o755)
    gate_scripts = root / "gate/scripts"
    gate_scripts.mkdir(parents=True)
    shutil.copyfile(ROOT / "scripts/ci_merge_group_files.py",
                    gate_scripts / "ci_merge_group_files.py")
    return {**os.environ, "PATH": f"{root}:{os.environ['PATH']}",
            "API_FIXTURE": str(fixture), "CALLS": str(root / "calls"),
            "GITHUB_OUTPUT": str(root / "output"), "GITHUB_ENV": str(root / "environment"),
            "GITHUB_REPOSITORY": "test/repo", "PR": "119",
            "GITHUB_SERVER_URL": "https://github.com", "GITHUB_RUN_ID": "1",
            "BASE_SHA": TREE_BASE, "HEAD_SHA": TREE_HEAD, "HEAD_REPO": head_repository,
            "EVENT_NAME": "pull_request_target"}


class BlueprintRoutingTests(unittest.TestCase):
    def run_step(self, name, *, paths=(), overrides=None, **extra):
        script = next(s["run"] for s in steps() if s.get("name") == name)
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            env = {**tree_api_fixture(root, paths, overrides=overrides), **extra}
            result = subprocess.run(["bash", "-euo", "pipefail", "-c", script], env=env,
                                    cwd=root, capture_output=True, text=True)
            output = (root / "output").read_text() if (root / "output").exists() else ""
            calls = (root / "calls").read_text() if (root / "calls").exists() else ""
            return result, output, calls

    def test_mixed_development_pr_is_eligible_without_reviewer_trailers(self):
        for paths in (["blueprint/src/content.tex", "KIP126/A.lean"],
                      ["blueprint/src/content.tex", "scripts/import.py", "docs/status.md"],
                      ["blueprint/src/content.tex", "KIP126/A.lean", "KIP126/Main/Axiom/Literature/Sources/data.json"]):
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

    def test_more_than_3000_files_remain_eligible_and_include_the_last_path(self):
        sources = [f"blueprint/src/section{i:04}.tex" for i in range(3001)]
        for paths, mixed in ((sources, "false"), (sources + ["scripts/tool.py"], "true")):
            with self.subTest(mixed=mixed):
                result, output, calls = self.run_step(
                    "Classify the source boundary and diff size", paths=paths)
                self.assertEqual(result.returncode, 0, result.stderr)
                self.assertIn("ok=true", output)
                self.assertIn(f"mixed={mixed}", output)
                self.assertIn(paths[-1], result.stdout)
                self.assertNotIn("/pulls/", calls)

    def test_scope_binds_exact_resolved_commits_and_repository(self):
        scope = next(s for s in steps() if s.get("id") == "scope")
        for variable, output in (("BASE_SHA", "base_sha"), ("HEAD_SHA", "head_sha"),
                                 ("HEAD_REPO", "head_repo")):
            self.assertEqual(scope["env"][variable], f"${{{{ steps.pr.outputs.{output} }}}}")
        self.assertNotIn("changed_files", scope["run"])

    def test_truncated_tree_cannot_authorize_blueprint_execution(self):
        result, output, _ = self.run_step(
            "Classify the source boundary and diff size",
            overrides={f"repos/test/repo/git/trees/{TREE_HEAD}?recursive=1":
                       complete_tree(["blueprint/src/content.tex"], truncated=True)})
        self.assertNotEqual(result.returncode, 0)
        self.assertNotIn("ok=true", output)
        self.assertIn("incomplete", result.stderr)


class PRScopeTreeTests(unittest.TestCase):
    def run_scope(self, paths, *, event="pull_request_target", overrides=None):
        scope = next(s for s in steps("pr-build.yml")
                     if s.get("name") == "Scope guard — allow KIP126 sources and validated pins")
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            env = tree_api_fixture(root, paths, overrides=overrides)
            env["EVENT_NAME"] = event
            result = subprocess.run(["bash", "-euo", "pipefail", "-c", scope["run"]],
                                    cwd=root, env=env, capture_output=True, text=True)
            output = (root / "environment").read_text() if (root / "environment").exists() else ""
            calls = (root / "calls").read_text() if (root / "calls").exists() else ""
            return result, output, calls

    def test_large_diff_classifies_the_last_path_without_blocking_compilation(self):
        sources = [f"KIP126/M{i:04}.lean" for i in range(3001)]
        for paths, outside in ((sources, False), (sources + ["scripts/tool.py"], True)):
            with self.subTest(outside=outside):
                result, output, calls = self.run_scope(paths)
                self.assertEqual(result.returncode, 0, result.stderr)
                self.assertIn("SCOPE_OK=1", output)
                self.assertEqual("OUT_OF_SCOPE=1" in output, outside)
                self.assertNotIn("INFRA=1", output)
                self.assertNotIn("TOO_LARGE", output)
                self.assertIn(paths[-1], result.stdout)
                self.assertNotIn("/pulls/", calls)
        compile_step = next(s for s in steps("pr-build.yml") if s.get("id") == "compile")
        self.assertNotIn("OUT_OF_SCOPE", compile_step.get("if", ""))
        self.assertFalse(any("File count guard" in s.get("name", "")
                             for s in steps("pr-build.yml")))

    def test_scope_binds_exact_snapshot_and_event(self):
        scope = next(s for s in steps("pr-build.yml")
                     if s.get("name") == "Scope guard — allow KIP126 sources and validated pins")
        self.assertEqual(scope["env"]["EVENT_NAME"], "${{ github.event_name }}")
        for variable, output in (("BASE_SHA", "base_sha"), ("HEAD_SHA", "sha"),
                                 ("HEAD_REPO", "repo")):
            self.assertEqual(scope["env"][variable], f"${{{{ steps.pr.outputs.{output} }}}}")

    def test_merge_group_diffs_exact_combined_commits_without_merge_base(self):
        result, output, calls = self.run_scope(["KIP126/Added.lean"], event="merge_group")
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertIn("SCOPE_OK=1", output)
        self.assertNotIn("/compare/", calls)
        self.assertIn(f"/git/trees/{TREE_BASE}?recursive=1", calls)
        self.assertIn(f"/git/trees/{TREE_HEAD}?recursive=1", calls)

    def test_incomplete_evidence_cannot_report_successful_scope(self):
        failures = (
            {f"repos/test/repo/compare/{TREE_BASE}...test:{TREE_HEAD}": None},
            {f"repos/test/repo/git/trees/{TREE_HEAD}?recursive=1":
             complete_tree(["KIP126/Added.lean"], truncated=True)},
        )
        for overrides in failures:
            with self.subTest(endpoint=next(iter(overrides))):
                result, output, _ = self.run_scope(["KIP126/Added.lean"], overrides=overrides)
                self.assertNotEqual(result.returncode, 0)
                self.assertIn("INFRA=1", output)
                self.assertNotIn("SCOPE_OK=1", output)


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
        for name in ("blueprint/src/content.tex", "KIP126/A.lean", "KIPBase/A.lean",
                     "KIPBase.lean", "scripts/tool.py", "requirements-blueprint.txt"):
            (self.candidate / name).write_text("candidate")
        stage.stage(self.trusted, self.candidate)
        stage.stage_lean(self.trusted, self.candidate)
        self.assertEqual((self.trusted / "blueprint/src/content.tex").read_text(), "candidate")
        self.assertEqual((self.trusted / "KIP126/A.lean").read_text(), "candidate")
        self.assertEqual((self.trusted / "KIPBase/A.lean").read_text(), "candidate")
        self.assertEqual((self.trusted / "KIPBase.lean").read_text(), "candidate")
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

    def test_removed_kipbase_modules_do_not_survive_staging(self):
        (self.candidate / "KIPBase/A.lean").unlink()
        (self.candidate / "KIPBase/B.lean").write_text("new module")
        stage.stage_lean(self.trusted, self.candidate)
        self.assertFalse((self.trusted / "KIPBase/A.lean").exists())
        self.assertEqual((self.trusted / "KIPBase/B.lean").read_text(), "new module")

    def test_kipbase_symlinks_are_rejected_before_any_source_is_copied(self):
        for name in ("KIPBase/A.lean", "KIPBase.lean"):
            with self.subTest(name=name):
                path = self.candidate / name
                path.unlink()
                path.symlink_to(self.trusted / "scripts/tool.py")
                (self.candidate / "KIP126/A.lean").write_text("candidate")
                with self.assertRaisesRegex(ValueError, "symlink"):
                    stage.stage_lean(self.trusted, self.candidate)
                self.assertEqual((self.trusted / "KIP126/A.lean").read_text(), "trusted")
                path.unlink()
                path.write_text("trusted")


class CandidateLeanOverlayTests(unittest.TestCase):
    """Run the producer's real shell overlay, not a reimplementation of its copy rules."""

    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        self.root = Path(self.tmp.name)
        self.base, self.pr = self.root / "base", self.root / "pr"
        self.script = next(s["run"] for s in steps("pr-build.yml")
                           if s.get("name", "").startswith("Overlay candidate"))
        for root, content in ((self.base, "trusted"), (self.pr, "candidate")):
            for name in ("KIP126/A.lean", "KIP126.lean", "KIPBase/A.lean", "KIPBase.lean",
                         "lakefile.lean", "lake-manifest.json", "lean-toolchain", "scripts/tool.py"):
                path = root / name
                path.parent.mkdir(parents=True, exist_ok=True)
                path.write_text(content)

    def overlay(self):
        return subprocess.run(["bash", "-euo", "pipefail", "-c", self.script], cwd=self.root,
                              env={**os.environ, "BUMP": ""}, capture_output=True, text=True)

    def test_candidate_libraries_replace_base_but_tooling_stays_trusted(self):
        (self.base / "KIPBase/Deleted.lean").write_text("stale")
        # In particular, a deleted nested Lake config must not be compiled from main.
        (self.base / "KIPBase/lakefile.lean").write_text("old nested config")
        (self.pr / "KIPBase/lakefile.toml").write_text('name = "KIPBase"\n')
        result = self.overlay()
        self.assertEqual(result.returncode, 0, result.stderr)
        for name in ("KIP126/A.lean", "KIP126.lean", "KIPBase/A.lean", "KIPBase.lean"):
            self.assertEqual((self.base / name).read_text(), "candidate")
        for name in ("lakefile.lean", "lake-manifest.json", "lean-toolchain", "scripts/tool.py"):
            self.assertEqual((self.base / name).read_text(), "trusted")
        self.assertFalse((self.base / "KIPBase/Deleted.lean").exists())
        self.assertFalse((self.base / "KIPBase/lakefile.lean").exists())
        self.assertEqual((self.base / "KIPBase/lakefile.toml").read_text(), 'name = "KIPBase"\n')

    def test_invalid_kipbase_source_rejects_overlay_before_mutating_base(self):
        for name in ("KIPBase", "KIPBase/A.lean", "KIPBase.lean"):
            with self.subTest(name=name):
                source = self.pr / name
                saved = self.pr / "saved"
                source.rename(saved)
                source.symlink_to(self.base / name)
                result = self.overlay()
                self.assertNotEqual(result.returncode, 0)
                self.assertEqual((self.base / "KIP126/A.lean").read_text(), "trusted")
                source.unlink()
                # A missing library/root must fail too, instead of retaining stale base code.
                result = self.overlay()
                if name != "KIPBase/A.lean":
                    self.assertNotEqual(result.returncode, 0)
                    self.assertEqual((self.base / "KIP126/A.lean").read_text(), "trusted")
                saved.rename(source)
                # Reset candidate copies if the removed-module case succeeded.
                for library in ("KIP126", "KIPBase"):
                    for path in (self.base / library).rglob("*.lean"):
                        path.write_text("trusted")

    def test_candidate_compile_error_reaches_the_compiler(self):
        # Resolve an already installed pinned compiler; never download dependencies.
        lean = shutil.which("lean")
        elan = shutil.which("elan")
        if elan:
            resolved = subprocess.run([elan, "which", "lean"], cwd=ROOT,
                                      capture_output=True, text=True)
            if resolved.returncode:
                self.skipTest("Pinned Lean toolchain is not installed")
            lean = resolved.stdout.strip()
        if not lean:
            self.skipTest("Lean toolchain is unavailable")
        for source, succeeds in (("example : True := by trivial\n", True),
                                 ("example : False := by trivial\n", False)):
            with self.subTest(succeeds=succeeds):
                (self.pr / "KIPBase/A.lean").write_text(source)
                result = self.overlay()
                self.assertEqual(result.returncode, 0, result.stderr)
                compiled = subprocess.run([lean, "KIPBase/A.lean"], cwd=self.base,
                                          capture_output=True, text=True, timeout=30)
                if succeeds:
                    self.assertEqual(compiled.returncode, 0, compiled.stdout + compiled.stderr)
                else:
                    self.assertNotEqual(compiled.returncode, 0)
                    self.assertIn("error:", compiled.stdout + compiled.stderr)


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

    def test_compile_can_be_published_before_repository_checks(self):
        result, calls = self.run_build(phase="compile", audit=1)
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertEqual(calls, ["build"])
        result, calls = self.run_build(phase="checks", audit=1)
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertEqual(calls, ["build --no-build"])

    def test_checks_reject_missing_outputs_without_recompiling(self):
        for code in (1, 3, 124):
            result, calls = self.run_build(phase="checks", replay=code)
            self.assertEqual(result.returncode, code)
            self.assertEqual(calls, ["build --no-build"])

    def test_real_failure_and_timeout_do_not_start_second_compilation(self):
        for code in (1, 124, 137):
            result, calls = self.run_build(build=code)
            self.assertEqual(result.returncode, code)
            self.assertEqual(calls, ["build"])

    def test_development_never_invokes_or_reports_proof_debt_audits(self):
        for phase in ("all", "checks"):
            result, calls = self.run_build(phase=phase, strict=1, audit=1,
                                          audit_log="AXIOM_AUDIT_ERROR=1")
            self.assertEqual(result.returncode, 0, result.stderr)
            self.assertFalse(any("Axioms.lean" in call or "--iofail" in call for call in calls))
            self.assertNotIn("KIP126_WARNING_ONLY_BUILD=1", result.stdout)
            self.assertNotIn("AXIOM_AUDIT", result.stdout)


class LfsReadOnlyGitTests(unittest.TestCase):
    def test_checks_keep_lfs_writes_outside_read_only_git(self):
        git, lfs = shutil.which("git"), shutil.which("git-lfs")
        if os.name != "posix" or not git or not lfs:
            self.skipTest("POSIX permissions, Git and Git LFS are required")
        available = subprocess.run([lfs, "version"], capture_output=True, timeout=10)
        if available.returncode:
            self.skipTest("Git LFS is unavailable")

        identity = {}
        if os.geteuid() == 0:
            import pwd
            try:
                nobody = pwd.getpwnam("nobody")
            except KeyError:
                self.skipTest("Root requires an unprivileged nobody account")
            identity = {"user": nobody.pw_uid, "group": nobody.pw_gid, "extra_groups": []}

        # An inherited TMPDIR may be inside a private home/workspace that the
        # dropped user cannot traverse, regardless of fixture ownership.
        tmp = tempfile.TemporaryDirectory(prefix="kip126-lfs-gate-", dir="/tmp")
        self.addCleanup(tmp.cleanup)
        root = Path(tmp.name)

        def restore_permissions():
            # Only fixture directories were made read-only; restore them before
            # TemporaryDirectory removes files, including when an assertion fails.
            for directory, _, _ in os.walk(root):
                Path(directory).chmod(0o700)

        self.addCleanup(restore_permissions)
        repo, binpath = root / "repo", root / "bin"
        repo.mkdir()
        binpath.mkdir()
        (repo / ".lake/tmp").mkdir(parents=True)
        # A root installation may live below /root, which nobody cannot traverse.
        shutil.copyfile(lfs, binpath / "git-lfs")
        (binpath / "git-lfs").chmod(0o755)
        script = root / "sandbox-build.sh"
        shutil.copyfile(ROOT / "scripts/sandbox-build.sh", script)
        (binpath / "lean").write_text("#!/bin/sh\nexit 99\n")
        (binpath / "lean").chmod(0o755)
        (binpath / "lake").write_text(
            '#!/bin/sh\n[ "$*" = "build --no-build" ] || exit 99\n'
            'printf "%s\\n" "$*" >> "$CALLS"\n')
        (binpath / "lake").chmod(0o755)
        calls = repo / ".lake/tmp/lake.calls"
        env = {key: value for key, value in os.environ.items()
               if not key.startswith("GIT_") and key not in ("BASH_ENV", "ENV")}
        env.update(PATH=f"{binpath}:{os.environ['PATH']}", LC_ALL="C",
                   GIT_CONFIG_NOSYSTEM="1", GIT_CONFIG_GLOBAL=os.devnull,
                   XDG_CONFIG_HOME=str(root / "config"), TMPDIR=str(repo / ".lake/tmp"),
                   WATCHDOG_TOOLCHAIN=str(root), CALLS=str(calls))

        def run(*command, unprivileged=False):
            return subprocess.run(command, cwd=repo, env=env, capture_output=True,
                                  text=True, timeout=30,
                                  **(identity if unprivileged else {}))

        def setup_git(*args):
            result = run(git, *args)
            self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
            return result.stdout

        setup_git("init", "-q")
        for key, value in (("filter.lfs.clean", "git-lfs clean -- %f"),
                           ("filter.lfs.smudge", "git-lfs smudge -- %f"),
                           ("filter.lfs.process", "git-lfs filter-process"),
                           ("filter.lfs.required", "true")):
            setup_git("config", key, value)
        (repo / ".gitattributes").write_text("*.bin filter=lfs diff=lfs merge=lfs -text\n")
        (repo / "fixture.bin").write_bytes(b"initial LFS payload\n")
        source = repo / "Source.lean"
        source.write_text("def ordinary_source := 1\n")
        setup_git("add", ".gitattributes", "fixture.bin", "Source.lean")
        self.assertTrue(setup_git("show", ":fixture.bin").startswith(
            "version https://git-lfs.github.com/spec/v1\n"))
        setup_git("-c", "user.name=LFS regression", "-c", "user.email=test@example.invalid",
                  "commit", "-qm", "fixture")
        # Changed content forces the real clean filter to write a temporary object.
        (repo / "fixture.bin").write_bytes(b"changed LFS payload\n")
        if identity:
            try:
                for path in [root, *root.rglob("*")]:
                    os.chown(path, identity["user"], identity["group"])
                probe = run(git, "rev-parse", "--git-dir", unprivileged=True)
            except PermissionError:
                self.skipTest("This root environment cannot drop fixture ownership/privileges")
            self.assertEqual(probe.returncode, 0, probe.stdout + probe.stderr)
        gitdir = repo / ".git"
        for path in [gitdir, *gitdir.rglob("*")]:
            path.chmod(path.stat().st_mode & ~0o222)

        old = run(git, "diff", "--check", unprivileged=True)
        self.assertNotEqual(old.returncode, 0)
        self.assertIn(str(gitdir / "lfs/tmp"), old.stderr)
        self.assertIn("permission denied", old.stderr.lower())
        fixed = run("bash", str(script), "checks", unprivileged=True)
        self.assertEqual(fixed.returncode, 0, fixed.stdout + fixed.stderr)
        self.assertTrue((repo / ".lake/tmp/git-lfs/tmp").is_dir())
        source.write_text("def ordinary_source := 1  \n")
        whitespace = run("bash", str(script), "checks", unprivileged=True)
        self.assertNotEqual(whitespace.returncode, 0)
        self.assertIn("Source.lean:1: trailing whitespace.", whitespace.stdout + whitespace.stderr)
        self.assertEqual(calls.read_text().splitlines(), ["build --no-build"] * 2)


class EmbeddedLakeConfigTests(unittest.TestCase):
    def test_standalone_configuration_retains_all_roots_and_options(self):
        config = (ROOT / "KIPBase/lakefile.toml").read_text()
        self.assertIn('srcDir = ".."', config)
        self.assertIn('defaultTargets = ["KIPBase", "KIPBaseDefEqCompat"]', config)
        roots = re.findall(r'^  "(KIPBase\.[^"]+)"', config, re.M)
        imports = re.findall(r"^import (KIPBase\.\S+)",
                             (ROOT / "KIPBase/Standalone.lean").read_text(), re.M)
        self.assertTrue(set(imports).issubset(roots))
        self.assertIn('"-DmaxSynthPendingDepth=3"', config)
        self.assertFalse((ROOT / "KIPBase/lakefile.lean").exists())

    def test_old_base_compiles_unimported_sources_but_not_embedded_configuration(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            (root / "bin").mkdir()
            for name in ("KIP126.lean", "KIPBase.lean", "KIP126/Unused.lean",
                         "KIPBase/Nested/Unused.lean", "KIPBase/lakefile.lean"):
                path = root / name
                path.parent.mkdir(parents=True, exist_ok=True)
                path.touch()
            for name in ("lean", "lake"):
                path = root / "bin" / name
                path.write_text('#!/bin/bash\nprintf "%s\\n" "$@"\n')
                path.chmod(0o755)
            env = {**os.environ, "PATH": f"{root}/bin:{os.environ['PATH']}",
                   "WATCHDOG_TOOLCHAIN": str(root)}
            result = subprocess.run(["bash", ROOT / "scripts/sandbox-build.sh", "compile"],
                                    cwd=root, env=env, capture_output=True, text=True)
            self.assertEqual(result.returncode, 0, result.stderr)
            self.assertEqual(result.stdout.splitlines(), ["build", "+KIP126", "+KIPBase",
                             "+KIP126.Unused", "+KIPBase.Nested.Unused"])


class CompleteTreeDiffCommandTests(unittest.TestCase):
    def run_helper(self, *, overrides=None):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            env = tree_api_fixture(root, ["KIP126/Added.lean"],
                                   head_repository="contributor/fork", overrides=overrides)
            result = subprocess.run(
                [sys.executable, ROOT / "scripts/ci_merge_group_files.py", "test/repo",
                 TREE_BASE, TREE_HEAD, "--head-repository", "contributor/fork",
                 "--merge-base", "--names"],
                cwd=root, env=env, capture_output=True, text=True,
            )
            calls = (root / "calls").read_text() if (root / "calls").exists() else ""
            return result, calls

    def test_fork_uses_exact_merge_base_and_head_repository(self):
        result, calls = self.run_helper()
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertEqual(result.stdout.splitlines(), ["KIP126/Added.lean"])
        self.assertEqual(calls.splitlines(), [
            f"api repos/test/repo/compare/{TREE_BASE}...contributor:{TREE_HEAD} --jq .merge_base_commit.sha",
            f"api repos/test/repo/git/trees/{TREE_MERGE_BASE}?recursive=1",
            f"api repos/contributor/fork/git/trees/{TREE_HEAD}?recursive=1",
        ])

    def test_missing_or_invalid_merge_base_never_falls_back(self):
        endpoint = f"repos/test/repo/compare/{TREE_BASE}...contributor:{TREE_HEAD}"
        for response in (None, "", "main", "c" * 39):
            with self.subTest(response=response):
                result, calls = self.run_helper(overrides={endpoint: response})
                self.assertNotEqual(result.returncode, 0)
                self.assertEqual(result.stdout, "")
                self.assertNotIn("/git/trees/", calls)

    def test_truncated_base_or_fork_head_never_emits_partial_paths(self):
        for endpoint in (f"repos/test/repo/git/trees/{TREE_MERGE_BASE}?recursive=1",
                         f"repos/contributor/fork/git/trees/{TREE_HEAD}?recursive=1"):
            with self.subTest(endpoint=endpoint):
                result, _ = self.run_helper(overrides={endpoint: complete_tree(truncated=True)})
                self.assertNotEqual(result.returncode, 0)
                self.assertEqual(result.stdout, "")
                self.assertIn("incomplete", result.stderr)


class CompleteTreeDiffTests(unittest.TestCase):
    def tree(self, entries=(), truncated=False):
        return {"truncated": truncated, "tree": [
            {"path": path, "mode": "100644", "type": "blob", "sha": sha}
            for path, sha in entries]}

    def test_more_than_3000_files_preserves_out_of_scope_paths(self):
        paths = [(f"KIP126/M{i}.lean", "a") for i in range(3001)] + [("scripts/tool.py", "b")]
        changed = changed_files(self.tree(), self.tree(paths))
        self.assertEqual(len(changed), 3002)
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
