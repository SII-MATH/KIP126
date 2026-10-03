#!/usr/bin/env python3
"""Check A(M) provenance roles, declarations and pinned source identities.

This does not prove source results. --lean-check emits a compiled-environment
existence check, importing the actual modules named in the inventory.
"""
import argparse
import hashlib
import json
import re
from pathlib import Path


STATUSES = {
    "source-result": {"external-statement-unproved"},
    "model-comparison": {"comparison-obligation"},
    "internal-application": {"internal-application-obligation"},
    "internal-adapter": {"implemented-adapter", "proof-placeholder"},
}


def validate_entry(root, entry):
    assert entry["proof_status"] in STATUSES[entry["role"]], (
        f"invalid role/status: {entry['id']}")
    path = Path(entry["module"])
    assert not path.is_absolute() and ".." not in path.parts
    assert path.suffix == ".lean" and (root / path).is_file(), (
        f"missing declaration module: {entry['module']}")
    assert entry["declarations"], f"empty declaration group: {entry['id']}"
    for name in entry["declarations"]:
        assert re.fullmatch(r"KIP126(?:\.[A-Za-z_][A-Za-z_0-9]*)+", name), name
    return path.with_suffix("").as_posix().replace("/", ".")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--lean-check", type=Path, help="write a Lean declaration check")
    args = parser.parse_args()
    root = Path(__file__).resolve().parents[1]
    route = root / "KIP126/Challenge2/Route/Literature"
    inventory = json.loads((route / "sources.json").read_text())
    assert inventory["schema_version"] == 2
    sources = {s["id"]: s for s in inventory["sources"]}
    assert len(sources) == len(inventory["sources"]), "duplicate source ID"
    checked_files = set()
    for source in sources.values():
        assert source["url"].startswith("https://") and source["status"]
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
    assert {c["input_field"] for c in claims} == fields, "input field/provenance coverage drift"
    paper = (root / sources["lwx-v2"]["files"][0]["path"]).read_text()
    labels = set(re.findall(r"\\label\{([^}]+)\}", paper))
    for claim in claims:
        assert claim["sources"] and set(claim["sources"]) <= sources.keys()
        assert "lwx-v2" not in claim["sources"], "LWX consumer is not a proof of A(M)"
        assert claim["kind"] and claim["locator"] and claim["lwx_consumers"]
        assert set(claim["lwx_consumers"]) <= labels, f"unknown consumer: {claim['id']}"
    entries = (claims + inventory["model_bindings"] + inventory["delivery_packages"]
               + inventory["internal_adapters"])
    assert len({e["id"] for e in entries}) == len(entries), "duplicate entry ID"
    assert all(e["role"] == "model-comparison" for e in inventory["model_bindings"])
    assert all(e["role"] == "internal-adapter" for e in inventory["internal_adapters"])
    modules = {validate_entry(root, e) for e in entries}
    declarations = {n for e in entries for n in e["declarations"]}
    assert {inventory["entry"], inventory["consumer_entry"]} <= declarations
    if args.lean_check:
        pairs = sorted({(n, validate_entry(root, e))
                        for e in entries for n in e["declarations"]})
        names = ",\n    ".join(f"(`{n}, `{m})" for n, m in pairs)
        args.lean_check.write_text(
            "".join(f"import {m}\n" for m in sorted(modules)) +
            "import Lean.Elab.Command\nopen Lean Elab Command in\nrun_cmd do\n"
            "  let env ← getEnv\n" + f"  for (n, expected) in [{names}] do\n" +
            '    unless env.contains n do throwError "missing provenance declaration: {n}"\n' +
            '    let some idx := env.getModuleIdxFor? n | throwError "no module for {n}"\n' +
            '    unless env.header.moduleNames[idx.toNat]! == expected do\n' +
            '      throwError "wrong provenance module for {n}: expected {expected}, got {env.header.moduleNames[idx.toNat]!}"\n')
    print(f"A(M): {len(fields)} consumer fields, {len(claims)} provenance groups, "
          f"{len(inventory['model_bindings'])} model groups, "
          f"{len(inventory['internal_adapters'])} adapter groups, "
          f"{len(inventory['delivery_packages'])} delivery packages, "
          f"{len(declarations)} declarations, {len(checked_files)} file hashes checked.")
    print("This checks role/status consistency, coverage and file identity, not mathematical truth.")


if __name__ == "__main__":
    main()
