"""Exhaust finite F2 filtered maps independently of the Lean quotient proof."""
import hashlib,itertools,json,re
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
subs=[frozenset([0]),frozenset([0,1]),frozenset([0,2]),frozenset([0,3]),frozenset(range(4))]
flags=[(subs[-1],a,b,subs[0]) for a,b in itertools.product(subs,repeat=2) if b<=a]
def level(F,s):return F[s] if s<len(F) else frozenset([0])
def apply(m,x):
    return sum((sum(((m>>(2*i+j))&1)*((x>>j)&1) for j in range(2))%2)<<i for i in range(2))
def quotient(Z,H):return {frozenset(x^h for h in H) for x in Z}
maps=pages=equations=kernel_classes=length_zero=nonzero_diffs=nontrivial_corrections=0
cokernel_steps=cokernel_cosets=killed_nonzero_targets=retained_nonzero_targets=0
for F,G,m in itertools.product(flags,flags,range(16)):
    f=lambda x:apply(m,x)
    if not all(all(f(x) in level(G,s) for x in level(F,s)) for s in range(4)):continue
    maps+=1
    for s,n in itertools.product(range(4),range(5)):
        Ft=level(F,s);higher=level(F,s+1);Gt=level(G,s+n);Gnext=level(G,s+n+1)
        Z={x for x in Ft if f(x) in Gt};H={x for x in higher if f(x) in Gt}
        T={b^f(h) for b in Gnext for h in H}
        assert H<=Z and T<=Gt
        E=quotient(Z,H);target=quotient(Gt,T)
        image=lambda x:frozenset(f(x)^t for t in T)
        d={C:image(next(iter(C))) for C in E}
        for C in E:assert all(image(x)==d[C] for x in C) and d[C] in target
        for C,D in itertools.product(E,repeat=2):
            plus=frozenset(x^y for x in C for y in D)
            assert d[plus]==frozenset(x^y for x in d[C] for y in d[D])
        for x in Z:
            corrections=[h for h in H if f(x^h) in Gnext]
            assert (image(x)==T)==bool(corrections)
            nonzero_diffs+=image(x)!=T
            nontrivial_corrections+=bool(corrections) and f(x) not in Gnext
            for y in Gt:
                eq=image(x)==frozenset(y^t for t in T)
                restricted=any(a^x in H and f(a)^y in Gnext for a in range(4))
                ordinary=any(a^x in higher and f(a)^y in Gnext for a in range(4))
                assert eq==restricted==ordinary
                equations+=1
        Zn={x for x in Ft if f(x) in Gnext};Hn={x for x in higher if f(x) in Gnext}
        assert Hn==Zn&H
        En=quotient(Zn,Hn)
        include={C:frozenset(next(iter(C))^h for h in H) for C in En}
        assert len(set(include.values()))==len(En)
        kernel={C for C in E if d[C]==T}
        assert set(include.values())==kernel
        kernel_classes+=len(kernel)
        if n==0:
            assert Z==Ft and H==higher and T==Gnext
            length_zero+=1
        pages+=1
        # At fixed target t=s+n+1, the old source index is s+1.
        oldZ={x for x in higher if f(x) in Gnext}
        oldH={x for x in level(F,s+2) if f(x) in Gnext}
        deeper=level(G,s+n+2)
        oldR={b^f(h) for b in deeper for h in oldH}
        newR={b^f(h) for b in deeper for h in oldZ}
        assert oldR<=newR<=Gnext
        oldT=quotient(Gnext,oldR);newT=quotient(Gnext,newR)
        advance={C:frozenset(next(iter(C))^r for r in newR) for C in oldT}
        assert set(advance.values())==newT
        drange={frozenset(f(x)^r for r in oldR) for x in oldZ}
        ker={C for C in oldT if advance[C]==newR}
        assert ker==drange
        cosets={frozenset(frozenset(x^y for x in C for y in D) for D in drange) for C in oldT}
        assert len(cosets)==len(newT)
        for coset in cosets:
            assert len({advance[C] for C in coset})==1
        cokernel_steps+=1;cokernel_cosets+=len(cosets)
        killed_nonzero_targets+=sum(C!=oldR and advance[C]==newR for C in oldT)
        retained_nonzero_targets+=sum(advance[C]!=newR for C in oldT)
assert nonzero_diffs>0 and nontrivial_corrections>0
assert killed_nonzero_targets>0 and retained_nonzero_targets>0
# Omitting f(H) from the target relation makes the sum example ill-defined:
# source representatives 01 and 11 differ by 10, but have images 01 and 00.
sum_map=3
assert apply(sum_map,1)!=apply(sum_map,3)
assert 1^3==2
reports=0;inputs=[Path(__file__),P/'README.md']
for name in ['Basic','NextPage','Examples','TargetNext','TargetExamples']:
    a=json.loads((P/(name+'-compile.json')).read_text())
    assert a['observed_exit_code']==0
    assert sha(P/(name+'.lean'))==a['source_sha256']
    assert sha(P/(name+'.log'))==a['log_sha256']
    assert sha(R/'.lake/build/lib/lean/FilteredMapExtension'/(name+'.olean'))==a['olean_sha256']
    text=(P/(name+'.log')).read_text();assert 'sorryAx' not in text and 'error:' not in text
    found=re.findall(r'depends on axioms: \[([^]]*)\]',text);reports+=len(found)
    for row in found:assert {v.strip() for v in row.split(',')}<={'propext','Classical.choice','Quot.sound'}
    inputs.extend(P/(name+s) for s in ['.lean','.log','-compile.json'])
assert reports==25,reports
inputs.extend([R/'FilteredRepresentativeCrossing/Basic.lean',R/'GeneralizedLeibnizAudit/RepresentativeSquare.lean'])
report=dict(status='filtered_map_quotients_passed',filtered_maps=maps,filtration_flags=len(flags),pages=pages,
    quotient_equation_cases=equations,kernel_classes=kernel_classes,length_zero_cases=length_zero,
    nonzero_differential_representatives=nonzero_diffs,nontrivial_correction_representatives=nontrivial_corrections,
    cokernel_steps=cokernel_steps,cokernel_cosets=cokernel_cosets,
    killed_nonzero_targets=killed_nonzero_targets,retained_nonzero_targets=retained_nonzero_targets,
    direct_builds=5,standard_reports=reports,paper_ESS_identified=False,
    source_sha256={str(p.relative_to(R)):sha(p) for p in inputs})
(P/'review.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
print(json.dumps({k:v for k,v in report.items() if k!='source_sha256'}))
