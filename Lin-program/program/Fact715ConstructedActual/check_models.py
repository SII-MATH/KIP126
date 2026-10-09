"""Independent raw-input and finite actual-carrier models; no producer imports."""
from collections import Counter
import hashlib
import itertools
import json
from pathlib import Path
import re
import sqlite3

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
source = load(ROOT/'Fact715TrajectoryCertificates/conditional-higher-source.json')
database = ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
assert sha(database) == source['database_sha256']
sql = sqlite3.connect(f'file:{database}?mode=ro',uri=True)
named_raw = list(sql.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2852').fetchone())
assert named_raw == [2852,11,136,'3',None,9995]
named_basis = list(sql.execute('SELECT id,mon,s,t,d2 FROM S0_AdamsE2_basis WHERE id=2853').fetchone())
assert named_basis == [2853,'0,2,391,1',11,136,'']
blocker_raw = list(sql.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=3076').fetchone())
assert blocker_raw == [3076,15,139,'1,3',None,9000]
counts = Counter()

def ev(bits,m,n,x):
    assert len(bits) == m*n
    return sum((sum(int(bits[i*n+j])*((x>>j)&1) for j in range(n))%2)<<i for i in range(m))

def finite(w):
    n,m,k,h = (w[key] for key in ['n','m','k','h'])
    cycles = [x for x in range(1<<m) if ev(w['outgoing'],k,m,x)==0]
    boundaries = {ev(w['incoming'],m,n,x) for x in range(1<<n)}
    assert boundaries <= set(cycles)
    for z in range(1<<h):
        lift = ev(w['inclusion'],m,h,z)
        assert lift in cycles and ev(w['projection'],h,m,lift)==z
    for x,y in itertools.product(cycles,repeat=2):
        assert (ev(w['projection'],h,m,x)==ev(w['projection'],h,m,y)) == (x^y in boundaries)
        counts['finite_quotient_pairs'] += 1
    return cycles,boundaries

for block in source['blocks'].values():
    for key,rows in block['e2'].items():
        st=tuple(map(int,key.strip('()').split(',')))
        assert [list(x) for x in sql.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',st)] == rows
        assert [list(x) for x in sql.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',st)] == block['raw'][key]
    finite(block['wire'])
assert len(source['blocks']) == 13
wires = {r:source['blocks'][f'b11_136_{r}']['wire'] for r in range(2,5)}
named = {2:8,3:4,4:1,5:1}
dimensions = {2:5,3:4,4:2,5:1}
for r,w in wires.items():
    cycles,boundaries=finite(w)
    assert named[r] in cycles and named[r] not in boundaries
    assert ev(w['projection'],w['h'],w['m'],named[r])==named[r+1]

# Complete carrier bijections are relabeled, with nontrivial actual zeros
# and transported addition. Only the initial coordinate is supplied.
for shifts in itertools.product(range(2),repeat=4):
    coordinates={}
    for r,shift in zip(range(2,6),shifts):
        perm=list(range(1<<dimensions[r]))
        if dimensions[r]>=2:perm[1],perm[2]=perm[2],perm[1]
        coordinates[r]={x:perm[x]^shift for x in range(len(perm))}
    inverses={r:{v:x for x,v in co.items()} for r,co in coordinates.items()}
    plus=lambda r,x,y:inverses[r][coordinates[r][x]^coordinates[r][y]]
    actual_zero={r:inverses[r][0] for r in coordinates}
    constructed=coordinates[2]
    raw=inverses[2][named[2]]
    endpoint=raw
    for r,w in wires.items():
        n,m,k,h=(w[key] for key in ['n','m','k','h'])
        cycles=[x for x in constructed if ev(w['outgoing'],k,m,constructed[x])==0]
        boundaries={inverses[r][ev(w['incoming'],m,n,y)] for y in range(1<<n)}
        quotient=lambda x:inverses[r+1][ev(w['projection'],h,m,constructed[x])]
        following={}
        for x in cycles:
            y=quotient(x);z=ev(w['projection'],h,m,constructed[x])
            assert y not in following or following[y]==z
            following[y]=z
            counts['derived_coordinate_representatives']+=1
        assert following==coordinates[r+1]
        assert following[actual_zero[r+1]]==0
        for x,y in itertools.product(cycles,repeat=2):
            assert (quotient(x)==quotient(y))==(plus(r,x,y) in boundaries)
            assert quotient(plus(r,x,y))==plus(r+1,quotient(x),quotient(y))
            counts['actual_quotient_pairs']+=1
        for x,y in itertools.product(following,repeat=2):
            assert following[plus(r+1,x,y)]==following[x]^following[y]
            counts['derived_addition_pairs']+=1
        assert endpoint in cycles and endpoint not in boundaries
        assert constructed[endpoint]==named[r]
        endpoint=quotient(endpoint)
        assert following[endpoint]==named[r+1] and endpoint!=actual_zero[r+1]
        constructed=following
        counts['same_raw_steps']+=1
    for wrong in coordinates[2]:
        if wrong!=raw:
            assert coordinates[2][wrong]!=named[2]
            counts['wrong_inputs_rejected']+=1
    counts['trace_models']+=1

comparisons={x['tag']:x for x in load(ROOT/'Fact715TrajectoryCertificates/comparison-source.json')}
ceta_sql=sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/Ceta_AdamsSS_t200.db?mode=ro',uri=True)
for name,item in comparisons.items():
    con=ceta_sql if item['object']=='Ceta' else sql
    s,t=item['s'],item['t'];w=item['wire']
    groups=[[list(row) for row in con.execute(f'SELECT id,mon,d2 FROM {item["object"]}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',st)] for st in [(s-2,t-1),(s,t),(s+2,t+1)]]
    assert groups==item['rows']
    for rows,dim,field in [(groups[0],w['m'],'incoming'),(groups[1],w['k'],'outgoing')]:
        supports=[]
        for _,_,raw in rows:
            assert raw is not None
            xs=list(map(int,raw.split(','))) if raw else []
            assert xs==sorted(set(xs)) and all(0<=x<dim for x in xs)
            supports.append(xs)
        assert w[field]==[i in col for i in range(dim) for col in supports]
    finite(w)
cs,ss,ct,st=[comparisons[key]['wire'] for key in ['source','target','upperSource','upperTarget']]
assert ss==source['blocks']['b15_139_2']['wire']
assert ct['h']==0
middle=[0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0]
assert ev(middle,4,5,5)==10
assert ev(cs['projection'],2,5,5)==1
assert ev(ss['projection'],2,4,10)==2
for co in range(4):
    induced=ev(ss['projection'],2,4,ev(middle,4,5,ev(cs['inclusion'],5,2,co)))
    assert induced==(2 if co&1 else 0)
    counts['detector_whole_E3_coordinates']+=1

# All possible linear S0 d3 maps from a two-dimensional source to its
# one-dimensional target. Naturality removes the unknown column; the
# separately retained known-column theorem removes the other.
for a,b in itertools.product(range(2),repeat=2):
    natural=all(((a*((2 if x&1 else 0)&1))^(b*(((2 if x&1 else 0)>>1)&1)))==0 for x in range(4))
    assert natural==(b==0)
    if natural and a==0:
        assert all((a*(x&1))^(b*((x>>1)&1))==0 for x in range(4))
        counts['accepted_whole_zero_d3_assignments']+=1
    if not natural:counts['unknown_column_countermodels_rejected']+=1
tw=source['blocks']['b15_139_3']['wire']
assert tw['outgoing']==[False,False] and tw['incoming']==[False]*4
assert tw['projection']==tw['inclusion']==[True,False,False,True]
assert counts['trace_models']==16 and counts['same_raw_steps']==48
assert counts['accepted_whole_zero_d3_assignments']==1

compiled={};reports=0
for name in ['Basic','Trace','Tactic','Detector','Assembly']:
    record=load(HERE/(name+'-compile.json'));src=HERE/(name+'.lean');log=HERE/(name+'.log')
    assert record['observed_exit_code']==0 and record['source_sha256']==sha(src)
    assert record['log_sha256']==sha(log)
    assert not re.search(r'\b(sorry|admit|axiom|native_decide|unsafe)\b',src.read_text())
    assert not re.search(r'\b(sorryAx|Lean\.ofReduceBool|error)\b',log.read_text())
    axioms=re.findall(r"'[^']+' depends on axioms: \[([^\]]*)\]",log.read_text())
    for ax in axioms:assert set(filter(None,map(str.strip,ax.split(','))))<={'propext','Classical.choice','Quot.sound'}
    reports+=len(axioms)+len(re.findall(r"'[^']+' does not depend on any axioms",log.read_text()))
    compiled[name]=record
report=dict(status='passed',counts=dict(counts),raw_staircase=named_raw,raw_basis=named_basis,
    blocker_raw=blocker_raw,compiled=compiled,axiom_reports=reports,
    initial_coordinate_dimension=5,constructed_dimensions=[4,2,1],
    complete_prior_trajectory_comparisons=13,complete_detector_d2_comparisons=4,
    remaining_actual_premises=['initial E2 coordinates and full actual differential meanings',
        'actual quotient zero/add laws and whole map transitions',
        'actual Ceta-to-S0 d3 naturality', 'other known S0 d3 basis column zero',
        'complete incoming d3 at the detector target', 'whole d4 equation in the derived target coordinates'],
    scope='Conditional actual E5 trace from the fixed named input; no sphere realization, d5 survival, or extension theorem.',
    input_sha256={str(p.relative_to(ROOT)):sha(p) for p in [Path(__file__),
        ROOT/'Fact715TrajectoryCertificates/conditional-higher-source.json',
        ROOT/'Fact715TrajectoryCertificates/comparison-source.json',database]})
(HERE/'model-check.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps({k:v for k,v in report.items() if k!='compiled'},indent=2))
