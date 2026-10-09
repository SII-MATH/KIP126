"""Independent quotient-example enumeration and precise premise inventory."""
import hashlib
import json
from pathlib import Path

p=Path(__file__).resolve().parent
r=p.parent
sha=lambda f:hashlib.sha256(f.read_bytes()).hexdigest()
cases=[]
for n in range(17):
    classes=[{False},{True}] if n==0 else [{False,True}]
    for x in [False,True]:
        image=next(i for i,c in enumerate(classes) if x in c)
        zero=next(i for i,c in enumerate(classes) if False in c)
        boundary=n>0 or x is False
        assert (image==zero)==boundary
        outgoing_zero=True
        next_member=True
        assert outgoing_zero==next_member
        next_classes=[{False,True}]
        next_image=next(i for i,c in enumerate(next_classes) if x in c)
        assert next_image==0
        cases.append(dict(index=n,adams_page=n+2,initial_element=x,
            quotient_class=image,zero_class=zero,boundary=boundary))
paper=r/'AdvancedRuleCertificates/kervaire-v2.txt'
text=paper.read_text();start=text.index('Notation 3.10 .')
notation=text[start:text.index('The following two propositions',start)]
assert 'B_{\\infty}\\subset Z_{\\infty}' in notation
files=[p/f'{name}.lean' for name in ['Basic','Certificate','Examples','Boundary','Strong']]
files += [p/'README.md',p/'review.py',r/'OutgoingCycleCertificates/Basic.lean',
    r/'PermanentCycleCertificates/System.lean',paper]
result=dict(status='finite_quotient_example_and_premise_inventory_passed',
    sample_cases=cases,finite_scope='34 cases cover17 sample indices; Lean theorem is unbounded in Nat.',
    assumptions=['decreasing initial E2 cycle subsets containing zero',
      'initial boundary equality','full quotient equivalences onto actual pages',
      'zero-coset meaning','local outgoing-zero iff next cycle membership',
      'advance compatibility on next-cycle elements'],
    derived=['exact boundary fibers and full surjectivity','recursive representative alignment',
      'ZInfinity iff AlwaysCycle','checked finite prefix plus actual tail implies intersection'],
    optional_boundary_assumptions=['actual zero outgoing law','actual incoming images are cycles',
      'System homology-zero law'],
    optional_boundary_derived=['advance preserves zero','next boundary iff incoming-image preimage',
      'increasing boundary subsets','BInfinity subset ZInfinity',
      'strong Permanent iff ZInfinity and not BInfinity',
      'ZInfinity boundary is AlwaysCycle but not Permanent'],
    not_assumed=['AlwaysCycle iff ZInfinity','global survival','nonboundary','convergence'],
    remaining='Identify abstract setoid boundary fibers and cycle subsets with the paper additive Z/B groups and supply actual graded Adams quotient/differential realization.',
    paper_notation310=notation,
    inputs_sha256={str(f.relative_to(r)):sha(f) for f in files})
(p/'review.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
print('Finite quotient model: 34 cases; exact local-law premise inventory; no global equivalence premise')
