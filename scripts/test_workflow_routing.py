import json
import os
import pathlib
import shutil
import subprocess
import sys
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
                for library in ("KIP126", "KIPBase"):
                    (repo / tree / library).mkdir(parents=True)
                    (repo / tree / f"{library}.lean").write_text("")
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

    def test_candidate_kipbase_budgets_are_checked(self):
        for path in ("KIPBase/Test.lean", "KIPBase.lean"):
            with self.subTest(path=path):
                result = self.run_guard("set_option maxHeartbeats 0\n", path=path)
                self.assertNotEqual(result.returncode, 0)
                self.assertIn("unapproved maxHeartbeats", result.stdout)
                unchanged = self.run_guard("set_option maxHeartbeats 0\n",
                                           trusted="set_option maxHeartbeats 0\n", path=path)
                self.assertEqual(unchanged.returncode, 0, unchanged.stderr)



class ProducerToolingWorkflowTests(unittest.TestCase):
    """Check the trusted metadata handoff using the actual workflow scripts."""

    def workflow_step(self, workflow, name):
        text = (WORKFLOWS / workflow).read_text()
        return text.split(f"- name: {name}\n", 1)[1].split("\n      - ", 1)[0]

    def step_script(self, workflow, name):
        section = self.workflow_step(workflow, name)
        return textwrap.dedent(section.split("run: |\n", 1)[1])

    def test_producer_publishes_metadata_before_candidate_checkout(self):
        workflow = (WORKFLOWS / "pr-build.yml").read_text()
        names = (
            "Checkout workflow-pinned trusted build tooling",
            "Record trusted producer tooling",
            "Publish trusted producer tooling",
            "Scope guard — allow KIP126 sources and validated pins",
            "Checkout PR head (untrusted, no credentials)",
        )
        positions = [workflow.index(f"- name: {name}\n") for name in names]
        self.assertEqual(positions, sorted(positions))
        record = self.workflow_step("pr-build.yml", names[1])
        for variable, value in {
            "REPOSITORY": "github.repository",
            "HEAD_SHA": "steps.pr.outputs.sha",
            "TOOLING_SHA": "github.workflow_sha",
            "WORKFLOW_REF": "github.workflow_ref",
            "RUN_ID": "github.run_id",
            "RUN_ATTEMPT": "github.run_attempt",
        }.items():
            self.assertIn(f"{variable}: ${{{{ {value} }}}}", record)
        publish = self.workflow_step("pr-build.yml", names[2])
        for section in (record, publish):
            self.assertIn("github.event_name == 'pull_request_target'", section)
        self.assertIn(
            "actions/upload-artifact@ea165f8d65b6e75b540449e92b4886f43607fa02",
            publish,
        )
        self.assertIn(
            "name: lean-producer-tooling-${{ github.run_id }}-${{ github.run_attempt }}",
            publish,
        )
        self.assertIn("lean-producer-tooling/tooling.json", publish)
        self.assertIn("retention-days: 7", publish)
        self.assertIn("if-no-files-found: error", publish)
        self.assertNotIn("overwrite: true", publish)

    def test_metadata_records_actual_trusted_checkout_and_rejects_wrong_sha(self):
        script = self.step_script("pr-build.yml", "Record trusted producer tooling")
        for mismatch in (False, True):
            with self.subTest(mismatch=mismatch), tempfile.TemporaryDirectory() as directory:
                root = pathlib.Path(directory)
                gate = root / "gate"
                subprocess.run(["git", "init", "--quiet", str(gate)], check=True)
                subprocess.run(
                    ["git", "-C", str(gate), "-c", "user.name=Workflow Test",
                     "-c", "user.email=workflow-test@example.invalid", "-c",
                     "commit.gpgsign=false", "commit", "--quiet", "--allow-empty",
                     "-m", "trusted tooling"],
                    check=True,
                )
                tooling_sha = subprocess.check_output(
                    ["git", "-C", str(gate), "rev-parse", "HEAD"], text=True
                ).strip()
                runner_temp = root / "runner-temp"
                runner_temp.mkdir()
                environment = {
                    **os.environ,
                    "RUNNER_TEMP": str(runner_temp),
                    "REPOSITORY": "SII-MATH/KIP126",
                    "HEAD_SHA": "b" * 40,
                    "TOOLING_SHA": "0" * 40 if mismatch else tooling_sha,
                    "WORKFLOW_REF":
                        "SII-MATH/KIP126/.github/workflows/pr-build.yml@refs/heads/main",
                    "RUN_ID": "734123",
                    "RUN_ATTEMPT": "2",
                }
                result = subprocess.run(
                    ["bash", "-euo", "pipefail", "-c", script], cwd=root,
                    env=environment, capture_output=True, text=True,
                )
                metadata = runner_temp / "lean-producer-tooling" / "tooling.json"
                if mismatch:
                    self.assertNotEqual(result.returncode, 0)
                    self.assertFalse(metadata.exists())
                else:
                    self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
                    self.assertEqual(json.loads(metadata.read_text()), {
                        "schema": 1,
                        "repository": "SII-MATH/KIP126",
                        "head_sha": "b" * 40,
                        "tooling_sha": tooling_sha,
                        "workflow_path": ".github/workflows/pr-build.yml",
                        "workflow_ref": environment["WORKFLOW_REF"],
                        "run_id": 734123,
                        "run_attempt": 2,
                        "event": "pull_request_target",
                    })

    def test_docs_use_resolved_tooling_and_the_same_producer_attempt(self):
        pages = (WORKFLOWS / "pages.yml").read_text()
        names = (
            "Resolve trusted producer tooling",
            "Checkout trusted producer contract",
            "Wait for exact-input producer outputs",
        )
        positions = [pages.index(f"- name: {name}\n") for name in names]
        self.assertEqual(positions, sorted(positions))
        resolver = self.workflow_step("pages.yml", names[0])
        self.assertIn("id: producer-tooling", resolver)
        self.assertIn("needs.classify.outputs.cold != 'true'", resolver)
        self.assertIn("needs.classify.outputs.lean_producer == 'pr-build.yml'", resolver)
        self.assertIn("scripts/docs/wait_for_lean_cache.py", resolver)
        self.assertIn("--resolve-tooling", resolver)
        checkout = self.workflow_step("pages.yml", names[1])
        self.assertIn("repository: ${{ github.repository }}", checkout)
        self.assertIn(
            "ref: ${{ steps.producer-tooling.outputs.tooling_sha || needs.classify.outputs.base_sha }}",
            checkout,
        )
        self.assertIn("persist-credentials: false", checkout)
        wait = self.workflow_step("pages.yml", names[2])
        for variable, output in (("PRODUCER_RUN_ID", "run_id"),
                                 ("PRODUCER_RUN_ATTEMPT", "run_attempt")):
            self.assertIn(
                f"{variable}: ${{{{ steps.producer-tooling.outputs.{output} }}}}", wait
            )

    def test_docs_wait_passes_bound_attempt_only_for_the_pr_producer(self):
        script = self.step_script("pages.yml", "Wait for exact-input producer outputs")
        script = script.replace("${{ runner.os }}", "Linux").replace(
            "${{ runner.arch }}", "X64"
        )
        for producer, run_id, attempt in (
            ("pr-build.yml", "734123", "2"),
            ("ci.yml", "", ""),
            ("pr-build.yml", "", "2"),
            ("pr-build.yml", "734123", ""),
        ):
            with self.subTest(producer=producer, run_id=run_id, attempt=attempt), \
                    tempfile.TemporaryDirectory() as directory:
                root = pathlib.Path(directory)
                gate_scripts = root / "gate" / "scripts"
                gate_scripts.mkdir(parents=True)
                for name, value in (("ci-build-cache-key.sh", "a" * 64),
                                    ("ci-build-contract.sh", "c" * 32)):
                    (gate_scripts / name).write_text(f"printf '%s\\n' '{value}'\n")
                binary = root / "bin"
                binary.mkdir()
                capture = root / "arguments.json"
                python = binary / "python3"
                python.write_text(
                    f"#!{sys.executable}\n"
                    "import json, os, pathlib, sys\n"
                    "pathlib.Path(os.environ['ARGV_CAPTURE']).write_text(json.dumps(sys.argv[1:]))\n"
                )
                python.chmod(0o755)
                result = subprocess.run(
                    ["bash", "-euo", "pipefail", "-c", script], cwd=root,
                    env={
                        **os.environ,
                        "PATH": str(binary) + os.pathsep + os.environ["PATH"],
                        "ARGV_CAPTURE": str(capture),
                        "GITHUB_REPOSITORY": "SII-MATH/KIP126",
                        "PRODUCER": producer,
                        "HEAD_SHA": "b" * 40,
                        "BASE_SHA": "d" * 40,
                        "PRODUCER_RUN_ID": run_id,
                        "PRODUCER_RUN_ATTEMPT": attempt,
                    }, capture_output=True, text=True,
                )
                if producer == "pr-build.yml" and (not run_id or not attempt):
                    self.assertNotEqual(result.returncode, 0)
                    self.assertFalse(capture.exists())
                    continue
                self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
                arguments = json.loads(capture.read_text())
                self.assertEqual(arguments[arguments.index("--workflow") + 1], producer)
                self.assertEqual(arguments[arguments.index("--sha") + 1],
                                 ("b" if producer == "pr-build.yml" else "d") * 40)
                for flag, value in (("--producer-run-id", "734123"),
                                    ("--producer-run-attempt", "2")):
                    if producer == "pr-build.yml":
                        self.assertEqual(arguments.count(flag), 1)
                        self.assertEqual(arguments[arguments.index(flag) + 1], value)
                    else:
                        self.assertNotIn(flag, arguments)


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

    def test_development_does_not_publish_proof_debt_or_require_it_for_inheritance(self):
        workflow = self.read("pr-build.yml")
        self.assertNotIn("AXIOM_AUDIT", workflow)
        self.assertNotIn("post_status warnings", workflow)
        self.assertNotIn("warning_state", workflow)
        main = (ROOT / "scripts/euler-ci.sh").read_text()
        self.assertNotIn("lake env lean --run scripts/Axioms.lean", main)
        self.assertNotIn("--iofail", main)
        self.assertNotIn("lake exe kipbaseAudit", main)
        self.assertIn("kipbase-migration.py --archive-only", main)
        self.assertTrue((ROOT / "scripts/Axioms.lean").is_file())

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
        self.assertLess(lean.index("- name: Save successful PR outputs"), lean.index("- name: Validate compiled candidate"))
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
                "scripts/ci_queue_reuse.py",
                "scripts/sandbox-build.sh",
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
