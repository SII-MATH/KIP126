"""Regression tests for immutable source-archive integrity."""
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


class ArchiveOnlyTests(unittest.TestCase):
    def fixture(self, root, corrupt=False):
        archive = root / "docs/migration/kip-base"
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

    def test_archive_verification_allows_live_proofs_to_evolve(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            archive = self.fixture(root)
            # The archived axiom is retained as source evidence. Live code and
            # the old migration patch may evolve independently of that record.
            (root / "KIPBase.lean").write_text("theorem historical : True := by trivial\n")
            (archive / "port.patch").write_text("historical migration patch\n")
            output = io.StringIO()
            with mock.patch.dict(TOOLS["verify"].__globals__, ROOT=root, ARCHIVE=archive):
                with contextlib.redirect_stdout(output):
                    TOOLS["verify"]()
            self.assertIn("1 files verified", output.getvalue())
            self.assertNotIn("debt", output.getvalue())

    def test_development_still_rejects_corrupt_archived_sources(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            archive = self.fixture(root, corrupt=True)
            with mock.patch.dict(TOOLS["verify"].__globals__, ROOT=root, ARCHIVE=archive):
                with self.assertRaises(AssertionError):
                    TOOLS["verify"]()


if __name__ == "__main__":
    unittest.main()
