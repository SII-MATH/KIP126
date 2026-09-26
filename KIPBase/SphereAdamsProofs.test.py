#!/usr/bin/env python3
"""Fail-closed regression checks for the result importer (standard library only)."""
import importlib.util
import json
from pathlib import Path
import tempfile
import unittest

spec = importlib.util.spec_from_file_location(
    "importer", Path(__file__).with_name("SphereAdamsProofs.generate.py"))
importer = importlib.util.module_from_spec(spec)
spec.loader.exec_module(importer)


class ImportBoundaryTests(unittest.TestCase):
    def test_null_empty_and_index_zero_are_distinct(self):
        self.assertEqual(importer.indices(""), [])
        self.assertEqual(importer.indices("0"), [0])
        for text in (None, "[NULL]", "?", "-1", "1,1", "2,1", "0,", "1;2"):
            with self.subTest(text=text), self.assertRaises(ValueError):
                importer.indices(text)

    def test_unknown_trial_inverse_and_other_spectra_are_rejected(self):
        row = dict(name="S0", depth=0, reason="D", r=3, s=6, t=132,
                   stem=126, x="0", dx="3")
        importer.accepted_log(row)
        for change in (dict(dx=None), dict(dx=""), dict(x=""), dict(depth=1),
                       dict(reason="T"), dict(reason="TI"), dict(reason="DI"),
                       dict(reason=None), dict(name="Cnu"), dict(r=999),
                       dict(r=1), dict(stem=125)):
            # r=999 is a sentinel, even though its target string may be nonempty.
            with self.subTest(change=change), self.assertRaises(ValueError):
                importer.accepted_log({**row, **change})

    def test_bad_hash_is_not_accepted_as_a_new_version(self):
        with tempfile.TemporaryDirectory() as tmp:
            path = Path(tmp) / "proofs.db"
            path.write_bytes(b"not the pinned database")
            with self.assertRaisesRegex(ValueError, "SHA-256 mismatch"):
                importer.pinned(path)

    def test_monomials_fail_closed(self):
        gens = {0: {}, 1: {}}
        self.assertEqual(importer.monomial("0,2,1,1", gens), [(0, 2), (1, 1)])
        for text in ("0", "0,0", "2,1", "1,1,0,1", "0,1,0,2", "-1,2"):
            with self.subTest(text=text), self.assertRaises(ValueError):
                importer.monomial(text, gens)

    def test_actual_deferred_database_records_cannot_be_imported(self):
        path = Path(__file__).parent / "StableHomotopy/SphereAdamsProofs.records.json"
        records = json.loads(path.read_text())["deferred"]["database_records"]
        self.assertEqual(len(records), 4)
        for row in records:
            with self.subTest(row_id=row["id"]), self.assertRaises(ValueError):
                importer.accepted_log(row)


if __name__ == "__main__":
    unittest.main()
