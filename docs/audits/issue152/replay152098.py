#!/usr/bin/env python3
"""Extract a nontrivial replay slice and check its polynomial witnesses.

This checks pinned source data, not the actual Adams spectral sequence.
In particular it neither certifies the basis nor proves later-page Leibniz.
Run from any directory; output is JSON on stdout.
"""
import csv
import hashlib
import io
import json
from pathlib import Path
import sqlite3

ROOT = Path(__file__).resolve().parents[3]
RAW = ROOT / "KIP126/LinProgram/Raw"


def pinned(name):
    path = RAW / name
    data = path.read_bytes()
    if data.startswith(b"version https://git-lfs.github.com/spec/v1\n"):
        digest = data.decode().split("oid sha256:")[1].splitlines()[0]
        path = ROOT / ".git/lfs/objects" / digest[:2] / digest[2:4] / digest
        data = path.read_bytes()
        if hashlib.sha256(data).hexdigest() != digest:
            raise ValueError(f"LFS hash mismatch: {name}")
    return path, data, hashlib.sha256(data).hexdigest()


def mon(code):
    nums = list(map(int, code.split(","))) if code else []
    if len(nums) % 2:
        raise ValueError("odd monomial encoding")
    return tuple(zip(nums[::2], nums[1::2]))


def mul(a, b):
    result = dict(a)
    for g, n in b:
        result[g] = result.get(g, 0) + n
    return tuple(sorted(result.items()))


def polynomial(code):
    result = set()
    for term in code.split(";"):
        result.symmetric_difference_update({mon(term)})
    return result


def witness(left, right, terms):
    """Check left + right = sum(multiplier * archived relation) over F2."""
    residual = {mon(left)}
    if right is not None:
        residual.symmetric_difference_update({mon(right)})
    for multiplier, relation in terms:
        residual.symmetric_difference_update(
            {mul(mon(multiplier), term) for term in polynomial(relation)})
    if residual:
        raise ValueError("invalid polynomial ideal witness")


def main():
    inputs = {}
    tables = {}
    for name in ["S0_AdamsE2_basis.csv", "S0_AdamsE2_relations.csv"]:
        _, data, digest = pinned(name)
        inputs[name] = digest
        tables[name] = list(csv.DictReader(io.StringIO(data.decode("utf-16"))))
    dbpath, _, digest = pinned("proofs.db")
    inputs["proofs.db"] = digest
    conn = sqlite3.connect(f"file:{dbpath}?mode=ro", uri=True)
    conn.row_factory = sqlite3.Row
    records = [dict(r) for r in conn.execute(
        "select * from log where id in (5487,152097,152098) order by id")]
    trial, conclusion = records[1:]
    if (trial["reason"], trial["depth"], trial["x"], trial["dx"],
        conclusion["reason"], conclusion["depth"], conclusion["dx"]) != (
            "T", 1, "1", "0", "D", 0, ""):
        raise ValueError("unexpected trial/conclusion records")
    checks = [
        dict(left="0,2,1,1,3,1,18,1", right=None,
             terms=[("0,1,3,1,18,1", "0,1,1,1")]),
        dict(left="1,1,9,1,13,1", right="0,3,36,1", terms=[
            ("13,1", "1,1,9,1;0,1,10,1"),
            ("0,1", "10,1,13,1;2,1,32,1"),
            ("0,1", "2,1,32,1;0,2,36,1")]),
    ]
    relations = {r["rel"] for r in tables["S0_AdamsE2_relations.csv"]}
    for check in checks:
        if any(rel not in relations for _, rel in check["terms"]):
            raise ValueError("witness uses an unarchived relation")
        witness(**check)
    # Ensure a changed claimed target is rejected by the checker.
    try:
        witness(checks[1]["left"], "0,2,36,1", checks[1]["terms"])
    except ValueError:
        pass
    else:
        raise AssertionError("incorrect target accepted")
    degrees = {(4, 42), (8, 45), (9, 47), (7, 46), (6, 45), (6, 44)}
    basis = {}
    for s, t in sorted(degrees):
        basis[f"{s},{t}"] = [r for r in tables["S0_AdamsE2_basis.csv"]
                             if int(r["s"]) == s and int(r["stem"]) + s == t]
    print(json.dumps(dict(
        status="source-data-and-polynomial-witnesses-checked; not-a-Lean-proof",
        inputs=inputs, records=records, polynomial_witnesses=checks,
        basis_slices=basis,
        remaining_obligations=[
            "Certify E2 basis spans and independence at relevant degrees.",
            "Certify d2 seed 5487 and zero d2 on (7,46) from its algorithm.",
            "Prove source (4,42)[1] reaches E4; reconstruct prior state.",
            "Identify CSV h1 with the literature eta permanent class.",
            "Construct actual E4 pairing with Leibniz and E2 compatibility.",
            "Prove (9,47)[0] reaches E4 and is nonzero modulo B3.",
            "Prove candidates exhaust the actual E4 target; eliminate nonzero.",
            "Assemble the exact DifferentialStatement for database row 152098.",
        ]), ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
