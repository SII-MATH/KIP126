"""Reproduce the appended family mirror; Lean uses the imported source definitions."""
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
BASE = ROOT / 'Fact713ComparisonBatches'
REFINED = ROOT / 'Fact713RefinedSourceSearch'
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
for key in manifest['additional_comparison_keys']:
    block = union[key]
    s, t = block['center']
    path = REFINED / 'wires' / f'b_S0_{s}_{t}_d{block["page"]}.json'
    wire = load(path)
    assert wire == block['wire']
    extra.append(dict(key=dict(object=block['object'], page=block['page'], s=s, t=t), wire=wire))
    inputs.append(path)
family = dict(version=1, entries=baseline['entries'] + extra)
assert len(family['entries']) == 1239
(HERE / 'family.json').write_text(canonical(family))
(HERE / 'extra.json').write_text(canonical(dict(version=1, entries=extra)))
out = dict(format_version=1, baseline_count=1234, extra_count=5, family_count=1239,
           available_e12_graph_comparisons=1236, unresolved_e12_graph_comparisons=184,
           additional_e12_keys=manifest['new_e12_keys'],
           additional_successor_keys=[k for k in manifest['additional_comparison_keys']
                                      if k not in manifest['new_e12_keys']],
           source_sha256={str(p.relative_to(ROOT)): sha(p) for p in inputs},
           output_sha256={n: sha(HERE / n) for n in ['family.json', 'extra.json']},
           note='JSON mirrors the exact imported Lean definitions; hashes establish provenance only. '
                'The supplied comparison family is coherent but the requested E12 window is incomplete.')
(HERE / 'manifest.json').write_text(json.dumps(out, indent=2) + '\n')
print('Packaged 1234 baseline + 5 new = 1239 comparisons; 184 E12 graph keys remain absent.')
