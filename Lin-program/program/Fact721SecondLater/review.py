"""Independent complete comparisons and known-event projection replay."""
import hashlib
import itertools
import json
from pathlib import Path
import re
import sqlite3

HERE=Path(__file__).resolve().parent;ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
data=json.loads((HERE/'source.json').read_text());db=ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
assert sha(db)==data['database_sha256'];c=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
def vectors(n):return itertools.product((0,1),repeat=n)
def ev(a,m,n,v):
    assert len(a)==m*n and len(v)==n
    return tuple(sum(a[i*n+j]*v[j] for j in range(n))%2 for i in range(m))
def mm(a,m,k,b,n):return [sum(a[i*k+l]*b[l*n+j] for l in range(k))%2 for i in range(m) for j in range(n)]
def xor(x,y):return tuple(a^b for a,b in zip(x,y))
def ident(n):return [int(i==j) for i in range(n) for j in range(n)]
def bits(raw,n):
    assert raw is not None
    ids=list(map(int,raw.split(','))) if raw else []
    return tuple(int(i in ids) for i in range(n))
counts=dict(comparisons=0,cycle_vectors=0,quotient_pairs=0,d2_columns=0,d3_columns=0,
            known_events=0,derived_zero_maps=0,empty_incoming_degrees=0)
for name,b in data['blocks'].items():
    w=b['wire'];assert json.loads((HERE/'wire'/f'{name}.json').read_text())==w
    s,t=b['degree'];k,m,n,h=(w[f] for f in ['k','m','n','h'])
    if 'rows' in b:
        for degree,rows in zip([(s-2,t-1),(s,t),(s+2,t+1)],b['rows']):
            actual=c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',degree).fetchall()
            assert actual==[(r['id'],r['mon'],r['d2']) for r in rows]
        assert [list(r) for r in c.execute('select id,base,diff,level from S0_AdamsE2_ss where s=? and t=? order by id',(s,t))]==b['staircase']
        for rows,entries,dim in [(b['rows'][0],w['incoming'],m),(b['rows'][1],w['outgoing'],k)]:
            for j,row in enumerate(rows):
                assert ev(entries,dim,len(rows),tuple(int(i==j) for i in range(len(rows))))==bits(row['d2'],dim)
                counts['d2_columns']+=1
    o,i,u,p,up,dn=(w[x] for x in ['outgoing','incoming','inclusion','projection','up','down'])
    assert not any(mm(o,k,m,i,n)) and not any(mm(o,k,m,u,h)) and not any(mm(p,h,m,i,n))
    assert mm(p,h,m,u,h)==ident(h)
    assert xor(xor(mm(u,m,h,p,m),mm(i,m,n,up,m)),mm(dn,m,k,o,m))==tuple(ident(m))
    boundaries={ev(i,m,n,x) for x in vectors(n)}
    cycles=[x for x in vectors(m) if not any(ev(o,k,m,x))]
    for x in cycles:
        for y in cycles:
            assert (ev(p,h,m,x)==ev(p,h,m,y))==(xor(x,y) in boundaries)
            counts['quotient_pairs']+=1
    counts['comparisons']+=1;counts['cycle_vectors']+=len(cycles)

# Exact recorded events, transported through complete earlier quotients.
def project(name,raw):
    w=data['blocks'][name]['wire']
    return ev(w['projection'],w['h'],w['m'],bits(raw,w['m']))
for rid,j in [(2913,0),(2912,1)]:
    base,diff,level=c.execute('select base,diff,level from S0_AdamsE2_ss where id=?',(rid,)).fetchone()
    assert level==9997
    assert project('ii8d2',base)==project('i8d2',diff)==tuple(int(i==j) for i in range(2))
    counts['known_events']+=1
base,diff,level=c.execute('select base,diff,level from S0_AdamsE2_ss where id=3140').fetchone()
assert level==9997 and project('i9d2',base)==(1,0,0) and project('t9d2',diff)==(1,)
counts['known_events']+=1
base,diff,level=c.execute('select base,diff,level from S0_AdamsE2_ss where id=3242').fetchone()
assert level==9996
source=project('t8d2',base);target=project('t4d2',diff)
a,b=(data['blocks'][n]['wire'] for n in ['t8d3','t4d3'])
assert ev(a['projection'],a['h'],a['m'],source)==(1,)
assert ev(b['projection'],b['h'],b['m'],target)==(0,1)
counts['known_events']+=1
# The image of d3 onto i8 is all Vec2; onto t9 is all Vec1.
# Consequently the corresponding next d3 maps vanish by d^2=0.
assert {ev([1,0,0,1],2,2,v) for v in vectors(2)}==set(vectors(2))
assert {ev([1,0,0],1,3,v) for v in vectors(3)}==set(vectors(1))
for t,o in [('t8d3','o8d2'),('t4d3','o4d2')]:
    assert data['blocks'][o]['wire']['h']==0
    w=data['blocks'][t]['wire'];assert not any(w['incoming']) and w['k']==0
    counts['derived_zero_maps']+=2
assert data['blocks']['t10d2']['wire']['h']==0
for degree,rows in data['empty_incoming_E2'].items():
    s,t=map(int,degree.strip('()').split(','));assert rows==[]
    assert c.execute('select count(*) from S0_AdamsE2_basis where s=? and t=?',(s,t)).fetchone()==(0,)
    counts['empty_incoming_degrees']+=1
for rid in [2999,3476]:assert c.execute('select diff from S0_AdamsE2_ss where id=?',(rid,)).fetchone()==(None,)
assert c.execute('select level from S0_AdamsE2_ss where id=3139').fetchone()==(7,)
reports=0;empty=0;changes=[]
modules=(HERE/'modules.txt').read_text().splitlines()
for module in modules:
    name=module.split('.')[-1];record=json.loads((HERE/(name+'-compile.json')).read_text())
    assert record['observed_exit_code']==0 and record['inputs_stable']
    assert sha(HERE/(name+'.lean'))==record['source_sha256']
    assert sha(HERE/record['log'])==record['log_sha256']
    assert sha(ROOT/'.lake/build/lib/lean'/(module.replace('.','/')+'.olean'))==record['olean_sha256']
    for dep,digest in record['dependencies_sha256'].items():
        if sha(ROOT/dep)!=digest:changes.append(dict(module=module,dependency=dep))
    for dep,digest in record['external_input_sha256'].items():assert sha(ROOT/dep)==digest
    log=(HERE/record['log']).read_text();assert 'sorryAx' not in log and 'error:' not in log
    for a in re.findall(r'depends on axioms:\s*\[([^\]]*)\]',log):
        assert set(x.strip() for x in a.split(','))<={'propext','Classical.choice','Quot.sound'}
        reports+=1
    empty+=log.count('does not depend on any axioms')
    assert not re.search(r'\b(sorry|admit|axiom|unsafe|native_decide)\b',(HERE/(name+'.lean')).read_text())
counts.update(modules=len(modules),standard_axiom_reports=reports,empty_axiom_reports=empty)
(HERE/'review.json').write_text(json.dumps(dict(status='passed',counts=counts,historical_dependency_changes=changes,
    exact_binding='old E8 endpoint is used directly and all new traces step the same raw E2 input',
    continuation='same-input nonzero E9,E10,E11; full incoming map zero for every r>=8',
    limitations='No permanence. Actual E2, recorded event interpretations, and quotient laws remain premises.'),indent=2)+'\n')
print(json.dumps(counts,indent=2))
