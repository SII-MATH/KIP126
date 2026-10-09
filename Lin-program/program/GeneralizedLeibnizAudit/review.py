"""Exhaustive representative-square replay and fixed-paper numerical audit."""
import hashlib,itertools,json
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
subgroups=[{0},{0,1}]
def same(H,a,b):return a^b in H
def extension(f,H,K,x,y):return any(same(H,a,x) and same(K,f*a,y) for a in [0,1])
def stable(f,H,K):return all(f*a in K for a in H)
checked=valid=nonzero=unstable_counter=stability_equivalences=0
for f,p,q,g in itertools.product([0,1],repeat=4):
    if q*f!=g*p:continue
    for HA,HB,HC,HD in itertools.product(subgroups,repeat=4):
        for x,y,z,w in itertools.product([0,1],repeat=4):
            checked+=1
            first=extension(f,HA,HB,x,y);second=extension(p,HA,HC,x,z);third=extension(g,HC,HD,z,w)
            if first:
                assert stable(f,HA,HB)==all(not same(HA,a,x) or same(HB,f*a,y) for a in [0,1])
                stability_equivalences+=1
            if not (first and second and third):continue
            if stable(f,HA,HB) or stable(p,HA,HC):
                conclusion=extension(q,HB,HD,y,w)
                if stable(g,HC,HD):
                    assert conclusion;valid+=1;nonzero+=w==1 and HD=={0}
                elif not conclusion:unstable_counter+=1
assert nonzero>0 and unstable_counter>0
assert extension(1,{0},{0},1,1) and extension(1,{0},{0,1},1,0)
assert extension(1,{0,1},{0},0,0) and not extension(1,{0},{0},1,0)
degrees=0
for e in [0,1]:
    for n in range(2,9):
        for r in range(n,10):
            for m in range(e,n-1+e):
                for l in range(e,9):
                    assert r+l-m>=2
                    assert r-1-m+e>=1
                    assert r-n>=0 and r+l-n-e>=0 and m-e>=0
                    for s,t in [(0,0),(1,16),(25,150)]:
                        y=(s+m,t+m);q=r+l-m;out=(y[0]+q,y[1]+q-1)
                        assert out==(s+r+l,t+r+l-1);degrees+=1
paper=json.loads((P/'paper-excerpts.json').read_text())
assert sha(R/paper['source_path'])==paper['source_sha256']
assert sha(P/'extract.py')==paper['extractor_sha256']
assert len(paper['records'])==26
text={r['html_id']:r['text'] for r in paper['records']}
assert 'd_{r+l-m}(y)=y_{\\infty}' in text['S6.Thmtheorem1']
assert 'e(f)=\\begin{cases}0' in text['S3.Thmtheorem19']
assert 'd_{3}(h_{0}h_{4})=h_{0}d_{0}' in text['S3.Thmtheorem15']
sources=[Path(__file__),P/'README.md',P/'RepresentativeSquare.lean',P/'paper-excerpts.json',P/'extract.py',
    R/'AdvancedRuleCertificates/Connecting.lean',R/'PropagationCertificates/Rules.lean',
    R/'ManualInputObligations/Reference/AdamsRules.lean',
    R/'../Reference/LinProgramReference/FilteredExtensions.lean',R/'../Reference/LinProgramReference/LinProgram.lean']
report={'status':'generalized_rule_scope_audit_passed','square_cases':checked,'valid_transfers':valid,
    'nonzero_transfers':nonzero,'missing_last_stability_counterexamples':unstable_counter,
    'stability_iff_cases':stability_equivalences,'paper_degree_cases':degrees,
    'paper_theorem_6_1_formalized':False,'new_rule':'Actual additive representative square with structural subgroup conditions.',
    'source_sha256':{str(p.relative_to(R)):sha(p) for p in sources}}
(P/'review.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
print(json.dumps({k:v for k,v in report.items() if k!='source_sha256'}))
