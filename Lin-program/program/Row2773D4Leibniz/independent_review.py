"""Independent SQL, polynomial, and full-quotient audit; no producer imports."""
import hashlib
import itertools
import json
import re
import sqlite3
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
provenance=json.loads((HERE/'provenance.json').read_text())
db=ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
assert sha(db)==provenance['input_sha256'][str(db.relative_to(ROOT))]
sql=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
raw_row=list(sql.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2773').fetchone())
assert raw_row==[2773,13,135,'1',None,9000]==provenance['raw_row']
gens={i:(s,t) for i,s,t in sql.execute('SELECT id,s,t FROM S0_AdamsE2_generators')}

def mon(raw):
    pairs=list(map(int,raw.split(','))) if raw else []
    return tuple(sorted(g for g,e in zip(pairs[::2],pairs[1::2]) for _ in range(e)))

def polynomial(raw):
    return {mon(m) for m in raw.split(';')} if raw else set()

def multiply(a,b):
    out=set()
    for x in a:
        for y in b:
            z=tuple(sorted(x+y))
            out.symmetric_difference_update([z])
    return out

def degree(m):return [sum(gens[g][i] for g in m) for i in range(2)]

def vectors(n):return itertools.product([False,True],repeat=n)
def mat(bits,m,n):
    assert len(bits)==m*n
    return [bits[i*n:(i+1)*n] for i in range(m)]
def apply(matrix,v):return tuple(sum(a and b for a,b in zip(row,v))%2==1 for row in matrix)
def add(a,b):return tuple(x!=y for x,y in zip(a,b))
comparisons={};comparisons_count=0
for name,data in provenance['comparisons'].items():
    s,t=data['degree']
    groups=[[dict(id=i,mon=raw,d2=d2) for i,raw,d2 in sql.execute(
        'SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',d)]
        for d in [(s-2,t-1),(s,t),(s+2,t+1)]]
    assert groups==data['rows']
    w=json.loads((HERE/f'{name}.json').read_text());assert w==data['wire']
    n,m,k=map(len,groups);assert (w['n'],w['m'],w['k'])==(n,m,k)
    for rows,dim,field in [(groups[0],m,'incoming'),(groups[1],k,'outgoing')]:
        columns=[]
        for row in rows:
            assert row['d2'] is not None
            support=list(map(int,row['d2'].split(','))) if row['d2'] else []
            assert support==sorted(set(support)) and all(0<=i<dim for i in support)
            columns.append(support)
        assert w[field]==[i in c for i in range(dim) for c in columns]
    d,j,p,i=mat(w['outgoing'],k,m),mat(w['incoming'],m,n),mat(w['projection'],w['h'],m),mat(w['inclusion'],m,w['h'])
    cycles=[v for v in vectors(m) if not any(apply(d,v))]
    images={apply(j,v) for v in vectors(n)}
    assert all(not any(apply(d,v)) for v in images)
    for z in vectors(w['h']):
        assert apply(i,z) in cycles and apply(p,apply(i,z))==z
    for x in cycles:
        assert add(x,apply(i,apply(p,x))) in images
        for y in cycles:
            assert (apply(p,x)==apply(p,y))==(add(x,y) in images)
            comparisons_count+=1
    comparisons[name]=dict(degree=[s,t],dimensions=[n,m,k,w['h']],cycles=len(cycles),images=len(images),
        sql_complete=True,whole_quotient_checked=True)

product_checks=[]
for item in provenance['products']:
    name,j=item['name'],item['column']
    bundle=json.loads((HERE/f'{name}{j}.json').read_text());assert bundle==item['bundle']
    initial=multiply({mon(item['left_basis']['mon'])},{mon(item['right_basis']['mon'])})
    assert initial=={tuple(m) for m in bundle['input']}
    assert all(degree(m)==item['target_degree'] for m in initial)
    for recorded,actual in zip(item['relation_sources'],bundle['relations']):
        raw,rs,rt=sql.execute('SELECT rel,s,t FROM S0_AdamsE2_relations WHERE rowid=?',(recorded['rowid'],)).fetchone()
        assert raw==recorded['raw'] and [rs,rt]==recorded['degree']
        assert polynomial(raw)=={tuple(m) for m in actual}
    current=set(initial)
    for term in bundle['terms']:
        current.symmetric_difference_update(multiply({tuple(m) for m in bundle['relations'][term['relation']]},
            {tuple(m) for m in term['multiplier']}))
    assert current=={tuple(m) for m in bundle['output']}
    target=[mon(r['mon']) for r in item['target_basis']]
    assert item['coordinates']==[i for i,m in enumerate(target) if m in current]
    wire=json.loads((HERE/f'{name}.json').read_text())
    assert [wire['tensor'][i*2+j] for i in range(len(target))]==[i in item['coordinates'] for i in range(len(target))]
    product_checks.append(dict(name=name,column=j,relations=[r['rowid'] for r in item['relation_sources']],coordinates=item['coordinates']))

left=json.loads((HERE/'leftProduct.json').read_text())
assert left['left']==json.loads((HERE/'leftTarget.json').read_text())
assert left['right']==json.loads((HERE/'right.json').read_text())
assert left['target']==json.loads((HERE/'target.json').read_text())
assert not any(left['tensor'])
all_left_products=sum(1 for a in vectors(1) for b in vectors(2))
assert all_left_products==8
right=json.loads((HERE/'rightProduct.json').read_text())
assert right['left']==json.loads((HERE/'eta.json').read_text())
assert right['right']==json.loads((HERE/'rightTarget.json').read_text())
assert right['target']==json.loads((HERE/'target.json').read_text())
tw=right['target'];incoming=mat(tw['incoming'],tw['m'],tw['n'])
images={apply(incoming,x) for x in vectors(tw['n'])}
right_pairs=0
for a in vectors(1):
    for b in vectors(2):
        product=tuple(a[0] and (sum(right['tensor'][i*2+j] and b[j] for j in range(2))%2==1) for i in range(4))
        assert product in images
        witness=tuple(a[0] and b[0] if i==0 else False for i in range(tw['n']))
        assert apply(incoming,witness)==product
        right_pairs+=1
assert right_pairs==8 and right['tensor']==[False,False,False,False,False,False,True,False]
raw_boundary=list(sql.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2993').fetchone())
assert raw_boundary==[2993,17,138,'3','0',2]
assert provenance['comparisons']['target']['rows'][1][3]['id']==2996
assert comparisons['rightTarget']['dimensions']==[1,2,2,1]
old=json.loads((ROOT/'Row2773Leibniz/source.json').read_text())
staircase=json.loads((ROOT/'Fact713ComparisonBatches/Batch06.json').read_text())['entries'][30]
assert staircase['key']==dict(object='S0',page=2,s=13,t=135)
staircase=staircase['wire']
assert all(old[k]==staircase[k] for k in ['k','m','n','h','outgoing','incoming'])
lp,li=mat(old['projection'],2,3),mat(old['inclusion'],3,2)
rp,ri=mat(staircase['projection'],2,3),mat(staircase['inclusion'],3,2)
for v in vectors(2):
    assert apply(rp,apply(li,v))==(v[1],v[0])
    assert apply(lp,apply(ri,v))==(v[1],v[0])
for v in vectors(3):
    if not any(apply(mat(old['outgoing'],old['k'],3),v)):
        assert apply(rp,apply(li,apply(lp,v)))==apply(rp,v)
assert apply(lp,(False,True,False))==(False,True)
assert apply(rp,(False,True,False))==(True,False)
next_wire=json.loads((ROOT/'Fact713Row2773Refinement/wires/b_S0_13_135_d3.json').read_text())
assert apply(mat(next_wire['projection'],1,2),(True,False))==(True,)
modules=['Data','Basic','Semantics','Descent','Actual','CoordinateBridge']
compiled={};reports=[]
for name in modules:
    record=json.loads((HERE/f'{name}-compile.json').read_text())
    source=HERE/f'{name}.lean';log=HERE/f'{name}.log'
    assert record['observed_exit_code']==0 and record['source_sha256']==sha(source)
    assert record['log_sha256']==sha(log) and 'sorryAx' not in log.read_text()
    assert not re.search(r'\b(sorry|admit|axiom|native_decide)\b',source.read_text())
    reports += [line for line in log.read_text().splitlines() if line.startswith("'Row2773D4Leibniz.")]
    compiled[name]=record
report=dict(status='no_correctness_findings',raw_row=raw_row,comparisons=comparisons,
    quotient_pair_checks=comparisons_count,products=product_checks,
    whole_left_cartesian_products=all_left_products,whole_right_boundary_products=right_pairs,raw_boundary=raw_boundary,
    whole_source_coordinate_swap=True,named_staircase3=[1,0],named_actual_next_coordinate=[1],
    compiled=compiled,axiom_reports=len(reports),
    source_sha256={p.name:sha(p) for p in HERE.glob('*.lean')},database_sha256=sha(db),
    limitation='All actual quotient/product meanings are explicit mathematical premises; SQL provenance is not itself an Adams realization.')
(HERE/'independent-review.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(dict(status=report['status'],modules=modules,comparisons=6,products=6,
    quotient_pair_checks=comparisons_count,whole_left_cartesian_products=all_left_products,whole_right_boundary_products=right_pairs,axiom_reports=len(reports)),indent=2))
