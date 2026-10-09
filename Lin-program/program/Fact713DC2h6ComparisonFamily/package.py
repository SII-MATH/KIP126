"""Package fifteen entries and explicit finite graph gaps, preserving all old wires."""
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
BASE = ROOT / 'Fact713NextComparisonFamily'
REFINED = ROOT / 'Fact713DC2h6Source'
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
    label = 'neg'+str(-s) if s < 0 else str(s)
    path = REFINED / 'wires' / f'b_S0_{label}_{t}_d{block["page"]}.json'
    wire = load(path)
    assert wire == block['wire']
    extra.append(dict(key=dict(object=block['object'], page=block['page'], s=s, t=t), wire=wire))
    inputs.append(path)
family = dict(version=1, entries=baseline['entries'] + extra)
assert len(baseline['entries']) == 1257 and len(extra) == 15 and len(family['entries']) == 1272
assert sum(e['key']['s'] < 0 for e in extra) == 5
(HERE / 'family.json').write_text(canonical(family))
(HERE / 'extra.json').write_text(canonical(dict(version=1, entries=extra)))

# Reconstruct the original E12 dependency window independently of snapshot availability.
graph = {}
pending = [(9,132,r) for r in range(2,12)]
keyof = lambda s,t,r:f'S0:{s},{t}:d{r}'
while pending:
    s,t,r = pending.pop()
    key = keyof(s,t,r)
    if key in graph:
        continue
    predecessors = [] if r == 2 else [(s-r,t-r+1,r-1),(s,t,r-1),(s+r,t+r-1,r-1)]
    graph[key] = dict(object='S0',page=r,s=s,t=t)
    pending.extend(predecessors)
assert len(graph) == 1420
missing = sorted(set(graph)-set(union))
available = sorted(set(graph)&set(union))
outside = sorted(set(union)-set(graph))
assert len(missing) == 151 and len(available) == 1269 and len(outside) == 3
gaps = dict(version=1,graph_roots=[graph[keyof(9,132,r)] for r in range(2,12)],
            graph_keys=[graph[k] for k in sorted(graph)],
            available_keys=[graph[k] for k in available],
            missing_keys=[graph[k] for k in missing],outside_graph_keys=outside)
(HERE / 'graph-gaps.json').write_text(canonical(gaps))
outside_typed = [dict(object=union[k]['object'],page=union[k]['page'],
                      s=union[k]['center'][0],t=union[k]['center'][1]) for k in outside]
envelope = dict(version=1,requested=gaps['graph_keys'],available=gaps['available_keys'],
                missing=gaps['missing_keys'],outside=outside_typed)
code = lambda k:(k['page']*256+max(k['s']+64,0))*256+max(k['t'],0)
envelope['familyKeys'] = [e['key'] for e in family['entries']]
for name,keys in [('cachedFamily',envelope['familyKeys']),('cachedRequest',envelope['requested']),
                  ('cachedPartition',envelope['available']+envelope['missing']),
                  ('cachedSupplied',envelope['available']+envelope['outside'])]:
    envelope[name] = [[code(k),k] for k in keys]
(HERE / 'graph-proof.json').write_text(canonical(envelope))
out = dict(format_version=1, baseline_count=1257, extra_count=15, family_count=1272,
           available_e12_graph_comparisons=1269, unresolved_e12_graph_comparisons=151,
           additional_e12_keys=snapshot['new_comparison_keys'], outside_graph_comparisons=3,
           negative_s_additions=5,
           source_sha256={str(p.relative_to(ROOT)): sha(p) for p in inputs},
           output_sha256={n: sha(HERE / n) for n in ['family.json','extra.json','graph-gaps.json','graph-proof.json']},
           note='Exact appended fixed-coordinate family. Named d2-through-d6 supplied; d7 missing. '
                'GraphCoverage proves the exact imported finite-key partition, including 151 absent keys. '
                'The recursive graph identification is numerically audited; no actual Adams theorem is claimed.')
(HERE / 'manifest.json').write_text(json.dumps(out, indent=2) + '\n')
print('Packaged 1257 + 15 = 1272 comparisons; 151 explicitly listed E12 graph keys remain absent.')
