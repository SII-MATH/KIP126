#!/usr/bin/env python3
"""Audit compiled regression declarations against KIP126's axiom policy."""

from __future__ import annotations

import re
import subprocess
import sys
import tempfile
from pathlib import Path


ALLOWED_AXIOMS = {"propext", "Classical.choice", "Quot.sound"}
FORBIDDEN_MARKERS = ("sorryAx", "admitAx", "Lean.ofReduceBool")
AXIOM_BLOCK = re.compile(r"depends on axioms:\s*\[(?P<axioms>[^]]*)\]", re.DOTALL)
PROJECT_AXIOM = re.compile(r"^\s*(?:private\s+)?axiom\s+")
SOURCE_PLACEHOLDER = re.compile(r"\b(?:sorry|admit)\b")

# These regression modules contain only examples/private fixtures, so their
# successful compilation intentionally emits no `#print axioms` output.  Audit
# representative public declarations exercised by those modules in a fresh
# generated importer rather than weakening the evidence requirement.
EXTERNAL_AUDIT_TARGETS = {
    "KIP126.Core.SpectralSequence.ConvergenceRegression": (
        "KIP126.Core.SpectralSequence.EndpointExtension.spectralSequence",
        "KIP126.Core.SpectralSequence.PageAbutmentComparisonWitness.endpointAbutmentIso",
    ),
    "KIP126.Core.SpectralSequence.SpectralObjectAdapterRegression": (
        "KIP126.Core.SpectralSequence.cochainDiagramTriangulatedSpectralObjectFunctor",
        "KIP126.Core.SpectralSequence.filteredComplexAbelianSpectralObjectFunctor",
    ),
}


def module_name(root: Path, path: Path) -> str:
    return ".".join(path.relative_to(root).with_suffix("").parts)


def compiled_axiom_evidence(root: Path, module: str, build_output: str) -> str:
    if "depends on axioms:" in build_output or "does not depend on any axioms" in build_output:
        return build_output

    targets = EXTERNAL_AUDIT_TARGETS.get(module)
    if not targets:
        return build_output

    with tempfile.TemporaryDirectory(prefix="axiom-audit-", dir=root / ".lake") as temp:
        audit_file = Path(temp) / "Audit.lean"
        audit_file.write_text(
            f"import {module}\n"
            + "".join(f"#print axioms {target}\n" for target in targets),
            encoding="utf-8",
        )
        result = subprocess.run(
            ["lake", "env", "lean", str(audit_file)],
            cwd=root,
            capture_output=True,
            text=True,
        )
        output = f"{result.stdout}\n{result.stderr}"
        if result.returncode:
            return f"{build_output}\nAUDIT_IMPORTER_FAILED\n{output}"
        return f"{build_output}\n{output}"


def main() -> int:
    root = Path(__file__).resolve().parents[2]
    failures: list[str] = []
    regression_files = sorted((root / "KIP126").rglob("*Regression.lean"))
    if not regression_files:
        print("axiom audit: no regression modules found", file=sys.stderr)
        return 1

    for path in regression_files:
        relative = path.relative_to(root)
        module = module_name(root, path)
        artifact = root / ".lake" / "build" / "lib" / "lean" / relative
        for suffix in (".olean", ".ilean", ".olean.hash", ".ilean.hash"):
            artifact.with_suffix(suffix).unlink(missing_ok=True)
        result = subprocess.run(
            ["lake", "build", module],
            cwd=root,
            capture_output=True,
            text=True,
        )
        output = compiled_axiom_evidence(
            root, module, f"{result.stdout}\n{result.stderr}"
        )
        if result.returncode:
            failures.append(f"{relative}: Lean compilation failed")
        elif "AUDIT_IMPORTER_FAILED" in output:
            failures.append(f"{relative}: generated axiom importer failed")
        elif "depends on axioms:" not in output and "does not depend on any axioms" not in output:
            failures.append(f"{relative}: no compiled axiom evidence")
        for marker in FORBIDDEN_MARKERS:
            if marker in output:
                failures.append(f"{relative}: forbidden marker {marker}")
        for match in AXIOM_BLOCK.finditer(output):
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
    declaration_files.append(root / "KIP126.lean")
    for path in declaration_files:
        for line_number, line in enumerate(
            path.read_text(encoding="utf-8").splitlines(), start=1
        ):
            if PROJECT_AXIOM.match(line):
                failures.append(f"{path.relative_to(root)}:{line_number}: project axiom")
            if SOURCE_PLACEHOLDER.search(line):
                failures.append(
                    f"{path.relative_to(root)}:{line_number}: unresolved source placeholder"
                )

    if failures:
        for failure in failures:
            print(f"axiom audit: {failure}", file=sys.stderr)
        return 1
    print(
        f"axiom audit: OK ({len(regression_files)} regression modules; "
        "propext, Classical.choice, Quot.sound)"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
