from __future__ import annotations

import importlib.util
import sys
import unittest
from pathlib import Path


SCRIPT = Path(__file__).resolve().parents[1] / "scripts" / "sync_leanok.py"
SPEC = importlib.util.spec_from_file_location("sync_leanok", SCRIPT)
assert SPEC is not None and SPEC.loader is not None
SYNC_LEANOK = importlib.util.module_from_spec(SPEC)
sys.modules[SPEC.name] = SYNC_LEANOK
SPEC.loader.exec_module(SYNC_LEANOK)


class ParseAxiomOutputTests(unittest.TestCase):
    def test_parses_wrapped_axiom_list_and_single_line_result(self) -> None:
        output = "\n".join(
            (
                "'short' does not depend on any axioms",
                "'long' depends on axioms: [propext,",
                " Classical.choice,",
                " Quot.sound]",
            )
        )

        self.assertEqual(
            SYNC_LEANOK.parse_axiom_output(output),
            {
                "short": set(),
                "long": {"propext", "Classical.choice", "Quot.sound"},
            },
        )

    def test_discards_incomplete_result(self) -> None:
        output = "\n".join(
            (
                "'broken' depends on axioms: [propext,",
                "warning: unrelated compiler output",
            )
        )

        self.assertEqual(SYNC_LEANOK.parse_axiom_output(output), {})


if __name__ == "__main__":
    unittest.main()
