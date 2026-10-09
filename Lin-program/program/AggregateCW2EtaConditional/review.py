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
old = json.loads((root / "AggregateC2D4Conditional/source.json").read_text())
events = json.loads((p / "event-results.json").read_text())
old_events = json.loads((root / "AggregateC2D4Conditional/event-results.json").read_text())
dag = json.loads((p / "dag.json").read_text())
assert (p / "dag.json").read_bytes() == (root / "AggregateC2D4Conditional/dag.json").read_bytes()
assert len(source["blocks"]) == 338
assert set(source["blocks"]) - set(old["blocks"]) == {"S0:13,139:d3"}
assert source["database_sha256"] == old["database_sha256"]
for key, block in old["blocks"].items():
    assert source["blocks"][key] == block, key
assert len(events) == 101 and len({e["staircase_id"] for e in events}) == 101
assert [e["staircase_id"] for e, previous in zip(events, old_events, strict=True)
        if e != previous] == [3391]
changed = next(e for e in events if e["staircase_id"] == 3391)
assert changed["status"] == "unresolved"
assert changed["reason"] == "unknown S0:9,136:d4:row2861; target dimension 1"

spec = importlib.util.spec_from_file_location("raw_audit", root / "Row2925Detector/source_independent_audit.py")
audit = importlib.util.module_from_spec(spec)
spec.loader.exec_module(audit)
uses = []
for key, block in source["blocks"].items():
    assert all(pred in source["blocks"] for pred in block["predecessors"])
    audit.wire_laws(block["wire"])
    for use in block["uses"]:
        if use["kind"] == "conditional_cw_2_eta":
            assert key == "S0:13,139:d3"
            assert use["object"] == "S0" and use["source"] == [10, 137]
            assert use["page"] == 3 and use["row"] == [2929, "3", None, 9000]
            uses.append(dict(block=key, role="incoming", **use))
assert len(uses) == 1
assert "S0:10,137:d3" not in source["blocks"]
assert not any(u["row"][0] == 2861 and u["page"] == 4 for b in source["blocks"].values()
               for u in b["uses"] if u["kind"].startswith("conditional"))
detector=json.loads((root/"Row2929Detector/comparison-source.json").read_text())
blocks={b['tag']:b['wire'] for b in detector}
for field in ['outgoing','incoming']:
    assert source['blocks']['S0:10,137:d2']['wire'][field]==blocks['source'][field]
assert source['blocks']['S0:13,139:d2']['wire']==blocks['upperSource']
change=[False,True,False,True,False,False,True,False,True]
assert audit.matmul(change,blocks['source']['projection'],3,3,6)==source['blocks']['S0:10,137:d2']['wire']['projection']
assert source["blocks"]["S0:13,139:d3"]["wire"]["incoming"] == [False, False, False]

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

report = dict(complete_comparisons=338, unchanged_previous_comparisons=337,
              finite_nonzero_events=90, unresolved=11, all_accepted_prior_stages=90,
              added_blocks=["S0:13,139:d3"], new_conditional_uses=uses,
              changed_event=changed, exact_new_named_column_only=True, source_basis_change=change,
              row2861_d4_retained_unknown=True,
              source_outgoing_d3_comparison_complete=False,
              interpretation_obligations=["inherited conditional finite-data meanings", "local CW_2_eta d3 naturality and zero preservation",
                  "actual Adams interpretation"],
              generated_sha256=before,
              dependency_sha256={str(f.relative_to(root)): sha(f) for f in
                  [p / "dag.json", p / "generate.py", p / "events.py", p / "review.py", root / "Row2929Detector/comparison-source.json",
                   root / "Row2929Detector/Matches.lean",
                   root / "AggregateC2D4Conditional/source.json"]})
(p / "review.json").write_text(json.dumps(report, indent=2) + "\n")
print("338 complete comparisons, 337 unchanged; one exact incoming row2929 d3 role; 90 full events/90 stages, 11 unresolved; row3391 now blocked by row2861 d4")
