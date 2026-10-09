"""Independent Basic review; Trace build evidence is not an independent Trace review."""
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()

def apply(columns, x):
    result = 0
    for i, column in enumerate(columns):
        if x & (1 << i):
            result ^= column
    return result

# Full incoming/source, middle, and outgoing spaces are F2^2. Enumerate
# every pair of linear maps whose composite is zero, and every zero-preserving
# bijection from its homology cosets to an otherwise arbitrary next-page set.
matrices = list(itertools.product(range(4), repeat=2))
complexes = identifications = elements = 0
for incoming in matrices:
    for outgoing in matrices:
        if any(apply(outgoing, apply(incoming, x)) for x in range(4)):
            continue
        complexes += 1
        boundaries = {apply(incoming, x) for x in range(4)} | {0}
        cycles = {x for x in range(4) if apply(outgoing, x) == 0}
        representative = lambda x: min(x ^ b for b in boundaries)
        cosets = sorted({representative(x) for x in cycles})
        assert cosets[0] == 0
        for permutation in itertools.permutations(cosets[1:]):
            identify = dict(zip(cosets, (0, *permutation)))
            assert len(set(identify.values())) == len(cosets)
            identifications += 1
            for x in range(4):
                # Unit adds zero, and every source element is still represented.
                incoming_image = {0} | {apply(incoming, y) for y in range(4)}
                assert (x in incoming_image) == (x in boundaries)
                advanced = identify[representative(x)] if x in cycles else 0
                if x in cycles:
                    assert (advanced == 0) == (x in boundaries)
                    for y in cycles:
                        assert ((x == y) or ((x ^ y) in boundaries)) == (
                            representative(x) == representative(y))
                elements += 1

# A bare quotient bijection need not preserve zero. This is why Basic asks
# for ZeroMeaning, rather than extracting it from inverse equations.
swapped_identification = {0: 1, 1: 0}
assert len(set(swapped_identification.values())) == 2
assert swapped_identification[0] != 0
assert swapped_identification[1] == 0

# At negative incoming filtration there is no source degree; the isolated
# Unit zero still supplies precisely the zero boundary.
degree_cases = 0
for page in range(2, 15):
    for filtration in range(16):
        for internal in range(-2, 5):
            sources = [(f, t) for f in range(16) for t in range(-16, 6)
                       if (f + page, t + page - 1) == (filtration, internal)]
            expected = [] if filtration < page else [
                (filtration - page, internal - page + 1)]
            assert sources == expected
            degree_cases += 1

build = []
for name, expected_reports in [('Basic', 3), ('Trace', 5)]:
    record = json.loads((HERE / (name + '-compile.json')).read_text())
    assert record['observed_exit_code'] == 0
    assert record['source_sha256'] == sha(HERE / (name + '.lean'))
    assert record['log_sha256'] == sha(HERE / (name + '.log'))
    log = (HERE / (name + '.log')).read_text()
    reports = re.findall(r'depends on axioms: \[([^]]*)\]', log)
    assert len(reports) == expected_reports
    assert all({x.strip() for x in r.split(',')} <= {
        'propext', 'Classical.choice', 'Quot.sound'} for r in reports)
    build.append(dict(module=name, observed_exit_code=0,
                      standard_axiom_reports=len(reports),
                      current_olean_matches_direct=(record['olean_sha256'] ==
                          sha(ROOT / '.lake/build/lib/lean/ActualAdamsSystemBridge' /
                              (name + '.olean')))))

files = [HERE / 'Basic.lean', HERE / 'Trace.lean',
         ROOT / 'ManualInputObligations/Typed.lean',
         ROOT / 'ManualInputObligations/Reference/AdamsHomology.lean',
         ROOT / 'ManualInputObligations/Reference/AdamsRules.lean',
         ROOT / 'ManualInputObligations/Reference/SteenrodAdams.lean',
         ROOT / 'PermanentCycleCertificates/System.lean',
         ROOT / 'OutgoingCycleFiltrationCertificates/Boundary.lean']
report = dict(
    reviewer='/root/map_search_next',
    independent_scope='Basic.lean only; Trace.lean was implemented by this reviewer.',
    status='basic_independent_review_passed', findings=[],
    basic_semantics=[
        'Incoming includes every actual source degree and every element, with exact AdamsTarget equality casts.',
        'Unit contributes zero only, including when no nonnegative source degree exists.',
        'incoming_image proves exact equality with the full PageBoundary definition.',
        'quotient_zero_iff uses the actual quotient equivalence plus explicit ZeroMeaning.',
        'advance agrees with the prescribed homology quotient on cycles; noncycles map to zero by convention.',
        'system.homology_zero follows from the exact incoming-image and quotient-zero equivalences.'],
    trace_implementation=[
        'trace_at_transport proves actual transport along r=n+2 agrees with System.at by trace induction.',
        'trace_at and endpoint_at specialize transport to the system page indexing.',
        'incoming_cycle uses actual linear zero and differentialSq after eliminating the exact degree equality.',
        'differentialLaws supplies zero-outgoing and full incoming-cycle laws without finite table assumptions.'],
    independent_finite_replay=dict(full_linear_complexes=complexes,
        zero_preserving_quotient_identifications=identifications,
        element_checks=elements, exact_degree_cases=degree_cases,
        zero_preservation_counterexample=True,
        scope='Finite sanity checks supplement Lean proofs; dependent transport is reviewed in Lean source.'),
    build_evidence=build,
    inputs_sha256={str(p.relative_to(ROOT)): sha(p) for p in files},
    limitations=[
        'The actual graded sequence, certified quotient equivalences, and ZeroMeaning are supplied as mathematical arguments.',
        'The Type quotient equivalence plus ZeroMeaning is not an additive next-page identification.',
        'No spectrum-to-E2, named Ext-class, convergence, or stable-homotopy identification is constructed here.',
        'Trace requires cycle evidence at every step and does not prove endpoint nonzeroness or immunity to incoming boundaries.',
        'The total advance convention on noncycles does not assert that noncycles survive to a later Adams page.',
        'The previous abstract TailVanishing Incoming-subsingleton assumption can be too strong for this unreduced sum type.'])
(HERE / 'independent-basic-review.json').write_text(json.dumps(report, indent=2) + '\n')
print(f'Basic independent review: {complexes} full complexes, {identifications} '
      f'quotient identifications, {elements} element checks, {degree_cases} degree checks; '
      '3 Basic and 5 implementation-only Trace standard axiom reports; no findings')
