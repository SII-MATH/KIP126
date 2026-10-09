"""Independently verify both known successor columns and overlay comparisons."""
import hashlib
import itertools
import json
from pathlib import Path
import sqlite3

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
base=json.loads((HERE/'search.json').read_text())
report=json.loads((HERE/'successor-search.json').read_text())
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
assert report['baseline_search_sha256']==sha(HERE/'search.json')
cache=report['comparisons']
assert all(cache[k]==v for k,v in base['comparisons'].items())
vecs=lambda n:list(itertools.product([0,1],repeat=n))
def app(a,m,n,x):return tuple(sum(int(a[i*n+j])*x[j] for j in range(n))%2 for i in range(m))
def project(s,t,r,x):
    for q in range(2,r):
        w=cache[f'S0:{s},{t}:d{q}']['wire'];x=app(w['projection'],w['h'],w['m'],x)
    return x
db=ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
c=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
evidence=[]
for row,s,t,r,target in [(3242,20,141,4,(24,144)),(3551,24,145,3,(27,147))]:
    raw=list(c.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=?',(row,)).fetchone())
    assert raw[:5]==[row,s,t,'0','1' if row==3242 else '0,2']
    assert raw[5]==10000-r
    target_rows=[list(x) for x in c.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',target)]
    indices=list(map(int,raw[4].split(',')))
    raw_vector=tuple(int(i in indices) for i in range(len(target_rows)))
    projected=project(*target,r,raw_vector)
    assert projected==(1,0)
    successor=cache[f'S0:{s},{t}:d{r}']['wire']
    assert successor['outgoing']==[True,False] and successor['m']==1 and successor['k']==2
    assert successor['incoming']==[False]
    # Every incoming value satisfying square zero is zero for this full column.
    for x in vecs(1):
        if app(successor['outgoing'],2,1,x)==(0,0):assert x==(0,)
    evidence.append(dict(row=raw,target_e2_rows=target_rows,raw_target_vector=raw_vector,
        projected_target=projected,unknown_incoming_row=2999 if row==3242 else 3386,
        conditions=['actual complete successor column meaning','faithful middle coordinates','actual zero coordinate laws','actual differential square zero']))
c.close()
vectors=pairs=overlaps=0
for k,b in cache.items():
    w=b['wire'];n,m,z,h=(w[x] for x in ['n','m','k','h'])
    A=lambda x:app(w['outgoing'],z,m,x)
    B=lambda x:app(w['incoming'],m,n,x)
    Q=lambda x:app(w['projection'],h,m,x)
    I=lambda x:app(w['inclusion'],m,h,x)
    U=lambda x:app(w['up'],n,m,x)
    D=lambda x:app(w['down'],m,z,x)
    boundaries={B(x) for x in vecs(n)}
    cycles=[x for x in vecs(m) if A(x)==(0,)*z]
    assert all(A(x)==(0,)*z and Q(x)==(0,)*h for x in boundaries)
    assert all(A(I(x))==(0,)*z and Q(I(x))==x for x in vecs(h))
    for x in vecs(m):
        assert tuple(a^b^c for a,b,c in zip(I(Q(x)),B(U(x)),D(A(x))))==x
        vectors+=1
    for x,y in itertools.product(cycles,repeat=2):
        assert (Q(x)==Q(y))==(tuple(a^b for a,b in zip(x,y)) in boundaries)
        pairs+=1
    for p in base['graph'][k]['predecessors']:assert p in cache
    s,t=b['center'];r=b['page'];other=f'S0:{s-r},{t-r+1}:d{r}'
    if other in cache:
        assert cache[other]['wire']['outgoing']==w['incoming']
        overlaps+=1
result=dict(status='successor_conditions_and_complete_finite_overlay_verified',
    preserved_comparisons=len(base['comparisons']),comparisons=len(cache),
    all_input_vectors=vectors,all_cycle_pairs=pairs,adjacent_differential_matches=overlaps,
    successor_sources=evidence,
    meaning='Both raw known events and coordinate interpretations remain external actual premises; this audit checks the finite projections and implications only.',
    input_sha256={str(p.relative_to(ROOT)):sha(p) for p in [HERE/'search.json',HERE/'successor-search.json',Path(__file__),db]})
(HERE/'successor-audit.json').write_text(json.dumps(result,indent=2)+'\n')
print(len(cache),'comparisons',pairs,'cyclepairs;',overlaps,'overlaps;two exact projected successor columns')
