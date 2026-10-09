"""Audit exact conditional d4 role, full old data, and all endpoint paths."""
import hashlib
import importlib.util
import json
import subprocess
from pathlib import Path

p = Path(__file__).resolve().parent
root = p.parent
names = ["source.json", "event-results.json", "Data.lean", "Events.lean"]
sha = lambda f: hashlib.sha256(f.read_bytes()).hexdigest()
before = {n: sha(p / n) for n in names}
subprocess.run(["python3", str(p / "events.py")], check=True)
assert before == {n: sha(p / n) for n in names}
source = json.loads((p / "source.json").read_text())
old = json.loads((root / "AggregateC2H2Conditional/source.json").read_text())
events = json.loads((p / "event-results.json").read_text())
old_events = json.loads((root / "AggregateC2H2Conditional/event-results.json").read_text())
dag = json.loads((p / "dag.json").read_text())
assert (p / "dag.json").read_bytes() == (root / "AggregateC2H2Conditional/dag.json").read_bytes()
assert len(source["blocks"]) == 337
assert set(source["blocks"]) - set(old["blocks"]) == {"S0:8,135:d4"}
assert source["database_sha256"] == old["database_sha256"]
for key, block in old["blocks"].items():
    assert source["blocks"][key] == block, key
assert len(events) == 101 and len({e["staircase_id"] for e in events}) == 101
assert [e["staircase_id"] for e, previous in zip(events, old_events, strict=True)
        if e != previous] == [3391]
changed = next(e for e in events if e["staircase_id"] == 3391)
assert changed["status"] == "unresolved"
assert changed["reason"] == "unknown S0:10,137:d3:row2929; target dimension 1"

spec = importlib.util.spec_from_file_location("raw_audit", root / "Row2925Detector/source_independent_audit.py")
audit = importlib.util.module_from_spec(spec)
spec.loader.exec_module(audit)
uses = []
for key, block in source["blocks"].items():
    assert all(pred in source["blocks"] for pred in block["predecessors"])
    audit.wire_laws(block["wire"])
    for use in block["uses"]:
        if use["kind"] == "conditional_c2_d4_prefix":
            assert key == "S0:8,135:d4"
            assert use["object"] == "S0" and use["source"] == [4, 132]
            assert use["page"] == 4 and use["row"] == [2576, "0", None, 9000]
            uses.append(dict(block=key, role="incoming", **use))
assert len(uses) == 1
earlier = [u for b in source["blocks"].values() for u in b["uses"]
           if u["kind"] == "conditional_c2_h2"]
assert len(earlier) == 1 and earlier[0]["page"] == 3
assert "S0:4,132:d4" not in source["blocks"]
assert "row2708" in source["failures"]["S0:7,134:d3"]
assert not any(u["row"][0] in [2708, 2929] for b in source["blocks"].values()
               for u in b["uses"] if u["kind"].startswith("conditional"))

detector = json.loads((root / "Row2576D4Detector/comparison-source.json").read_text())
for key in ["S0:4,132:d3", "S0:8,135:d3"]:
    assert source["blocks"][key] == detector["inherited_d3"][key]
assert source["blocks"]["S0:8,135:d4"]["wire"]["incoming"] == [False, False]

inventory = {r["staircase_id"]: r for r in
             json.loads((root / "AggregateTargetInventory/inventory.json").read_text())["staircase"]}
trace_count = 0
for event in events:
    if event["status"] != "finite_nonzero_event":
        continue
    row = inventory[event["staircase_id"]]
    page = event["event_page"]
    start = [row["filtration"], row["total_degree"]] if row["status"] == "stored_outgoing" else row["other_degree"]
    finish = [start[0]+page, start[1]+page-1]
    for name, center, indices in [
        ("source", start, row["base_local_indices"] if row["status"] == "stored_outgoing" else row["diff_local_indices"]),
        ("target", finish, row["diff_local_indices"] if row["status"] == "stored_outgoing" else row["base_local_indices"]),
    ]:
        s, t = center
        v = [i in indices for i in range(len(dag["degrees"][f"S0:{s},{t}"]["e2"]))]
        for q in range(2, page):
            w = source["blocks"][f"S0:{s},{t}:d{q}"]["wire"]
            assert not any(audit.matmul(w["outgoing"], v, w["k"], w["m"], 1))
            v = audit.matmul(w["projection"], v, w["h"], w["m"], 1)
            assert any(v)
            trace_count += 1
        assert v == event[name + "_coordinates"]
    w = source["blocks"][event["root"]]["wire"]
    assert audit.matmul(w["outgoing"], event["source_coordinates"], w["k"], w["m"], 1) == event["target_coordinates"]
    assert any(event["target_coordinates"])
assert sum(e["status"] == "finite_nonzero_event" for e in events) == 90
assert sum(e["status"] == "unresolved" for e in events) == 11
assert trace_count == 90

report = dict(complete_comparisons=337, unchanged_previous_comparisons=336,
              finite_nonzero_events=90, unresolved=11, all_accepted_prior_stages=90,
              added_blocks=["S0:8,135:d4"], new_conditional_uses=uses,
              changed_event=changed, d3_d4_kinds_distinct=True,
              row2708_and_row2929_retained_unknown=True,
              source_outgoing_d4_comparison_complete=False,
              interpretation_obligations=["C2 row2633 incoming d3 prefix meaning",
                  "inherited S0 d3 conditions", "local d3/d4 naturality and zero preservation",
                  "actual Adams interpretation"],
              generated_sha256=before,
              dependency_sha256={str(f.relative_to(root)): sha(f) for f in
                  [p / "dag.json", p / "generate.py", p / "events.py", p / "review.py", root / "Row2576D4Detector/comparison-source.json",
                   root / "Row2576D4Detector/ImportedBoundary.lean",
                   root / "AggregateC2H2Conditional/source.json"]})
(p / "review.json").write_text(json.dumps(report, indent=2) + "\n")
print("337 complete comparisons, 336 unchanged; one exact incoming d4 role; 90 full events/90 stages, 11 unresolved; row3391 now blocked by row2929")
