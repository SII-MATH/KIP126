import pathlib
import subprocess
import tempfile
import unittest


ROOT = pathlib.Path(__file__).resolve().parents[1]
WORKFLOWS = ROOT / ".github" / "workflows"


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


if __name__ == "__main__":
    unittest.main()
