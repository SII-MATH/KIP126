"""Two eta-compatible complete endpoint paths; no incoming dimension in event wire."""
import hashlib
import json
from pathlib import Path
import sqlite3
import subprocess

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
source=json.loads((ROOT/'AggregateD5Conditional/source.json').read_text())
blocks=source['blocks']
canonical=lambda x:json.dumps(x,sort_keys=True,separators=(',',':'))+'\n'
ev=lambda a,m,n,x:[bool(sum(a[i*n+j]*x[j] for j in range(n))%2) for i in range(m)]

def path(s,t,indices,extra):
    stages=[]
    raw=[i in indices for i in range(blocks[f'S0:{s},{t}:d2']['wire']['m'])]
    v=raw
    for q in [2,3,4]:
        w=extra if q==4 and extra is not None else blocks[f'S0:{s},{t}:d{q}']['wire']
        assert not any(ev(w['outgoing'],w['k'],w['m'],v))
        stages.append(dict(wire=w,representative=v))
        v=ev(w['projection'],w['h'],w['m'],v)
        assert any(v)
    return raw,stages,v

records=[]
label=lambda s,t,q:dict(page=q,center=dict(s=s,t=t),incoming=dict(s=s-q,t=t-q+1),outgoing=dict(s=s+q,t=t+q-1))
for b in [False,True]:
    bits=('1' if b else '0')+'100'
    run=subprocess.run([str(ROOT/'PageTransitionCertificates/page-transition-export'),'1','2','2','00',bits],
                       check=True,capture_output=True,text=True)
    comparison=json.loads(run.stdout)
    assert comparison['h']==1
    (HERE/f'sourceD4{int(b)}.json').write_text(canonical(comparison))
    rs,ss,vs=path(15,140,[2],comparison)
    rt,st,vt=path(20,144,[0],None)
    assert vs==vt==[True]
    records.append(dict(version=1,branch=b,eventPage=5,sourceDegree=dict(s=15,t=140),targetDegree=dict(s=20,t=144),
        sourceLabels=[label(15,140,q) for q in [2,3,4]],targetLabels=[label(20,144,q) for q in [2,3,4]],
        rawSource=rs,rawTarget=rt,sourceStages=ss,targetStages=st,source=vs,target=vt,outgoing=[True]))
(HERE/'paths.input.jsonl').write_text(''.join(map(canonical,records)))
with (HERE/'paths.jsonl').open('w') as stream:
    subprocess.run([str(HERE/'row3152-path-export'),str(HERE/'paths.input.jsonl')],stdout=stream,check=True)
for b,line in enumerate((HERE/'paths.jsonl').read_text().splitlines(keepends=True)):
    (HERE/f'path{b}.json').write_text(line)
db=sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
raw={str(i):list(db.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=?',(i,)).fetchone())
     for i in [2925,2926,3151,3152,3485,2708,2858]}
assert raw['3152']==[3152,15,140,'2','0',9995]
seen=set()
def visit(k):
    if k in seen:return
    seen.add(k)
    for predecessor in blocks[k]['predecessors']:visit(predecessor)
for s,t,qs in [(15,140,[2,3]),(20,144,[2,3,4]),(11,137,[2,3])]:
    for q in qs:visit(f'S0:{s},{t}:d{q}')
report=dict(event=3152,distinct_events=1,branch_first_bits=[False,True],raw_rows=raw,
    prior_steps_each=6,source_raw_e2_local=[2],source_raw_e2_global=[3152],
    target_raw_e2_local=[0],target_raw_e2_global=[3484],
    new_source_d4_outgoing_reason='stored3152 d4 zero prefix plus d4 squared zero on known3151 boundary',
    new_source_d4_incoming='full [b,1;0,0] from Row2925EtaD4 second-bit restriction and known3151 value',
    event_value_reason='stored3152 d5 value, interpreted separately from its prefix and eta constraint',
    incoming_dimension='unspecified; Generic.complete quantifies over every n; Actual proves the whole actual incoming map zero by d5 injectivity and d squared',
    forbidden_interpretation='No n=0 wire is emitted for the event; zero boundary image is not an actual-source dimension assertion.',
    uses=[dict(block=k,**u) for k in sorted(seen) for u in blocks[k]['uses']],
    shared_snapshot_unchanged=True,
    source_sha256={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in
        [ROOT/'AggregateD5Conditional/source.json',ROOT/'AggregateD5Conditional/dag.json',
         ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db',HERE/'prepare.py',HERE/'export.cpp']})
(HERE/'provenance.json').write_text(json.dumps(report,indent=2)+'\n')
print('2 complete endpoint paths, one event value, no assigned incoming dimension')
