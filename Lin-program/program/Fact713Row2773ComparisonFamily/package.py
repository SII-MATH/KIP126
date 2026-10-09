"""Package the ten-entry refinement while preserving the exact 1239 baseline."""
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
BASE = ROOT / 'Fact713RefinedComparisonFamily'
REFINED = ROOT / 'Fact713Row2773Refinement'
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
load = lambda p: json.loads(p.read_text())
canonical = lambda value: json.dumps(value, sort_keys=True, separators=(',', ':')) + '\n'
baseline = load(BASE / 'family.json')
manifest = load(REFINED / 'manifest.json')
snapshot = load(REFINED / 'refined.json')
union = dict(snapshot['comparisons'])
for key, block in snapshot['successor_closure'].items():
    assert key not in union or block == union[key]
    union[key] = block
extra = []
inputs = [BASE / 'family.json', REFINED / 'manifest.json', REFINED / 'refined.json']
for key in manifest['additional_keys']:
    block = union[key]
    s, t = block['center']
    path = REFINED / 'wires' / f'b_S0_{s}_{t}_d{block["page"]}.json'
    wire = load(path)
    assert wire == block['wire']
    extra.append(dict(key=dict(object=block['object'], page=block['page'], s=s, t=t), wire=wire))
    inputs.append(path)
family = dict(version=1, entries=baseline['entries'] + extra)
assert len(baseline['entries']) == 1239 and len(extra) == 10 and len(family['entries']) == 1249
(HERE / 'family.json').write_text(canonical(family))
(HERE / 'extra.json').write_text(canonical(dict(version=1, entries=extra)))
out = dict(format_version=1, baseline_count=1239, extra_count=10, family_count=1249,
           available_e12_graph_comparisons=1246, unresolved_e12_graph_comparisons=174,
           additional_e12_keys=manifest['additional_keys'], outside_graph_comparisons=3,
           source_sha256={str(p.relative_to(ROOT)): sha(p) for p in inputs},
           output_sha256={n: sha(HERE / n) for n in ['family.json', 'extra.json']},
           note='Exact appended fixed-coordinate family. Finite named d2-through-d5 coverage; '
                'named d6 missing. No actual Adams E6 conclusion.')
(HERE / 'manifest.json').write_text(json.dumps(out, indent=2) + '\n')
print('Packaged 1239 baseline + 10 new = 1249 comparisons; 174 E12 graph keys remain absent.')
