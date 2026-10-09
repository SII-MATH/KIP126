"""Independent finite additive-filtration and type-equivalence counterchecks."""
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
V=frozenset(range(4))
subspaces=[frozenset(c) for n in range(1,5) for c in itertools.combinations(V,n)
           if 0 in c and all(x^y in c for x in c for y in c)]
states=[(z,b) for z in subspaces for b in subspaces if b<=z]
def next_states(state):
    z,b=state
    return [q for q in states if q[0]<=z and b<=q[1]]
def project(x,b):return min(x^y for y in b)
families=add_pairs=boundary_pairs=quotient_pairs=0
for s1 in next_states((V,frozenset({0}))):
    for s2 in next_states(s1):
        for s3 in next_states(s2):
            chain=[(V,frozenset({0})),s1,s2,s3,s3]
            families+=1
            for z,b in chain:
                assert 0 in z and 0 in b and b<=z
                assert all(x^y in z for x in z for y in z)
                assert all(x^y in b for x in b for y in b)
                quotient={project(x,b) for x in z}
                for x,y in itertools.product(z,repeat=2):
                    add_pairs+=1
                    assert project(x^y,b)==(project(x,b)^project(y,b))
                    assert (project(x,b)==project(y,b))==(x^y in b)
                    boundary_pairs+=1
                    # Transported quotient addition equals the actual sum class.
                    assert project(project(x,b)^project(y,b),b)==project(x^y,b)
                    quotient_pairs+=1
                assert {x for x in z if project(x,b)==0}==b
                assert {project(x,b) for x in z}==quotient
            # Advance is additive on its cycle domain only.
            for (z,b),(zn,bn) in zip(chain,chain[1:]):
                for x,y in itertools.product(zn,repeat=2):
                    assert project(project(x^y,b),bn)==(
                        project(project(x,b),bn)^project(project(y,b),bn))

# All type bijections of F2^3: addition forces zero; preserving zero alone
# does not force addition. Enumerate each possible map completely.
permutations=additive=zero_preserving=zero_preserving_nonadditive=0
for perm in itertools.permutations(range(8)):
    permutations+=1
    preserves_add=all(perm[x^y]==(perm[x]^perm[y]) for x in range(8) for y in range(8))
    if preserves_add:
        additive+=1
        assert perm[0]==0
    if perm[0]==0:
        zero_preserving+=1
        zero_preserving_nonadditive+=not preserves_add
assert (permutations,additive,zero_preserving,zero_preserving_nonadditive)==(40320,168,5040,4872)
swap=lambda x:2 if x==1 else 1 if x==2 else x
assert swap(0)==0 and swap(1^4)!=(swap(1)^swap(4))
# Extend a cycle map by zero: noncycles may sum to a nonzero cycle.
advance=lambda x:x if x in {0,1} else 0
assert advance(2^3)!=(advance(2)^advance(3))

modules=['Basic','Subgroups','Quotient','Counterexamples']
records=[];reports=0
for name in modules:
    row=json.loads((HERE/(name+'-compile.json')).read_text())
    assert row['observed_exit_code']==0
    assert row['source_sha256']==sha(HERE/(name+'.lean'))
    assert row['log_sha256']==sha(HERE/(name+'.log'))
    text=(HERE/(name+'.log')).read_text()
    ax=re.findall(r'depends on axioms: \[([^]]*)\]',text)
    assert all({x.strip() for x in a.split(',')}<={'propext','Classical.choice','Quot.sound'} for a in ax)
    reports+=len(ax)+text.count('does not depend on any axioms')
    records.append(dict(module=name,exit_code=0,source_log_match=True,
        current_olean_matches_direct=sha(ROOT/'.lake/build/lib/lean/ActualAdamsAdditiveFiltration'/(name+'.olean'))==row['olean_sha256']))
assert reports==16
files=[HERE/(name+'.lean') for name in modules]+[
    ROOT/'ActualAdamsFiltration/Basic.lean',ROOT/'ActualAdamsFiltration/Actual.lean',
    ROOT/'ActualAdamsSystemBridge/Basic.lean',ROOT/'ActualAdamsSystemBridge/Trace.lean',
    ROOT/'ManualInputObligations/Reference/AdamsHomology.lean',
    ROOT/'OutgoingCycleFiltrationCertificates/Boundary.lean',Path(__file__)]
result=dict(status='independent_additive_filtration_review_passed',findings=[],
    reviewer='/root/certificate_pipeline_next',modules=modules,
    proof_review=['AddMeaning acts on every pair of actual PageCycle representatives and the actual toNext quotient map, rather than an uninterpreted compatibility tag.',
      'Using zero+zero and characteristic-two cancellation derives ZeroMeaning. No zero preservation is inferred from type bijectivity alone.',
      'advance_add is restricted to cycles. cycles_add_and_at inducts with both prior-cycle hypotheses and proves cycle closure and recursive additivity together.',
      'Z and B are actual AddSubgroup values on the initial F2 carrier. Zero/additive closure and negative closure are proved; B uses the exact cycle-and-zero representative criterion.',
      'Boundary sum iff equal current images is proved in both directions using local additivity and characteristic two.',
      'image is an actual additive homomorphism. Surjectivity is obtained from the full actual homology inverse and previous representative theorem; its kernel is exactly B.',
      'quotientAdd is transported from the actual page addition, then quotientAdd_mk proves it agrees with addition of representatives. It does not assume this formula.',
      'Counterexamples swaps the first two basis vectors of F2^3. This is a full zero-preserving equivalence that fails addition on e0+e2, so ZeroMeaning alone cannot replace AddMeaning.',
      'No actual sphere/tmf realization, convergence theorem or SQL-to-topology meaning is constructed here.'],
    finite_checks=dict(filtered_F2_squared_chains=families,addition_pairs=add_pairs,
        boundary_sum_pairs=boundary_pairs,quotient_addition_pairs=quotient_pairs,
        F2_cubed_type_permutations=permutations,additive_bijections=additive,
        zero_preserving_bijections=zero_preserving,zero_preserving_nonadditive=zero_preserving_nonadditive,
        noncycle_advance_counterexample='Cycle domain{0,1}, identity on cycles and zero elsewhere: advance(2+3)=1, advance2+advance3=0.'),
    build_evidence=dict(records=records,standard_or_no_axiom_reports=reports),
    input_sha256={str(p.relative_to(ROOT)):sha(p) for p in files})
(HERE/'independent-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(f'{families} F2^2 chains;{permutations} F2^3 type permutations;{reports} standard reports;no findings')
