#!/usr/bin/env python3
"""Import selected v126.3.cw49 results, NOT their machine proofs.

Read-only SQLite access; no network, dependency updates, or database writes.
Selection is editorial (paper section 7); all coordinates and monomials come
from the pinned databases. Unknown/trial/inverse rows fail closed.
"""
import argparse
import csv
import hashlib
import json
from collections import defaultdict
from pathlib import Path
import re
import sqlite3

HASHES = {
    "proofs.db": "3a460683c023ee2d8f7e8f904ecef9044a474d88bb7184731e54978ba7dac248",
    "S0_AdamsSS_t261.db": "518a2ed86af6d4f7bcdc5db135ab6252bd50df34492ae208663aa1c140a820ed",
    "S0_AdamsE2_generators.csv": "3c4e45a1e28837e651e729bee14e7c62a99f797bc650d69e8a79aec13a762c72",
    "S0_AdamsE2_relations.csv": "8b4b67d6fb3c9a3a264813ea780340e73b1a66290c8616d3308ae1fc19f3add5",
    "S0_AdamsE2_basis.csv": "6a337964ad3ac02b729a46fd839dced7cb6764d14d4cea413163987eba8de871",
}
# These select records, not their computed answers. No row count is inferred
# from the team's informal "eight": one of those eight is a Cnu result.
SELECTION = [
    (5990, "d2_x125_8", "Fact 7.13(2)"),
    (5541, "d2_h6", "Lemma 7.16, classical Toda bracket argument"),
    (153768, "d3_h4_x109_12", "Lemma 7.14(1)"),
    (462481, "d3_h0Sq_x123_13_2", "Lemma 7.14(2)"),
    (929469, "d3_x126_4", "Lemma 7.16"),
    (2671068, "d7_x123_11_combination", "Lemma 7.14(2)"),
]
LOG_SCHEMA = ("CREATE TABLE log (id INTEGER PRIMARY KEY, depth TINYINT, reason TEXT, "
              "name TEXT, stem SMALLINT as (t-s), s SMALLINT, t SMALLINT, r SMALLINT, "
              "x TEXT, dx TEXT, info TEXT)")


def require(condition, message):
    if not condition:
        raise ValueError(message)


def pinned(path):
    with path.open("rb") as stream:
        actual = hashlib.file_digest(stream, "sha256").hexdigest()
    require(actual == HASHES[path.name], f"SHA-256 mismatch: {path}")


def connect(path):
    db = sqlite3.connect(path.resolve().as_uri() + "?mode=ro", uri=True)
    db.row_factory = sqlite3.Row
    db.execute("PRAGMA query_only=ON")
    return db


def indices(text):
    require(isinstance(text, str), "NULL means unknown, not zero")
    if text == "":
        return []
    require(re.fullmatch(r"[0-9]+(?:,[0-9]+)*", text), "invalid coordinate encoding")
    result = list(map(int, text.split(",")))
    require(result == sorted(set(result)), "noncanonical coordinate vector")
    return result


def accepted_log(row):
    require(row["name"] == "S0", "not a sphere Adams record")
    # A deliberately small forward-reason allowlist; extending it requires
    # checking the upstream logging semantics, especially inverse rows.
    require(row["depth"] == 0 and row["reason"] in {"d2", "D", "N"},
            "not an accepted forward conclusion (trial/hint/inverse/unsupported)")
    require(2 <= row["r"] < 999, "not an ordinary finite-page differential")
    require(row["stem"] == row["t"] - row["s"], "inconsistent degree")
    require(indices(row["x"]) and indices(row["dx"]), "expected known nonzero vectors")


def monomial(text, generators):
    if not text:
        return []
    require(re.fullmatch(r"[0-9]+(?:,[0-9]+)*", text), "invalid monomial")
    ns = list(map(int, text.split(",")))
    require(len(ns) % 2 == 0, "odd monomial encoding")
    pairs = list(zip(ns[::2], ns[1::2]))
    require([i for i, _ in pairs] == sorted(set(i for i, _ in pairs)), "monomial order")
    require(all(i in generators and e > 0 for i, e in pairs), "invalid generator/power")
    return pairs


def lean_monomial(text, generators):
    words = [i for i, e in monomial(text, generators) for _ in range(e)]
    if not words:
        return ".one"
    result = f"(.gen ⟨{words[-1]}, by decide⟩)"
    for i in reversed(words[:-1]):
        result = f"(.mul (.gen ⟨{i}, by decide⟩) {result})"
    return result


def lean_sum(terms, generators, s, t):
    if not terms:
        return f"(.zero {s} {t})"
    result = lean_monomial(terms[-1], generators)
    for term in reversed(terms[:-1]):
        result = f"(.add {lean_monomial(term, generators)} {result})"
    return result


def import_rows(proofs, sphere, csv_dir, include_table):
    require(proofs.execute("SELECT sql FROM sqlite_master WHERE name='log'").fetchone()[0]
            == LOG_SCHEMA, "unexpected proofs.db schema")
    csv_rows = {}
    for kind in ("generators", "relations", "basis"):
        with (csv_dir / f"S0_AdamsE2_{kind}.csv").open(encoding="utf-16", newline="") as f:
            csv_rows[kind] = list(csv.DictReader(f))
    gens = {r["id"]: dict(r) for r in sphere.execute("SELECT * FROM S0_AdamsE2_generators ORDER BY id")}
    require([(r["id"], r["name"], r["s"], r["t"]) for r in gens.values()] ==
            [(int(r["id"]), r["name"], int(r["s"]), int(r["stem"]) + int(r["s"]))
             for r in csv_rows["generators"]], "database/CSV generator mismatch")
    rels = sphere.execute("SELECT rel,s,t FROM S0_AdamsE2_relations ORDER BY rowid").fetchall()
    require([tuple(r) for r in rels] ==
            [(r["rel"], int(r["s"]), int(r["stem"]) + int(r["s"])) for r in csv_rows["relations"]],
            "database/CSV relations mismatch")
    basis = defaultdict(list)
    db_basis = []
    for row in sphere.execute("SELECT * FROM S0_AdamsE2_basis ORDER BY id"):
        row = dict(row)
        key = (row["s"], row["t"])
        # Upstream utility.cpp exports index = id - min(id) at this degree.
        j = len(basis[key])
        require(not j or row["id"] == basis[key][0]["id"] + j, "noncontiguous local basis")
        row["local_index"] = j
        pairs = monomial(row["mon"], gens)
        require(tuple(sum(gens[i][k] * e for i, e in pairs) for k in ("s", "t")) == key,
                "basis monomial degree mismatch")
        basis[key].append(row)
        db_basis.append((j, row["mon"], *key, row["d2"]))
    require(db_basis == [(int(r["index"]), r["mon"], int(r["s"]),
                         int(r["stem"]) + int(r["s"]),
                         None if r["d2"] == "[NULL]" else r["d2"]) for r in csv_rows["basis"]],
            "database/CSV local basis or d2 mismatch")

    def decorate(row, name, paper, origin):
        s, t, r = row["s"], row["t"], row["r"]
        sx, tx = s + r, t + r - 1
        xs, ys = indices(row["x"]), indices(row["dx"])
        require(xs and ys and tx <= 261, "empty/out-of-range selected result")
        def resolve(key, coords):
            require(all(i < len(basis[key]) for i in coords), "unknown local basis index")
            return [basis[key][i] for i in coords]
        source, target = resolve((s, t), xs), resolve((sx, tx), ys)
        outgoing = [dict(z) for z in sphere.execute(
            "SELECT * FROM S0_AdamsE2_ss WHERE s=? AND t=? AND base=? AND diff=? AND level=?",
            (s, t, row["x"], row["dx"], 10000 - r))]
        incoming = [dict(z) for z in sphere.execute(
            "SELECT * FROM S0_AdamsE2_ss WHERE s=? AND t=? AND base=? AND diff=? AND level=?",
            (sx, tx, row["dx"], row["x"], r))]
        require(len(outgoing) == len(incoming) == 1, "missing/ambiguous reciprocal SS result")
        if r == 2:
            total = set()
            for x in source:
                total.symmetric_difference_update(indices(x["d2"]))
            require(sorted(total) == ys, "d2 column disagrees with selected result")
        return dict(name=name, paper=paper, origin=origin, record=row,
                    source_basis=source, target_basis=target,
                    outgoing_ss=outgoing[0], incoming_ss=incoming[0],
                    source_degree=[s, t], target_degree=[sx, tx])

    results = []
    for row_id, name, paper in SELECTION:
        row = proofs.execute("SELECT * FROM log WHERE id=?", (row_id,)).fetchone()
        require(row is not None, f"missing log.id={row_id}")
        row = dict(row)
        accepted_log(row)
        results.append(decorate(row, name, paper, "proofs.db/log"))
    if include_table:
        # This is explicitly NOT a proofs.db log record. Its answer is read
        # from the d2 column, and checked against both final SS rows.
        b = sphere.execute("SELECT * FROM S0_AdamsE2_basis WHERE id=513").fetchone()
        require(b is not None, "missing selected basis row")
        b = dict(b)
        local = b["id"] - basis[(b["s"], b["t"])][0]["id"]
        row = dict(id=b["id"], name="S0", s=b["s"], t=b["t"], r=2,
                   stem=b["t"]-b["s"], x=str(local), dx=b["d2"], reason="basis.d2")
        results.append(decorate(row, "d2_h0Pow6_h6", "Lemma 7.16, classical Toda bracket argument",
                                "S0_AdamsSS_t261.db/S0_AdamsE2_basis"))
    return gens, results


def generate(gens, results):
    q = lambda x: json.dumps(x, ensure_ascii=False)
    lines = ["import KIPBase.StableHomotopy.SphereAdamsDifferentials", "", "/-!",
             "Generated by KIPBase/SphereAdamsProofs.generate.py; do not edit by hand.",
             "Zenodo 14875701 / v126.3.cw49. Results only: no proof replay.",
             "Concrete E2 labels and provenance only. Named axioms are in SphereAdamsProofs/Axiom.lean.",
             "The companion JSON contains full database records and source hashes.", "-/", "",
             "set_option maxRecDepth 16384", "",
             "namespace KIPBase.StableHomotopy.SphereAdamsProofs", "",
             "open KIPBase.SphereE2 SphereAdamsDifferentials", "",
             "/-- File identity is pinned; this metadata is not a proof certificate. -/",
             "structure Provenance where", "  dataset : String", "  file : String",
             "  sha256 : String", "  table : String", "  rowId : Nat",
             "  reason : String", "  paper : String", "  sourceS : Nat", "  sourceT : Nat",
             "  page : Nat", "  sourceIndices : List Nat", "  targetIndices : List Nat",
             "  outgoingSSRow : Nat", "  incomingSSRow : Nat", ""]
    axioms = ["import KIPBase.StableHomotopy.SphereAdamsProofsData", "", "/-!",
              "Generated external computation axioms, explicitly requested by the user.",
              "These constrain the existing sphereAdamsConvergingSS differential.",
              "They are mathematical assumptions, not proofs of the database computations.",
              "Each includes E_r representatives of the fixed E2 labels and an E_r-nonzero target.",
              "-/", "", "namespace KIPBase.StableHomotopy.SphereAdamsProofs", "",
              "open SphereAdamsDifferentials", "", "universe u v", "",
              "variable (𝒮 : Type u) [StableHomotopyCategory.{u, v} 𝒮]", ""]
    for entry in results:
        name, row = entry["name"], entry["record"]
        file, table = entry["origin"].split("/")
        s, t = entry["source_degree"]
        sx, tx = entry["target_degree"]
        lines += [f"/-- {entry['paper']}; {file}:{table}.id={row['id']}. -/",
                  f"def {name}_provenance : Provenance := {{",
                  '  dataset := "https://zenodo.org/records/14875701 / v126.3.cw49"',
                  f"  file := {q(file)}", f"  sha256 := {q(HASHES[file])}",
                  f"  table := {q(table)}", f"  rowId := {row['id']}",
                  f"  reason := {q(row['reason'])}", f"  paper := {q(entry['paper'])}",
                  f"  sourceS := {s}", f"  sourceT := {t}", f"  page := {row['r']}",
                  f"  sourceIndices := {indices(row['x'])}", f"  targetIndices := {indices(row['dx'])}",
                  f"  outgoingSSRow := {entry['outgoing_ss']['id']}",
                  f"  incomingSSRow := {entry['incoming_ss']['id']} }}", ""]
        for side, (ss, tt) in [("source", (s,t)), ("target", (sx,tx))]:
            bs = entry[f"{side}_basis"]
            mons = [b["mon"] for b in bs]
            lines += [f"/-- (s,t)=({ss},{tt}), local basis indices {[b['local_index'] for b in bs]}. -/",
                      f"def {name}_{side} : CSV.Expression {ss} {tt} :=",
                      "  " + lean_sum(mons, gens, ss, tt), ""]
        def label(side):
            terms = []
            for b in entry[f"{side}_basis"]:
                terms.append(" * ".join(gens[i]["name"] + (f"^{e}" if e > 1 else "")
                                        for i,e in monomial(b["mon"], gens)) or "1")
            return " + ".join(terms)
        axioms += [f"/-- 球谱具体微分公理：d_{row['r']}({label('source')}) = {label('target')}。",
                  f"源次数 (s,t)=({s},{t})，目标次数 ({sx},{tx})；目标在 E_{row['r']} 中非零。",
                  f"来源：{file}:{table}.id={row['id']}；论文 {entry['paper']}。",
                  f"完整来源与校验信息见 `{name}_provenance` 及伴随 records.json。",
                  "此公理直接约束已有 sphereAdamsConvergingSS 的微分：",
                  "HasNonzeroDifferential 中的代表和等式均使用原来的页与 d 映射。",
                  "按用户要求接受数据库计算结果；这里不证明计算正确性，也不另定义微分。 -/",
                  f"axiom {name} :",
                  f"    HasNonzeroDifferential 𝒮 {row['r']}",
                  f"      (SphereAdamsE2.evaluate 𝒮 {name}_source)",
                  f"      (SphereAdamsE2.evaluate 𝒮 {name}_target)", ""]
    lines += ["end KIPBase.StableHomotopy.SphereAdamsProofs", ""]
    axioms += ["end KIPBase.StableHomotopy.SphereAdamsProofs", ""]
    return {"SphereAdamsProofsData.lean": "\n".join(lines),
            "SphereAdamsProofs/Axiom.lean": "\n".join(axioms),
            "SphereAdamsProofs.lean": "import KIPBase.StableHomotopy.SphereAdamsProofs.Axiom\n"}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--proofs-db", type=Path, required=True)
    parser.add_argument("--sphere-db", type=Path, required=True)
    parser.add_argument("--csv-dir", type=Path, required=True)
    parser.add_argument("--include-table-result", action="store_true",
                        help="also import basis.id=513, explicitly distinguished from proofs.db")
    parser.add_argument("--output-dir", type=Path,
                        default=Path(__file__).resolve().parent / "StableHomotopy")
    parser.add_argument("--check", action="store_true", help="compare generated outputs without writing")
    args = parser.parse_args()
    require(args.proofs_db.name == "proofs.db" and args.sphere_db.name == "S0_AdamsSS_t261.db",
            "unexpected database filename")
    paths = [args.proofs_db, args.sphere_db,
             *(args.csv_dir / f"S0_AdamsE2_{k}.csv" for k in ("generators", "relations", "basis"))]
    for path in paths:
        pinned(path)
    with connect(args.proofs_db) as proofs, connect(args.sphere_db) as sphere:
        gens, results = import_rows(proofs, sphere, args.csv_dir, args.include_table_result)
        audit = dict(dataset="https://zenodo.org/records/14875701", version="v126.3.cw49",
                     hashes=HASHES, log_schema=LOG_SCHEMA,
                     sphere_version=[dict(r) for r in sphere.execute("SELECT * FROM version ORDER BY id")],
                     interpretation="Named axioms on the existing sphereAdamsConvergingSS; no proof replay",
                     axiom_module="KIPBase.StableHomotopy.SphereAdamsProofs.Axiom",
                     axioms=["KIPBase.StableHomotopy.SphereAdamsProofs." + r["name"] for r in results],
                     results=results,
                     deferred=dict(candidate="Remark 7.7: d3(x126,6), NOT an exact imported result",
                                   rejected_trial_ids=[2047477, 2047478],
                                   unknown_hint_ids=[2421936, 2603892],
                                   database_records=[dict(r) for r in proofs.execute(
                                       "SELECT * FROM log WHERE id IN (2047477,2047478,2421936,2603892) ORDER BY id")],
                                   excluded_spectrum="Cnu"))
    outputs = generate(gens, results)
    outputs["SphereAdamsProofs.records.json"] = json.dumps(audit, ensure_ascii=False, indent=2) + "\n"
    for filename, content in outputs.items():
        path = args.output_dir / filename
        if args.check:
            require(path.read_text() == content, f"stale generated output: {path}")
        else:
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text(content)
    print(f"Validated {len(gens)} generators, all relations/basis rows, and {len(results)} results.")
    for r in results:
        print(r["name"], r["origin"], r["record"]["id"],
              r["source_degree"], "->", r["target_degree"])


if __name__ == "__main__":
    main()
