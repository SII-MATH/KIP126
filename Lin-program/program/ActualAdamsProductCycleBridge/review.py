"""Check actual degree bookkeeping and nonzero graded derivations over F2."""
import hashlib,itertools,json
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
add=lambda a,b:(a[0]+b[0],a[1]+b[1])
target=lambda r,a:(a[0]+r,a[1]+r-1)
degree_cases=0
for r in range(2,9):
    for a,b in itertools.product(itertools.product(range(5),range(-3,5)),repeat=2):
        assert target(r,add(a,b))==add(target(r,a),b)==add(a,target(r,b))
        degree_cases+=1
g=(4,24);delta=(9,54);g2=add(g,g);g4=add(g2,g2);named=add(g4,delta)
assert (g2,g4,named,target(4,named),target(4,delta))==((8,48),(16,96),(25,150),(29,153),(13,57))
# F2[x,y,z], d(x)=y, d(y)=d(z)=0; y has the degree of d4(x).
def plus(a,b):return a.symmetric_difference(b)
def mul(a,b):
    out=set()
    for x in a:
        for y in b:
            m=tuple(u+v for u,v in zip(x,y))
            if m in out:out.remove(m)
            else:out.add(m)
    return out
def derivative(a):
    out=set()
    for x,y,z in a:
        if x%2:
            m=(x-1,y+1,z)
            if m in out:out.remove(m)
            else:out.add(m)
    return out
monomials=[(0,0,0),(1,0,0),(2,0,0),(3,0,0),(0,1,0),(1,1,0),(0,0,1),(1,0,1)]
polys=[{m for i,m in enumerate(monomials) if mask>>i&1} for mask in range(256)]
leibniz=0
for a in polys:
    aa=mul(a,a);assert derivative(aa)==set()
    fourth=mul(aa,aa);assert derivative(fourth)==set()
    assert derivative(mul(fourth,{(0,0,1)}))==set()
    for b in polys:
        assert derivative(mul(a,b))==plus(mul(derivative(a),b),mul(a,derivative(b)));leibniz+=1
assert derivative({(1,0,0)})=={(0,1,0)}
for monomial in monomials:
    x,y,z=monomial
    def degree(m):return (m[0]*4+m[1]*8+m[2]*9,m[0]*24+m[1]*27+m[2]*54)
    for output in derivative({monomial}):assert degree(output)==target(4,degree(monomial))
inputs=[Path(__file__),*sorted(P.glob('*.lean')),P/'README.md',
    R/'ManualInputObligations/Reference/AdamsRules.lean',R/'ManualInputObligations/Reference/AdamsHomology.lean',
    R/'ActualAdamsSystemBridge/Basic.lean',R/'Fact764ConstrainedE5/Conclusion.lean']
report={'status':'graded_product_review_passed','degree_cases':degree_cases,'leibniz_pairs':leibniz,
    'square_fourth_named_cases':256,'nonzero_generator_derivative':True,
    'named_degree':named,'named_target':target(4,named),'delta_target':target(4,delta),
    'proof_boundaries':['Certified typed Adams multiplication and ordinary same-page Leibniz are explicit; the existing GeneralizedLeibnizRule name does not add cross-page/indeterminacy rules.',
        'PageTower comes from the same actual homology identifications, not an unrelated tower.',
        'Empty actual E2 coordinates require faithfulness; raw SQL absence alone is insufficient.',
        'Finite kernel transport uses the all-actual-elements matrix equation and named coordinate binding.',
        'Actual all-cycle uniqueness still requires WholeMeaning for reverse transport.'],
    'source_sha256':{str(p.relative_to(R)):sha(p) for p in inputs}}
(P/'review.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
print('graded degrees',degree_cases,'Leibniz pairs',leibniz,'square/fourth/named',256)
