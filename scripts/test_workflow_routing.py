import pathlib
import shutil
import subprocess
import tempfile
import textwrap
import unittest


ROOT = pathlib.Path(__file__).resolve().parents[1]
WORKFLOWS = ROOT / ".github" / "workflows"


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

    def test_blueprint_pr_has_separate_gate_and_authorized_mixed_sync(self):
        blueprint = self.read("blueprint-pr.yml")
        lean = self.read("pr-build.yml")
        review = self.read("review.yml")
        self.assertIn("validate-sync", blueprint)
        self.assertIn("validate-sync", lean)
        self.assertIn("MIXED_SYNC=1", lean)
        self.assertIn('if [[ "$MIXED" != true ]]', blueprint)
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
        self.assertIn("needs.classify.outputs.build_cache_digest", workflows["pages.yml"])

    def test_pr_build_inherits_only_an_attested_equivalent_first_parent(self):
        workflow = self.read("pr-build.yml")
        self.assertIn("fetch-depth: 21", workflow)
        self.assertIn('rev-list --first-parent --max-count=20 "$HEAD_SHA^"', workflow)
        self.assertIn('ancestor_input" != "$input', workflow)
        self.assertIn('.creator.login == "github-actions[bot]"', workflow)
        self.assertIn('description" == "$attestation', workflow)
        self.assertIn('warning_state" == success', workflow)
        self.assertIn('warnings=$warning_state', workflow)
        self.assertIn("BUILD_REUSED=1", workflow)
        self.assertIn("github.event_name != 'merge_group'", workflow)

        for name in (
            "Install elan (trusted)",
            "Install landrun (pinned + checksum) and self-test (fail closed)",
            "Fetch Mathlib with the (bump-validated) config (network, no token; no PR code)",
            "Prepare trusted read-only Lean watchdog toolchain",
            "Build (trusted config + overlaid KIP126/) under landrun, offline",
        ):
            section = workflow.split(f"- name: {name}", 1)[1].split("\n      - name:", 1)[0]
            self.assertIn("env.BUILD_REUSED != '1'", section)

        self.assertIn('state=success; desc="${{ env.BUILD_ATTESTATION }}"', workflow)

    def test_blueprint_check_reuses_matching_pr_outputs_with_safe_fallback(self):
        lean = self.read("pr-build.yml")
        blueprint = self.read("blueprint-pr.yml")
        cache_prefix = "kip126-pr-build-v1-"
        self.assertIn("actions/cache/save@0057852bfaa89a56745cba8c7296529d2fc39830", lean)
        self.assertIn(cache_prefix, lean)
        self.assertIn(cache_prefix, blueprint)
        self.assertIn("scripts/ci-build-contract.sh", lean)
        self.assertIn("scripts/ci-build-contract.sh", blueprint)
        self.assertIn('if [[ "$LEAN_OUTPUTS_RESTORED" != true ]]', blueprint)
        fallback = blueprint.split('if [[ "$LEAN_OUTPUTS_RESTORED" != true ]]', 1)[1].split("fi", 1)[0]
        self.assertIn("lake build\n", fallback)
        self.assertNotIn("lake build KIP126", fallback)

    def test_blueprint_contract_is_computed_before_candidate_checkout(self):
        blueprint = self.read("blueprint-pr.yml")
        contract = blueprint.index("- name: Compute the trusted PR-build contract")
        checkout = blueprint.index("repository: ${{ steps.pr.outputs.head_repo }}")
        self.assertLess(contract, checkout)
        self.assertIn("test -f gate/scripts/ci-build-contract.sh", blueprint)

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
