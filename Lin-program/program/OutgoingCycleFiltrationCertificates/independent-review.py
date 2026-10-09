"""Independent finite filtered-quotient replay and historical build checks."""
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
vectors = frozenset(range(4))
subspaces = [frozenset(c) for n in range(1, 5)
             for c in itertools.combinations(vectors, n)
             if 0 in c and all(x ^ y in c for x in c for y in c)]
states = [(z, b) for z in subspaces for b in subspaces if b <= z]
initial = (vectors, frozenset({0}))

def extensions(state):
    z, b = state
    return [q for q in states if q[0] <= z and b <= q[1]]

def representative(x, boundaries):
    return min(x ^ b for b in boundaries)

families = initial_cases = local_checks = killed = strong = 0
for s1 in extensions(initial):
    for s2 in extensions(s1):
        for s3 in extensions(s2):
            family = [initial, s1, s2, s3, s3]
            families += 1
            for n in range(4):
                z, b = family[n]
                zn, bn = family[n + 1]
                classes = {representative(x, b) for x in z}
                assert {representative(x, b) for x in z} == classes
                incoming_image = {representative(x, b) for x in bn}
                for x in z:
                    image = representative(x, b)
                    assert (image == 0) == (x in b)
                    assert (image in zn) == (x in zn)
                    for y in z:
                        assert (image == representative(y, b)) == (x ^ y in b)
                    if x in zn:
                        advanced = representative(image, bn)
                        assert advanced == representative(x, bn)
                        assert (advanced == 0) == (image in incoming_image)
                    assert (x in bn) == (image in incoming_image)
                    local_checks += 1
            for x in vectors:
                value = x
                always_cycle = permanent = True
                for n in range(4):
                    z, b = family[n]
                    zn, bn = family[n + 1]
                    assert value in z
                    cycle = value in zn
                    incoming_image = {representative(y, b) for y in bn}
                    always_cycle &= cycle
                    permanent &= cycle and value not in incoming_image
                    if x in z:
                        assert value == representative(x, b)
                    value = representative(value, bn) if cycle else 0
                intersection = all(x in z for z, _ in family)
                boundary_union = any(x in b for _, b in family)
                assert always_cycle == intersection
                assert not boundary_union or intersection
                assert permanent == (intersection and not boundary_union)
                killed += intersection and boundary_union and x != 0
                strong += permanent
                initial_cases += 1

modules = ['Basic', 'Certificate', 'Examples', 'Boundary', 'Strong']
audit = json.loads((HERE / 'compile-audit.json').read_text())
assert {row['module'] for row in audit} == set(modules)
build = []
reports = 0
for row in audit:
    name = row['module']
    assert row['exit_code'] == 0
    assert sha(HERE / (name + '.lean')) == row['source_sha256']
    assert sha(HERE / (name + '.log')) == row['log_sha256']
    text = (HERE / (name + '.log')).read_text()
    axioms = re.findall(r'depends on axioms: \[([^]]*)\]', text)
    assert all({v.strip() for v in ax.split(',')} <= {
        'propext', 'Classical.choice', 'Quot.sound'} for ax in axioms)
    reports += len(axioms) + text.count('does not depend on any axioms')
    build.append(dict(module=name, source_log_match=True, exit_code=0,
        current_olean_matches_historical_direct=sha(ROOT / '.lake/build/lib/lean' /
            'OutgoingCycleFiltrationCertificates' / (name + '.olean')) == row['olean_sha256']))
assert reports == 13
files = [HERE / (m + '.lean') for m in modules] + [HERE / 'README.md',
    ROOT / 'OutgoingCycleCertificates/Basic.lean',
    ROOT / 'PermanentCycleCertificates/System.lean',
    ROOT / 'PermanentCycleCertificates/Finite.lean']
report = dict(status='independent_review_passed', findings=[],
    reviewer='/root/certificate_pipeline_next',
    scope='Five modules: full quotient semantics, local transition laws, boundary union, and strong permanent survival distinction.',
    derived=['Full quotient image surjectivity and exact boundary fibers',
      'All finite-prefix representatives agree with recursively advanced initial elements',
      'Intersection of all Z subsets iff outgoing differentials vanish on all pages',
      'Next boundary iff preimage of actual incoming image using homology_zero and incoming_cycle',
      'Cumulative boundary inclusion and BInfinity subset ZInfinity',
      'Strong Permanent iff ZInfinity and not BInfinity; initial B0 handled separately'],
    assumptions=['Initial whole E2 subset and equality relation',
      'Decreasing cycle subsets and zero membership',
      'Equivalence of full cycle/boundary quotients with every actual page',
      'Zero-preserving quotient image',
      'Local outgoing-zero iff next cycle membership',
      'Commuting quotient advance on cycles',
      'Actual zero-outgoing and incoming-cycle laws for boundary results',
      'System homology_zero and incoming_zero laws'],
    certificate_binding='Certificate fixes s and r.initial x; actual prefix coordinates, actual tail and full realization are proof inputs. No global intersection or permanence premise is hidden in Realization.',
    independent_replay=dict(method='Enumerate every three-transition chain of subspaces in F2^2 with decreasing Z and increasing B contained in next Z; extend last state constantly. Construct full actual quotient cosets, incoming images, outgoing cycle tests and advances independently.',
        families=families, initial_elements=initial_cases, local_representative_checks=local_checks,
        nonzero_initial_boundary_cycle_cases=killed, strong_permanent_cases=strong,
        finite_scope='Finite regression only. Lean proofs quantify all Nat pages; constant final tail makes enumerated predicates complete in each sampled model.'),
    build_evidence=dict(modules=build, standard_or_no_axiom_reports=reports,
      note='Direct source/log evidence retained. A subsequent integrated Lake build can replace current oleans; historical audit hashes are not rewritten.'),
    inputs_sha256={str(p.relative_to(ROOT)):sha(p) for p in files},
    remaining='Actual paper E2 and additive Z/B groups, boundary coset meanings, graded page realization and convergence are not constructed. AlwaysCycle includes classes killed by incoming differentials; no nonzero claim follows from it.')
(HERE / 'independent-review.json').write_text(json.dumps(report, indent=2) + '\n')
print(f'{families} filtered quotient systems; {initial_cases} initial elements; {local_checks} local checks; {reports} axiom reports; no findings')
