"""Audit complete predecessors, exact conditional roles, and regeneration."""
import hashlib
import json
import subprocess
from pathlib import Path

p = Path(__file__).resolve().parent
root = p.parent
generated = ['Data.lean', 'Events.lean', 'source.json', 'event-results.json']


def hashes():
    return {name: hashlib.sha256((p / name).read_bytes()).hexdigest()
            for name in generated}


before = hashes()
subprocess.run(['python3', str(p / 'events.py')], check=True)
assert before == hashes(), 'generated aggregate files changed'
s = json.loads((p / 'source.json').read_text())
old = json.loads((root / 'AggregateD4Conditional/source.json').read_text())
events = json.loads((p / 'event-results.json').read_text())
assert len(events) == 101
assert len({e['staircase_id'] for e in events}) == 101
assert sum(e['status'] == 'finite_nonzero_event' for e in events) == 90
assert sum(e['status'] == 'unresolved' for e in events) == 11
added = sorted(set(s['blocks']) - set(old['blocks']))
assert added == ['S0:18,144:d3', 'S0:18,144:d4']
assert len(s['blocks']) == 333
assert s['database_sha256'] == old['database_sha256']
for key, block in old['blocks'].items():
    assert block == s['blocks'][key], ('previous block changed', key)

uses = []
for key, block in s['blocks'].items():
    assert all(pred in s['blocks'] for pred in block['predecessors']), key
    for use in block['uses']:
        if use['kind'] == 'conditional_three_products':
            assert key == 'S0:18,144:d3'
            assert use['object'] == 'S0' and use['source'] == [15, 142]
            assert use['page'] == 3 and use['row'] == [3325, '2', None, 9000]
            uses.append(dict(block=key, role='incoming', **use))
assert len(uses) == 1
completed = [item['row_ref'] for item in s['candidates']
             if item['status'] == 'complete_event_comparison'
             and next(prev for prev in old['candidates']
                      if prev['row_ref'] == item['row_ref'])['status'] == 'unresolved']
assert completed == ['event3744', 'event3745']
dependent = [item['staircase_id'] for item in events
             if any(use['kind'] == 'conditional_three_products'
                    for use in item.get('conditional_uses', []))]
assert dependent == [3744, 3745]

detector = root / 'Row3325Detector'
ann = json.loads((detector / 'annh1.json').read_text())['right']
detect = json.loads((detector / 'detecth1.json').read_text())['right']
src = s['blocks']['S0:15,142:d2']['wire']
target = s['blocks']['S0:18,144:d2']['wire']
for field in ['outgoing', 'incoming']:
    assert src[field] == ann[field]
    assert target[field] == detect[field]
assert [src['inclusion'][i * 2] for i in range(5)] == [False, False, True, False, False]
assert [src['projection'][i * 5 + 2] for i in range(2)] == [True, False]
# The detector uses [local1, local2, local3]; the aggregate uses
# [local1+local3, local3, local2], so coordinates must be changed.
change = [[1, 0, 0], [1, 0, 1], [0, 1, 0]]
for i in range(3):
    for j in range(4):
        assert target['projection'][i * 4 + j] == bool(sum(
            change[i][k] * detect['projection'][k * 4 + j]
            for k in range(3)) % 2)
incoming = s['blocks']['S0:18,144:d3']['wire']['incoming']
assert all(not incoming[i * 2] for i in range(3))
assert 'S0:15,142:d3' not in s['blocks']

report = dict(events=101, finite_nonzero_events=90, unresolved=11,
              complete_comparisons=333, added_blocks=added,
              newly_completed_events=completed, new_conditional_uses=uses,
              dependent_events=dependent, target_basis_change=change,
              source_outgoing_comparison_complete=False,
              generated_sha256=before,
              unresolved_reasons=[dict(event=e['staircase_id'], reason=e['reason'])
                                  for e in events if e['status'] == 'unresolved'])
(p / 'review.json').write_text(json.dumps(report, indent=2) + '\n')
print('333 comparisons; exact incoming row3325 role; events3744/3745; 90/11; deterministic')
