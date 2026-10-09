"""Audit the whole appended family and the retained finite E8 branch."""
import hashlib
import itertools
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda p: json.loads(p.read_text())
base = load(ROOT/'Fact713DC2h6ComparisonFamily/family.json')['entries']
extra = load(HERE/'extra.json')['entries']
family = load(HERE/'family.json')['entries']
assert family == base+extra and len(base)==1272 and len(extra)==12 and len(family)==1284
key = lambda e: tuple(e['key'][k] for k in ['object','page','s','t'])
assert len({key(e) for e in family})==1284
snapshot = load(HERE/'residual-snapshot.json')
for e in extra:
    obj,r,s,t = key(e)
    block=snapshot['new_comparisons'][f'{obj}:{s},{t}:d{r}']
    assert e['wire']==block['wire']
    assert 'S0:20,140:d3' not in block['predecessors']
    assert all(not(u['source']==[20,140] and u['page']>=4) for u in block['uses'])
    assert e['wire']==load(HERE/'wire'/f'b_S0_{s}_{t}_d{r}.json')
adjacent=consecutive=pairs=0
for a,b in itertools.product(family,repeat=2):
    obj,r,s,t=key(a); aw,bw=a['wire'],b['wire'];pairs+=1
    if key(b)==(obj,r,s+r,t+r-1):
        assert aw['k']==bw['m'] and aw['m']==bw['n'] and aw['outgoing']==bw['incoming']
        adjacent+=1
    if key(b)==(obj,r+1,s,t):
        assert aw['h']==bw['m'];consecutive+=1
keys={key(e) for e in family}
assert all(('S0',r,9,132) in keys for r in range(2,8))
assert ('S0',8,9,132) not in keys
graph=load(ROOT/'Fact713E12Search/search.json')['graph']
strings={f'{o}:{s},{t}:d{r}' for o,r,s,t in keys}
assert len(strings&set(graph))==1281 and len(set(graph)-strings)==139
zero=load(HERE/'zero-snapshot.json')
assert len(zero['new_comparisons'])==1
assert load(HERE/'wire/zero_source_d3.json')==zero['new_comparisons']['S0:17,138:d3']['wire']
out=dict(status='complete_branch_family_audit_passed',family_count=1284,baseline_preserved=1272,
    new_count=12,all_ordered_pairs=pairs,adjacent=adjacent,consecutive=consecutive,
    graph_available=1281,graph_missing=139,other_comparisons=3,
    finite_residual_E8=True,finite_zero_E7=True,unconditional_E8=False,
    target3135_later_page_selection_unused=True,
    independent_finite_wire_audit=load(ROOT/'Fact713Row2994Constraint/branches/audit.json'),
    sha256={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in
      [Path(__file__),HERE/'family.json',HERE/'extra.json',HERE/'residual-snapshot.json',HERE/'zero-snapshot.json']})
(HERE/'audit.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps({k:v for k,v in out.items() if k not in ['sha256','independent_finite_wire_audit']},indent=2))
