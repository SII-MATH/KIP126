"""Read-only source and finite-algebra audit of the frozen incoming tail."""
import hashlib
import itertools
import json
from pathlib import Path
import re
import sqlite3

HERE=Path(__file__).resolve().parent;ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
frozen=json.loads((HERE/'frozen-source.json').read_text())
for name,digest in frozen['files'].items():assert sha(ROOT/name)==digest
data=json.loads((HERE/'comparisons.json').read_text())
database=ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
assert sha(database)==data['input_sha256']
sql=sqlite3.connect(f'file:{database}?mode=ro',uri=True)
metadata=dict(sql.execute('select name,value from version'))
counts=dict(frozen_files=len(frozen['files']),source_degrees=0,basis_rows=0,staircase_rows=0,
    comparisons=0,exported_comparisons=0,cycle_vectors=0,quotient_pairs=0,d2_columns=0,
    higher_columns=0,selected_representatives=0)
def vectors(n):return itertools.product((0,1),repeat=n)
def ev(a,m,n,v):
    assert len(a)==m*n and len(v)==n
    return tuple(sum(a[i*n+j]*v[j] for j in range(n))%2 for i in range(m))
def mm(a,m,k,b,n):return [sum(a[i*k+l]*b[l*n+j] for l in range(k))%2 for i in range(m) for j in range(n)]
def identity(n):return [int(i==j) for i in range(n) for j in range(n)]
def xor(x,y):return tuple(a^b for a,b in zip(x,y))
def bits(raw,n):
    assert raw is not None
    ids=list(map(int,raw.split(','))) if raw else []
    assert len(set(ids))==len(ids) and all(0<=i<n for i in ids)
    return tuple(int(i in ids) for i in range(n))
def degree_data(s,t):return data['graph']['degrees'][f'S0:{s},{t}']
def block(s,t,r):return data['comparisons'][f'S0:{s},{t}:d{r}']
def dim(s,t,r):return len(degree_data(s,t)['e2']) if r==2 else block(s,t,r-1)['wire']['h']
def selected(s,t,r):return [x for x in degree_data(s,t)['staircase'] if r<=x[3]<5000 or 5000<=x[3]<=10000-r]
def project(s,t,r,v):
    if r==2:return v
    w=block(s,t,r-1)['wire']
    return ev(w['projection'],w['h'],w['m'],project(s,t,r-1,v))

for key,d in data['graph']['degrees'].items():
    s,t=d['degree'];assert t<=metadata['t_max']
    basis=sql.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',(s,t)).fetchall()
    stairs=sql.execute('select id,base,diff,level from S0_AdamsE2_ss where s=? and t=? order by id',(s,t)).fetchall()
    assert [list(x) for x in basis]==d['e2'] and [list(x) for x in stairs]==d['staircase']
    counts['source_degrees']+=1;counts['basis_rows']+=len(basis);counts['staircase_rows']+=len(stairs)

for key,b in data['comparisons'].items():
    s,t=b['center'];r=b['page'];w=b['wire'];k,m,n,h=(w[x] for x in ['k','m','n','h'])
    assert (k,m,n)==(dim(s+r,t+r-1,r),dim(s,t,r),dim(s-r,t-r+1,r))
    o,i,u,p,up,dn=(w[x] for x in ['outgoing','incoming','inclusion','projection','up','down'])
    assert not any(mm(o,k,m,i,n)) and not any(mm(o,k,m,u,h)) and not any(mm(p,h,m,i,n))
    assert mm(p,h,m,u,h)==identity(h)
    assert xor(xor(mm(u,m,h,p,m),mm(i,m,n,up,m)),mm(dn,m,k,o,m))==tuple(identity(m))
    boundaries={ev(i,m,n,x) for x in vectors(n)}
    cycles=[x for x in vectors(m) if not any(ev(o,k,m,x))]
    for x in cycles:
        assert (not any(ev(p,h,m,x)))==(x in boundaries)
        for y in cycles:
            assert (ev(p,h,m,x)==ev(p,h,m,y))==(xor(x,y) in boundaries)
            counts['quotient_pairs']+=1
    counts['comparisons']+=1;counts['cycle_vectors']+=len(cycles)
    for ds,dt,entries,rows,cols in [(s,t,o,k,m),(s-r,t-r+1,i,m,n)]:
        if r==2:
            assert dt<=metadata['d2_t_max']
            for j,row in enumerate(degree_data(ds,dt)['e2']):
                assert bits(row[2],rows)==ev(entries,rows,cols,tuple(int(a==j) for a in range(cols)))
                counts['d2_columns']+=1
        else:
            assert not any(x['kind'].startswith('conditional') for x in b['uses'])
            for j,(rid,base,diff,level) in enumerate(selected(ds,dt,r)):
                target_s,target_t=ds+r,dt+r-1
                if level==10000-r:
                    raw=bits(diff,len(degree_data(target_s,target_t)['e2']))
                elif 2<=level<5000 or 9000<level<10000-r:
                    raw=(0,)*len(degree_data(target_s,target_t)['e2'])
                else:
                    assert rows==0
                    raw=(0,)*len(degree_data(target_s,target_t)['e2'])
                assert project(target_s,target_t,r,raw)==ev(entries,rows,cols,tuple(int(a==j) for a in range(cols)))
                counts['higher_columns']+=1
    assert len(selected(s,t,r+1))==h
    for j,(_,base,_,_) in enumerate(selected(s,t,r+1)):
        representative=project(s,t,r,bits(base,len(degree_data(s,t)['e2'])))
        assert representative==ev(u,m,h,tuple(int(a==j) for a in range(h)))
        counts['selected_representatives']+=1

names={'source6d2':(5,131,2),'source7d2':(4,130,2),'source7d3':(4,130,3),
       'source8d2':(3,129,2),'source7Incoming2':(1,128,2),'source7Target2':(7,132,2)}
for name,location in names.items():
    b=block(*location)
    assert json.loads((HERE/'wire'/f'{name}.json').read_text())==b['wire']
    assert not any(x['kind']!='stored_event' for x in b['uses'])
    counts['exported_comparisons']+=1
assert block(5,131,2)['wire']['h']==0
assert block(3,129,2)['wire']['h']==0
assert block(4,130,2)['wire']['h']==1
assert block(4,130,3)['wire']['h']==0
assert block(4,130,3)['wire']['outgoing']==[True]
assert block(4,130,3)['uses']==[dict(object='S0',source=[4,130],page=3,
    row=[2437,'0','0',9997],kind='stored_event',target_predecessor='S0:7,132:d2')]
assert project(4,130,3,(1,0))==(1,)
assert project(7,132,3,(1,))==(1,)
assert block(1,128,2)['wire']['h']==0
for d in [(1,127),(0,126)]:
    assert sql.execute('select count(*) from S0_AdamsE2_basis where s=? and t=?',d).fetchone()==(0,)
assert 'row2574' in data['failures']['S0:6,132:d3']
assert sql.execute('select diff,level from S0_AdamsE2_ss where id=2574').fetchone()==(None,9997)
assert sql.execute('select diff,level from S0_AdamsE2_ss where id=2314').fetchone()==(None,9993)
assert block(2,128,3)['wire']['h']==1

proof=(HERE/'Basic.lean').read_text()
for fragment in ['(r : Nat) (lower : 5 ≤ r)','(not5 : r ≠ 5) (not9 : r ≠ 9)',
                 '(y : Incoming S r degree)','| inl u =>','| inr y =>',
                 'r = 6 ∨ r = 7 ∨ r = 8 ∨ r = 10 ∨ r = 11',
                 'incoming_map_zero_above_filtration','(step7a.next Data.source7d2_accepted)']:
    assert fragment in proof
page_sources={r:[11-r,137-r] for r in range(5,12)}
assert {r for r in page_sources if r not in [5,9]}=={6,7,8,10,11}

reports=0;dependency_changes=[]
for module in frozen['modules']:
    source=ROOT/(module['module'].replace('.','/')+'.lean')
    assert sha(source)==module['source_sha256']
    assert sha(HERE/module['log'])==module['log_sha256']
    assert module['observed_exit_code']==0 and module['inputs_stable']
    assert sha(ROOT/'.lake/build/lib/lean'/(module['module'].replace('.','/')+'.olean'))==module['olean_sha256']
    for path,digest in module['external_input_sha256'].items():assert sha(ROOT/path)==digest
    for path,digest in module['dependencies_sha256'].items():
        if sha(ROOT/path)!=digest:dependency_changes.append(path)
    log=(HERE/module['log']).read_text();assert 'sorryAx' not in log and 'error:' not in log
    for axioms in re.findall(r'depends on axioms:\s*\[([^\]]*)\]',log):
        assert set(x.strip() for x in axioms.split(','))<={'propext','Classical.choice','Quot.sound'}
        reports+=1
    assert not re.search(r'\b(sorry|admit|axiom|unsafe|native_decide)\b',source.read_text())
assert reports==5
for name,digest in frozen['files'].items():assert sha(ROOT/name)==digest
result=dict(status='passed_independent_review',findings=[],counts=counts,
    scope='No source edits or recompilation; frozen source, objects, successful compile evidence and independent finite replay.',
    covered_page_sources=page_sources,excluded_pages=[5,9],
    source7=dict(raw_staircase=2437,e2_source_basis=2436,source_degree=[4,130],page=3,
                 target_degree=[7,132],source_E3_dimension=1,target_E3_dimension=1,
                 outgoing=[1],incoming_dimension=0,result_E4_dimension=0),
    actual_obligations=['complete E2 and d2 StepInput meanings for sources6,7,8',
        'step7b complete actual outgoing/incoming E3 equations in the chart constructed by step7a',
        'complete source10/source11 E2 Coordinates to Vec0','all-page quotient ZeroMeaning'],
    qualifications=['source7Incoming2 and source7Target2 are checked finite predecessor certificates; their actual E3 meanings remain step7b inputs',
        'unexported cached page9 prefix calculation is not used to eliminate page9',
        'Data has no explicit axiom print reports; Basic reports5, root full declaration audit covers Data'],
    historical_direct_dependency_changes=dependency_changes,
    standard_axiom_reports=reports,
    input_hashes={'frozen-source.json':sha(HERE/'frozen-source.json'),'comparisons.json':sha(HERE/'comparisons.json'),'database':sha(database)})
(HERE/'independent-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
