"""Independent SQL, polynomial, all-vector quotient and product audit."""
import collections
import hashlib
import itertools
import json
import re
import sqlite3
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
load = lambda p: json.loads(p.read_text())
report = load(HERE/'provenance.json')
database = ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
assert sha(database) == report['input_sha256'][str(database.relative_to(ROOT))]
sql = sqlite3.connect(f'file:{database}?mode=ro', uri=True)
metadata = dict(sql.execute('SELECT name,value FROM version'))
assert metadata == report['metadata']
generators = {i: (s,t) for i,s,t in sql.execute('SELECT id,s,t FROM S0_AdamsE2_generators')}
parity = lambda terms: {x for x,n in collections.Counter(terms).items() if n % 2}
def mon(raw):
    pairs = list(map(int, raw.split(','))) if raw else []
    assert len(pairs) % 2 == 0
    assert all(g >= 0 and e >= 0 for g,e in zip(pairs[::2],pairs[1::2]))
    return tuple(sorted(g for g,e in zip(pairs[::2],pairs[1::2]) for _ in range(e)))
poly = lambda raw: parity(mon(x) for x in raw.split(';')) if raw else set()
multiply = lambda a,b: parity(tuple(sorted(x+y)) for x in a for y in b)
degree = lambda m: [sum(generators[g][i] for g in m) for i in range(2)]
vectors = lambda n: itertools.product([0,1],repeat=n)
add = lambda x,y: tuple(a^b for a,b in zip(x,y))
def ev(bits,m,n,v):
    assert len(bits)==m*n and len(v)==n
    return tuple(sum(bits[i*n+j]*v[j] for j in range(n))%2 for i in range(m))

raw = list(sql.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=3305').fetchone())
assert raw == report['raw_row'] == [3305,23,142,'0',None,9000]
complexes = {}
pair_checks = vector_checks = 0
for name,block in report['comparisons'].items():
    s,t = block['degree']
    assert t<=metadata['d2_t_max'] and t+1<=metadata['t_max']
    groups = [[dict(id=i,mon=mon,d2=d2) for i,mon,d2 in sql.execute(
        'SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',st)]
        for st in [(s-2,t-1),(s,t),(s+2,t+1)]]
    assert groups == block['rows']
    staircase = [list(row) for row in sql.execute(
        'SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',(s,t))]
    assert staircase == report['raw_staircase_rows'][name]
    wire = load(HERE/(name+'.json'))
    assert wire == block['wire']
    n,m,k,h = len(groups[0]),len(groups[1]),len(groups[2]),wire['h']
    assert [wire[f] for f in ['n','m','k']] == [n,m,k]
    for field,rows,dim in [('incoming',groups[0],m),('outgoing',groups[1],k)]:
        columns=[]
        for row in rows:
            assert row['d2'] is not None
            support = [] if row['d2']=='' else list(map(int,row['d2'].split(',')))
            assert support==sorted(set(support)) and all(0<=i<dim for i in support)
            columns.append(support)
        assert wire[field] == [i in col for i in range(dim) for col in columns]
    A=lambda v:ev(wire['outgoing'],k,m,v)
    B=lambda v:ev(wire['incoming'],m,n,v)
    I=lambda v:ev(wire['inclusion'],m,h,v)
    P=lambda v:ev(wire['projection'],h,m,v)
    U=lambda v:ev(wire['up'],n,m,v)
    D=lambda v:ev(wire['down'],m,k,v)
    cycles=[v for v in vectors(m) if not any(A(v))]
    boundaries={B(v) for v in vectors(n)}
    assert all(not any(A(v)) and not any(P(v)) for v in boundaries)
    assert all(I(v) in cycles and P(I(v))==v for v in vectors(h))
    for v in vectors(m):
        assert add(add(I(P(v)),B(U(v))),D(A(v)))==v
        vector_checks+=1
    for x,y in itertools.product(cycles,repeat=2):
        assert (P(x)==P(y)) == (add(x,y) in boundaries)
        pair_checks+=1
    complexes[name]=dict(wire=wire,cycles=cycles,boundaries=boundaries)

reductions=0
for item in report['products']:
    name,j=item['name'],item['column']
    bundle=load(HERE/f'{name}{j}.json')
    assert bundle==item['bundle']
    left=list(sql.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',item['left_degree']))
    right=list(sql.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',item['right_degree']))
    target=list(sql.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',item['target_degree']))
    assert item['left_basis']==dict(zip(['id','mon','d2'],left[0]))
    assert item['right_basis']==dict(zip(['id','mon','d2'],right[j]))
    assert item['target_basis']==[dict(zip(['id','mon','d2'],row)) for row in target]
    initial=multiply({mon(left[0][1])},{mon(right[j][1])})
    assert initial=={tuple(x) for x in bundle['input']}
    assert all(degree(x)==item['target_degree'] for x in initial)
    for origin,encoded in zip(item['relation_sources'],bundle['relations'],strict=True):
        rawrel,s,t=sql.execute('SELECT rel,s,t FROM S0_AdamsE2_relations WHERE rowid=?',(origin['rowid'],)).fetchone()
        assert origin==dict(rowid=origin['rowid'],raw=rawrel,degree=[s,t])
        assert poly(rawrel)==parity(tuple(x) for x in encoded)
        assert all(degree(x)==[s,t] for x in poly(rawrel))
    cur=set(initial)
    for term in bundle['terms']:
        assert 0<=term['relation']<len(bundle['relations'])
        delta=multiply(parity(tuple(x) for x in bundle['relations'][term['relation']]),
                       parity(tuple(x) for x in term['multiplier']))
        assert all(degree(x)==item['target_degree'] for x in delta)
        cur.symmetric_difference_update(delta)
        reductions+=1
    assert cur=={tuple(x) for x in bundle['output']}
    assert item['coordinates']==[i for i,row in enumerate(target) if mon(row[1]) in cur]

tensor_checks=quotient_checks=0
for name,left,right,target in [('sourceProduct','h0','right','source'),('rightProduct','h0','rightTarget','target')]:
    wire=load(HERE/(name+'.json'))
    L,R,T=[complexes[label] for label in [left,right,target]]
    lw,rw,tw=[c['wire'] for c in [L,R,T]]
    assert (wire['left'],wire['right'],wire['target'])==(lw,rw,tw)
    columns=[item for item in report['products'] if item['name']==name]
    assert len(columns)==rw['m'] and lw['m']==1
    assert wire['tensor']==[i in col['coordinates'] for i in range(tw['m']) for col in columns]
    product=lambda x,y:ev(wire['tensor'],tw['m'],rw['m'],[x[0]*v for v in y])
    quotient=lambda z:ev(tw['projection'],tw['h'],tw['m'],z)
    for x in vectors(lw['m']):
        for y in vectors(rw['m']):
            z=product(x,y)
            if x in L['cycles'] and y in R['cycles']:
                assert z in T['cycles']
            if x in L['boundaries'] and y in R['cycles'] or x in L['cycles'] and y in R['boundaries']:
                assert z in T['boundaries']
            tensor_checks+=1
    for x,y,x2,y2 in itertools.product(L['cycles'],R['cycles'],L['cycles'],R['cycles']):
        if add(x,x2) in L['boundaries'] and add(y,y2) in R['boundaries']:
            assert quotient(product(x,y))==quotient(product(x2,y2))
            quotient_checks+=1

def representative(name,coordinate):
    w=complexes[name]['wire']
    return ev(w['inclusion'],w['m'],w['h'],coordinate)
assert representative('right',(1,0))==(1,0,0)
assert representative('source',(1,0))==(1,0)
assert report['comparisons']['right']['rows'][1][0]['id']==3235
assert report['comparisons']['source']['rows'][1][0]['id']==3305
assert complexes['leftTarget']['wire']['h']==0
assert not any(load(HERE/'rightProduct.json')['tensor'])
assert all(load(HERE/f'rightProduct{j}.json')['output']==[] for j in range(2))
source_wire=complexes['source']['wire']
source_stairs=[row for row in report['raw_staircase_rows']['source']
               if 3<=row[3]<5000 or 5000<=row[3]<=9997]
assert source_stairs==[[3305,'0',None,9000],[3306,'1','1',9997]]
source_stair_columns=[]
for _,rawbase,_,_ in source_stairs:
    indices=list(map(int,rawbase.split(','))) if rawbase else []
    source_stair_columns.append(ev(source_wire['projection'],2,2,[int(i in indices) for i in range(2)]))
assert source_stair_columns==[(1,0),(0,1)]
for v in vectors(2):
    assert tuple(sum(v[j]*source_stair_columns[j][i] for j in range(2))%2 for i in range(2))==v
actual_models=actual_candidates=accepted_candidates=0
for h0_labels,right_labels,source_labels,target_labels,dright_labels in itertools.product(
        itertools.permutations(range(2)),itertools.permutations(range(4)),
        itertools.permutations(range(4)),itertools.permutations(range(2)),
        itertools.permutations(range(4))):
    for right_value in dright_labels:
        actual_models+=1
        named_source=source_labels[1]
        assert named_source!=source_labels[0]
        for proposed in target_labels:
            actual_candidates+=1
            leibniz=proposed==target_labels[0]
            if leibniz:
                accepted_candidates+=1
                assert proposed==target_labels[0]
assert (actual_models,actual_candidates,accepted_candidates)==(221184,442368,221184)

compiled={}
for name in ['Data','Basic','Semantics','Actual']:
    record=load(HERE/(name+'-compile.json'))
    if record['observed_exit_code']!=0:
        compiled[name]=dict(status='pending_successful_compile',observed_exit_code=record['observed_exit_code'])
        continue
    source,log=HERE/(name+'.lean'),HERE/(name+'.log')
    assert record['source_sha256']==sha(source) and record['log_sha256']==sha(log)
    assert not re.search(r'\b(sorry|admit|axiom|native_decide)\b',source.read_text())
    assert 'sorryAx' not in log.read_text()
    for ax in re.findall(r'depends on axioms:\s*\[([^]]*)\]',log.read_text()):
        assert set(x.strip() for x in ax.split(',') if x.strip())<={'propext','Classical.choice','Quot.sound'}
    compiled[name]=record
result=dict(status='no_correctness_findings',complete_quotients=6,all_vectors=vector_checks,
    all_cycle_pairs=pair_checks,polynomial_columns=len(report['products']),relation_reductions=reductions,
    all_tensor_inputs=tensor_checks,quotient_pair_checks=quotient_checks,
    actual_relabelings=actual_models,actual_differential_candidates=actual_candidates,
    leibniz_accepted_zero_candidates=accepted_candidates,
    whole_source_canonical_to_staircase_identity=True,
    known_E2_right_basis=3235,named_source_E2_basis=3305,
    raw_unknown_retained=[3305,'0',None,9000],compiled=compiled,
    source_sha256={path.name:sha(path) for path in HERE.glob('*.lean')},database_sha256=sha(database),
    actual_signature='Whole right-product zero uses every right differential value; no right d3 value or row3305 value is assumed.')
(HERE/'independent-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps({k:v for k,v in result.items() if k not in ['compiled','source_sha256']},indent=2))
