#!/usr/bin/env python3
"""Negative checks for native payload, witnesses, and proof-status boundaries."""
import copy
import csv
import importlib.util
import io
import json
from pathlib import Path
import tempfile
import unittest
from unittest import mock

SCRIPT = Path(__file__).with_name("native-contract.py")
SPEC = importlib.util.spec_from_file_location("native_contract", SCRIPT)
NATIVE = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(NATIVE)


class NativeContractTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.expected = NATIVE.rebuild()
        cls.lowstem = NATIVE.load_lowstem()
        _, data, _ = cls.lowstem.pinned("S0_AdamsE2_relations.csv")
        cls.relations = list(csv.DictReader(io.StringIO(data.decode("utf-16"))))

    def test_committed_snapshot_is_reproducible(self):
        NATIVE.check_snapshot(NATIVE.DEFAULT_OUTPUT.read_text(), self.expected)

    def test_changed_coordinate_cannot_keep_the_same_native_target(self):
        changed = copy.deepcopy(self.expected)
        changed["naturality"]["target_log"]["dx"] = "1"
        with self.assertRaisesRegex(ValueError, "snapshot differs"):
            NATIVE.check_snapshot(NATIVE.rendered(changed), self.expected)

    def test_changed_source_log_transcription_is_rejected(self):
        naturality = self.expected["naturality"]
        source, target = naturality["source_candidate_log"], naturality["target_log"]
        text = (NATIVE.LIN / "Raw/Naturality.lean").read_text()
        original = NATIVE.raw_log_declaration("sourceCandidate245130", source)
        for before, after in (("name := some \"Ceta\"", "name := some \"S0\""),
                              ("info := none", "info := some \"\""),
                              ("r := some 3", "r := some (1 + 2)")):
            changed = text.replace(original, original.replace(before, after))
            with self.assertRaisesRegex(ValueError, "sourceCandidate245130 transcription differs"):
                NATIVE.check_raw_naturality_declarations(changed, source, target)

    def test_changed_polynomial_fails_witness_identity(self):
        witness = copy.deepcopy(self.expected["algebra"]["product_witnesses"][1])
        witness["output"][0][0][1] += 1
        with self.assertRaisesRegex(ValueError, "polynomial witness identity failed"):
            NATIVE.validate_product_witness(witness, self.relations, self.lowstem)

    def test_changed_native_map_metadata_fails_pinned_hash(self):
        config = NATIVE.pinned_map_catalogue(self.lowstem)
        mapping = next(m for m in config["maps"] if m["name"] == "Ceta__S0")
        # Still covers the same degrees, so the semantic shift check alone
        # would accept this change. The input hash must reject it first.
        mapping["t_max"] += 1
        with tempfile.TemporaryDirectory(prefix="lin-map-mutation-") as temporary:
            raw = Path(temporary)
            (raw / "manifest.json").write_bytes((self.lowstem.RAW / "manifest.json").read_bytes())
            (raw / "ss.json").write_text(json.dumps(config))
            with mock.patch.object(self.lowstem, "RAW", raw):
                with self.assertRaisesRegex(ValueError, "pinned input mismatch: ss.json"):
                    NATIVE.pinned_map_catalogue(self.lowstem)

    def test_changed_suspension_fails_native_degree_contract(self):
        naturality = self.expected["naturality"]
        mapping = {**naturality["native_map"], "sus": 1}
        with self.assertRaisesRegex(ValueError, "map suspension"):
            NATIVE.validate_naturality(naturality["source_candidate_log"], naturality["target_log"], mapping)

    def test_missing_trace_and_obligations_cannot_be_erased(self):
        swapped_targets = list(reversed(self.expected["algebra"]["fixed_quotient_statement_declarations"]))
        for section, key, value in (("naturality", "remaining_premises", []),
                                    ("algebra", "actual_row_certified", True),
                                    ("algebra", "fixed_quotient_statement_declarations", swapped_targets)):
            changed = copy.deepcopy(self.expected)
            changed[section][key] = value
            with self.assertRaisesRegex(ValueError, "snapshot differs"):
                NATIVE.check_snapshot(NATIVE.rendered(changed), self.expected)
        self.assertTrue(self.expected["naturality"]["remaining_premises"])
        self.assertTrue(self.expected["naturality"]["missing_trace"])
        self.assertFalse(self.expected["contract"]["actual_certification"])
        self.assertEqual(self.expected["contract"]["generated_proof_status"], "unverified")

    def test_unknown_and_zero_encodings_remain_distinct(self):
        self.assertEqual(NATIVE.coordinates(""), [])
        for text in (None, "-1", "[NULL]", "1,1", "2,1"):
            with self.assertRaises(ValueError):
                NATIVE.coordinates(text)
        self.assertIsNone(self.expected["naturality"]["source_candidate_log"]["info"])
        self.assertEqual(self.expected["algebra"]["target_log"]["dx"], "")


if __name__ == "__main__":
    unittest.main()
