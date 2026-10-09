"""Root independent SQL, bitset homology and whole-map descent review."""
from collections import Counter
import hashlib
import itertools
import json
from pathlib import Path
import sqlite3

HERE=Path(__file__).resolve().parent;ROOT=HERE.parent
load=lambda p:json.loads(p.read_text())
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
data=load(HERE/'map-provenance.json');counts=Counter()
db={o:sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/{o}_AdamsSS_t{t}.db?mode=ro',uri=True)
    for o,t in [('S0',261),('Ceta',200)]}


def cols(bits,m,n):
    assert len(bits)==m*n
    return [sum(int(bits[i*n+j])<<i for i in range(m)) for j in range(n)]


def ev(a,x):
    y=0
    for j,b in enumerate(a):
        if x>>j&1:y^=b
    return y


def rawbits(raw,n):
    assert raw is not None
    ids=list(map(int,raw.split(','))) if raw else []
    assert ids==sorted(set(ids)) and all(0<=i<n for i in ids)
    return sum(1<<i for i in ids)


for name,b in data['comparisons'].items():
    obj=b['object'];s,t=b['degree'];w=b['wire'];k,m,n,h=[w[x] for x in ['k','m','n','h']]
    for degree,rows in zip([(s-2,t-1),(s,t),(s+2,t+1)],b['rows']):
        actual=[dict(id=i,mon=mon,d2=d2) for i,mon,d2 in db[obj].execute(
            f'select id,mon,d2 from {obj}_AdamsE2_basis where s=? and t=? order by id',degree)]
        assert actual==rows;counts['sql_basis_rows']+=len(rows)
    a,inc,u,p,up,down=[cols(w[f],r,c) for f,r,c in [('outgoing',k,m),('incoming',m,n),
        ('inclusion',m,h),('projection',h,m),('up',n,m),('down',m,k)]]
    assert a==[rawbits(x['d2'],k) for x in b['rows'][1]]
    assert inc==[rawbits(x['d2'],m) for x in b['rows'][0]]
    boundaries={ev(inc,x) for x in range(1<<n)};cycles=[x for x in range(1<<m) if ev(a,x)==0]
    assert boundaries<=set(cycles)
    for j,x in enumerate(u):assert ev(a,x)==0 and ev(p,x)==1<<j
    for j in range(m):assert ev(u,p[j])^ev(inc,up[j])^ev(down,a[j])==1<<j
    for x,y in itertools.product(cycles,repeat=2):assert (ev(p,x)==ev(p,y))==((x^y) in boundaries)
    counts['quotient_pairs']+=len(cycles)**2;counts['comparisons']+=1

matrices={x['name']:x for x in data['matrices']}
for name,mapping in data['E3_maps'].items():
    b=matrices[name];a=b['wire']['algebra'];s,t=b['source_degree'];ts,tt=b['target_degree']
    outobj='S0' if b['kind']=='top' else 'Ceta'
    source=data['comparisons'][f'Ceta_{s}_{t}']['wire']
    target=data['comparisons'][f'{outobj}_{ts}_{tt}']['wire']
    f=cols(a['entries'],a['rows'],a['cols']);u=cols(source['inclusion'],source['m'],source['h'])
    p=cols(target['projection'],target['h'],target['m'])
    nextmap=cols(mapping['entries'],mapping['target'],mapping['source'])
    assert nextmap==[ev(p,ev(f,x)) for x in u]
    for x in range(1<<source['m']):
        if ev(cols(source['outgoing'],source['k'],source['m']),x)==0:
            assert ev(p,ev(f,x))==ev(nextmap,ev(cols(source['projection'],source['h'],source['m']),x))
            counts['whole_cycle_map_equations']+=1
assert data['E3_maps']['left0_5_38']['entries']==[0,0,0,0]
assert data['E3_maps']['left1_5_38']['entries']==[0,0,0,0]
assert data['E3_maps']['right_8_40']['entries']==[0,0]
assert data['E3_maps']['top_13_139']['entries']==[0,1,0]

frozen=load(HERE/'frozen-source.json')
for name,digest in frozen['files'].items():assert sha(ROOT/name)==digest,name
for record in frozen['modules']:assert record['observed_exit_code']==0
out=dict(status='passed',counts=dict(counts),modules=len(frozen['modules']),
         frozen_files=len(frozen['files']),standard_axiom_reports=frozen['axiom_reports'],
         review_source_sha256=sha(Path(__file__)),
         scope='Whole E3 Leibniz terms vanish; actual quotient transition derives same representative '
               'image at E4, then empty actual Ceta target and naturality give whole sphere d4 zero. '
               'Full actual E2 meanings, Ceta incoming d3 and product/map interpretations remain premises.')
(HERE/'independent-review.json').write_text(json.dumps(out,indent=2)+'\n')
print(json.dumps(out,indent=2))
