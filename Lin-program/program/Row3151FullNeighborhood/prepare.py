"""Six eta-compatible neighborhoods, retaining both row2708 d3 possibilities."""
import hashlib
import json
from pathlib import Path
import sqlite3
import subprocess

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
canonical=lambda x:json.dumps(x,sort_keys=True,separators=(',',':'))+'\n'
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
aggregate=json.loads((ROOT/'AggregateD5Conditional/source.json').read_text())
blocks=aggregate['blocks']
source_bytes=(ROOT/'AggregateD5Conditional/source.json').read_bytes()
cases=[(0,b,q) for b in range(2) for q in range(2)]+[(1,b,0) for b in range(2)]

def comparison(k,m,n,outgoing,incoming):
    encode=lambda xs:''.join('1' if x else '0' for x in xs)
    return json.loads(subprocess.check_output([str(ROOT/'PageTransitionCertificates/page-transition-export'),
       str(k),str(m),str(n),encode(outgoing),encode(incoming)],text=True))

ev=lambda a,m,n,x:[bool(sum(a[i*n+j]*x[j] for j in range(n))%2) for i in range(m)]
def path(s,t,indices):
    stages=[];raw=[i in indices for i in range(blocks[f'S0:{s},{t}:d2']['wire']['m'])];v=raw
    for r in [2,3]:
        w=blocks[f'S0:{s},{t}:d{r}']['wire'];assert not any(ev(w['outgoing'],w['k'],w['m'],v))
        stages.append(dict(wire=w,representative=v));v=ev(w['projection'],w['h'],w['m'],v);assert any(v)
    return raw,stages,v
rs,ss,vs=path(11,137,[2]);rt,ts,vt=path(15,140,[1])
assert vs==[False,True] and vt==[True,False]
label=lambda s,t,r:dict(page=r,center=dict(s=s,t=t),incoming=dict(s=s-r,t=t-r+1),outgoing=dict(s=s+r,t=t+r-1))
report=[]
imports=['import Row3152BranchCertificates.Semantics','import IndexedFamilyCertificates.Results',
         'import IndexedFamilyCertificates.Coherence','namespace Row3151FullNeighborhood.Data',
         'open PageTransitionCertificates IndexedFamilyCertificates AggregateTargetInventory.EventAudit']
for a,b,q in cases:
    code=f'{a}{b}{q}'
    c3=json.loads((ROOT/f'AffineRemainingSearch/branch2708-{a}.json').read_text())
    n=c3['h'];assert n==(1 if a else 2)
    D=[bool(b),True,False,False]
    J=[False,False] if a else [False,bool(q),False,bool(q and b)]
    c4=comparison(2,n,0,J,[])
    a4=comparison(2,2,n,D,J)
    b4=comparison(1,2,2,[False,False],D)
    expected=json.loads((ROOT/f'Row3152BranchCertificates/sourceD4{b}.json').read_text());assert b4==expected
    for name,w in [('incomingD3',c3),('incomingD4',c4),('event',a4),('targetD4',b4)]:
        (HERE/f'{name}{code}.json').write_text(canonical(w))
        imports.append(f'def {name}{code} : WireComparison := page_comparison% "Row3151FullNeighborhood/{name}{code}.json"')
    finite=dict(version=1,rawSource=rs,rawTarget=rt,sourceStages=ss,targetStages=ts,event=a4,source=vs,target=vt)
    ix=dict(version=1,sourceDegree=dict(s=11,t=137),targetDegree=dict(s=15,t=140),eventPage=4,
        sourceLabels=[label(11,137,r) for r in [2,3]],targetLabels=[label(15,140,r) for r in [2,3]],finite=finite)
    for name,value,exe,elab in [('finite',finite,'finite-event-export','finite_event'),('indexed',ix,'indexed-event-export','indexed_event')]:
        inp=HERE/f'{name}{code}.input.json';inp.write_text(canonical(value))
        with (HERE/f'{name}{code}.json').open('w') as out:
            subprocess.run([str(ROOT/'FiniteEventProducer'/exe),str(inp)],stdout=out,check=True)
        ty='Executable.Wire' if name=='finite' else 'Indexed.Wire'
        imports.append(f'def {name}{code} : {ty} := {elab}% "Row3151FullNeighborhood/{name}{code}.json"')
    entries=[]
    for s,t,third in [(7,134,c3),(11,137,ss[1]['wire']),(15,140,ts[1]['wire'])]:
        for r,w in [(2,blocks[f'S0:{s},{t}:d2']['wire']),(3,third),(4,{7:c4,11:a4,15:b4}[s])]:
            entries.append(dict(key=dict(object='S0',page=r,s=s,t=t),wire=w))
    family=dict(version=1,entries=entries)
    inp=HERE/f'family{code}.input.json';inp.write_text(canonical(family));exe=str(ROOT/'IndexedFamilyProducer/indexed-family-export')
    with (HERE/f'family{code}.json').open('w') as out:subprocess.run([exe,'--family',str(inp)],stdout=out,check=True)
    with (HERE/f'bound{code}.json').open('w') as out:subprocess.run([exe,'--bind',str(HERE/f'family{code}.json'),'S0',str(HERE/f'indexed{code}.json')],stdout=out,check=True)
    imports.append(f'def family{code} : Family := family_input% "Row3151FullNeighborhood/family{code}.json"')
    imports.append(f'def bound{code} : BoundWire := bound_event% "Row3151FullNeighborhood/bound{code}.json"')
    report.append(dict(code=code,row2708_d3=bool(a),row2925_first_bit=bool(b),additional_incoming_kernel_bit=bool(q),
        incoming_source_dimension=n,incoming_source_next_dimension=c4['h'],event_homology_dimension=a4['h'],target_next_dimension=b4['h'],
        incoming_matrix=J,outgoing_matrix=D,entries=9))
for name,ty in [('incomingD3','WireComparison'),('incomingD4','WireComparison'),('event','WireComparison'),('targetD4','WireComparison'),('finite','Executable.Wire'),('indexed','Indexed.Wire'),('family','Family'),('bound','BoundWire')]:
    imports.append(f'def {name} (a b q : Bool) : {ty} :=\n  if a then if b then {name}110 else {name}100\n  else if b then if q then {name}011 else {name}010\n  else if q then {name}001 else {name}000')
imports.append('end Row3151FullNeighborhood.Data')
(HERE/'Data.lean').write_text('\n'.join(imports)+'\n')
db=sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
raw={str(i):list(db.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=?',(i,)).fetchone()) for i in [2576,2707,2708,2925,2926,3151,3152]}
assert raw['2708']==[2708,7,134,'0,1',None,9997]
result=dict(distinct_events=1,cases=report,raw_rows=raw,
    frozen_aggregate_unchanged=(ROOT/'AggregateD5Conditional/source.json').read_bytes()==source_bytes,
    premise='row2707 zero d3/d4 prefixes; row2576 d3 zero; known3151 d4; eta second bit zero; inherited source/target d3 meanings; actual realization remains external',
    improvement='Exhaust both row2708 d3 outcomes and all compatible d4 incoming maps; no complete-kernel hypothesis chooses its dimension.',
    legacy_scope='Row3151BranchCertificates treats n=1 only. Its four outgoing completions were never a complete enumeration of the n=2 branch.',
    input_sha256={str(p.relative_to(ROOT)):sha(p) for p in [ROOT/'AggregateD5Conditional/source.json',ROOT/'AggregateD5Conditional/dag.json',
        ROOT/'AffineRemainingSearch/branch2708-0.json',ROOT/'AffineRemainingSearch/branch2708-1.json',
        ROOT/'Row3152BranchCertificates/sourceD40.json',ROOT/'Row3152BranchCertificates/sourceD41.json',
        ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db',HERE/'prepare.py']})
(HERE/'provenance.json').write_text(json.dumps(result,indent=2)+'\n')
print('6 complete9-key neighborhoods; variable incoming dimension; one common3151 event')
