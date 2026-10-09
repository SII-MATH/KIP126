"""Independent read-only impact audit of NULL outgoing inventory markers."""
from collections import Counter
from pathlib import Path
import hashlib
import json
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
invpath = ROOT / 'AggregateTargetInventory/inventory.json'
inventory = json.loads(invpath.read_text())
rows = inventory['staircase']
null_out = [r for r in rows if r['status'] == 'stored_outgoing' and r['diff'] is None]
assert [r['staircase_id'] for r in null_out] == [2696, 2852]
boundpath = ROOT / 'AggregateIncomingTargetCompletion/bound95.jsonl'
bounds = [json.loads(x) for x in boundpath.read_text().splitlines()]
assert len(bounds) == 95
results = []
for r in null_out:
    source_dimension = next(x['dimension'] for x in inventory['filtration_groups'] if x['filtration'] == r['filtration'])
    raw = [j in r['base_local_indices'] for j in range(source_dimension)]
    matching = [i for i, w in enumerate(bounds) if w['event']['sourceDegree'] == {'s': r['filtration'], 't': r['total_degree']}
                and w['event']['finite']['rawSource'] == raw]
    assert not matching
    results.append(dict(staircase_id=r['staircase_id'], raw=r['diff'], level=r['level'],
                        next_undetermined_page=r['event_page'], accepted_event_indices=matching))
data = (ROOT / 'AggregateEliminationCertificates/Data.lean').read_text()
accepted = re.search(r'def accepted : List Item := \[(.*?)\]\n', data, re.S)
assert accepted
accepted_ids = [int(x) for x in re.findall(r'⟨row(\d+),', accepted.group(1))]
assert len(accepted_ids) == 95 and len(set(accepted_ids)) == 95
assert 2696 not in accepted_ids and 2852 not in accepted_ids
residual = re.search(r'theorem exact_residual[^\n]*= \[([^]]*)\]', data)
assert residual
residual_ids = [int(x) for x in residual.group(1).split(',')]
assert {2696, 2852} <= set(residual_ids)
proof_ids = {2422885, 2423248}
proof_rows = []
for line in (HERE / 'matches.jsonl').read_text().splitlines():
    r = json.loads(line)
    if int(r['fields']['id']) in proof_ids:
        assert r['fields']['dx'] == '[NULL]'
        assert r['fields']['reason'] == '[NULL]'
        proof_rows.append(dict(id=int(r['fields']['id']), file=r['file'], start_line=r['start_line'],
                               r=int(r['fields']['r']), dx=r['fields']['dx'], reason=r['fields']['reason']))
assert len(proof_rows) == 2
inputs = [invpath, boundpath, ROOT / 'AggregateEliminationCertificates/Basic.lean',
          ROOT / 'AggregateEliminationCertificates/Data.lean',
          ROOT / 'AggregateTargetInventory/generate.py', HERE / 'matches.jsonl',
          ROOT / 'upstream/release-source/SSeqCpp-master/ss/ss.cpp']
report = dict(status='read_only_null_inventory_impact_review_passed',
    accepted_obstructions=95, contamination_found=False, null_inventory_outgoing=results,
    residual_ids=residual_ids, exact_null_hint_records=proof_rows,
    inventory_counts=dict(Counter(r['status'] for r in rows)),
    interpretation='outgoing inventory label only encodes a level range; NULL is next undetermined page, not a known nonzero differential',
    risk='63 outgoing inventory rows include two NULL markers; wording known outgoing/exclude101 must not be interpreted as proved nonzero events',
    input_sha256={str(p.relative_to(ROOT)): sha(p) for p in inputs}, script_sha256=sha(Path(__file__)))
(HERE / 'impact-independent-review.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps({k: v for k, v in report.items() if k not in ['input_sha256', 'script_sha256']}, indent=2))
