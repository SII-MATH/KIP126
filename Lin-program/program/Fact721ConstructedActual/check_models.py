"""Independent exact raw bindings, complete quotients and actual prefix models."""
from collections import Counter
import hashlib
import itertools
import json
from pathlib import Path
import re
import sqlite3

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
load=lambda p:json.loads(p.read_text())
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
sql=sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
batch=load(ROOT/'Fact713ComparisonBatches/Batch06.json')['entries']
first2=batch[18]['wire'];second2=batch[24]['wire']
assert batch[18]['key']==dict(object='S0',page=2,s=11,t=133)
assert batch[24]['key']==dict(object='S0',page=2,s=12,t=134)
cases=[dict(name='first',degree=[11,133],row=2622,basis=2622,target=2,named={2:2,3:2,4:1},
    wires={2:first2,3:load(ROOT/'Fact713DC2h6Source/wires/b_S0_11_133_d3.json')}),
    dict(name='second',degree=[12,134],row=2684,basis=2682,target=1,named={2:1,3:2,4:1,5:1},
    wires={2:second2,3:load(ROOT/'Fact713NextSourceSearch/wires/b_S0_12_134_d3.json'),
           4:load(ROOT/'Fact713D4ComparisonBranches/wire/b_S0_12_134_d4.json')})]
counts=Counter()
def ev(bits,m,n,x):
    assert len(bits)==m*n
    return sum((sum(int(bits[i*n+j])*((x>>j)&1) for j in range(n))%2)<<i for i in range(m))
def support(raw,n):
    assert raw is not None
    xs=list(map(int,raw.split(','))) if raw else []
    assert xs==sorted(set(xs)) and all(0<=i<n for i in xs)
    return sum(1<<i for i in xs)
def quotient(w):
    n,m,k,h=(w[key] for key in ['n','m','k','h'])
    cycles=[x for x in range(1<<m) if ev(w['outgoing'],k,m,x)==0]
    boundaries={ev(w['incoming'],m,n,x) for x in range(1<<n)}
    assert boundaries<=set(cycles)
    for z in range(1<<h):
        lift=ev(w['inclusion'],m,h,z)
        assert lift in cycles and ev(w['projection'],h,m,lift)==z
    for x,y in itertools.product(cycles,repeat=2):
        assert (ev(w['projection'],h,m,x)==ev(w['projection'],h,m,y))==(x^y in boundaries)
        counts['finite_quotient_pairs']+=1
    return cycles,boundaries

raw=[]
for case in cases:
    s,t=case['degree'];w2=case['wires'][2]
    staircase=list(sql.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=?',(case['row'],)).fetchone())
    basis=list(sql.execute('SELECT id,mon,s,t,d2 FROM S0_AdamsE2_basis WHERE id=?',(case['basis'],)).fetchone())
    assert staircase==[case['row'],s,t,'1' if case['name']=='first' else '0',None,9000]
    assert basis==[2622,'69,1,79,1',11,133,''] if case['name']=='first' else basis==[2682,'18,1,188,1',12,134,'']
    raw.append(dict(name=case['name'],staircase=staircase,basis=basis))
    old=load(ROOT/f'Fact721PageCertificates/{case["name"]}-comparison.json')
    for key in ['n','m','k','h','incoming','outgoing']:assert old[key]==w2[key]
    for z in range(1<<w2['h']):
        changed=ev(w2['projection'],w2['h'],w2['m'],ev(old['inclusion'],old['m'],old['h'],z))
        restored=ev(old['projection'],old['h'],old['m'],ev(w2['inclusion'],w2['m'],w2['h'],changed))
        assert restored==z;counts['initial_two_way_changes']+=1
    groups=[[list(x) for x in sql.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',d)] for d in [(s-2,t-1),(s,t),(s+2,t+1)]]
    assert list(map(len,groups))==[w2['n'],w2['m'],w2['k']]
    for rows,dim,field in [(groups[0],w2['m'],'incoming'),(groups[1],w2['k'],'outgoing')]:
        columns=[support(row[2],dim) for row in rows]
        assert w2[field]==[bool(col>>i&1) for i in range(dim) for col in columns]
    for r,w in case['wires'].items():
        cycles,boundaries=quotient(w)
        assert case['named'][r] in cycles and case['named'][r] not in boundaries
        assert ev(w['projection'],w['h'],w['m'],case['named'][r])==case['named'][r+1]
    last=max(case['named'])
    dims={r:w['m'] for r,w in case['wires'].items()};dims[last]=1
    for shifts in itertools.product(range(2),repeat=len(dims)):
        coordinates={}
        for r,shift in zip(dims,shifts):
            perm=list(range(1<<dims[r]))
            if dims[r]>=2:perm[1],perm[2]=perm[2],perm[1]
            coordinates[r]={x:perm[x]^shift for x in range(len(perm))}
        inverse={r:{v:x for x,v in co.items()} for r,co in coordinates.items()}
        zero={r:inverse[r][0] for r in dims}
        plus=lambda r,x,y:inverse[r][coordinates[r][x]^coordinates[r][y]]
        raw_input=inverse[2][case['target']]
        endpoint=raw_input
        constructed=coordinates[2]
        for r,w in case['wires'].items():
            n,m,k,h=(w[key] for key in ['n','m','k','h'])
            cycles=[x for x in constructed if ev(w['outgoing'],k,m,constructed[x])==0]
            boundaries={inverse[r][ev(w['incoming'],m,n,x)] for x in range(1<<n)}
            next_element=lambda x:inverse[r+1][ev(w['projection'],h,m,constructed[x])]
            next_coordinates={}
            for x in cycles:
                y=next_element(x);v=ev(w['projection'],h,m,constructed[x])
                assert y not in next_coordinates or next_coordinates[y]==v
                next_coordinates[y]=v;counts['derived_coordinate_representatives']+=1
            assert next_coordinates==coordinates[r+1] and next_coordinates[zero[r+1]]==0
            for x,y in itertools.product(cycles,repeat=2):
                assert (next_element(x)==next_element(y))==(plus(r,x,y) in boundaries)
                assert next_element(plus(r,x,y))==plus(r+1,next_element(x),next_element(y))
                counts['actual_quotient_pairs']+=1
            for x,y in itertools.product(next_coordinates,repeat=2):
                assert next_coordinates[plus(r+1,x,y)]==next_coordinates[x]^next_coordinates[y]
                counts['derived_addition_pairs']+=1
            assert endpoint in cycles and endpoint not in boundaries and constructed[endpoint]==case['named'][r]
            endpoint=next_element(endpoint);constructed=next_coordinates
            assert endpoint!=zero[r+1] and constructed[endpoint]==case['named'][r+1]
            counts['same_raw_steps']+=1
        for wrong in coordinates[2]:
            if wrong!=raw_input:
                assert coordinates[2][wrong]!=case['target'];counts['wrong_inputs_rejected']+=1
        counts[case['name']+'_models']+=1

# The known and derived columns are both needed for an entire two-dimensional
# zero differential; enumerating their maps rejects a missing-column shortcut.
for bits in range(16):
    columns=[bits&3,bits>>2]
    if columns==[0,0]:
        assert all((columns[0] if x&1 else 0)^(columns[1] if x&2 else 0)==0 for x in range(4))
        counts['whole_zero_maps']+=1
    elif columns[1]==0:counts['missing_known_column_countermodels']+=1
assert counts['first_models']==8 and counts['second_models']==16
assert counts['missing_known_column_countermodels']==3

compiled={};reports=0
for name in ['Basic','First','Second','Tactic']:
    rec=load(HERE/(name+'-compile.json'));src=HERE/(name+'.lean');log=HERE/(name+'.log')
    assert rec['observed_exit_code']==0 and rec['source_sha256']==sha(src) and rec['log_sha256']==sha(log)
    assert not re.search(r'\b(sorry|admit|axiom|native_decide|unsafe)\b',src.read_text())
    assert not re.search(r'\b(sorryAx|Lean\.ofReduceBool|error)\b',log.read_text())
    axs=re.findall(r'depends on axioms: \[([^\]]*)\]',log.read_text())
    for ax in axs:assert set(filter(None,map(str.strip,ax.split(','))))<={'propext','Classical.choice','Quot.sound'}
    reports+=len(axs)+log.read_text().count('does not depend on any axioms');compiled[name]=rec
report=dict(status='passed',counts=dict(counts),raw_rows=raw,compiled=compiled,axiom_reports=reports,
    claimed_endpoints=dict(first=4,second=5),permanence_claimed=False,actual_branch_selected=False,
    residual_mathematics=['original actual E2, known columns and full neighboring differential meanings',
        'actual detector naturality and source naming bindings', 'actual local quotient zero/addition laws',
        'first d4 and second d5 onward', 'all-page outgoing tail vanishing and Adams realization'],
    input_sha256={str(p.relative_to(ROOT)):sha(p) for p in [Path(__file__),ROOT/'Fact721PageCertificates/first-comparison.json',
        ROOT/'Fact721PageCertificates/second-comparison.json',ROOT/'Fact713ComparisonBatches/Batch06.json',
        ROOT/'Fact713DC2h6Source/wires/b_S0_11_133_d3.json',ROOT/'Fact713NextSourceSearch/wires/b_S0_12_134_d3.json',
        ROOT/'Fact713D4ComparisonBranches/wire/b_S0_12_134_d4.json']})
(HERE/'model-check.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps({k:v for k,v in report.items() if k!='compiled'},indent=2))
