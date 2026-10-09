"""Reproduce canonical branch families without merging different source matrices."""
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda p: json.loads(p.read_text())
canonical = lambda x: json.dumps(x,sort_keys=True,separators=(',',':'))+'\n'
base = load(ROOT/'Fact713DC2h6ComparisonFamily/family.json')['entries']
zero = load(HERE/'branches/zero.json')['new_comparisons']
residual = load(HERE/'branches/residual_rebased.json')['new_comparisons']
old_residual = load(ROOT/'Fact713Row2994Branches/residual-snapshot.json')['new_comparisons']
assert residual.keys()==old_residual.keys()
assert all(residual[k]['wire']==old_residual[k]['wire'] for k in residual)
extra=[]
(HERE/'wire').mkdir(exist_ok=True)
for key,block in sorted(zero.items()):
    s,t=block['center'];r=block['page']
    (HERE/'wire'/f'b_S0_{s}_{t}_d{r}.json').write_text(canonical(block['wire']))
    extra.append(dict(key=dict(object='S0',page=r,s=s,t=t),wire=block['wire']))
assert len(base)==1272 and len(extra)==11
(HERE/'zero-extra.json').write_text(canonical(dict(version=1,entries=extra)))
(HERE/'zero-family.json').write_text(canonical(dict(version=1,entries=base+extra)))
(HERE/'residual-family.json').write_bytes((ROOT/'Fact713Row2994Branches/family.json').read_bytes())
print('zero 1283 and residual 1284 families; distinct branch snapshots preserved')
