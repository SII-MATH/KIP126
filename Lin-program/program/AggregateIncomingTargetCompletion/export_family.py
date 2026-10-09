"""Export the exact additive family399 and preserve all original95 requests."""
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda path: json.loads((ROOT / path).read_text())
sha = lambda path: hashlib.sha256(path.read_bytes()).hexdigest()
old = load('IndexedFamilyProducer/D5/family-extension.json')
base = load('AggregateIncomingTargetCompletion/data.json')
final = load('AggregateIncomingTargetCompletion/final-data.json')
entries = list(old['entries'])
for group in [base['extra'], final['extra']]:
    for key, block in group.items():
        s, t = block['center']
        entries.append(dict(key=dict(object='S0', page=block['page'], s=s, t=t), wire=block['wire']))
assert len(entries) == 399
assert len({(e['key']['object'], e['key']['page'], e['key']['s'], e['key']['t']) for e in entries}) == 399
assert entries[:358] == old['entries']
envelope = dict(version=1, entries=entries)
(HERE / 'family399.json').write_text(json.dumps(envelope, sort_keys=True, separators=(',', ':')) + '\n')
for filename in ['bound95.jsonl', 'requests95.jsonl']:
    (HERE / filename).write_bytes((ROOT / 'IndexedFamilyProducer/D5' / filename).read_bytes())
report = dict(status='canonical399_exact_order_exported', original_entries=358, added_base=26,
    added_final=15, total_entries=399, original_events=95, original_requests=95,
    input_sha256={str(path.relative_to(ROOT)): sha(path) for path in [
        ROOT / 'IndexedFamilyProducer/D5/family-extension.json',
        ROOT / 'IndexedFamilyProducer/D5/bound95.jsonl', ROOT / 'IndexedFamilyProducer/D5/requests95.jsonl',
        HERE / 'data.json', HERE / 'final-data.json', Path(__file__)]},
    output_sha256={path.name: sha(path) for path in [HERE / 'family399.json', HERE / 'bound95.jsonl', HERE / 'requests95.jsonl']})
(HERE / 'export-audit.json').write_text(json.dumps(report, indent=2) + '\n')
print('canonical399 exact original-plus-additions order;95 events/requests byte-preserved')
