"""Regression tests for the historical-assumption inventory."""
import contextlib
import hashlib
import io
import json
import tarfile
import tempfile
from unittest import mock
import runpy
from pathlib import Path
import unittest

TOOLS = runpy.run_path(str(Path(__file__).with_name("kipbase-migration.py")))


class TrustInventoryTests(unittest.TestCase):
    def test_nested_comments_and_strings_are_not_assumptions(self):
        text = '/- axiom fake : False /- sorry -/ -/\ndef s := "sorry"\n'
        text += 'theorem actual : True := by\n  sorry -- axiom ignored\n'
        declarations, debt = TOOLS["inventory"](text)
        self.assertEqual(declarations, [("def", "s"), ("theorem", "actual")])
        self.assertEqual(debt, [{"kind": "sorry", "declaration": "actual", "line": 4}])

    def test_data_placeholders_and_indented_assumptions_are_recorded(self):
        text = 'noncomputable def data : Nat := sorry\n  axiom claim : True\n'
        _, debt = TOOLS["inventory"](text)
        self.assertEqual([(x["kind"], x["declaration"]) for x in debt],
                         [("sorry", "data"), ("axiom", "claim")])

    def test_private_named_declarations_are_covered(self):
        declarations, _ = TOOLS["inventory"]('private lemma f : True := by trivial\n')
        self.assertEqual(declarations, [("lemma", "f")])


class ArchiveOnlyTests(unittest.TestCase):
    def fixture(self, root, corrupt=False):
        archive = root / "migration/kip-base"
        archive.mkdir(parents=True)
        content = b"axiom historical : True\n"
        manifest = {"files": [{"source": "KIPBase.lean", "destination": "KIPBase.lean",
                               "bytes": len(content), "sha256": hashlib.sha256(content).hexdigest()}]}
        if corrupt:
            manifest["files"][0]["sha256"] = "0" * 64
        (archive / "source-manifest.json").write_text(json.dumps(manifest))
        with tarfile.open(archive / "source-4.28.tar.gz", "w:gz") as stream:
            entry = tarfile.TarInfo("KIPBase.lean")
            entry.size = len(content)
            stream.addfile(entry, io.BytesIO(content))
        return archive

    def test_development_verifies_archive_without_audit_or_live_source_policy(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            archive = self.fixture(root)
            output = io.StringIO()
            with mock.patch.dict(TOOLS["verify"].__globals__, ROOT=root, ARCHIVE=archive):
                with contextlib.redirect_stdout(output):
                    TOOLS["verify"](archive_only=True)
                # Explicit full migration checking still inspects the live source.
                with self.assertRaises(FileNotFoundError):
                    TOOLS["verify"]()
            self.assertIn("1 files verified", output.getvalue())
            self.assertNotIn("debt", output.getvalue())

    def test_development_still_rejects_corrupt_archived_sources(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            archive = self.fixture(root, corrupt=True)
            with mock.patch.dict(TOOLS["verify"].__globals__, ROOT=root, ARCHIVE=archive):
                with self.assertRaises(AssertionError):
                    TOOLS["verify"](archive_only=True)


if __name__ == "__main__":
    unittest.main()
