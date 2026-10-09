"""Audit the precise consequence and obstruction of a complete-kernel premise."""
import hashlib
import importlib.util
import json
import sqlite3
import subprocess
from pathlib import Path

p = Path(__file__).resolve().parent
r = p.parent
sha = lambda f: hashlib.sha256(f.read_bytes()).hexdigest()
generated = ['Data.lean', 'Events.lean', 'source.json', 'event-results.json']
before = {n: sha(p/n) for n in generated}
subprocess.run(['python3', str(p/'events.py')], check=True)
assert before == {n: sha(p/n) for n in generated}
source = json.loads((p/'source.json').read_text())
old = json.loads((r/'AggregateD5Conditional/source.json').read_text())
assert len(source['blocks']) == 359
assert set(source['blocks']) - set(old['blocks']) == {'S0:7,134:d3'}
assert all(source['blocks'][k] == b for k, b in old['blocks'].items())
spec = importlib.util.spec_from_file_location('oracle', r/'Row2925Detector/source_independent_audit.py')
a = importlib.util.module_from_spec(spec)
spec.loader.exec_module(a)
for block in source['blocks'].values():
    a.wire_laws(block['wire'])
block = source['blocks']['S0:7,134:d3']
assert block['wire'] == json.loads((r/'AffineRemainingSearch/branch2708-1.json').read_text())
uses = [u for u in block['uses'] if u['kind'] == 'conditional_complete_kernel_row2708']
assert len(uses) == 1 and uses[0]['row'] == [2708, '0,1', None, 9997]
db = sqlite3.connect(f'file:{r}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro', uri=True)
raw = {rid: list(db.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=?', (rid,)).fetchone())
       for rid in [2707, 2708, 2858, 2925, 3151, 3152]}
assert raw[2708] == [2708, 7, 134, '0,1', None, 9997]
assert raw[2858] == [2858, 10, 136, '2', None, 9000]
t = source['blocks']['S0:10,136:d2']['wire']
assert a.matmul(t['projection'], [0,0,1,0,0], t['h'], t['m'], 1) == [1]
incoming = block['wire']['outgoing']
assert incoming == [False, True] and a.in_image(incoming, 1, 2, [1])
assert source['failures']['S0:10,136:d3'] == 'selected dimension mismatch 1 != homology 0'
assert source['failures']['S0:11,137:d4'] == 'unknown S0:11,137:d4:row2925; target dimension 2'
events = json.loads((p/'event-results.json').read_text())
old_events = json.loads((r/'AggregateD5Conditional/event-results.json').read_text())
assert [e for e in events if e['status'] == 'finite_nonzero_event'] == [e for e in old_events if e['status'] == 'finite_nonzero_event']
assert sum(e['status'] == 'finite_nonzero_event' for e in events) == 95
inputs = [p/'generate.py', p/'events.py', p/'dag.json', p/'Conflict.lean', p/'review.py',
          r/'AggregateD5Conditional/source.json', r/'AffineRemainingSearch/Kernel.lean',
          r/'AffineRemainingSearch/branch2708-1.json', r/'upstream/kervaire-49/S0_AdamsSS_t261.db']
report = dict(comparisons=359, unchanged_comparisons=358, finite_events_unchanged=95,
              new_events=[], unresolved=6, raw_rows=raw,
              consequence='Under explicit complete-kernel and survivor-cycle premises, row2708 has unique nonzero d3; the sole displayed next-page target vector is then an incoming boundary.',
              obstruction='The source premise does not close events3151/3152: row2925 d4 is unknown and the stored target next-page basis is incompatible.',
              generated_sha256=before, input_sha256={str(f.relative_to(r)): sha(f) for f in inputs})
(p/'review.json').write_text(json.dumps(report, indent=2)+'\n')
print('359 finite comparisons; 358 unchanged; no new event; exact conditional target-boundary conflict')
