"""Package eight new entries while preserving the exact 1249-entry baseline."""
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
BASE = ROOT / 'Fact713Row2773ComparisonFamily'
REFINED = ROOT / 'Fact713NextSourceSearch'
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
load = lambda p: json.loads(p.read_text())
canonical = lambda value: json.dumps(value, sort_keys=True, separators=(',', ':')) + '\n'
baseline = load(BASE / 'family.json')
snapshot = load(REFINED / 'refined.json')
union = dict(snapshot['comparisons'])
for key, block in snapshot['successor_closure'].items():
    assert key not in union or block == union[key]
    union[key] = block
extra = []
inputs = [BASE / 'family.json', REFINED / 'refined.json', REFINED / 'Overlay.lean']
for key in snapshot['new_comparison_keys']:
    block = union[key]
    s, t = block['center']
    path = REFINED / 'wires' / f'b_S0_{s}_{t}_d{block["page"]}.json'
    wire = load(path)
    assert wire == block['wire']
    extra.append(dict(key=dict(object=block['object'], page=block['page'], s=s, t=t), wire=wire))
    inputs.append(path)
family = dict(version=1, entries=baseline['entries'] + extra)
assert len(baseline['entries']) == 1249 and len(extra) == 8 and len(family['entries']) == 1257
(HERE / 'family.json').write_text(canonical(family))
(HERE / 'extra.json').write_text(canonical(dict(version=1, entries=extra)))
out = dict(format_version=1, baseline_count=1249, extra_count=8, family_count=1257,
           available_e12_graph_comparisons=1254, unresolved_e12_graph_comparisons=166,
           additional_e12_keys=snapshot['new_comparison_keys'], outside_graph_comparisons=3,
           source_sha256={str(p.relative_to(ROOT)): sha(p) for p in inputs},
           output_sha256={n: sha(HERE / n) for n in ['family.json', 'extra.json']},
           note='Exact appended fixed-coordinate family. Finite named d2-through-d6 coverage; '
                'named d7 missing. No actual Adams E7 conclusion.')
(HERE / 'manifest.json').write_text(json.dumps(out, indent=2) + '\n')
print('Packaged 1249 baseline + 8 new = 1257 comparisons; 166 E12 graph keys remain absent.')
