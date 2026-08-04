#!/usr/bin/env python3
"""Integration tests for the Lean ↔ JSON source/claim projection.

These tests intentionally run the Lean exporter.  The metadata-only schema
tests live in ``test_check_source_inventory.py`` so ordinary unit-test runs do
not rebuild the formalization for every fixture.
"""

from __future__ import annotations

import json
import sys
import tempfile
import unittest
from pathlib import Path

SCRIPT_DIR = Path(__file__).resolve().parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from check_source_inventory import validate_inventory  # noqa: E402


ROOT = SCRIPT_DIR.parent
INVENTORY = ROOT / "reference/source-inventory.json"


class SourceInventoryProjectionIntegrationTests(unittest.TestCase):
    def read_inventory(self) -> dict:
        return json.loads(INVENTORY.read_text(encoding="utf-8"))

    def validate_document(self, document: dict) -> list[str]:
        with tempfile.TemporaryDirectory() as temporary:
            path = Path(temporary) / "inventory.json"
            path.write_text(json.dumps(document), encoding="utf-8")
            return validate_inventory(ROOT, path, check_lean_projection=True)

    def test_checked_in_inventory_is_valid_with_lean_projection(self) -> None:
        self.assertEqual(validate_inventory(ROOT, check_lean_projection=True), [])

    def test_lean_projection_drift_is_rejected(self) -> None:
        document = self.read_inventory()
        browder = next(source for source in document["sources"] if source["id"] == "browder")
        browder["citation_keys"] = ["DriftedKey"]
        errors = self.validate_document(document)
        self.assertTrue(any("lean_projection.browder" in error for error in errors))

    def test_claim_locator_artifact_must_be_catalogued(self) -> None:
        document = self.read_inventory()
        aim = next(source for source in document["sources"] if source["id"] == "aim_paper")
        aim["artifacts"] = [
            artifact
            for artifact in aim["artifacts"]
            if artifact["path"] != "aimpaper/main.tex"
        ]
        errors = self.validate_document(document)
        self.assertTrue(
            any(
                "lean_projection.claim." in error
                and "aimpaper/main.tex" in error
                and "not listed" in error
                for error in errors
            )
        )


if __name__ == "__main__":
    unittest.main()
