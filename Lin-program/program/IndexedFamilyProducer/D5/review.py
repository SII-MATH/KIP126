"""Check the extension and every original/new binding against full matrices."""
import hashlib
import importlib.util
import json
from pathlib import Path

p = Path(__file__).resolve().parent
root = p.parents[1]
spec = importlib.util.spec_from_file_location('matrix_audit', root / 'Row3147MapSearch/review.py')
audit = importlib.util.module_from_spec(spec)
spec.loader.exec_module(audit)
load = lambda path: json.loads(path.read_text())
key = lambda e: tuple(e['key'][k] for k in ['object', 'page', 's', 't'])
family = load(p / 'family-extension.json')['entries']
sorted_family = load(p / 'family.json')['entries']
old = load(p.parent / 'HighD2/family.json')['entries']
extra = load(p / 'extra.json')['entries']
assert len(family) == 358 and family == old + extra and len(extra) == 7
blocks = {key(e): e['wire'] for e in family}
assert len(blocks) == 358
assert blocks == {key(e): e['wire'] for e in sorted_family}
source = load(root / 'AggregateD5Conditional/source.json')
assert blocks == {(b['object'], b['page'], *b['center']): b['wire']
                  for b in source['blocks'].values()}
horizontal = consecutive = 0
for (obj, page, s, t), wire in blocks.items():
    audit.check_wire(wire)
    target = blocks.get((obj, page, s + page, t + page - 1))
    if target is not None:
        horizontal += 1
        assert wire['k'] == target['m'] and wire['m'] == target['n']
        assert wire['outgoing'] == target['incoming']
    target = blocks.get((obj, page + 1, s, t))
    if target is not None:
        consecutive += 1
        assert wire['h'] == target['m']
bound = [json.loads(s) for s in (p / 'bound95.jsonl').read_text().splitlines()]
original = [json.loads(s) for s in (root / 'FiniteEventProducer/D5/indexed95.jsonl').read_text().splitlines()]
provenance = load(p / 'provenance.json')
assert len(bound) == len(original) == len(provenance['records']) == 95
old_events = {r['staircase_id']: json.loads(s) for r, s in zip(
    load(p.parent / 'HighD2/provenance.json')['records'],
    (p.parent / 'HighD2/bound94.jsonl').read_text().splitlines())}
stages = 0
for row, certificate, previous in zip(provenance['records'], bound, original):
    assert certificate == dict(version=1, object='S0', event=previous)
    if row['staircase_id'] != 3391:
        assert certificate == old_events[row['staircase_id']]
    event = certificate['event']
    center = event['sourceDegree']
    assert blocks['S0', event['eventPage'], center['s'], center['t']] == event['finite']['event']
    for side in ['source', 'target']:
        center = event[side + 'Degree']
        for i, stage in enumerate(event['finite'][side + 'Stages']):
            stages += 1
            assert blocks['S0', i + 2, center['s'], center['t']] == stage['wire']
assert stages == 102
assert {r['staircase_id'] for r in provenance['records']} == set(old_events) | {3391}
paths = [p / name for name in ['family.json', 'family-extension.json', 'extra.json',
                              'bound95.jsonl', 'provenance.json']]
report = dict(status='all_full_matrices_and_bindings_passed', entries=358,
              old_entries_unchanged=351, new_entries=7, events=95,
              old_events_unchanged=94, new_event=3391, prior_stages=102,
              horizontal_pairs=horizontal, consecutive_pairs=consecutive,
              old_pair_proof_reused=351 * 351, extra_pairs=7 * 7,
              cross_pairs=2 * 351 * 7,
              inputs={str(f.relative_to(root)): hashlib.sha256(f.read_bytes()).hexdigest() for f in paths})
(p / 'review.json').write_text(json.dumps(report, indent=2) + '\n')
print('PASS:', report['entries'], 'complete blocks;', report['events'], 'bound events;',
      stages, 'prior stages;', horizontal, '/', consecutive, 'compatible pairs')
