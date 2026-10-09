"""Independent all-pairs coherence audit of both complete finite families."""
import hashlib
import itertools
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
load=lambda p:json.loads(p.read_text())
base=load(ROOT/'Fact713DC2h6ComparisonFamily/family.json')['entries']
key=lambda e:tuple(e['key'][k] for k in ['object','page','s','t'])
graph=load(ROOT/'Fact713E12Search/search.json')['graph']
reports=[]
families=[]
for label,filename in [('zero','zero-family.json'),('residual_rebased','residual-family.json')]:
    family=load(HERE/filename)['entries'];families.append(family)
    assert family[:len(base)]==base
    keys={key(e) for e in family};assert len(keys)==len(family)
    snapshot=load(HERE/'branches'/f'{label}.json')
    additions={f'{o}:{s},{t}:d{r}':e['wire'] for e in family[len(base):] for o,r,s,t in [key(e)]}
    assert additions=={k:b['wire'] for k,b in snapshot['new_comparisons'].items()}
    for block in snapshot['new_comparisons'].values():
        assert 'S0:20,140:d3' not in block['predecessors']
        assert all(not(u['source']==[20,140] and u['page']>=4) for u in block['uses'])
    adjacent=consecutive=0
    for a,b in itertools.product(family,repeat=2):
        obj,r,s,t=key(a);aw,bw=a['wire'],b['wire']
        if key(b)==(obj,r,s+r,t+r-1):
            assert aw['k']==bw['m'] and aw['m']==bw['n'] and aw['outgoing']==bw['incoming']
            adjacent+=1
        if key(b)==(obj,r+1,s,t):
            assert aw['h']==bw['m'];consecutive+=1
    assert all(('S0',r,9,132) in keys for r in range(2,10)) and ('S0',10,9,132) not in keys
    strings={f'{o}:{s},{t}:d{r}' for o,r,s,t in keys}
    assert len(strings&set(graph))==snapshot['graph_available']
    reports.append(dict(branch=label,comparisons=len(family),ordered_pairs=len(family)**2,
        adjacent=adjacent,consecutive=consecutive,graph_available=len(strings&set(graph)),
        graph_missing=len(set(graph)-strings),baseline_preserved=len(base),finite_named_page=10))
lookup=lambda family,r:next(e['wire'] for e in family if key(e)==('S0',r,9,132))
assert all(lookup(families[0],r)==lookup(families[1],r) for r in range(2,10))
assert lookup(families[0],9)==dict(version=1,k=0,m=1,n=0,h=1,outgoing=[],incoming=[],
    inclusion=[True],projection=[True],up=[],down=[])
out=dict(status='both_complete_families_and_common_conditional_finite_E10_audited',branches=reports,
    common_named_wires_d2_through_d9=True,unknown_row2994_preserved=True,
    input_sha256={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in
        [Path(__file__),HERE/'zero-family.json',HERE/'residual-family.json']},
    limitation='Finite branches share a named trajectory. Actual E10 still requires complete actual meanings.')
(HERE/'family-audit.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(reports,indent=2))
