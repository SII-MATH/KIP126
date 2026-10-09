"""Replay the complete reconstructed family and every binding independently."""
import hashlib
import importlib.util
import json
import subprocess
from pathlib import Path

p = Path(__file__).resolve().parent
root = p.parents[1]
spec = importlib.util.spec_from_file_location('matrix_audit', root / 'Row3147MapSearch/review.py')
audit = importlib.util.module_from_spec(spec)
spec.loader.exec_module(audit)

family = json.loads((p / 'family.json').read_text())
source = json.loads((root / 'AggregateHighD2Conditional/source.json').read_text())
pro = json.loads((p / 'provenance.json').read_text())
key = lambda k: (k['object'], k['page'], k['s'], k['t'])
blocks = {key(e['key']): e['wire'] for e in family['entries']}
assert len(blocks) == len(family['entries']) == 351
assert blocks == {(b['object'], b['page'], *b['center']): b['wire']
                  for b in source['blocks'].values()}
horizontal = vertical = 0
for (obj, page, s, t), wire in blocks.items():
    audit.check_wire(wire)
    following = blocks.get((obj, page, s + page, t + page - 1))
    if following is not None:
        horizontal += 1
        assert wire['k'] == following['m'] and wire['m'] == following['n']
        assert wire['outgoing'] == following['incoming']
    following = blocks.get((obj, page + 1, s, t))
    if following is not None:
        vertical += 1
        assert wire['h'] == following['m']
assert (horizontal, vertical) == (194, 128)

bound = [json.loads(s) for s in (p / 'bound94.jsonl').read_text().splitlines()]
original = [json.loads(s) for s in
            (root / 'FiniteEventProducer/HighD2/indexed94.jsonl').read_text().splitlines()]
assert len(bound) == len(original) == len(pro['records']) == 94
stages = 0
for record, event, previous in zip(pro['records'], bound, original):
    assert event == dict(version=1, object='S0', event=previous)
    e = event['event']
    f = e['finite']
    center = e['sourceDegree']
    assert blocks['S0', e['eventPage'], center['s'], center['t']] == f['event']
    for side in ['source', 'target']:
        center = e[side + 'Degree']
        for i, stage in enumerate(f[side + 'Stages']):
            stages += 1
            assert blocks['S0', i + 2, center['s'], center['t']] == stage['wire']
    assert json.loads((p / 'events' / f"event{record['staircase_id']}.json").read_text()) == event
assert stages == 96
old = [json.loads(s) for s in (p.parent / 'bound90.jsonl').read_text().splitlines()]
assert bound[:90] == old

# Check reproducibility, including complete conditional provenance.
paths = [p / name for name in ['family.input.json', 'family.json', 'bound94.jsonl', 'provenance.json']]
paths += sorted((p / 'events').glob('*.json'))
before = {str(f.relative_to(root)): hashlib.sha256(f.read_bytes()).hexdigest() for f in paths}
subprocess.run(['python3', str(p / 'prepare.py')], check=True)
assert before == {str(f.relative_to(root)): hashlib.sha256(f.read_bytes()).hexdigest() for f in paths}
result = dict(status='independent_full_family_and_binding_review_passed', entries=351,
              events=94, prior_stages=96, horizontal_pairs=horizontal,
              consecutive_pairs=vertical, ordered_pairs=351 * 351,
              old90_unchanged=True, deterministic=True,
              negative_filtration_entries=sum(k[2] < 0 for k in blocks),
              conditional_uses=pro['family_conditional_uses'], input_sha256=before)
(p / 'review.json').write_text(json.dumps(result, indent=2) + '\n')
print('PASS: 351 full blocks, 94 bound events, 96 stages, 194/128 compatible pairs')
