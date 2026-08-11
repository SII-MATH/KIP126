#!/usr/bin/env python3
"""Audit compiled regression declarations against KIP126's axiom policy."""

from __future__ import annotations

import re
import subprocess
import sys
from pathlib import Path


ALLOWED_AXIOMS = {"propext", "Classical.choice", "Quot.sound"}
FORBIDDEN_MARKERS = ("sorryAx", "admitAx", "Lean.ofReduceBool")
AXIOM_LINE = re.compile(r"axioms?\s*:\s*\[(?P<axioms>[^]]*)\]")


def main() -> int:
    root = Path(__file__).resolve().parents[2]
    failures: list[str] = []
    regression_files = sorted((root / "KIP126").rglob("*Regression.lean"))
    if not regression_files:
        print("axiom audit: no regression modules found", file=sys.stderr)
        return 1

    for path in regression_files:
        relative = path.relative_to(root)
        module = ".".join(relative.with_suffix("").parts)
        result = subprocess.run(
            ["lake", "build", module],
            cwd=root,
            capture_output=True,
            text=True,
        )
        output = f"{result.stdout}\n{result.stderr}"
        if result.returncode:
            failures.append(f"{relative}: Lean compilation failed")
        for marker in FORBIDDEN_MARKERS:
            if marker in output:
                failures.append(f"{relative}: forbidden marker {marker}")
        for line in output.splitlines():
            match = AXIOM_LINE.search(line)
            if not match:
                continue
            axioms = {
                item.strip().strip("'")
                for item in match.group("axioms").split(",")
                if item.strip()
            }
            disallowed = sorted(axioms - ALLOWED_AXIOMS)
            if disallowed:
                failures.append(
                    f"{relative}: disallowed compiled axioms {', '.join(disallowed)}"
                )

    declaration_files = sorted((root / "KIP126").rglob("*.lean"))
    for path in declaration_files:
        for line_number, line in enumerate(
            path.read_text(encoding="utf-8").splitlines(), start=1
        ):
            if re.match(r"^\s*axiom\s+", line):
                failures.append(f"{path.relative_to(root)}:{line_number}: project axiom")

    if failures:
        for failure in failures:
            print(f"axiom audit: {failure}", file=sys.stderr)
        return 1
    print(
        f"axiom audit: OK ({len(regression_files)} regression modules; "
        "allowed axioms: propext, Classical.choice, Quot.sound)"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
