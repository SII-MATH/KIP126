"""Independent complete comparisons, polynomial reductions, and product descent."""
import hashlib
import itertools
import json
from pathlib import Path
import sqlite3

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
report=json.loads((HERE/'provenance.json').read_text())
db=ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
sql=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
meta=dict(sql.execute('SELECT name,value FROM version'))
assert meta==report['metadata']
assert list(sql.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2773').fetchone())==report['raw_row']==[2773,13,135,'1',None,9000]
gens={i:(s,t) for i,s,t in sql.execute('SELECT id,s,t FROM S0_AdamsE2_generators')}
def mon(raw):
    cells=list(map(int,raw.split(','))) if raw else []
    assert len(cells)%2==0
    return tuple(sorted(g for g,e in zip(cells[::2],cells[1::2]) for _ in range(e)))
def degree(m):return [sum(gens[g][i] for g in m) for i in [0,1]]
def ev(a,m,n,x):
    assert len(a)==m*n and len(x)==n
    return tuple(sum(a[i*n+j]*x[j] for j in range(n))%2 for i in range(m))
vectors=lambda n:list(itertools.product([0,1],repeat=n))
comp_vectors=cycle_pairs=product_pairs=boundary_checks=0
for name,b in report['comparisons'].items():
    s,t=b['degree'];w=b['wire']
    assert t<=meta['d2_t_max'] and t+1<=meta['t_max']
    raw=[[dict(id=i,mon=m,d2=d2) for i,m,d2 in sql.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',d)] for d in [(s-2,t-1),(s,t),(s+2,t+1)]]
    assert raw==b['rows'] and [len(g) for g in raw]==[w['n'],w['m'],w['k']]
    assert json.loads((HERE/(name+'.json')).read_text())==w
    assert report['raw_staircase_rows'][name]==[list(x) for x in sql.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(s,t))]
    for field,group,dim in [('incoming',raw[0],w['m']),('outgoing',raw[1],w['k'])]:
        columns=[]
        for row in group:
            assert row['d2'] is not None
            ids=list(map(int,row['d2'].split(','))) if row['d2'] else []
            assert ids==sorted(set(ids)) and all(0<=i<dim for i in ids)
            columns.append(ids)
        assert w[field]==[i in col for i in range(dim) for col in columns]
    n,m,k,h=[w[x] for x in ['n','m','k','h']]
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
        comp_vectors+=1
    for x,y in itertools.product(cycles,repeat=2):
        assert (P(x)==P(y))==(tuple(a^b for a,b in zip(x,y)) in boundaries)
        cycle_pairs+=1

steps=0
for item in report['products']:
    left=mon(item['left_basis']['mon']);right=mon(item['right_basis']['mon'])
    assert degree(left)==item['left_degree'] and degree(right)==item['right_degree']
    b=item['bundle']
    assert json.loads((HERE/(item['name']+str(item['column'])+'.json')).read_text())==b
    cur={tuple(sorted(left+right))}
    assert cur=={tuple(x) for x in b['input']}
    relations=[]
    for p,enc in zip(item['relation_sources'],b['relations'],strict=True):
        raw,s,t=sql.execute('SELECT rel,s,t FROM S0_AdamsE2_relations WHERE rowid=?',(p['rowid'],)).fetchone()
        assert p==dict(rowid=p['rowid'],raw=raw,degree=[s,t])
        terms=[mon(v) for v in raw.split(';')]
        assert terms==[tuple(x) for x in enc] and all(degree(x)==[s,t] for x in terms)
        relations.append(terms)
    for term in b['terms']:
        assert 0<=term['relation']<len(relations)
        for multiplier in term['multiplier']:
            for rel in relations[term['relation']]:
                value=tuple(sorted(tuple(multiplier)+rel))
                assert degree(value)==item['target_degree']
                cur.symmetric_difference_update([value])
        steps+=1
    assert cur=={tuple(x) for x in b['output']}
    expected={mon(item['target_basis'][i]['mon']) for i in item['coordinates']}
    assert cur==expected

for name,left,right,target in [('sourceProduct','eta','right','source'),('leftProduct','leftTarget','right','target'),('rightProduct','eta','rightTarget','target')]:
    w=json.loads((HERE/(name+'.json')).read_text())
    L,R,T=[report['comparisons'][n]['wire'] for n in [left,right,target]]
    assert [w['left'],w['right'],w['target']]==[L,R,T]
    columns=[p['coordinates'] for p in report['products'] if p['name']==name]
    assert w['tensor']==[i in col for i in range(T['m']) for col in columns]
    product=lambda a,b:tuple(sum(w['tensor'][(z*L['m']+i)*R['m']+j]*a[i]*b[j] for i in range(L['m']) for j in range(R['m']))%2 for z in range(T['m']))
    cycle=lambda block:[x for x in vectors(block['m']) if ev(block['outgoing'],block['k'],block['m'],x)==(0,)*block['k']]
    boundary=lambda block:{ev(block['incoming'],block['m'],block['n'],x) for x in vectors(block['n'])}
    tb=boundary(T)
    for a,b in itertools.product(cycle(L),cycle(R)):
        value=product(a,b)
        assert ev(T['outgoing'],T['k'],T['m'],value)==(0,)*T['k']
        if name=='leftProduct':assert value==(0,)*T['m']
        if name=='rightProduct':assert value in tb
        product_pairs+=1
    for a,b in itertools.chain(itertools.product(boundary(L),cycle(R)),itertools.product(cycle(L),boundary(R))):
        assert product(a,b) in tb
        boundary_checks+=1
    if name=='sourceProduct':assert product((1,),(1,0))==(0,1,0)

sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
result=dict(status='independent_complete_finite_product_audit_passed',comparisons=6,
    comparison_vectors=comp_vectors,cycle_pairs=cycle_pairs,product_columns=6,polynomial_reduction_steps=steps,
    cycle_product_pairs=product_pairs,boundary_product_pairs=boundary_checks,
    source_row=report['raw_row'],right_target_e2_dimension=2,right_target_e3_dimension=1,
    complete_factor_e3_dimensions=[1,1],complete_result_target_e3_dimension=1,
    left_term_all_values_zero=True,right_term_all_values_d2_boundary=True,input_sha256={str(p.relative_to(ROOT)):sha(p) for p in
        [Path(__file__),HERE/'provenance.json',db]+sorted(p for p in HERE.glob('*.json') if p.name not in ['audit.json','provenance.json'] and not p.name.endswith('-compile.json'))},
    limitation='Actual quotient, multiplication and class naming meanings remain explicit; raw NULL supplies no d3 prefix.')
(HERE/'audit.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps({k:v for k,v in result.items() if k!='input_sha256'},indent=2))
