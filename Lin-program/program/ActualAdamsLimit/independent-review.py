"""Independent limiting subgroup and constant-tail quotient replay."""
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
V = frozenset(range(8))
spaces = []
for mask in range(1 << 8):
    s = frozenset(x for x in V if mask >> x & 1)
    if 0 in s and all(x ^ y in s for x in s for y in s):
        spaces.append(s)
assert len(spaces) == 16

def representatives(z, b):
    return sorted({min(x ^ y for y in b) for x in z})
def rep(x, b):
    return min(x ^ y for y in b)
def subgroup(s):
    return 0 in s and all(x ^ y in s for x in s for y in s)

towers = element_cases = quotient_pairs = nonzero_limits = killed_cycles = 0
weak_not_strong = empty_prefix_zero = 0
for z1, z2, b1, b2 in itertools.product(spaces, repeat=4):
    if not (z2 <= z1 and b1 <= b2 <= z2):
        continue
    z = [V, z1, z2, z2, z2]
    b = [frozenset([0]), b1, b2, b2, b2]
    pages = [representatives(zz, bb) for zz, bb in zip(z, b)]
    incoming = [{rep(x, b[n]) for x in b[n+1]} for n in range(4)]
    outgoing = [lambda x, n=n: rep(x, z[n+1]) for n in range(4)]
    advance = [lambda x, n=n: rep(x, b[n+1]) if x in z[n+1] else 0 for n in range(4)]
    for n in range(4):
        cycles = [x for x in pages[n] if outgoing[n](x) == 0]
        assert {advance[n](x) for x in cycles} == set(pages[n+1])
        assert all(outgoing[n](x) == 0 for x in incoming[n])
        for x, y in itertools.product(cycles, repeat=2):
            added = rep(x ^ y, b[n])
            assert advance[n](added) == rep(advance[n](x) ^ advance[n](y), b[n+1])
            assert (advance[n](x) == advance[n](y)) == (rep(x ^ y, b[n]) in incoming[n])
            quotient_pairs += 1
    paths = {}
    reconstructed_z = [set() for _ in range(5)]
    reconstructed_b = [set() for _ in range(5)]
    for x in V:
        values, cycles = [x], [True]
        for n in range(4):
            cycles.append(cycles[-1] and outgoing[n](values[-1]) == 0)
            values.append(advance[n](values[-1]))
        for n in range(5):
            if cycles[n]:
                reconstructed_z[n].add(x)
                if values[n] == 0:
                    reconstructed_b[n].add(x)
        paths[x] = (values, cycles)
    assert reconstructed_z == list(z) and reconstructed_b == list(b)
    intersection = set.intersection(*reconstructed_z)
    boundary_union = set.union(*reconstructed_b)
    assert subgroup(intersection) and subgroup(boundary_union)
    assert boundary_union <= intersection
    # Explicit cosets of the literal limiting subgroup quotient.
    limit_cosets = {frozenset(x ^ y for y in boundary_union) for x in intersection}
    assert len(limit_cosets) == len(pages[2])
    for x in V:
        values, cycles = paths[x]
        permanent = all(outgoing[n](values[n]) == 0 and values[n] not in incoming[n]
                        for n in range(4))
        always_cycle = all(cycles)
        assert always_cycle == (x in intersection)
        assert permanent == (x in intersection and x not in boundary_union)
        # A two-stage checked strong prefix includes nonboundary at each step;
        # whole incoming/outgoing maps are zero from cutoff 2 onward.
        strong_prefix = all(outgoing[n](values[n]) == 0 and values[n] not in incoming[n]
                            for n in range(2))
        weak_prefix = all(outgoing[n](values[n]) == 0 for n in range(2))
        assert strong_prefix == permanent and weak_prefix == always_cycle
        assert all(incoming[n] == {0} and all(outgoing[n](v) == 0 for v in pages[n])
                   for n in (2, 3))
        if x in intersection:
            quotient_zero = frozenset(x ^ y for y in boundary_union) == boundary_union
            assert quotient_zero == (x in boundary_union)
            assert permanent == (not quotient_zero)
            nonzero_limits += not quotient_zero
            killed_cycles += x != 0 and quotient_zero
        weak_not_strong += always_cycle and not permanent
        element_cases += 1
    # Empty range alone says nothing about nonzero permanence; zero is always a boundary.
    assert 0 in boundary_union
    empty_prefix_zero += 1
    towers += 1

build = []
report_count = 0
for name in ['Basic', 'Certificate']:
    rec = json.loads((HERE / (name + '-compile.json')).read_text())
    src, log = HERE / (name + '.lean'), HERE / (name + '.log')
    assert rec['observed_exit_code'] == 0
    assert rec['source_sha256'] == sha(src) and rec['log_sha256'] == sha(log)
    txt = log.read_text()
    deps = re.findall(r'depends on axioms: \[([^]]*)\]', txt)
    assert all({a.strip() for a in d.split(',')} <= {'propext', 'Classical.choice', 'Quot.sound'} for d in deps)
    count = len(deps) + txt.count('does not depend on any axioms')
    report_count += count
    assert 'sorryAx' not in txt and 'error:' not in txt
    obj = ROOT / '.lake/build/lib/lean/ActualAdamsLimit' / (name + '.olean')
    build.append(dict(module=name, exit_code=0, standard_axiom_reports=count,
        current_olean_exists=obj.exists(),
        current_olean_matches_direct=sha(obj) == rec['olean_sha256'] if obj.exists() else None))
assert report_count == 5
files = [HERE / (name + '.lean') for name in ['Basic', 'Certificate']] + [
    HERE / 'README.md', Path(__file__), ROOT / 'ActualAdamsAdditiveFiltration/Subgroups.lean',
    ROOT / 'ActualAdamsAdditiveFiltration/Basic.lean', ROOT / 'ActualAdamsFiltration/Actual.lean',
    ROOT / 'ActualAdamsFiltration/Basic.lean', ROOT / 'OutgoingCycleFiltrationCertificates/Strong.lean',
    ROOT / 'PermanentMapTailCertificates/Basic.lean', ROOT / 'PermanentMapTailCertificates/Certificate.lean']
result = dict(status='independent_review_passed', findings=[], reviewer='/root/map_search_next',
    finite_replay=dict(ambient='F2^3', additive_subgroups=16, two_transition_constant_tail_towers=towers,
        initial_element_cases=element_cases, additive_quotient_pairs=quotient_pairs,
        nonzero_limit_classes_by_representative=nonzero_limits,
        killed_nonzero_initial_cycles=killed_cycles, outgoing_only_not_strong=weak_not_strong,
        zero_not_permanent_cases=empty_prefix_zero),
    checked_semantics=['ZInfinity is the intersection of all actual additive cycle subgroups.',
        'BInfinity is the increasing union, with addition closure proved using max indices.',
        'BInfinity is a subgroup of ZInfinity by actual boundary coherence.',
        'Limit is the literal additive quotient via subgroup comap to ZInfinity.',
        'For x already in ZInfinity, strong permanence iff its limit class is nonzero.',
        'Intersection tactic uses only outgoing-cycle prefix and full outgoing-map tail.',
        'Nonzero-limit tactic retains strict nonboundary prefix and full incoming/outgoing tails.'],
    limitations=['Constant-tail finite models do not independently prove arbitrary infinite-tail theorems.',
        'No actual sphere or named paper class instance constructed.',
        'No convergence to stable homotopy groups or identification with paper-specific filtered objects.',
        'Meaning proofs and infinite tail equations are supplied in Lean, not imported from JSON.',
        'The certificate theorem starts from x : ZInfinity; intersection theorem can establish that membership first.'],
    build_evidence=build, standard_axiom_reports=report_count,
    input_sha256={str(p.relative_to(ROOT)): sha(p) for p in files})
(HERE / 'independent-review.json').write_text(json.dumps(result, indent=2) + '\n')
print(f'Independent limit review: {towers} full additive towers/{element_cases} elements/'
      f'{quotient_pairs} quotient pairs; 2 direct exits 0/5 standard reports')
