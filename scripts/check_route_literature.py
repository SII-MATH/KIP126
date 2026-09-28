#!/usr/bin/env python3
"""Check A(M) provenance integrity; this does NOT check mathematical truth.

Optionally emit a Lean environment check for every listed declaration.
No network requests, source updates, or dependency changes are performed.
"""
import argparse
import hashlib
import json
import re
from pathlib import Path


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--lean-check", type=Path, help="write an import/decl check to this path")
    args = parser.parse_args()
    root = Path(__file__).resolve().parents[1]
    route = root / "KIP126/Main/Axiom/Literature/Route"
    inventory = json.loads((route / "sources.json").read_text())
    assert inventory["schema_version"] == 1
    sources = {s["id"]: s for s in inventory["sources"]}
    assert len(sources) == len(inventory["sources"]), "duplicate source ID"
    checked_files = set()
    for source in sources.values():
        assert source["url"].startswith("https://")
        assert source["status"]
        for item in source["files"]:
            path = root / item["path"]
            assert path.is_relative_to(root) and ".." not in path.parts
            assert hashlib.sha256(path.read_bytes()).hexdigest() == item["sha256"], (
                f"source changed; review and repin explicitly: {path}")
            checked_files.add(item["path"])
    data = (route / "Data.lean").read_text()
    body = data.split("structure Inputs where\n", 1)[1].split("\n/--", 1)[0]
    fields = set(re.findall(r"^  (\w+) :", body, re.M))
    claims = inventory["claims"]
    assert len({c["id"] for c in claims}) == len(claims), "duplicate claim ID"
    assert {c["input_field"] for c in claims} == fields, "input field/provenance coverage drift"
    paper = (root / sources["lwx-v2"]["files"][0]["path"]).read_text()
    labels = set(re.findall(r"\\label\{([^}]+)\}", paper))
    declarations = []
    for claim in claims:
        assert claim["sources"] and set(claim["sources"]) <= sources.keys()
        assert "lwx-v2" not in claim["sources"], "LWX consumer is not a proof of A(M)"
        assert claim["proof_status"] == "explicit-input-unproved"
        assert claim["kind"] and claim["locator"] and claim["lwx_consumers"]
        assert set(claim["lwx_consumers"]) <= labels, f"unknown consumer label: {claim['id']}"
        assert (root / claim["module"]).is_file()
        for name in claim["declarations"]:
            assert name.startswith("KIP126.Literature.Route.")
            declarations.append(name)
    if args.lean_check:
        names = ",\n    ".join("`" + n for n in sorted(set(declarations)))
        args.lean_check.write_text(
            "import KIP126.Main.Axiom.Literature.Route\nimport Lean.Elab.Command\n"
            "open Lean Elab Command in\nrun_cmd do\n  let env ← getEnv\n"
            f"  for n in [{names}] do\n"
            '    unless env.contains n do throwError "missing A(M) source declaration: {n}"\n')
    print(f"A(M): {len(fields)} input fields, {len(claims)} source groups, "
          f"{len(set(declarations))} declarations, {len(checked_files)} file hashes checked.")
    print("This checks provenance coverage and file identity, not source truth or Lean proofs.")


if __name__ == "__main__":
    main()
