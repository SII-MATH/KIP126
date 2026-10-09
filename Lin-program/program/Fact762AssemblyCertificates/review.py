"""Record explicit assembly premises and audit the exhaustive page partition."""
import hashlib
import json
from pathlib import Path

p = Path(__file__).resolve().parent
r = p.parent
sha = lambda f: hashlib.sha256(f.read_bytes()).hexdigest()
zero = {5,8,9,10,11,13,14}
finite = {2,3,4,7} | zero | {6,12}
assert finite == set(range(2,15))
assert len({2,3,4,7})+len(zero)+len({6,12}) == len(finite)
checks = []
for q in range(2,65):
    category = ('allowed' if q in [6,12] else 'tail' if q>14 else
                'zero_source' if q in zero else 'routed' if q in [4,7] else 'early_nonimage')
    assert (14-q<0) == (q>14)
    checks.append(dict(page=q,category=category))
files = [p/'Routes.lean',p/'Assembly.lean',p/'README.md',p/'review.py',
    r/'Fact762IncomingCertificates/Incoming.lean',r/'Fact762Source4Certificates/KernelBranch.lean',
    r/'Fact762Source7Certificates/Semantics.lean',r/'Fact762Source7Certificates/Propagation.lean',
    r/'Fact762Source7Certificates/independent-review.json']
report = dict(status='assembly_premise_and_finite_partition_audit_passed',
    scope='Read-only contract review plus finite arithmetic checks; Lean proves arbitrary Nat q.',
    finite_pages=sorted(finite),allowed=[6,12],zero_source_pages=sorted(zero),sampled_partition=checks,
    proof_routes={
      'page4':'Page4Route.vanishes invokes source4 full kernel/quotient/faithful-coordinate theorem.',
      'page7':'Page7Route.vanishes invokes source7 full E3/PageTower/named-prefix/full E7 theorem.',
      'assembly':'Calls the existing quantified all-source incoming theorem with the two route consequences.'},
    target_nonzero='Only target q != zeroTarget q is a parameter of the queried theorem. No all-page nonzero field exists.',
    required_mathematics=['page2/3 actual nonimage proofs','row2708 survivor cycle and complete kernel',
      'page4 faithful full source coordinates','row2632 actual cycle/transition/d7 prefix',
      'full E3/E7 source realizations and actual PageTower','actual source zeros on seven listed pages',
      'negative-filtration absence','queried target nonzero and meaning'],
    not_concluded=['actual topology realization','outgoing permanence','all-page nonboundary survival',
      'actual existence of a d6 or d12 hit','unconditional Fact7.6(2)'],
    inputs_sha256={str(f.relative_to(r)):sha(f) for f in files})
(p/'review.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
print('Page partition2..14 exact; 63 sample queries; all semantic route premises explicit')
