"""All eight unknown-column completions, with exact trajectories and C++ binding."""
import hashlib
import json
import sqlite3
import subprocess
from pathlib import Path

p = Path(__file__).resolve().parent
r = p.parent
canonical = lambda x: json.dumps(x, sort_keys=True, separators=(',', ':'))+'\n'
source = json.loads((r/'AggregateLeibniz3564Conditional/source.json').read_text())
blocks = source['blocks']
degree = lambda s,t: dict(s=s,t=t)
label = lambda s,t,q: dict(page=q,center=degree(s,t),incoming=degree(s-q,t-q+1),outgoing=degree(s+q,t+q-1))
def path(s,t,indices):
    raw = [i in indices for i in range(blocks[f'S0:{s},{t}:d2']['wire']['m'])]
    v = raw
    stages = []
    for q in [2,3]:
        w = blocks[f'S0:{s},{t}:d{q}']['wire']
        assert not any(sum(w['outgoing'][i*w['m']+j]*v[j] for j in range(w['m']))%2 for i in range(w['k']))
        stages.append(dict(wire=w, representative=v))
        v = [bool(sum(w['projection'][i*w['m']+j]*v[j] for j in range(w['m']))%2) for i in range(w['h'])]
        assert any(v)
    return raw, stages, v
rawS,stS,vS = path(21,147,[1])
rawT,stT,vT = path(25,150,[3])
assert vS == [True,False] and vT == [True,False,False]
finite=[]
indexed=[]
for b,c,d in __import__("itertools").product([0,1],repeat=3):
    code = f'{b}{c}{d}'
    run = subprocess.run([str(r/'PageTransitionCertificates/page-transition-export'), '3','2','1', f'1{b}0{c}0{d}','00'], check=True, capture_output=True, text=True)
    w = json.loads(run.stdout)
    assert w['h'] == (0 if c or d else 1)
    (p/f'comparison{code}.json').write_text(canonical(w))
    f = dict(version=1,rawSource=rawS,rawTarget=rawT,sourceStages=stS,targetStages=stT,event=w,source=vS,target=vT)
    ix = dict(version=1,sourceDegree=degree(21,147),targetDegree=degree(25,150),eventPage=4,sourceLabels=[label(21,147,q) for q in [2,3]],targetLabels=[label(25,150,q) for q in [2,3]],finite=f)
    finite.append(f);indexed.append(ix)
for name,rows,exe in [('finite8',finite,'finite-event-export'),('indexed8',indexed,'indexed-event-export')]:
    (p/f'{name}.input.jsonl').write_text(''.join(map(canonical,rows)))
    with (p/f'{name}.jsonl').open('w') as out:
        subprocess.run([str(r/'FiniteEventProducer'/exe),str(p/f'{name}.input.jsonl')],stdout=out,check=True)
for j,code in enumerate([f'{b}{c}{d}' for b,c,d in __import__('itertools').product([0,1],repeat=3)]):
    for name in ['finite','indexed']:
        (p/f'{name}{code}.json').write_text((p/f'{name}8.jsonl').read_text().splitlines(keepends=True)[j])
    family=dict(version=1,entries=[dict(key=dict(object='S0',page=q,s=s,t=t),wire=w) for q,s,t,w in
        [(2,21,147,stS[0]['wire']),(2,25,150,stT[0]['wire']),
         (3,21,147,stS[1]['wire']),(3,25,150,stT[1]['wire']),(4,21,147,finite[j]['event'])]])
    (p/f'family{code}.input.json').write_text(canonical(family))
    exe=str(r/'IndexedFamilyProducer/indexed-family-export')
    with (p/f'family{code}.json').open('w') as out:
        subprocess.run([exe,'--family',str(p/f'family{code}.input.json')],stdout=out,check=True)
    with (p/f'bound{code}.json').open('w') as out:
        subprocess.run([exe,'--bind',str(p/f'family{code}.json'),'S0',str(p/f'indexed{code}.json')],stdout=out,check=True)
db=sqlite3.connect(f'file:{r}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
rows={rid:list(db.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=?',(rid,)).fetchone()) for rid in [3395,3496,3564,3749,3750,3992]}
seen=set()
def visit(k):
    if k in seen:return
    seen.add(k)
    for dep in blocks[k]['predecessors']:visit(dep)
for s,t in [(21,147),(25,150)]:
    for q in [2,3]:visit(f'S0:{s},{t}:d{q}')
uses=[dict(block=k,**u) for k in sorted(seen) for u in blocks[k]['uses'] if u['kind'].startswith('conditional')]
report=dict(event=3992,branches=[f'{b}{c}{d}' for b,c,d in __import__('itertools').product([0,1],repeat=3)],distinct_events=1,family_entries_each=5,prior_steps_each=4,
    raw_rows=rows,source_basis_id=3749,target_basis_id=3995,conditional_uses=uses,
    additional_premises=['Row3564LeibnizDetector x493 prefix and full Leibniz semantics',
       'row3496 d4 incoming-boundary prefix gives zero incoming column',
       'stored row3749 / incoming3992 d4 value semantics: this is the event value being verified, not independently derived'],
    unknown='The entire row3750 d4 column ranges over all eight vectors. No candidate is selected or assumed to vanish.',
    scope='Eight separate finite families; no extension of accepted95 and no independent derivation of the stored3992 differential. Target d4 comparison and full Adams realization are not supplied.',
    input_sha256={str(f.relative_to(r)):hashlib.sha256(f.read_bytes()).hexdigest() for f in [r/'AggregateLeibniz3564Conditional/source.json',r/'AggregateLeibniz3564Conditional/dag.json',r/'upstream/kervaire-49/S0_AdamsSS_t261.db']})
(p/'provenance.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
print('8 full comparisons,finite,indexed,bound certificates; one conditional3992 event; no unknown column selected')
