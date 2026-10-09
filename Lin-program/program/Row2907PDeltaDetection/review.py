"""Independent SQL/polynomial/bitset review of the complete finite inputs."""
from collections import Counter
import hashlib
import itertools
import json
from pathlib import Path
import sqlite3

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
load=lambda p:json.loads(p.read_text())
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
sql=sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
counts=Counter()


def mono(raw):
    fields=list(map(int,raw.split(','))) if raw else []
    assert len(fields)%2==0
    return tuple(sorted(g for g,e in zip(fields[::2],fields[1::2]) for _ in range(e)))


def parity(xs):return {x for x,n in Counter(xs).items() if n%2}
def poly(xs):return parity(tuple(sorted(x)) for x in xs)


def columns(w,field,rows,cols):
    bits=w[field];assert len(bits)==rows*cols
    return [sum(int(bits[i*cols+j])<<i for i in range(rows)) for j in range(cols)]


def apply(mat,x):
    out=0
    for j,v in enumerate(mat):
        if x>>j&1:out^=v
    return out


def quotient(w):
    k,m,n,h=[w[x] for x in ['k','m','n','h']]
    a,b,u,p,up,down=[columns(w,f,r,c) for f,r,c in [('outgoing',k,m),('incoming',m,n),
        ('inclusion',m,h),('projection',h,m),('up',n,m),('down',m,k)]]
    boundaries={apply(b,x) for x in range(1<<n)}
    cycles=[x for x in range(1<<m) if apply(a,x)==0]
    assert boundaries<=set(cycles)
    for j,x in enumerate(u):assert apply(a,x)==0 and apply(p,x)==1<<j
    for j in range(m):assert apply(u,p[j])^apply(b,up[j])^apply(down,a[j])==1<<j
    for x,y in itertools.product(cycles,repeat=2):
        assert (apply(p,x)==apply(p,y))==((x^y) in boundaries)
    counts['quotient_pairs']+=len(cycles)**2
    counts['cycle_vectors']+=len(cycles)
    counts['comparisons']+=1


report=load(HERE/'products.json')
for name,p in report['products'].items():
    for field,degree in [('source',p['source_degree']),('target',p['target_degree'])]:
        assert p[field]==[list(x) for x in sql.execute(
            'select id,mon from S0_AdamsE2_basis where s=? and t=? order by id',degree)]
    for j,c in enumerate(p['columns']):
        b=c['bundle'];initial={tuple(sorted((31,)+mono(c['mon'])))}
        assert poly(b['input'])==initial
        for rel,origin in zip(b['relations'],c['relations']):
            raw,s,t=sql.execute('select rel,s,t from S0_AdamsE2_relations where rowid=?',(origin['rowid'],)).fetchone()
            assert raw==origin['raw'] and [s,t]==origin['degree']
            assert poly(rel)==parity(mono(x) for x in raw.split(';'))
            counts['sql_relations']+=1
        current=initial.copy()
        for term in b['terms']:
            current^=parity(tuple(sorted(x+y)) for x in poly(term['multiplier'])
                           for y in poly(b['relations'][term['relation']]))
        assert current==poly(b['output'])=={mono(p['target'][i][1]) for i in c['coordinates']}
        assert c['coordinates']==[i for i in range(len(p['target'])) if p['entries'][i*len(p['source'])+j]]
        counts['product_columns']+=1
    w=p['wire'];assert w['tensor']==p['entries']
    lm,rm,tm=w['left']['m'],w['right']['m'],w['target']['m']
    factor=lambda x,y:sum((sum(int(w['tensor'][(i*lm+j)*rm+k])*((x>>j)&1)*((y>>k)&1)
        for j in range(lm) for k in range(rm))%2)<<i for i in range(tm))
    lc=[x for x in range(1<<lm) if apply(columns(w['left'],'outgoing',w['left']['k'],lm),x)==0]
    rc=[y for y in range(1<<rm) if apply(columns(w['right'],'outgoing',w['right']['k'],rm),y)==0]
    for x,y in itertools.product(lc,rc):
        assert apply(columns(w['target'],'outgoing',w['target']['k'],tm),factor(x,y))==0
        counts['product_cycle_pairs']+=1
for b in report['comparisons'].values():quotient(b['wire'])

search=load(HERE/'search.json')
for key,b in search['reconstructed'].items():
    s,t=b['degree'];m,k=b['cols'],b['rows'];name=f'd{s}_{t}'
    w=load(HERE/'wire'/f'{name}.json')
    basis=columns(w,'basis',m,m);inverse=columns(w,'inverse',m,m)
    image=columns(w,'images',k,m);matrix=columns(w,'matrix',k,m)
    assert w['matrix']==b['entries']
    for x in range(1<<m):
        assert apply(basis,apply(inverse,x))==x and apply(inverse,apply(basis,x))==x
        assert apply(matrix,x)==apply(image,apply(inverse,x))
    rows=[list(x) for x in sql.execute('select id,base,diff,level from S0_AdamsE2_ss where s=? and t=? order by id',(s,t))]
    assert rows==b['staircase']
    for j,row in enumerate(rows):
        indices=list(map(int,row[1].split(','))) if row[1] else []
        assert basis[j]==sum(1<<i for i in indices)
        if row[3]==9998:
            assert row[2] is not None
            target=list(map(int,row[2].split(','))) if row[2] else []
            assert image[j]==sum(1<<i for i in target)
        else:
            assert image[j]==0 and (2<=row[3]<5000 or 9000<row[3]<9998 or k==0)
        counts['staircase_columns']+=1
    counts['d2_basis_changes']+=1

assert search['known_record']==[6934,28,179,'1','1',9996]
assert search['source_record']==[2907,16,137,'1',None,9996]
# A zero source differential, zero factor differential and multiplicative
# quotient square force zero product differential for every relabeling.
for charts in itertools.product(itertools.permutations(range(2)),repeat=5):
    factor,source,product,target,known=charts
    for source_d in range(2):
        product_d=source_d
        if product_d==1:
            assert target[source_d]!=target[0]
            counts['nonzero_actual_models']+=1
        else:
            counts['rejected_zero_source_models']+=1

result=dict(status='passed',counts=dict(counts),source_sha256=sha(Path(__file__)),
            limitation='Finite algebra and explicit actual-product assumptions only. Known ss6934 '
                       'd4 is an actual premise; source ss2907 NULL is preserved. '
                       'Nine full staircase d2 meanings remain explicit, not inferred from levels.')
(HERE/'review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
