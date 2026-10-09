"""Independent finite quotient-equation crossing replay, including inessential values."""
import hashlib,itertools,json,re
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
subs=[frozenset([0]),frozenset([0,1]),frozenset([0,2]),frozenset([0,3]),frozenset(range(4))]
flags=[(subs[-1],a,b,subs[0]) for a,b in itertools.product(subs,repeat=2) if b<=a]
def level(F,s):return F[s] if s<len(F) else frozenset([0])
def apply(m,x):
    return sum((sum(((m>>(2*i+j))&1)*((x>>j)&1) for j in range(2))%2)<<i for i in range(2))
maps=points=equations=inessential=length_zero=intervals=stabilities=0
for F,G,m in itertools.product(flags,flags,range(16)):
    f=lambda x:apply(m,x)
    if not all(all(f(x) in level(G,s) for x in level(F,s)) for s in range(4)):continue
    maps+=1
    exactF=lambda t,x:x in level(F,t) and x not in level(F,t+1)
    exactG=lambda p,y:y in level(G,p) and y not in level(G,p+1)
    cross={}
    for s,p in itertools.product(range(5),repeat=2):
        witnesses=[]
        for t in range(s+1,p+1):
            Z={x for x in level(F,t) if f(x) in level(G,p)}
            H={x for x in level(F,t+1) if f(x) in level(G,p)}
            T={b^f(h) for b in level(G,p+1) for h in H}
            for x,y in itertools.product(Z,level(G,p)):
                eq=f(x)^y in T
                if exactF(t,x) and exactG(p,y):
                    equations+=1
                    if eq:
                        witnesses.append((t,x,y))
                        inessential+=f(x) in T
                        length_zero+=t==p
        crossing=bool(witnesses)
        images=[h for h in level(F,s+1) if exactG(p,f(h))]
        assert crossing==bool(images)
        if crossing:assert s<p
        for h in images:
            exits=[t for t in range(s+1,p+1) if exactF(t,h)]
            assert len(exits)==1
        cross[s,p]=crossing;points+=1
    for s,low,high in itertools.product(range(4),range(5),range(6)):
        none=all(not cross[s,p] for p in range(low,min(high,5)))
        old=all(not exactG(p,f(h)) for h in level(F,s+1) for p in range(low,high))
        assert none==old
        intervals+=1
    for s in range(4):
        for q in range(s,5):
            none=all(not cross[s,p] for p in range(s+1,q+1))
            stable=all(f(h) in level(G,q+1) for h in level(F,s+1))
            assert none==stable
            stabilities+=1
assert inessential>0 and length_zero>0
a=json.loads((P/'Crossing-compile.json').read_text())
assert a['observed_exit_code']==0
assert sha(P/'Crossing.lean')==a['source_sha256']
assert sha(P/'Crossing.log')==a['log_sha256']
assert sha(R/'.lake/build/lib/lean/FilteredMapExtension/Crossing.olean')==a['olean_sha256']
text=(P/'Crossing.log').read_text();assert 'sorryAx' not in text and 'error:' not in text
reports=re.findall(r'depends on axioms: \[([^]]*)\]',text);assert len(reports)==9
for row in reports:assert {v.strip() for v in row.split(',')}<={'propext','Classical.choice','Quot.sound'}
inputs=[Path(__file__),P/'CROSSING.md',P/'Crossing.lean',P/'Crossing.log',P/'Crossing-compile.json',
    P/'Basic.lean',P/'TargetExamples.lean',P/'Examples.lean',
    R/'FilteredRepresentativeCrossing/Basic.lean',R/'GeneralizedLeibnizAudit/RepresentativeSquare.lean']
report=dict(status='quotient_defined_crossing_passed',filtered_maps=maps,crossing_points=points,
    exact_representative_equation_cases=equations,inessential_crossing_witnesses=inessential,
    length_zero_crossing_witnesses=length_zero,arbitrary_interval_comparisons=intervals,
    stability_comparisons=stabilities,direct_exit=0,standard_reports=9,paper_ESS_identified=False,
    source_sha256={str(p.relative_to(R)):sha(p) for p in inputs})
(P/'crossing-review.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
print(json.dumps({k:v for k,v in report.items() if k!='source_sha256'}))
