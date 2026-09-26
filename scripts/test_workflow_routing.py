import os
import json
import pathlib
import re
import shutil
import subprocess
import tempfile
import textwrap
import unittest


ROOT = pathlib.Path(__file__).resolve().parents[1]
WORKFLOWS = ROOT / ".github" / "workflows"


def workflow_script(filename, step_name):
    workflow = (WORKFLOWS / filename).read_text()
    section = workflow.split(f"- name: {step_name}\n", 1)[1].split("\n      - name:", 1)[0]
    script = textwrap.dedent(section.split("run: |\n", 1)[1])
    return re.sub(r"\$\{\{.*?\}\}", "SII-MATH/KIP126", script)


class NotificationNoiseTests(unittest.TestCase):
    """Replay actual workflow shell with fixture APIs; no network or notifications."""

    def run_review(self, *, state="open", draft=False, stale=False, statuses=None,
                   aim=True, event="workflow_run", linked=True, api_failure=False,
                   rubric="rubric-v1", comment="/review", permission="write"):
        script = workflow_script("review.yml", "Resolve authorized trigger and current head")
        head = "a" * 40
        pr = {"state": state, "draft": draft, "title": "AIM-258: task" if aim else "ci: fix",
              "body": "", "head": {"sha": head, "ref": "feature"}, "base": {"sha": "b" * 40}}
        statuses = statuses if statuses is not None else [
            {"context": c, "state": "success", "id": i, "updated_at": "2026-09-26T00:00:00Z"}
            for i, c in enumerate(("scope", "build", "bump-guard"))]
        with tempfile.TemporaryDirectory() as directory:
            root = pathlib.Path(directory)
            (root / "fixture.json").write_text(json.dumps({"pr": pr, "statuses": statuses}))
            (root / "event.json").write_text(json.dumps({
                "workflow_run": {"head_sha": "c" * 40 if stale else head,
                                 "pull_requests": [{"number": 1}] if linked else []},
                "issue": {"number": 1}, "sender": {"login": "user"},
                "comment": {"author_association": "NONE"}}))
            gh = root / "gh"
            gh.write_text("#!/usr/bin/env python3\n" + textwrap.dedent('''\
                import json, os, sys
                from pathlib import Path
                if os.environ['API_FAILURE'] == '1': sys.exit(22)
                fixture = json.loads(Path('fixture.json').read_text())
                path = next(arg for arg in sys.argv if arg.startswith('repos/'))
                if path.endswith('/permission'): print(os.environ['PERMISSION'])
                elif path.endswith('/pulls/1'): print(json.dumps(fixture['pr']))
                elif path.endswith('/pulls'): print('')
                elif path.endswith('/files'): print('KIP126/Test.lean')
                elif path.endswith('/status'): print(json.dumps({'statuses': fixture['statuses']}))
                elif '/compare/' in path: print('d' * 40)
                else: sys.exit('Unexpected gh request: ' + repr(sys.argv))
                '''))
            gh.chmod(0o755)
            output, summary = root / "output", root / "summary"
            env = {**os.environ, "PATH": str(root) + os.pathsep + os.environ["PATH"],
                   "EVENT": event, "REPO": "SII-MATH/KIP126", "DISPATCH_PR": "1",
                   "DISPATCH_RETRY": "false", "RUBRIC_REVISION": rubric,
                   "COMMENT_BODY": comment, "PERMISSION": permission,
                   "GITHUB_EVENT_PATH": str(root / "event.json"),
                   "GITHUB_OUTPUT": str(output), "GITHUB_STEP_SUMMARY": str(summary),
                   "API_FAILURE": "1" if api_failure else "0"}
            result = subprocess.run(["bash", "-c", script], cwd=root, env=env,
                                    text=True, capture_output=True)
            return result, output.read_text() if output.exists() else ""

    def test_inapplicable_reviews_skip_without_authorizing_webhook(self):
        for kwargs in ({"state": "closed"}, {"draft": True}, {"stale": True},
                       {"linked": False}, {"statuses": []}, {"aim": False}):
            with self.subTest(kwargs=kwargs):
                result, output = self.run_review(**kwargs)
                self.assertEqual(result.returncode, 0, result.stderr)
                self.assertIn("Review skipped:", result.stdout)
                self.assertNotIn("ready=true", output)

    def test_newer_failed_status_blocks_dispatch_even_after_success(self):
        statuses = [{"context": c, "state": "success", "updated_at": "2026-09-25"}
                    for c in ("scope", "build", "bump-guard")]
        statuses.append({"context": "build", "state": "failure", "updated_at": "2026-09-26"})
        result, output = self.run_review(statuses=statuses)
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertIn("required build status is not successful", result.stdout)
        self.assertNotIn("ready=true", output)

    def test_ready_review_retains_exact_head_payload_and_dispatch_gate(self):
        for event in ("workflow_run", "workflow_dispatch", "issue_comment"):
            with self.subTest(event=event):
                result, output = self.run_review(event=event)
                self.assertEqual(result.returncode, 0, result.stderr)
                self.assertIn("ready=true", output)
                self.assertIn("idempotency_key=tauceti-review-", output)
        workflow = (WORKFLOWS / "review.yml").read_text()
        self.assertIn("if: steps.resolve.outputs.ready == 'true'", workflow)

    def test_real_api_and_configuration_errors_still_fail(self):
        for kwargs in ({"api_failure": True}, {"rubric": ""},
                       {"aim": False, "event": "workflow_dispatch"}):
            with self.subTest(kwargs=kwargs):
                result, output = self.run_review(**kwargs)
                self.assertNotEqual(result.returncode, 0)
                self.assertNotIn("ready=true", output)

    def test_unrelated_or_unauthorized_comments_cannot_dispatch(self):
        for kwargs in ({"comment": "Thank you"}, {"permission": "read"}):
            result, output = self.run_review(event="issue_comment", **kwargs)
            self.assertEqual(result.returncode, 0, result.stderr)
            self.assertNotIn("ready=true", output)

    def test_automatic_reports_never_call_comment_api_but_manual_reports_do(self):
        script = workflow_script("pr-profile.yml",
                                 "Post or update explicitly requested performance and heartbeat comments")
        summary_script = workflow_script("pr-profile.yml", "Publish reports to the workflow summary")
        for event in ("pull_request_target", "merge_group", "issue_comment", "workflow_dispatch"):
            with self.subTest(event=event), tempfile.TemporaryDirectory() as directory:
                root = pathlib.Path(directory)
                gh = root / "gh"
                gh.write_text('#!/bin/bash\nprintf "%s\\n" "$*" >> calls\n')
                gh.chmod(0o755)
                (root / "performance.md").write_text("Performance report\n")
                (root / "profile.md").write_text("Heartbeat report\n")
                env = {**os.environ, "PATH": str(root) + os.pathsep + os.environ["PATH"],
                       "REPORT_EVENT": event, "NUM": "1", "GITHUB_STEP_SUMMARY": str(root / "summary")}
                result = subprocess.run(["bash", "-c", script], cwd=root, env=env,
                                        text=True, capture_output=True)
                self.assertEqual(result.returncode, 0, result.stderr)
                calls = (root / "calls").read_text() if (root / "calls").exists() else ""
                if event in ("issue_comment", "workflow_dispatch"):
                    self.assertEqual(calls.count("pr comment"), 2)
                else:
                    self.assertEqual(calls, "")
                subprocess.run(["bash", "-c", summary_script], cwd=root, env=env, check=True)
                self.assertIn("Performance report", (root / "summary").read_text())
                self.assertIn("Heartbeat report", (root / "summary").read_text())


class HeartbeatBudgetGuardTests(unittest.TestCase):
    """Execute the actual trusted workflow guard against temporary source trees."""

    def run_guard(self, candidate, *, trusted="", path="KIP126/Test.lean"):
        workflow = (WORKFLOWS / "pr-build.yml").read_text()
        section = workflow.split(
            "- name: Heartbeat budget guard (candidate uses only approved maxHeartbeats)", 1
        )[1].split("\n      - name:", 1)[0]
        script = textwrap.dedent(section.split("run: |\n", 1)[1])
        with tempfile.TemporaryDirectory() as directory:
            repo = pathlib.Path(directory)
            for tree, content in (("base", trusted), ("pr", candidate)):
                (repo / tree / "KIP126").mkdir(parents=True)
                source = repo / tree / path
                source.parent.mkdir(parents=True, exist_ok=True)
                source.write_text(content)
            return subprocess.run(
                ["bash", "-c", script], cwd=repo, text=True, capture_output=True
            )

    def test_non_heartbeat_options_are_not_blocked(self):
        result = self.run_guard(
            "set_option maxRecDepth 100000\n"
            "set_option backward.isDefEq.respectTransparency false\n"
            "set_option backward.defeqAttrib.useBackward true\n"
            "set_option Elab.async false\n"
            "set_option linter.unusedSimpArgs false in\n"
            "example : True := by trivial\n"
        )
        self.assertEqual(result.returncode, 0, result.stdout + result.stderr)

    def test_unapproved_global_local_and_unlimited_budgets_are_blocked(self):
        for setting in (
            "set_option maxHeartbeats 64000000",
            "set_option maxHeartbeats 1000000 in",
            "set_option maxHeartbeats 0",
            "  set_option maxHeartbeats 1000000 in",
        ):
            with self.subTest(setting=setting):
                result = self.run_guard(setting + "\n")
                self.assertNotEqual(result.returncode, 0)
                self.assertIn("unapproved maxHeartbeats", result.stdout)

    def test_reviewed_file_specific_budgets_remain_allowed(self):
        for module, budgets in (
            ("SquareZero", (800000,)),
            ("Cycles", (6400000, 900000)),
            ("Boundaries", (6400000, 400000)),
        ):
            for budget in budgets:
                with self.subTest(module=module, budget=budget):
                    result = self.run_guard(
                        f"set_option maxHeartbeats {budget} in\n",
                        path=f"KIP126/Def/SpectralSequence/FilteredDifferential/{module}.lean",
                    )
                    self.assertEqual(result.returncode, 0, result.stdout + result.stderr)

    def test_reviewed_value_is_not_allowed_in_other_files(self):
        result = self.run_guard("set_option maxHeartbeats 800000 in\n")
        self.assertNotEqual(result.returncode, 0)

    def test_reviewed_file_does_not_allow_other_budgets(self):
        result = self.run_guard(
            "set_option maxHeartbeats 800001 in\n",
            path="KIP126/Def/SpectralSequence/FilteredDifferential/SquareZero.lean",
        )
        self.assertNotEqual(result.returncode, 0)

    def test_unchanged_or_removed_settings_are_not_new_budgets(self):
        trusted = "set_option maxHeartbeats 1000000 in\n"
        for candidate in (trusted, ""):
            with self.subTest(candidate=candidate):
                result = self.run_guard(candidate, trusted=trusted)
                self.assertEqual(result.returncode, 0, result.stdout + result.stderr)

    def test_changed_budget_is_blocked(self):
        result = self.run_guard(
            "set_option maxHeartbeats 2000000 in\n",
            trusted="set_option maxHeartbeats 1000000 in\n",
        )
        self.assertNotEqual(result.returncode, 0)

    def test_root_lean_file_is_also_checked(self):
        result = self.run_guard("set_option maxHeartbeats 0\n", path="KIP126.lean")
        self.assertNotEqual(result.returncode, 0)
        self.assertIn("KIP126.lean adds an unapproved maxHeartbeats", result.stdout)


class WorkflowRoutingTests(unittest.TestCase):
    def read(self, name):
        return (WORKFLOWS / name).read_text()

    def test_main_lean_ci_does_not_watch_blueprint_source(self):
        ci = self.read("ci.yml")
        self.assertIn('      - "KIP126/**/*.lean"', ci)
        self.assertNotIn('      - "blueprint/src/**"', ci)

    def test_blueprint_only_prs_skip_lean_build_and_profile(self):
        for name in ("pr-build.yml", "pr-profile.yml"):
            workflow = self.read(name)
            self.assertIn("paths-ignore:", workflow)
            self.assertIn('      - "blueprint/src/**"', workflow)

    def test_pr_build_has_no_per_lean_file_length_cap(self):
        workflow = self.read("pr-build.yml")
        self.assertNotIn("New-file length guard", workflow)
        self.assertNotIn("NEWFILE_TOO_LONG", workflow)

    def test_pr_build_reports_classified_project_axiom_debt(self):
        workflow = self.read("pr-build.yml")
        self.assertIn("KIP126_PROJECT_AXIOM_AUDIT=1", workflow)
        self.assertIn("BUILD_PROJECT_AXIOM_AUDIT=1", workflow)
        self.assertIn("project axioms present — human review + merge required", workflow)

    def test_blueprint_pr_has_independent_mechanics_and_review_sync(self):
        blueprint = self.read("blueprint-pr.yml")
        lean = self.read("pr-build.yml")
        review = self.read("review.yml")
        self.assertIn("stage-blueprint.py", blueprint)
        self.assertNotIn("validate-sync", blueprint)
        self.assertIn("validate-sync", lean)
        self.assertIn("MIXED_SYNC=1", lean)
        self.assertIn('if [[ "$MIXED" == false ]]', blueprint)
        for context in ("scope", "bump-guard", "blueprint", "build"):
            self.assertIn(f"post_status {context} ", blueprint)
        self.assertIn("workflows: [pr-build, blueprint-pr]", review)
        self.assertIn("REVIEW_KIND=blueprint", review)

    def test_pages_uses_the_repository_blueprint_pin(self):
        pages = self.read("pages.yml")
        self.assertIn('pip" install -r requirements-blueprint.txt', pages)
        self.assertNotIn('leanblueprint==0.0.20', pages)

    def test_trusted_build_cache_uses_the_shared_v2_content_key(self):
        workflows = {
            name: self.read(name)
            for name in ("ci.yml", "pr-build.yml", "blueprint-pr.yml", "pages.yml")
        }
        for workflow in workflows.values():
            self.assertNotIn("kip126-main-build-v1-", workflow)
            self.assertIn("kip126-main-build-v2-", workflow)
        self.assertIn("scripts/ci-build-cache-key.sh", workflows["ci.yml"])
        self.assertIn("steps.base-build-cache-key.outputs.digest", workflows["pr-build.yml"])
        self.assertIn("steps.build-cache-key.outputs.digest", workflows["blueprint-pr.yml"])
        self.assertIn("Wait for exact-input producer outputs", workflows["pages.yml"])

    def test_pr_build_inherits_only_an_attested_equivalent_first_parent(self):
        workflow = self.read("pr-build.yml")
        self.assertIn("fetch-depth: 21", workflow)
        self.assertIn('rev-list --first-parent --max-count=20 "$HEAD_SHA^"', workflow)
        self.assertIn('ancestor_input" != "$input', workflow)
        self.assertIn('.creator.login == "github-actions[bot]"', workflow)
        self.assertIn('description" == "$attestation', workflow)
        self.assertIn('warning_state" == success', workflow)
        self.assertIn('warnings=$warning_state', workflow)
        self.assertIn('if [[ "$reusable_outputs" != true ]]', workflow)
        self.assertIn('equivalent build outputs are unavailable', workflow)
        self.assertIn("BUILD_REUSED=1", workflow)
        self.assertIn("github.event_name != 'merge_group'", workflow)

        for name in (
            "Install elan (trusted)",
            "Install landrun (pinned + checksum) and self-test (fail closed)",
            "Fetch Mathlib with the (bump-validated) config (network, no token; no PR code)",
            "Prepare trusted read-only Lean watchdog toolchain",
            "Compile candidate under landrun, offline",
        ):
            section = workflow.split(f"- name: {name}", 1)[1].split("\n      - name:", 1)[0]
            self.assertIn("env.BUILD_REUSED != '1'", section)

        self.assertIn('state=success; desc="${{ env.BUILD_ATTESTATION }}"', workflow)

    def test_blueprint_check_waits_for_matching_outputs_without_recompiling(self):
        lean = self.read("pr-build.yml")
        blueprint = self.read("blueprint-pr.yml")
        cache_prefix = "kip126-pr-build-v1-"
        self.assertIn("actions/cache/save@0057852bfaa89a56745cba8c7296529d2fc39830", lean)
        self.assertIn(cache_prefix, lean)
        self.assertIn(cache_prefix, blueprint)
        self.assertIn("scripts/ci-build-contract.sh", lean)
        self.assertIn("scripts/ci-build-contract.sh", blueprint)
        self.assertIn("gate/scripts/docs/wait_for_lean_cache.py", blueprint)
        self.assertIn("fail-on-cache-miss: true", blueprint)
        self.assertIn("blueprint-sandbox.sh declarations", blueprint)
        self.assertIn("lake build --no-build", (ROOT / "scripts/blueprint-sandbox.sh").read_text())
        self.assertNotIn("lake build\n", blueprint)
        self.assertNotIn("falling back to a local build", blueprint)

    def test_docs_depend_on_and_reuse_links_outputs(self):
        pages = self.read("pages.yml")
        docs = pages.split("\n  docs:", 1)[1].split("\n  links:", 1)[0]
        self.assertIn("needs: [classify, links]", docs)
        self.assertIn("name: docs-lean-outputs", docs)
        self.assertIn("path: .lake/build", docs)
        self.assertIn("lake build --no-build", docs)
        self.assertIn("(cd docbuild && lake build --no-build KIP126 KIPBase)", docs)
        self.assertNotIn("Restore trusted main Lean outputs", docs)
        links = pages.split("\n  links:", 1)[1].split("\n  deploy:", 1)[0]
        self.assertIn("wait_for_lean_cache.py", links)
        self.assertIn("name: docs-lean-outputs", links)
        self.assertNotIn("restore-keys:", links)
        self.assertIn("lake build --no-build", links)
        self.assertIn('if [[ "$BUILD_MODE" == cold ]]', links)

    def test_main_publishes_only_after_compilation_before_unchanged_gates(self):
        ci = self.read("ci.yml")
        compile_at = ci.index("- name: Compile all root libraries once")
        save_at = ci.index("- name: Save trusted build outputs for pull requests")
        gates_at = ci.index("- name: Run fixed core and project gates")
        self.assertLess(compile_at, save_at)
        self.assertLess(save_at, gates_at)
        self.assertIn("run: bash scripts/euler-ci.sh", ci)
        self.assertNotIn("continue-on-error: true", ci[compile_at:gates_at])

    def test_pr_cache_requires_actual_overlay_to_match_candidate(self):
        lean = self.read("pr-build.yml")
        self.assertIn("Verify the published cache matches the candidate inputs", lean)
        self.assertIn("steps.publish-inputs.outputs.matched == 'true'", lean)
        self.assertIn("steps.compile.outcome == 'success'", lean)
        self.assertLess(lean.index("- name: Compile candidate"), lean.index("- name: Save successful PR outputs"))
        self.assertLess(lean.index("- name: Save successful PR outputs"), lean.index("- name: Audit compiled candidate"))
        self.assertIn('diff -qr -- "base/$path" "pr/$path"', lean)

    def test_overlay_cache_publication_guard_rejects_mismatches_and_symlinks(self):
        workflow = self.read("pr-build.yml")
        section = workflow.split(
            "- name: Verify the published cache matches the candidate inputs", 1
        )[1].split("\n      - name:", 1)[0]
        script = textwrap.dedent(section.split("        run: |\n", 1)[1])
        for case in ["equal", "source", "pins", "lakefile", "legacy", "symlink", "broken"]:
            with self.subTest(case=case), tempfile.TemporaryDirectory() as directory:
                root = pathlib.Path(directory)
                for tree in ["base", "pr"]:
                    for name in ["KIP126/A.lean", "KIPBase/A.lean", "KIP126.lean",
                                 "KIPBase.lean", "lakefile.lean", "lake-manifest.json",
                                 "lean-toolchain"]:
                        path = root / tree / name
                        path.parent.mkdir(parents=True, exist_ok=True)
                        path.write_text("same")
                changed = {"source": "KIP126/A.lean", "pins": "lean-toolchain",
                           "lakefile": "lakefile.lean", "legacy": "KIPBase/A.lean"}
                if case in changed:
                    (root / "pr" / changed[case]).write_text("changed")
                if case == "symlink":
                    path = root / "pr" / "KIPBase/A.lean"
                    path.unlink()
                    path.symlink_to(root / "base" / "KIPBase/A.lean")
                if case == "broken":
                    (root / "base" / "KIPBase.lean").unlink()
                    (root / "pr" / "KIPBase.lean").unlink()
                    (root / "pr" / "KIPBase.lean").symlink_to(root / "missing")
                output = root / "output"
                result = subprocess.run(
                    ["bash", "-euo", "pipefail", "-c", script], cwd=root,
                    env={**os.environ, "GITHUB_OUTPUT": str(output)},
                    capture_output=True, text=True, check=True,
                )
                self.assertEqual(output.read_text().strip(),
                                 "matched=true" if case == "equal" else "matched=false",
                                 result.stdout)

    def test_blueprint_contract_is_computed_before_candidate_checkout(self):
        blueprint = self.read("blueprint-pr.yml")
        contract = blueprint.index("- name: Compute the trusted PR-build contract")
        checkout = blueprint.index("repository: ${{ steps.pr.outputs.head_repo }}")
        self.assertLess(contract, checkout)
        self.assertIn("test -f gate/scripts/ci-build-contract.sh", blueprint)

    def test_blueprint_preserves_trusted_tooling_with_separate_checkout_paths(self):
        blueprint = self.read("blueprint-pr.yml")
        checkouts = [section for section in blueprint.split("\n      - ")
                     if "uses: actions/checkout@" in section]
        self.assertEqual(len(checkouts), 3)
        for section, path in zip(checkouts, ("gate", "candidate", "work")):
            self.assertIn(f"path: {path}\n", section)
            self.assertIn("persist-credentials: false", section)
        self.assertIn("ref: ${{ github.workflow_sha }}", checkouts[0])

    def test_build_contract_changes_with_trusted_build_machinery(self):
        contract_script = ROOT / "scripts" / "ci-build-contract.sh"
        with tempfile.TemporaryDirectory() as directory:
            repo = pathlib.Path(directory)
            required = (
                ".github/workflows/pr-build.yml",
                "scripts/ci-build-cache-key.sh",
                "scripts/ci-build-contract.sh",
                "scripts/sandbox-build.sh",
                "scripts/Axioms.lean",
                "scripts/perf/watchdog.sh",
            )
            for relative in required:
                path = repo / relative
                path.parent.mkdir(parents=True, exist_ok=True)
                path.write_text(f"{relative}\n")
            shutil.copyfile(contract_script, repo / "scripts/ci-build-contract.sh")

            def digest():
                return subprocess.run(
                    ["bash", str(contract_script), str(repo)],
                    check=True,
                    text=True,
                    stdout=subprocess.PIPE,
                ).stdout.strip()

            initial = digest()
            self.assertRegex(initial, r"^[0-9a-f]{32}$")
            self.assertEqual(initial, digest())
            (repo / "scripts/perf/watchdog.sh").write_text("changed\n")
            self.assertNotEqual(initial, digest())

    def test_build_cache_key_ignores_docs_but_changes_with_lean_inputs(self):
        key_script = ROOT / "scripts" / "ci-build-cache-key.sh"
        with tempfile.TemporaryDirectory() as directory:
            repo = pathlib.Path(directory)

            def run(*args):
                return subprocess.run(
                    args,
                    cwd=repo,
                    check=True,
                    text=True,
                    stdout=subprocess.PIPE,
                ).stdout.strip()

            def commit(message):
                run("git", "add", ".")
                run(
                    "git",
                    "-c",
                    "user.name=Cache Test",
                    "-c",
                    "user.email=cache-test@example.invalid",
                    "commit",
                    "-m",
                    message,
                )
                return run("git", "rev-parse", "HEAD")

            run("git", "init", "--quiet")
            (repo / "KIP126").mkdir()
            (repo / "KIP126.lean").write_text("import KIP126.Basic\n")
            (repo / "KIP126" / "Basic.lean").write_text("def answer := 42\n")
            (repo / "lakefile.lean").write_text("import Lake\n")
            (repo / "lake-manifest.json").write_text("{}\n")
            (repo / "lean-toolchain").write_text("leanprover/lean4:v4.32.0\n")
            source_revision = commit("source")

            (repo / "README.md").write_text("documentation only\n")
            docs_revision = commit("docs")
            source_key = run("bash", str(key_script), ".", source_revision)
            docs_key = run("bash", str(key_script), ".", docs_revision)
            self.assertEqual(source_key, docs_key)

            (repo / "KIP126" / "Basic.lean").write_text("def answer := 126\n")
            lean_revision = commit("lean")
            lean_key = run("bash", str(key_script), ".", lean_revision)
            self.assertNotEqual(docs_key, lean_key)

            (repo / "KIPBase").mkdir()
            (repo / "KIPBase.lean").write_text("import KIPBase.Basic\n")
            (repo / "KIPBase" / "Basic.lean").write_text("def historical := 28\n")
            legacy_revision = commit("historical library")
            legacy_key = run("bash", str(key_script), ".", legacy_revision)
            self.assertNotEqual(lean_key, legacy_key)
            (repo / "KIPBase" / "Basic.lean").write_text("def historical := 32\n")
            changed_legacy = commit("port historical proof")
            self.assertNotEqual(legacy_key, run("bash", str(key_script), ".", changed_legacy))


if __name__ == "__main__":
    unittest.main()
