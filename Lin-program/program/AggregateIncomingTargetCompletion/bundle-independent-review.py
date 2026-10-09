"""Independent all-incoming inventory, full-matrix and artifact binding review."""
import collections
import hashlib
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda p: json.loads((ROOT / p).read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
family = load('AggregateIncomingTargetCompletion/family399.json')
old = load('IndexedFamilyProducer/D5/family-extension.json')
expected = old['entries'].copy()
for filename in ['data.json', 'final-data.json']:
    for block in load('AggregateIncomingTargetCompletion/' + filename)['extra'].values():
        s, t = block['center']
        expected.append(dict(key=dict(object='S0', page=block['page'], s=s, t=t), wire=block['wire']))
assert family == dict(version=1, entries=expected)
index = {(x['key']['object'], x['key']['page'], x['key']['s'], x['key']['t']): x['wire'] for x in expected}
assert len(index) == len(expected) == 399
for name in ['bound95.jsonl', 'requests95.jsonl']:
    assert (HERE / name).read_bytes() == (ROOT / 'IndexedFamilyProducer/D5' / name).read_bytes()
    assert len((HERE / name).read_text().splitlines()) == 95
rows = load('AggregateTargetInventory/inventory.json')['staircase']
incoming = [r for r in rows if r['status'] == 'stored_incoming']
mapping_data = load('AggregateEliminationCertificates/mapping.json')
mapping = mapping_data['matches']
accepted = [m for m in mapping if m['role'] == 'stored_incoming']
accepted_ids = {m['staircase_id'] for m in accepted}
excluded = {r['staircase_id'] for r in incoming} - accepted_ids
assert excluded == {3151, 3992} and excluded <= set(mapping_data['unresolved'])
incoming = [r for r in incoming if r['staircase_id'] in accepted_ids]
assert {r['staircase_id'] for r in incoming} == accepted_ids
source = (HERE / 'Bundle.lean').read_text()
items = re.search(r'def items : List Item := \[([^]]+)\]', source).group(1)
ids = [int(x.removeprefix('item')) for x in items.split(',')]
assert ids == [m['staircase_id'] for m in accepted]
assert len(ids) == len(set(ids)) == 36

def evaluate(matrix, rows, cols, vector):
    assert len(matrix) == rows * cols and len(vector) == cols
    return [sum(bool(matrix[i * cols + j]) and bool(vector[j]) for j in range(cols)) % 2 == 1
            for i in range(rows)]

hist = collections.Counter()
bound = [json.loads(line) for line in (HERE / 'bound95.jsonl').read_text().splitlines()]
for row in incoming:
    identifier = row['staircase_id']
    event = load(f'IndexedFamilyProducer/D5/events/event{identifier}.json')
    assert event in bound and event['object'] == 'S0'
    e = event['event']; f = e['finite']; w = f['event']
    degree = (row['filtration'], row['total_degree'])
    assert (e['targetDegree']['s'], e['targetDegree']['t']) == degree
    assert e['eventPage'] == row['event_page'] and degree[1] - degree[0] == 125
    assert [i for i, x in enumerate(f['rawTarget']) if x] == row['base_local_indices']
    target = index['S0', e['eventPage'], *degree]
    assert (target['m'], target['n'], target['incoming']) == (w['k'], w['m'], w['outgoing'])
    assert evaluate(target['incoming'], target['m'], target['n'], f['source']) == f['target']
    assert not any(evaluate(target['outgoing'], target['k'], target['m'], f['target']))
    assert not any(evaluate(target['projection'], target['h'], target['m'], f['target']))
    hist[target['h']] += 1
assert dict(hist) == {0: 22, 1: 8, 2: 4, 3: 2}
record = load('AggregateIncomingTargetCompletion/Bundle-compile.json')
assert record['observed_exit_code'] == 0
assert record['source_sha256'] == sha(HERE / 'Bundle.lean')
assert record['log_sha256'] == sha(HERE / 'Bundle.log')
assert record['external_input_sha256']['family399.json'] == sha(HERE / 'family399.json')
log = (HERE / 'Bundle.log').read_text()
assert not re.search(r'sorryAx|error:|error\(', log)
reports = re.findall(r'depends on axioms: \[([^]]*)\]', log)
assert all(set(x.strip() for x in r.split(',')) <= {'propext', 'Classical.choice', 'Quot.sound'} for r in reports)
assert len(reports) + log.count('does not depend on any axioms') == 7
obj = ROOT / '.lake/build/lib/lean/AggregateIncomingTargetCompletion/Bundle.olean'
report = dict(status='independent_bundle_review_passed', family_entries=399, incoming_named_targets=36,
    preserved_bound_events=95, preserved_requests=95, target_homology_dimensions=dict(sorted(hist.items())),
    unresolved_incoming_outside_accepted_inventory=sorted(excluded),
    direct_exit_code=0, standard_axiom_reports=7,
    current_object_matches_direct=obj.exists() and sha(obj) == record['olean_sha256'],
    mathematical_scope='Named finite quotient classes vanish; nonzero homology dimensions are retained. Actual sphere meaning remains conditional.',
    input_sha256={str(p.relative_to(ROOT)): sha(p) for p in [HERE / 'Bundle.lean', HERE / 'Bundle.log',
        HERE / 'Bundle-compile.json', HERE / 'family399.json', HERE / 'PIPELINE.md',
        ROOT / 'AggregateTargetInventory/inventory.json', ROOT / 'AggregateEliminationCertificates/mapping.json']})
(HERE / 'bundle-independent-review.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps({k: v for k, v in report.items() if k != 'input_sha256'}, indent=2))
