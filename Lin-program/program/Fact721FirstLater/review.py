"""Independent empty-source, whole-quotient and fixed-input audit."""
import hashlib
import itertools
import json
from pathlib import Path
import re
import sqlite3

HERE=Path(__file__).resolve().parent;ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
data=json.loads((HERE/'source.json').read_text())
db=ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db';assert sha(db)==data['database_sha256']
c=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
for degree,rows in data['empty_incoming'].items():
    assert rows==[];d=tuple(map(int,degree.strip('()').split(',')))
    assert c.execute('select count(*) from S0_AdamsE2_basis where s=? and t=?',d).fetchone()==(0,)
for key,d,cols,table in [('named_basis',(11,133),'id,mon,d2','basis'),
    ('named_staircase',(11,133),'id,base,diff,level','ss'),
    ('d5target_staircase',(16,137),'id,base,diff,level','ss'),
    ('d6target_staircase',(17,138),'id,base,diff,level','ss')]:
    assert data[key]==[list(row) for row in c.execute(f'select {cols} from S0_AdamsE2_{table} where s=? and t=? order by id',d)]
assert data['named_basis'][1][:2]==[2622,'69,1,79,1']
assert data['named_staircase'][1]==[2622,'1',None,9000]
assert data['d6target_staircase'][1]==[2994,'0,1,2',None,9000]

def vectors(n):return itertools.product((0,1),repeat=n)
def ev(a,m,n,v):
    assert len(a)==m*n
    return tuple(sum(a[i*n+j]*v[j] for j in range(n))%2 for i in range(m))
def xor(x,y):return tuple(a^b for a,b in zip(x,y))
counts=dict(comparisons=0,cycle_vectors=0,quotient_pairs=0,known_events=0,empty_degrees=7)
paths=sorted((ROOT/'Row2907PDeltaDetection/wire').glob('c*.json'))
paths+=[ROOT/'Fact713Row2773Refinement/wires/b_S0_16_137_d3.json',
        ROOT/'Fact721FirstD4Continuation/wire/b_S0_11_133_d4.json',
        ROOT/'Fact721PageCertificates/first-comparison.json']
for path in paths:
    w=json.loads(path.read_text());k,m,n,h=(w[f] for f in ['k','m','n','h'])
    cycles=[x for x in vectors(m) if not any(ev(w['outgoing'],k,m,x))]
    boundaries={ev(w['incoming'],m,n,x) for x in vectors(n)}
    assert boundaries<=set(cycles)
    assert {ev(w['projection'],h,m,x) for x in cycles}==set(vectors(h))
    for z in vectors(h):
        lift=ev(w['inclusion'],m,h,z)
        assert lift in cycles and ev(w['projection'],h,m,lift)==z
    for x,y in itertools.product(cycles,repeat=2):
        assert (ev(w['projection'],h,m,x)==ev(w['projection'],h,m,y))==(xor(x,y) in boundaries)
        counts['quotient_pairs']+=1
    counts['comparisons']+=1;counts['cycle_vectors']+=len(cycles)
known=c.execute('select base,diff,level from S0_AdamsE2_ss where id=6934').fetchone()
assert known[2]==9996 and known[1] is not None
counts['known_events']+=1
# A nonzero map from a complete one-dimensional source has no nonzero cycles,
# regardless of target dimension and independent of any target basis name.
maps=0
for n in range(1,6):
    for image in vectors(n):
        if any(image):
            assert [v for v in vectors(1) if not any(ev(list(image),n,1,v))]==[(0,)]
            maps+=1
counts['nonzero_one_dim_maps']=maps
# Same-input quotient nonzero and no-boundary hold even after outgoing death.
valid=death=0
for events in itertools.product('NHD',repeat=7):
    alive=True;cycle=True;value=1;zs=[True];bs=[False];vs=[1]
    for e in events:
        if alive:
            if e=='D':cycle=False;alive=False;value=0
            elif e=='H':alive=False;value=0
        zs.append(cycle);bs.append(cycle and value==0);vs.append(value)
    for cutoff in range(8):
        if zs[cutoff] and vs[cutoff] and all(e!='H' for e in events[cutoff:]):
            assert not any(bs);valid+=1;death+=int('D' in events[cutoff:])
counts.update(no_hit_event_cases=valid,later_outgoing_death_cases=death)
reports=empty=0;changes=[]
for module in (HERE/'modules.txt').read_text().split():
    name=module.split('.')[-1];r=json.loads((HERE/(name+'-compile.json')).read_text())
    assert r['observed_exit_code']==0 and r['inputs_stable']
    assert sha(HERE/(name+'.lean'))==r['source_sha256']
    assert sha(HERE/r['log'])==r['log_sha256']
    assert sha(ROOT/'.lake/build/lib/lean'/(module.replace('.','/')+'.olean'))==r['olean_sha256']
    for path,digest in r['dependencies_sha256'].items():
        if sha(ROOT/path)!=digest:changes.append(dict(module=module,dependency=path))
    for path,digest in r['external_input_sha256'].items():assert sha(ROOT/path)==digest
    log=(HERE/r['log']).read_text();assert 'error:' not in log and 'sorryAx' not in log and 'warning:' not in log
    for names in re.findall(r'depends on axioms:\s*\[([^]]*)\]',log):
        assert {s.strip() for s in names.split(',')}<={'propext','Classical.choice','Quot.sound'};reports+=1
    empty+=log.count('does not depend on any axioms')
    assert not re.search(r'\b(sorry|admit|axiom|unsafe|native_decide)\b',(HERE/(name+'.lean')).read_text())
request=json.loads((HERE/'request.json').read_text())
assert request==dict(version=1,claim='fact-7.21:first:E6',source=[False,True],output=[True])
assert [json.loads(line) for line in (HERE/'requests.jsonl').read_text().splitlines()]==[request,request]
report=dict(status='passed',counts=counts,standard_axiom_reports=reports,empty_axiom_reports=empty,
    historical_dependency_changes=changes,finite_sources={str(p.relative_to(ROOT)):sha(p) for p in paths},
    semantics=['same old E5 endpoint is advanced once to E6','one-dimensional complete d4 source plus existing product detector gives whole d5 target zero',
        'all actual incoming sources vanish for r>=5','original E2 notBInfinity already follows from nonzero E5',
        'E6 request output is nonvanishing flag'],
    limitation='Existing E3 complete coordinate/differential/product meanings remain actual mathematics premises. No E7 or permanence claim.')
(HERE/'review.json').write_text(json.dumps(report,indent=2)+'\n');print(json.dumps(report,indent=2))
