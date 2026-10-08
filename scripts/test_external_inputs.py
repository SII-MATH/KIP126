#!/usr/bin/env python3
"""Regression mutations for the single external-input audit boundary."""
from __future__ import annotations

import copy
import json
import sys
import tempfile
import unittest
from pathlib import Path
from unittest.mock import patch

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from check_external_inputs import blueprint_nodes, structure_fields, validate_document  # noqa: E402


ROOT = SCRIPT_DIR.parent


class BlueprintNodeTests(unittest.TestCase):
    FIELD = "KIP126.Challenge2.LiteratureResults.sphereVanishing"
    OTHER_FIELD = "KIP126.Challenge2.LiteratureResults.adamsOneLine_d2"

    def parse(self, files):
        with tempfile.TemporaryDirectory(prefix="kip126-blueprint-parser-") as directory:
            root = Path(directory)
            source = root / "blueprint/src"
            source.mkdir(parents=True)
            for name, text in files.items():
                path = source / name
                path.parent.mkdir(parents=True, exist_ok=True)
                path.write_text(text)
            return blueprint_nodes(root)

    def node(self, label="one", field=None):
        field = self.FIELD if field is None else field
        return (r"\begin{theorem}\label{" + label + r"}\lean{" + field
                + r"}\end{theorem}")

    def test_nested_inputs_expand_inside_math_node(self):
        labels, nodes = self.parse({
            "content.tex": r"\input{chapters/first}",
            "chapters/first.tex": r"\begin{theorem}\input{fragments/body}\end{theorem}",
            "fragments/body.tex": r"\label{one}\lean{" + self.FIELD + "}",
        })
        self.assertEqual(labels, {"one"})
        self.assertEqual(nodes, {"one": {self.FIELD}})

    def test_multiple_lean_commands_and_label_aliases(self):
        labels, nodes = self.parse({
            "content.tex": (r"\begin{theorem}\label{one}\label{alias}"
                            r"\lean{KIP126.Def.example}\lean{" + self.FIELD
                            + r", KIP126.Def.another}\end{theorem}"),
        })
        self.assertEqual(labels, {"one", "alias"})
        expected = {self.FIELD, "KIP126.Def.example", "KIP126.Def.another"}
        self.assertEqual(nodes, {"one": expected, "alias": expected})

    def test_percent_comments_cannot_add_nodes_or_inputs(self):
        labels, nodes = self.parse({
            "content.tex": ("% " + self.node("inactive") + "\n"
                            r"% \input{missing}" + "\n" + self.node()),
        })
        self.assertEqual(labels, {"one"})
        self.assertEqual(nodes, {"one": {self.FIELD}})

    def test_repeated_input_is_rejected(self):
        with self.assertRaisesRegex(ValueError, "repeated Blueprint input"):
            self.parse({"content.tex": r"\input{child}\input{child}",
                        "child.tex": self.node()})

    def test_cyclic_input_is_rejected(self):
        with self.assertRaisesRegex(ValueError, "cyclic Blueprint input"):
            self.parse({"content.tex": r"\input{child}",
                        "child.tex": r"\input{content}"})

    def test_inactive_conditional_cannot_add_coverage(self):
        with self.assertRaisesRegex(ValueError, "unsupported Blueprint conditional"):
            self.parse({"content.tex": r"\iffalse" + self.node() + r"\fi"})

    def test_verbatim_cannot_add_coverage(self):
        for text in (r"\begin{verbatim}" + self.node() + r"\end{verbatim}",
                     r"\verb|" + self.node() + "|"):
            with self.subTest(text=text):
                with self.assertRaisesRegex(ValueError, "unsupported Blueprint verbatim"):
                    self.parse({"content.tex": text})

    def test_node_free_standalone_preamble_is_allowed(self):
        labels, nodes = self.parse({
            "content.tex": (r"\ifdefined\chapter\let\example\relax"
                            r"\else\documentclass{report}\fi" + self.node()),
        })
        self.assertEqual(nodes, {"one": {self.FIELD}})
        self.assertEqual(labels, {"one"})

    def test_standalone_preamble_cannot_hide_nodes_or_inputs(self):
        for body in (self.node(), r"\input{missing}"):
            with self.subTest(body=body):
                with self.assertRaisesRegex(ValueError, "unsupported Blueprint conditional coverage"):
                    self.parse({"content.tex": r"\ifdefined\chapter" + body + r"\fi"})

    def test_nested_math_nodes_keep_their_own_links(self):
        labels, nodes = self.parse({
            "content.tex": (r"\begin{theorem}\label{outer}\lean{" + self.FIELD
                            + r"}\begin{lemma}\label{inner}\lean{" + self.OTHER_FIELD
                            + r"}\end{lemma}\end{theorem}"),
        })
        self.assertEqual(labels, {"outer", "inner"})
        self.assertEqual(nodes, {"outer": {self.FIELD}, "inner": {self.OTHER_FIELD}})


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
        adams = next(c for c in document["interface_coverage"] if c["structure"].endswith(".LiteratureResults"))
        del adams["fields"]["adamsOneLine_d2"]
        with self.assertRaisesRegex(ValueError, "field coverage drift"):
            validate_document(ROOT, document)

    def test_route_statements_have_separate_exact_coverage(self):
        document = self.fixture()
        route = next(c for c in document["interface_coverage"] if c["structure"].endswith(".LiteratureResults"))
        del route["fields"]["route_realizationKernel"]
        with self.assertRaisesRegex(ValueError, "field coverage drift"):
            validate_document(ROOT, document)

    def test_source_cannot_be_invented(self):
        document = self.fixture()
        document["route"]["claims"][0]["sources"] = ["not_a_source"]
        with self.assertRaisesRegex(ValueError, "unknown/missing source"):
            validate_document(ROOT, document)

    def test_declaration_owner_cannot_name_an_unlisted_declaration(self):
        document = self.fixture()
        document["route"]["source_producers"][0]["declaration_modules"] = {
            "KIP126.imaginary": "KIP126/Interface/Challenge/Literature/Source.lean"
        }
        with self.assertRaisesRegex(ValueError, "unknown declaration owner"):
            validate_document(ROOT, document)

    def test_declaration_owner_must_be_an_existing_module(self):
        document = self.fixture()
        entry = document["route"]["source_producers"][0]
        entry["declaration_modules"] = {entry["declarations"][0]: "KIP126/Missing.lean"}
        with self.assertRaises(ValueError):
            validate_document(ROOT, document)

    def test_individual_statement_cannot_lose_locator(self):
        document = self.fixture()
        document["interface_coverage"][0]["fields"]["sphereVanishing"]["locator"] = ""
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
        item = next(c for c in document["interface_coverage"] if c["structure"].endswith(".LiteratureResults"))
        item["fields"]["imaginary_theorem"] = item["fields"]["adamsOneLine_d2"]
        with self.assertRaisesRegex(ValueError, "field coverage drift"):
            validate_document(ROOT, document)

    def test_geometry_is_not_a_current_input(self):
        literature = next(c for c in self.document["interface_coverage"]
                          if c["structure"].endswith(".LiteratureResults"))
        self.assertEqual(len(literature["fields"]), 48)
        self.assertNotIn("geometry", literature["fields"])
        self.assertNotIn("adamsOneLine", literature["fields"])
        for removed in ['adamsOneLine_at_power', 'adamsHi_nonzeroSurvival_iff', 'may_lowDimensionalProducts_permanent', 'may_lowDimensionalSquares_permanent']:
            self.assertNotIn(removed, literature["fields"])
        self.assertNotIn("route", literature["fields"])
        self.assertNotIn("root_literature", self.document["route"])
        self.assertFalse(any("Geometry" in c["structure"]
                             for c in self.document["interface_coverage"]))

    def test_packaging_field_cannot_be_registered_as_a_statement(self):
        document = self.fixture()
        fields = document["interface_coverage"][0]["fields"]
        fields["adamsOneLine"] = fields["adamsOneLine_d2"]
        with self.assertRaisesRegex(ValueError, "field coverage drift"):
            validate_document(ROOT, document)

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

    def test_local_moss_application_cannot_cover_general_input(self):
        document = self.fixture()
        literature = next(c for c in document["interface_coverage"]
                          if c["structure"].endswith(".LiteratureResults"))
        literature["fields"]["moss"]["blueprint_labels"] = ["def:route-moss-source"]
        with self.assertRaisesRegex(ValueError, "missing direct Blueprint field link"):
            validate_document(ROOT, document)

    def test_literature_fields_cannot_share_a_blueprint_node(self):
        document = self.fixture()
        fields = next(c["fields"] for c in document["interface_coverage"]
                      if c["structure"].endswith(".LiteratureResults"))
        names = list(fields)
        fields[names[1]]["blueprint_labels"] = fields[names[0]]["blueprint_labels"]
        with self.assertRaisesRegex(ValueError, "Blueprint literature node reused"):
            validate_document(ROOT, document)

    def test_blueprint_label_without_the_field_link_is_rejected(self):
        read_text = Path.read_text
        target = ROOT / "blueprint/src/chapters/external_results.tex"

        def without_field_link(path, *args, **kwargs):
            text = read_text(path, *args, **kwargs)
            if path == target:
                text = text.replace("KIP126.Challenge2.LiteratureResults.sphereVanishing",
                                    "KIP126.Classical.Adams.SphereVanishingLine")
            return text

        with patch.object(Path, "read_text", without_field_link):
            with self.assertRaisesRegex(ValueError, "missing direct Blueprint field link"):
                validate_document(ROOT, self.document)

    def test_inactive_blueprint_chapter_cannot_cover_fields(self):
        read_text = Path.read_text
        target = ROOT / "blueprint/src/content.tex"

        def without_active_chapter(path, *args, **kwargs):
            text = read_text(path, *args, **kwargs)
            if path == target:
                text = text.replace(r"\input{chapters/external_results}", "")
            return text

        with patch.object(Path, "read_text", without_active_chapter):
            with self.assertRaisesRegex(ValueError, "unknown Blueprint label"):
                validate_document(ROOT, self.document)

    def test_a_node_cannot_combine_two_direct_literature_links(self):
        read_text = Path.read_text
        target = ROOT / "blueprint/src/chapters/external_results.tex"

        def with_combined_link(path, *args, **kwargs):
            text = read_text(path, *args, **kwargs)
            if path == target:
                text = text.replace("KIP126.Challenge2.LiteratureResults.sphereVanishing",
                                    "KIP126.Challenge2.LiteratureResults.sphereVanishing,"
                                    "KIP126.Challenge2.LiteratureResults.adamsOneLine_d2")
            return text

        with patch.object(Path, "read_text", with_combined_link):
            with self.assertRaisesRegex(ValueError, "Blueprint node combines literature fields"):
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
