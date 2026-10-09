"""Independently check every finite comparison and the exact new source rule."""
from pathlib import Path
import hashlib
import itertools
import json

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
basepath=ROOT/'Fact713NextSourceSearch/refined.json'
old=json.loads(basepath.read_text())
report=json.loads((HERE/'refined.json').read_text())
baseline=old['comparisons']|old['successor_closure']
cache=report['comparisons']|report['successor_closure']
assert len(cache)==1272 and len(report['comparisons'])==1269
assert report['unresolved_comparisons']==151
assert all(cache[k]==b for k,b in baseline.items())
assert set(cache)-set(baseline)==set(report['new_comparison_keys'])
vectors=lambda n:list(itertools.product([0,1],repeat=n))
def ev(a,m,n,x):
    assert len(a)==m*n and len(x)==n
    return tuple(sum(a[i*n+j]*x[j] for j in range(n))%2 for i in range(m))
all_vectors=all_pairs=adjacent=dimensions=0
for key,block in cache.items():
    w=block['wire'];n,m,k,h=[w[x] for x in ['n','m','k','h']]
    A=lambda x:ev(w['outgoing'],k,m,x)
    B=lambda x:ev(w['incoming'],m,n,x)
    I=lambda x:ev(w['inclusion'],m,h,x)
    P=lambda x:ev(w['projection'],h,m,x)
    U=lambda x:ev(w['up'],n,m,x)
    D=lambda x:ev(w['down'],m,k,x)
    boundaries={B(x) for x in vectors(n)}
    cycles=[x for x in vectors(m) if A(x)==(0,)*k]
    assert all(A(x)==(0,)*k and P(x)==(0,)*h for x in boundaries)
    assert all(A(I(x))==(0,)*k and P(I(x))==x for x in vectors(h))
    for x in vectors(m):
        assert tuple(a^b^c for a,b,c in zip(I(P(x)),B(U(x)),D(A(x))))==x
        all_vectors+=1
    for x,y in itertools.product(cycles,repeat=2):
        assert (P(x)==P(y))==(tuple(a^b for a,b in zip(x,y)) in boundaries)
        all_pairs+=1
    s,t=block['center'];r=block['page']
    if r>2:
        for dim,a,b in [(n,s-r,t-r+1),(m,s,t),(k,s+r,t+r-1)]:
            assert cache[f'S0:{a},{b}:d{r-1}']['wire']['h']==dim
            dimensions+=1
    source=f'S0:{s-r},{t-r+1}:d{r}'
    if source in cache:
        assert cache[source]['wire']['outgoing']==w['incoming']
        assert cache[source]['wire']['m']==n and cache[source]['wire']['k']==m
        adjacent+=1
    if key in report['new_comparison_keys']:
        path=HERE/'wires'/('b_'+key.replace(':','_').replace(',','_').replace('-','neg')+'.json')
        assert json.loads(path.read_text())==w
zero=cache['S0:11,133:d3']
assert zero['wire']['outgoing']==[False,False]
assert zero['uses'][1]['row']==[2622,'1',None,9000]
assert zero['uses'][1]['kind']=='conditional_row2622_dc2h6_naturality'
assert zero['uses'][1]['theorem']=='Fact713DC2h6Source.Actual.actual_row2622_d3_zero'
assert zero['uses'][0]['row']==[2621,'0,1','0',3]
assert zero['uses'][0]['kind']=='stored_zero_prefix_or_boundary'

v=(1,1);trajectory=[]
for page in range(2,7):
    w=cache[f'S0:9,132:d{page}']['wire']
    assert ev(w['outgoing'],w['k'],w['m'],v)==(0,)*w['k']
    boundary={ev(w['incoming'],w['m'],w['n'],x) for x in vectors(w['n'])}
    assert v not in boundary
    following=ev(w['projection'],w['h'],w['m'],v)
    trajectory.append(dict(page=page,vector=v,next=following))
    v=following
assert v==(1,)
assert [(x['key'],x['status']) for x in report['roots']][:5]==[(f'S0:9,132:d{q}','finite_comparison_available') for q in range(2,7)]
assert all(x['status']=='unresolved' for x in report['roots'][5:])
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
assert report['input_sha256']['Fact713NextSourceSearch/refined.json']==sha(basepath)
out=dict(status='complete_finite_overlay_audit_passed',baseline_preserved=1257,all_comparisons=1272,
    e12_available=1269,e12_unresolved=151,additional_blocks=15,
    all_input_vectors=all_vectors,all_cycle_pairs=all_pairs,adjacent_differentials=adjacent,
    predecessor_dimensions=dimensions,named_finite_trajectory=trajectory,raw_unknown_preserved=True,
    input_sha256={str(p.relative_to(ROOT)):sha(p) for p in [basepath,HERE/'refined.json',Path(__file__),HERE/'Overlay.lean']},
    scope='Finite named E7 prefix. Actual prefix/differential/product meanings remain caller proofs, including inherited unknown zero-prefix interpretations. No actual E7/E12 claim.')
(HERE/'overlay-audit.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps({k:v for k,v in out.items() if k!='input_sha256'},indent=2))
