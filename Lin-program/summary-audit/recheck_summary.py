"""Read-only evidence extraction for the independent section-7 summary audit.

This extracts raw paper formulas and database rows; it is not a proof replay.
It does not use summary.md to choose mathematical conclusions.
Run from any directory with Python's standard library.
"""
from pathlib import Path
import hashlib
import json
import re
import sqlite3
from parse_papers import parse, Node

HERE = Path(__file__).resolve().parent
WORKSPACE = HERE.parent.parent
CHECKOUT = WORKSPACE / "KIP126/KIP126-latest"
DATA = HERE.parent / "program/upstream/kervaire-49"
PROOFS = WORKSPACE / "KIP126-110/KIPBase/.external-count-14875701/proofs/proofs.db"


def sha(path):
    with path.open("rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()


def db(path):
    conn = sqlite3.connect(path.resolve().as_uri() + "?mode=ro", uri=True)
    conn.row_factory = sqlite3.Row
    conn.execute("PRAGMA query_only=ON")
    return conn


def rows(conn, sql, params=()):
    return [dict(row) for row in conn.execute(sql, params)]


def coords(text):
    if text is None:
        raise ValueError("unknown target cannot be treated as zero")
    if text == "":
        return set()
    if not re.fullmatch(r"\d+(,\d+)*", text):
        raise ValueError("invalid coordinates")
    xs = list(map(int, text.split(",")))
    if xs != sorted(set(xs)):
        raise ValueError("noncanonical coordinates")
    return set(xs)


def main():
    html = HERE / "kervaire-v2.html"
    tex = CHECKOUT / "aimpaper/main.tex"
    sphere_path = DATA / "S0_AdamsSS_t261.db"
    cnu_path = DATA / "Cnu_AdamsSS_t200.db"
    out = {
        "paper": "https://arxiv.org/html/2412.10879v2",
        "dataset": "https://zenodo.org/records/14875701",
        "version": "v126.3.cw49",
        "scope": "Independent summary audit, no new Lean mathematical input",
        "hashes": {str(p.relative_to(WORKSPACE)): sha(p)
                   for p in (html, tex, PROOFS, sphere_path, cnu_path, DATA / "ss.json")},
    }
    # Preserve every differential-containing formula with a source anchor.
    # Classification into assumptions/conclusions/cases is an editorial task
    # documented in summary.md, not inferred from a regex count.
    tree = parse(html)
    sections = {n.a.get("id"): n for n in tree.all("section")}
    formulas = []

    def visit(node, anchor):
        anchor = node.a.get("id", anchor)
        if node.tag == "math":
            formula = node.a.get("alttext", "")
            if "d_{" in formula or "d_" in formula:
                formulas.append({"anchor": anchor, "formula": formula})
            return
        for child in node.children:
            if isinstance(child, Node):
                visit(child, anchor)

    visit(sections["S7"], "S7")
    out["section7_differential_formulas"] = formulas
    category = json.loads((DATA / "ss.json").read_text())
    out["spectra"] = {"rings": len(category["rings"]), "modules": len(category["modules"])}
    with db(PROOFS) as proofs, db(sphere_path) as sphere, db(cnu_path) as cnu:
        out["sphere_counts"] = {
            "generators": sphere.execute("SELECT count(*) FROM S0_AdamsE2_generators").fetchone()[0],
            "relations": sphere.execute("SELECT count(*) FROM S0_AdamsE2_relations").fetchone()[0],
            "basis": sphere.execute("SELECT count(*) FROM S0_AdamsE2_basis").fetchone()[0],
            "stem125": rows(sphere, "SELECT count(*) AS dimension,min(s) AS min_s,max(s) AS max_s,"
                                   "max(t) AS max_t FROM S0_AdamsE2_basis WHERE t-s=125")[0],
        }
        fact_degrees = [(8,134), (14,139), (10,134), (25,150), (9,132), (11,136),
                        (8,130), (11,133), (12,134), (13,137), (6,132), (21,147),
                        (12,137), (13,138), (10,136), (11,137)]
        out["sphere_positions"] = []
        for s,t in fact_degrees:
            out["sphere_positions"].append({
                "s": s, "t": t,
                "basis": rows(sphere, "SELECT * FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id", (s,t)),
                "ss": rows(sphere, "SELECT * FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id", (s,t)),
            })
        ids = [5990,5541,153768,462481,929469,2671068,
               6038,6046,2411720,2435371,154545,
               2047477,2047478,2421936,2603892,2425016,
               212838,2053285,71642,71643,71644]
        out["logs"] = rows(proofs, "SELECT * FROM log WHERE id IN (" +
                           ",".join("?" for _ in ids) + ") ORDER BY id", ids)
        if len(out["logs"]) != len(ids):
            raise ValueError("a selected audit record is missing")
        out["additional_d2_basis"] = rows(sphere,
            "SELECT * FROM S0_AdamsE2_basis WHERE id IN (2855,2923,2926) ORDER BY id")

        # The paper's Cnu source has canonical coordinates [0,3,4], NOT
        # the [1,5] appearing in log.id=2053285. Decode the chosen lift first.
        out["cnu_generators"] = rows(cnu,
            "SELECT * FROM Cnu_AdamsE2_generators WHERE id IN (0,1,310) ORDER BY id")
        out["cnu_lift_relation"] = rows(cnu,
            "SELECT rowid,rel,s,t FROM Cnu_AdamsE2_relations WHERE rowid=13030")
        if out["cnu_lift_relation"][0]["rel"] != "1,1,310;323,1,1":
            raise ValueError("unexpected chosen-lift relation")
        out["cnu_positions"] = []
        for s,t in [(8,134),(11,136),(14,139)]:
            out["cnu_positions"].append({"s":s,"t":t,
                "basis":rows(cnu,"SELECT * FROM Cnu_AdamsE2_basis WHERE s=? AND t=? ORDER BY id",(s,t)),
                "ss":rows(cnu,"SELECT * FROM Cnu_AdamsE2_ss WHERE s=? AND t=? ORDER BY id",(s,t))})
        known = rows(cnu, "SELECT * FROM Cnu_AdamsE2_ss WHERE id IN (3872,3873,3874) ORDER BY id")
        x, dx = set(), set()
        for row in known:
            if (row["s"],row["t"],row["level"]) != (8,134,9997):
                raise ValueError("unexpected Cnu differential degree")
            x ^= coords(row["base"])
            dx ^= coords(row["diff"])
        target = rows(cnu, "SELECT * FROM Cnu_AdamsE2_ss WHERE id=4089")[0]
        if x != coords(target["diff"]) or dx != coords(target["base"]):
            raise ValueError("Cnu combined differential disagrees with incoming row")
        out["cnu_combined_result"] = {
            "source":sorted(x), "target":sorted(dx), "source_ss_ids":[3872,3873,3874],
            "incoming_ss_id":4089,
            "status":"F2 combination of known table results; no independent proofs.db row asserted",
        }
    dest = HERE / "summary-recheck.json"
    dest.write_text(json.dumps(out, ensure_ascii=False, indent=2)+"\n")
    print("Recorded raw formulas and database audit evidence:", dest)
    print("Sphere counts:", out["sphere_counts"])
    print("Cnu combined result:", out["cnu_combined_result"])


if __name__ == "__main__":
    main()
