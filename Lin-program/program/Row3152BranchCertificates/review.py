"""Separate exhaustive bitset oracle for both paths and strict wire handling."""
from pathlib import Path
from itertools import product
import hashlib
import json
import sqlite3
import subprocess
import tempfile

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
canonical=lambda x:json.dumps(x,sort_keys=True,separators=(',',':'))+'\n'

def evaluate(bits,m,n,x):
    return sum((sum(int(bits[i*n+j])*((x>>j)&1) for j in range(n))%2)<<i for i in range(m))

def vector(bits):return sum(int(b)<<i for i,b in enumerate(bits))

def check_comparison(w):
    k,m,n,h=(w[a] for a in ['k','m','n','h'])
    for field,size in [('outgoing',k*m),('incoming',m*n),('inclusion',m*h),('projection',h*m),('up',n*m),('down',m*k)]:
        if len(w[field])!=size or any(type(x)!=bool for x in w[field]):return False
    d=lambda x:evaluate(w['outgoing'],k,m,x)
    inc=lambda x:evaluate(w['incoming'],m,n,x)
    i=lambda x:evaluate(w['inclusion'],m,h,x)
    p=lambda x:evaluate(w['projection'],h,m,x)
    boundaries={inc(x) for x in range(1<<n)}
    cycles={x for x in range(1<<m) if d(x)==0}
    if any(d(x)!=0 for x in boundaries):return False
    if any(d(i(z))!=0 or p(i(z))!=z for z in range(1<<h)):return False
    if any(x^i(p(x)) not in boundaries for x in cycles):return False
    if any((p(x)==p(y))!=((x^y) in boundaries) for x,y in product(cycles,repeat=2)):return False
    return True

def check_path(raw,stages,final):
    v=vector(raw)
    for s in stages:
        w=s['wire']
        if not check_comparison(w) or vector(s['representative'])!=v:return False
        if evaluate(w['outgoing'],w['k'],w['m'],v)!=0:return False
        if v in {evaluate(w['incoming'],w['m'],w['n'],a) for a in range(1<<w['n'])}:return False
        v=evaluate(w['projection'],w['h'],w['m'],v)
    return v==vector(final)

rows=[json.loads(line) for line in (HERE/'paths.jsonl').read_text().splitlines()]
provenance=json.loads((HERE/'provenance.json').read_text())
for name,digest in provenance['source_sha256'].items():assert sha(ROOT/name)==digest
db=sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
for key,expected in provenance['raw_rows'].items():
    assert list(db.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=?',(int(key),)).fetchone())==expected
mutations=0
for b,row in enumerate(rows):
    assert row['branch']==bool(b) and 'incoming' not in row and 'n' not in row and 'event' not in row
    assert row['sourceDegree']==dict(s=15,t=140) and row['targetDegree']==dict(s=20,t=144) and row['eventPage']==5
    assert row['rawSource']==[False,False,True,False,False] and row['rawTarget']==[True,False]
    assert row['source']==row['target']==row['outgoing']==[True]
    for name in ['source','target']:
        center=row[name+'Degree']
        for q,label in zip([2,3,4],row[name+'Labels'],strict=True):
            assert label==dict(page=q,center=center,incoming=dict(s=center['s']-q,t=center['t']-q+1),
                               outgoing=dict(s=center['s']+q,t=center['t']+q-1))
        assert check_path(row['raw'+name.title()],row[name+'Stages'],row[name])
        for stage in row[name+'Stages']:
            assert check_comparison(stage['wire'])
    d4=row['sourceStages'][2]['wire']
    assert d4['incoming']==[bool(b),True,False,False]
    assert d4['outgoing']==[False,False] and d4['projection']==[False,True]
    for x in range(4):assert evaluate(d4['projection'],1,2,x)==((x>>1)&1)
    for bad in range(8):
        changed=json.loads(json.dumps(row))
        if bad<3:changed['sourceStages'][bad]['representative']=[False]*len(changed['sourceStages'][bad]['representative'])
        elif bad<6:changed['targetStages'][bad-3]['representative']=[False]*len(changed['targetStages'][bad-3]['representative'])
        elif bad==6:changed['source']=[False]
        else:changed['target']=[False]
        assert not (check_path(changed['rawSource'],changed['sourceStages'],changed['source']) and
                    check_path(changed['rawTarget'],changed['targetStages'],changed['target']))
        mutations+=1

# Every possible incoming matrix through n=8: identity*d=0 iff the matrix is zero.
incoming_cases=0
for n in range(9):
    for a in range(1<<n):
        bits=[bool(a>>i&1) for i in range(n)]
        image={evaluate(bits,1,n,x) for x in range(1<<n)}
        assert (image=={0})==(a==0)
        incoming_cases+=1

malformed=[]
base=rows[0]
for field,value in [('n',0),('incoming',[]),('event',{}),('proved',True)]:
    malformed.append(canonical(dict(base,**{field:value})))
malformed.extend(['{"branch":false,"branch":true}',canonical(dict(base,branch=0)),
                  canonical(dict(base,sourceDegree=dict(s=15,t=141))),
                  canonical(dict(base,sourceStages=base['sourceStages'][:2])),
                  canonical(dict(base,outgoing=[None])),canonical(base).rstrip('\n')+'garbage',
                  canonical(base).rstrip('\n')+'\x00'])
badlabels=json.loads(json.dumps(base));badlabels['sourceLabels'][1]['incoming']['t']+=1
malformed.append(canonical(badlabels))
with tempfile.TemporaryDirectory(dir=HERE) as folder:
    path=Path(folder)/'input.jsonl'
    for bad in malformed:
        path.write_text(bad.rstrip('\n')+'\n')
        run=subprocess.run([str(HERE/'row3152-path-export'),str(path)],capture_output=True,text=True)
        assert run.returncode!=0 and ':1:' in run.stderr
    path.write_text(canonical(base)+malformed[0]+canonical(rows[1]))
    run=subprocess.run([str(HERE/'row3152-path-export'),str(path)],capture_output=True,text=True)
    assert run.returncode!=0 and run.stdout==canonical(base)+canonical(rows[1]) and ':2:' in run.stderr

repeat=[subprocess.check_output([str(HERE/'row3152-path-export'),str(HERE/'paths.input.jsonl')]) for _ in range(3)]
assert repeat[0]==repeat[1]==repeat[2]==(HERE/'paths.jsonl').read_bytes()
result=dict(status='independent_path_and_wire_review_passed',distinct_events=1,alternative_branches=2,
    complete_predecessor_comparisons=12,cycle_and_nonboundary_steps=12,
    changed_path_rejections=mutations,arbitrary_incoming_dimension_cases=incoming_cases,
    malformed_rejections=len(malformed),mixed_stream_recovery=True,repeated_identical_exports=3,
    incoming_dimension_claimed=False,actual_interpretation_unproved=True,
    inputs={p.name:sha(p) for p in [HERE/'paths.jsonl',HERE/'sourceD40.json',HERE/'sourceD41.json',
                                   HERE/'provenance.json',HERE/'review.py',HERE/'row3152-path-export']})
(HERE/'review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
