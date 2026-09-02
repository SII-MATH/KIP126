import json
import subprocess
import tempfile
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SHA = "0123456789abcdef0123456789abcdef01234567"


class DocsHelpersTest(unittest.TestCase):
    def test_stamp_and_assemble_site(self) -> None:
        with tempfile.TemporaryDirectory() as temporary_directory:
            temporary = Path(temporary_directory)
            blueprint = temporary / "blueprint"
            docs = temporary / "docs"
            for component in (blueprint, docs):
                component.mkdir()
                (component / "index.html").write_text(
                    "<!doctype html><html><body>content</body></html>", encoding="utf-8"
                )

            subprocess.run(
                [
                    "python3",
                    ROOT / "scripts/docs/stamp_revision.py",
                    blueprint,
                    "Blueprint",
                    SHA,
                    "SII-MATH/KIP126",
                ],
                check=True,
            )
            subprocess.run(
                [
                    "python3",
                    ROOT / "scripts/docs/stamp_revision.py",
                    docs,
                    "doc-gen4",
                    SHA,
                    "SII-MATH/KIP126",
                ],
                check=True,
            )
            site = temporary / "site"
            subprocess.run(
                [
                    "python3",
                    ROOT / "scripts/docs/assemble_site.py",
                    "--blueprint",
                    blueprint,
                    "--docs",
                    docs,
                    "--output",
                    site,
                    "--sha",
                    SHA,
                    "--repository",
                    "SII-MATH/KIP126",
                ],
                check=True,
            )

            self.assertIn(SHA, (site / "index.html").read_text(encoding="utf-8"))
            self.assertIn(
                "kip126-revision",
                (site / "blueprint/index.html").read_text(encoding="utf-8"),
            )
            revision = json.loads(
                (site / "docs/revision.json").read_text(encoding="utf-8")
            )
            self.assertEqual(revision["commit"], SHA)

    def test_stamp_rejects_non_sha_revision(self) -> None:
        with tempfile.TemporaryDirectory() as temporary_directory:
            component = Path(temporary_directory)
            (component / "index.html").write_text(
                "<html><body></body></html>", encoding="utf-8"
            )
            result = subprocess.run(
                [
                    "python3",
                    ROOT / "scripts/docs/stamp_revision.py",
                    component,
                    "Blueprint",
                    "main",
                    "SII-MATH/KIP126",
                ],
                check=False,
                capture_output=True,
                text=True,
            )
            self.assertNotEqual(result.returncode, 0)
            self.assertIn("invalid commit SHA", result.stderr)


if __name__ == "__main__":
    unittest.main()
