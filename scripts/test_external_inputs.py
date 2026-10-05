#!/usr/bin/env python3
"""Regression mutations for the single external-input audit boundary."""
from __future__ import annotations

import copy
import json
import sys
import unittest
from pathlib import Path
from unittest.mock import patch

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from check_external_inputs import structure_fields, validate_document  # noqa: E402


ROOT = SCRIPT_DIR.parent


class ExternalInputTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.document = json.loads((ROOT / "docs/external-inputs.json").read_text())

    def fixture(self):
        return copy.deepcopy(self.document)

    def test_current_manifest_is_consistent(self):
        self.assertTrue(validate_document(ROOT, self.document))

    def test_missing_adams_leaf_is_rejected(self):
        document = self.fixture()
        adams = next(c for c in document["interface_coverage"] if c["structure"].endswith(".AdamsOneLineInterface"))
        del adams["fields"]["adamsOneLine_d2"]
        with self.assertRaisesRegex(ValueError, "field coverage drift"):
            validate_document(ROOT, document)

    def test_route_statements_have_separate_exact_coverage(self):
        document = self.fixture()
        route = next(c for c in document["interface_coverage"] if c["structure"].endswith(".Statements"))
        del route["fields"]["realizationKernel"]
        with self.assertRaisesRegex(ValueError, "field coverage drift"):
            validate_document(ROOT, document)

    def test_source_cannot_be_invented(self):
        document = self.fixture()
        document["route"]["claims"][0]["sources"] = ["not_a_source"]
        with self.assertRaisesRegex(ValueError, "unknown/missing source"):
            validate_document(ROOT, document)

    def test_root_summary_cannot_lose_locator(self):
        document = self.fixture()
        document["route"]["root_literature"][0]["locator"] = ""
        with self.assertRaisesRegex(ValueError, "missing locator"):
            validate_document(ROOT, document)

    def test_literature_cannot_be_reclassified_to_bypass_blueprint(self):
        document = self.fixture()
        item = next(c for c in document["interface_coverage"] if c["structure"].endswith(".LiteratureResults"))
        item["role"] = "computation"
        for row in item["fields"].values():
            row["proof_status"] = "certification-obligation"
            row["blueprint_labels"] = []
        with self.assertRaisesRegex(ValueError, "structure role mismatch"):
            validate_document(ROOT, document)

    def test_delivery_shell_cannot_replace_result_coverage(self):
        document = self.fixture()
        item = next(c for c in document["interface_coverage"] if c["structure"].endswith(".ComputationResults"))
        item["structure"] = "KIP126.Challenge2.ComputationInterface"
        with self.assertRaisesRegex(ValueError, "interface coverage structure set drift"):
            validate_document(ROOT, document)

    def test_fixed_foundation_is_not_a_challenge2_field(self):
        document = self.fixture()
        self.assertFalse(any(c["structure"].endswith(".FoundationInputs")
                             for c in document["interface_coverage"]))
        self.assertTrue(any("KIP126.Def.standardSphereApplicability" in item["declarations"]
                            and item["proof_status"] == "proof-placeholder"
                            for item in document["route"]["source_producers"]))

    def test_adding_manifest_leaf_does_not_add_a_lean_field(self):
        document = self.fixture()
        item = next(c for c in document["interface_coverage"] if c["structure"].endswith(".AdamsOneLineInterface"))
        item["fields"]["imaginary_theorem"] = item["fields"]["adamsOneLine_d2"]
        with self.assertRaisesRegex(ValueError, "field coverage drift"):
            validate_document(ROOT, document)

    def test_geometry_is_not_a_current_input(self):
        literature = next(c for c in self.document["interface_coverage"]
                          if c["structure"].endswith(".LiteratureResults"))
        self.assertEqual(set(literature["fields"]),
                         {"sphereVanishing", "adamsOneLine", "moss", "br21", "route"})
        self.assertNotIn("geometry", {r["input_field"]
                                     for r in self.document["route"]["root_literature"]})
        self.assertFalse(any("Geometry" in c["structure"]
                             for c in self.document["interface_coverage"]))

    def test_transcription_status_cannot_be_promoted_to_proof(self):
        document = self.fixture()
        document["declaration_sources"][0]["status"] = "proved"
        with self.assertRaisesRegex(ValueError, "invalid declaration review status"):
            validate_document(ROOT, document)

    def test_commented_blueprint_label_is_not_coverage(self):
        read_text = Path.read_text
        target = ROOT / "blueprint/src/chapters/external_results.tex"

        def without_sphere_label(path, *args, **kwargs):
            text = read_text(path, *args, **kwargs)
            if path == target:
                text = text.replace(r"\label{thm:external-sphere-vanishing}",
                                    r"%\label{thm:external-sphere-vanishing}")
            return text

        with patch.object(Path, "read_text", without_sphere_label):
            with self.assertRaisesRegex(ValueError, "unknown Blueprint label"):
                validate_document(ROOT, self.document)

    def test_commented_paper_label_is_not_a_consumer(self):
        read_text = Path.read_text
        target = ROOT / "MainPaper/main.tex"
        label = self.document["route"]["claims"][0]["lwx_consumers"][0]

        def without_consumer_label(path, *args, **kwargs):
            text = read_text(path, *args, **kwargs)
            if path == target:
                text = text.replace(r"\label{" + label + "}",
                                    r"%\label{" + label + "}")
            return text

        with patch.object(Path, "read_text", without_consumer_label):
            with self.assertRaisesRegex(ValueError, "unknown paper label"):
                validate_document(ROOT, self.document)

    def test_source_parser_ignores_commented_fields_and_accepts_binders(self):
        source = """/- structure Demo where\n  fake : False\n-/
structure Demo (n : Nat) : Prop where
  /-- nested /- comment -/ with field-looking text\n  fake : False -/
  first (i : Nat) : i = i
  second : n = n
-- trailing comment
def separate := True
"""
        self.assertEqual(structure_fields(source, "KIP126.Demo"), {"first", "second"})


if __name__ == "__main__":
    unittest.main()
