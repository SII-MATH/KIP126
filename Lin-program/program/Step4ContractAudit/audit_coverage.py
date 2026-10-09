"""Audit every CSV claim and derive current event counts without upgrading status."""
import collections
import csv
import hashlib
import json
import re
from pathlib import Path

p = Path(__file__).resolve().parent
root = p.parent
csv_path = root.parent / "doc_data/kervaire_claims.csv"
coverage_path = root / "ClaimCoverage.json"
with csv_path.open(newline="") as source:
    requested = list(csv.DictReader(source))
coverage = json.loads(coverage_path.read_text())
assert coverage["status"] == "step4_incomplete"
rows = coverage["claims"]
assert len(rows) == len(requested) == 17
assert len({r["id"] for r in rows}) == 17
assert {r["id"] for r in rows} == {r["id"] for r in requested}
csv_by_id = {r["id"]: r for r in requested}
result = []
for row in rows:
    original = csv_by_id[row["id"]]
    assert row["requested_conclusion"] == original["output_or_conclusion"]
    assert row["paper_location"] == original["section_or_location"]
    assert row["unproved_premises"], row["id"]
    assert row["level"] not in {"proved", "complete", "topological_theorem"}
    manual = row["id"].startswith("manual-")
    if manual:
        assert row["level"] == "external_input_inventory"
    result.append(dict(id=row["id"], requested=row["requested_conclusion"],
                       supported_level=row["level"], manual_input=manual,
                       unresolved_semantic_obligations=row["unproved_premises"],
                       user_contract="inventory_only" if manual else
                       "finite_or_explicitly_conditional_only"))

events_path = root / "AggregateD5Conditional/event-results.json"
producer_path = root / "FiniteEventProducer/D5/all95.jsonl"
events = json.loads(events_path.read_text())
accepted = [r for r in events if r["status"] == "finite_nonzero_event"]
records = [json.loads(line) for line in producer_path.read_text().splitlines()]
counts = collections.Counter(r["classification"] for r in accepted)
inventory_path = root / "AggregateTargetInventory/inventory.json"
inventory_rows = json.loads(inventory_path.read_text())["staircase"]
event_ids = {r["staircase_id"] for r in events}
assert len(event_ids) == len(events), "duplicate event id"
inventory_ids = [r["staircase_id"] for r in inventory_rows]
assert len(set(inventory_ids)) == len(inventory_ids), "duplicate inventory id"
event_slots = [r for r in inventory_rows if r["staircase_id"] in event_ids]
assert {r["staircase_id"] for r in event_slots} == event_ids, "missing inventory event"
for row in event_slots:
    raw = row["diff"]
    if raw is not None:
        assert isinstance(raw, str) and re.fullmatch(r"(?:0|[1-9][0-9]*)(?:,(?:0|[1-9][0-9]*))*", raw), \
            (row["staircase_id"], "noncanonical or unknown differential support")
        support = [int(i) for i in raw.split(",")]
        assert support == sorted(set(support)), (row["staircase_id"], "duplicate or unordered support")
pending = sorted(r["staircase_id"] for r in event_slots if r["diff"] is None)
assert pending == [2696, 2852]
assert not set(pending) & {r["staircase_id"] for r in accepted}
current = dict(stored_event_slots=len(events),
               known_value_records=sum(r["diff"] is not None for r in event_slots),
               pending_outgoing_records=pending, complete_finite_events=len(accepted),
               outgoing=counts["stored_outgoing"], incoming=counts["stored_incoming"],
               unresolved=len(events)-len(accepted), endpoint_traces=2*len(accepted),
               prior_cycle_steps=sum(len(w["sourceStages"])+len(w["targetStages"]) for w in records),
               prior_nonboundary_steps=sum(len(w["sourceStages"])+len(w["targetStages"]) for w in records),
               executable_certificates=len(records), indexed_certificates=len(records))
assert current["complete_finite_events"] == 95 and current["unresolved"] == 6
assert current["outgoing"] + current["incoming"] == current["complete_finite_events"]
reported = next(r for r in rows if r["id"] == "strategy-101-105")["event_audit"]
discrepancies = [dict(field=k, reported=reported.get(k), derived=v)
                 for k, v in current.items() if reported.get(k) != v]
report = dict(status="step4_incomplete", checked_claims=17, manual_claims=3,
              claims=result, actual_current_finite_events=current,
              coverage_metadata_discrepancies=discrepancies,
              hashes={str(f.relative_to(root.parent)): hashlib.sha256(f.read_bytes()).hexdigest()
                      for f in [csv_path, coverage_path, events_path, producer_path, inventory_path]})
(p / "coverage-review.json").write_text(json.dumps(report, indent=2) + "\n")
print(f"All 17 claims classified; three manual inputs remain inventory; {len(discrepancies)} stale metadata fields")
for issue in discrepancies:
    print(issue)
assert not discrepancies, "claim coverage metadata disagrees with the named current snapshot"
