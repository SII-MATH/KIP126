"""Independent root replay of full tensors and quotient/input bindings."""
import collections
import hashlib
import itertools
import json
from pathlib import Path
import sqlite3

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
load=lambda p:json.loads(p.read_text())
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
frozen=load(HERE/'frozen-source.json')
for name,digest in frozen['files'].items():assert sha(ROOT/name)==digest,name
data=load(HERE/'source-products.json')
c=sqlite3.connect('file:'+str(ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db')+'?mode=ro',uri=True)
gen=dict((i,(s,t)) for i,s,t in c.execute('select id,s,t from S0_AdamsE2_generators'))
counts=collections.Counter()


def mon(raw):
    values=list(map(int,raw.split(','))) if raw else []
    assert len(values)%2==0
    return tuple(sorted(g for g,n in zip(values[::2],values[1::2]) for _ in range(n)))


def parity(items):return {x for x,n in collections.Counter(items).items() if n%2}
def mul(a,b):return parity(tuple(sorted(x+y)) for x in a for y in b)
def degree(m):return tuple(sum(gen[g][i] for g in m) for i in [0,1])


def columns(bits,m,n):
    assert len(bits)==m*n and all(type(v) is bool for v in bits)
    return [sum(int(bits[i*n+j])<<i for i in range(m)) for j in range(n)]


def apply(cols,x):
    assert x>>len(cols)==0
    value=0
    for j,col in enumerate(cols):
        if x>>j&1:value^=col
    return value


def ev(w,field,rows,cols,x):return apply(columns(w[field],rows,cols),x)
def proj(w,x):return ev(w,'projection',w['h'],w['m'],x)
def out(w,x):return ev(w,'outgoing',w['k'],w['m'],x)
def boundaries(w):return {ev(w,'incoming',w['m'],w['n'],x) for x in range(1<<w['n'])}


families=[]
for b in [0,1]:
    families.append({tuple(e['key'][k] for k in ['object','page','s','t']):e['wire']
                     for e in load(ROOT/f'Fact713SquareContinuation/zero_b{b}-family.json')['entries']})
for name,block in data['comparisons'].items():
    w=block['wire'];r=block['page'];s,t=block['degree']
    assert w==load(HERE/'wire'/f'{name}.json')
    key=('S0',r,s,t)
    if key in families[0]:assert w==families[0][key]==families[1][key]
    cycles={x for x in range(1<<w['m']) if out(w,x)==0}
    boundary=boundaries(w)
    assert boundary<=cycles
    for y in range(1<<w['h']):
        value=ev(w,'inclusion',w['m'],w['h'],y)
        assert value in cycles and proj(w,value)==y
    assert all(proj(w,x)==0 for x in boundary)
    for x in range(1<<w['m']):
        assert ev(w,'inclusion',w['m'],w['h'],proj(w,x)) ^ ev(w,'incoming',w['m'],w['n'],ev(w,'up',w['n'],w['m'],x)) ^ ev(w,'down',w['m'],w['k'],out(w,x)) == x
    for x,y in itertools.product(cycles,repeat=2):
        assert (proj(w,x)==proj(w,y))==(x^y in boundary)
        counts['quotient_pairs']+=1
    if r==2:
        for field,ss,tt,dim,n in [('outgoing',s,t,w['k'],w['m']),('incoming',s-2,t-1,w['m'],w['n'])]:
            rows=c.execute('select id,d2 from S0_AdamsE2_basis where s=? and t=? order by id',(ss,tt)).fetchall()
            assert len(rows)==n
            result=[]
            for _,raw in rows:
                assert raw is not None
                ids=list(map(int,raw.split(','))) if raw else []
                assert ids==sorted(set(ids)) and all(0<=i<dim for i in ids)
                result.append(sum(1<<i for i in ids))
            assert result==columns(w[field],dim,n)
            counts['SQL_d2_columns']+=n
    counts['complete_comparisons']+=1

for product in data['products'].values():
    bases=[]
    for role in ['left','right','target']:
        rows=c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',product[role+'_degree']).fetchall()
        assert [list(x) for x in rows]==product[role+'_basis']
        bases.append(rows)
    a,b,d=bases
    assert len(product['columns'])==len(a)*len(b)
    assert {(q['left'],q['right']) for q in product['columns']}==set(itertools.product(range(len(a)),range(len(b))))
    for column in product['columns']:
        w=column['bundle'];assert w==load(HERE/'wire'/(column['name']+'.json'))
        assert parity(map(tuple,w['input']))==mul({mon(a[column['left']][1])},{mon(b[column['right']][1])})
        for relation,origin in zip(w['relations'],column['relations'],strict=True):
            raw,s,t=c.execute('select rel,s,t from S0_AdamsE2_relations where rowid=?',(origin['rowid'],)).fetchone()
            assert raw==origin['raw'] and [s,t]==origin['degree']
            assert list(map(list,map(mon,raw.split(';'))))==relation
            assert all(degree(tuple(m))==(s,t) for m in relation)
            counts['homogeneous_relation_occurrences']+=1
        equation=set()
        for term in w['terms']:
            equation.symmetric_difference_update(mul(map(tuple,term['multiplier']),list(map(tuple,w['relations'][term['relation']]))))
        assert equation==parity(map(tuple,w['input']+w['output']))
        assert parity(map(tuple,w['output']))=={mon(d[i][1]) for i in column['coordinates']}
        counts['product_columns']+=1

wire=lambda name:data['comparisons'][name]['wire']
tensor={2:lambda x,y:4 if x and y&1 else 0,3:lambda x,y:4 if x and y&1 else 0,
        4:lambda x,y:4 if x and y else 0,5:lambda x,y:1 if x and y else 0}
for r in [2,3,4]:
    a,b,d=[wire(name+str(r)) for name in ['left','right','product']]
    for x,y in itertools.product(range(1<<a['m']),range(1<<b['m'])):
        assert proj(d,tensor[r](x,y))==tensor[r+1](proj(a,x),proj(b,y))
        if out(a,x)==out(b,y)==0:assert out(d,tensor[r](x,y))==0
        counts['full_tensor_descent_pairs']+=1
assert 4^16 in boundaries(wire('product2'))
v=16;right=3
for r in [2,3,4]:
    for name,value in [('product',v),('right',right)]:
        w=wire(name+str(r));assert out(w,value)==0 and value not in boundaries(w)
    v=proj(wire('product'+str(r)),v);right=proj(wire('right'+str(r)),right)
assert v==right==1 and tensor[5](1,right)==v
for raw in data['empty_basis_groups']:
    s,t=map(int,raw.split(','));assert not c.execute('select id from S0_AdamsE2_basis where s=? and t=?',(s,t)).fetchall()
assert c.execute('select mon,s,t from S0_AdamsE2_basis where id=2694').fetchone()==('0,2,367,1',10,134)
for name,digest in frozen['files'].items():assert sha(ROOT/name)==digest,name
report=dict(status='passed',findings=[],counts=dict(counts),frozen_files=len(frozen['files']),
    modules=len(frozen['modules']),standard_axiom_reports=frozen['axiom_reports'],
    semantic_review=['h1 d3/d4 derived by full low product detector, not NULL prefix.',
      'Correction kills every possible d5 h1 through the complete E2 annihilator.',
      'Actual products descend through each preceding full quotient and bind the exact initial input.',
      'Right entire d5 prefix and actual coordinate/product/quotient meanings remain explicit.',
      'Same-input E6 trace and E5 nonzero only; E6 nonzero is a separate obligation.'],
    script_sha256=sha(Path(__file__)))
(HERE/'independent-review.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report,indent=2))
