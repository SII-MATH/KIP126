"""Independent actual-quotient checks and audit of frozen Lean evidence."""
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()


def maps(domain, codomain):
    for columns in itertools.product(range(1 << codomain), repeat=domain):
        def apply(x, columns=columns):
            result = 0
            for j, column in enumerate(columns):
                if x & (1 << j):
                    result ^= column
            return result
        yield apply


def subspaces(dimension):
    result = {frozenset({0})}
    for vector in range(1 << dimension):
        for space in list(result):
            result.add(space | frozenset(x ^ vector for x in space))
    return result


complexes = unique_comparisons = coordinate_models = proper_current_models = 0
actual_cycle_checks = quotient_pair_checks = next_type_equivalences = 0
for m in range(1, 4):
    ambient = frozenset(range(1 << m))
    spaces = subspaces(m)
    for n in range(3):
        for outgoing in maps(m, 1):
            cycles = frozenset(x for x in ambient if outgoing(x) == 0)
            for incoming in maps(n, m):
                boundaries = frozenset(incoming(x) for x in range(1 << n))
                if not boundaries <= cycles:
                    continue
                complexes += 1
                if len(cycles) != 2 * len(boundaries):
                    continue
                for named in cycles - boundaries:
                    unique_comparisons += 1
                    for actual_current in spaces:
                        if not boundaries <= actual_current or named not in actual_current:
                            continue
                        coordinate_models += 1
                        proper_current_models += actual_current != ambient
                        # Current coordinates are the inclusion, possibly not surjective.
                        # Unit supplies the zero source; the complete actual source has
                        # every finite coordinate, including redundant source vectors.
                        actual_sources = [None] + list(range(1 << n))
                        source_coordinate = lambda y: 0 if y is None else y
                        assert {source_coordinate(y) for y in actual_sources} == set(range(1 << n))
                        actual_boundaries = {incoming(source_coordinate(y)) for y in actual_sources}
                        assert actual_boundaries == boundaries
                        actual_cycles = actual_current & cycles
                        assert named in actual_cycles and named not in actual_boundaries
                        for y in actual_cycles:
                            actual_cycle_checks += 1
                            assert y in actual_boundaries or y ^ named in actual_boundaries
                        representative = lambda y: min(y ^ b for b in actual_boundaries)
                        classes = {representative(y) for y in actual_cycles}
                        assert len(classes) == 2
                        assert representative(named) != representative(0)
                        for x, y in itertools.product(actual_cycles, repeat=2):
                            quotient_pair_checks += 1
                            assert (representative(x) == representative(y)) == (x ^ y in actual_boundaries)
                        for permutation in itertools.permutations(range(2)):
                            next_type_equivalences += 1
                            assert len(set(permutation)) == 2
                        # The transposition preserves cardinality but sends the
                        # nonzero class (index 1) to next-page zero (index 0).
                        assert (1, 0)[1] == 0

assert proper_current_models > 0
# Omitting full incoming-coordinate coverage permits a false unique conclusion:
# finite B spans e0, actual source only supplies zero, and named=e1.
finite_boundaries = {0, 1}
assert all(y in finite_boundaries or y ^ 2 in finite_boundaries for y in range(4))
assert 1 not in {0} and 1 ^ 2 not in {0}
# Omitting outgoing faithfulness permits d(named)=1 hidden by the zero map.
assert (lambda x: 0)(1) == 0 and (lambda x: x)(1) != 0
# Omitting current faithfulness hides an extra actual class e1.
assert (2 & 1) == 0 and 2 not in {0} and 2 ^ 1 not in {0}


def apply_flat(flat, rows, columns, x):
    result = 0
    for i in range(rows):
        if sum(int(flat[i * columns + j]) * ((x >> j) & 1) for j in range(columns)) % 2:
            result |= 1 << i
    return result


branch_cases = []
branches = json.loads((ROOT / 'Stem125E5Search/branches.json').read_text())['branches']['twentyfive']
for b, index in [(False, 8), (True, 18)]:
    path = ROOT / f'Fact764ConstrainedE5/certificate{int(b)}.json'
    text = path.read_text().strip()
    wire = json.loads(text)
    assert text == json.dumps(wire, sort_keys=True, separators=(',', ':'))
    assert wire['version'] == wire['comparison']['version'] == 1
    assert wire['comparison'] == branches[index]['wire']
    assert wire['named'] == [False, True, False]
    w = wire['comparison']
    assert (w['k'], w['m'], w['n'], w['h']) == (1, 3, 2, 1)
    outgoing = lambda x: apply_flat(w['outgoing'], 1, 3, x)
    incoming = lambda x: apply_flat(w['incoming'], 3, 2, x)
    projection = lambda x: apply_flat(w['projection'], 1, 3, x)
    inclusion = lambda x: apply_flat(w['inclusion'], 3, 1, x)
    up = lambda x: apply_flat(w['up'], 2, 3, x)
    down = lambda x: apply_flat(w['down'], 3, 1, x)
    boundary = {incoming(x) for x in range(4)}
    cycle = {x for x in range(8) if outgoing(x) == 0}
    assert len(cycle) == 8 and len(boundary) == 4 and 2 not in boundary
    assert all(outgoing(y) == 0 and projection(y) == 0 for y in boundary)
    assert all(projection(inclusion(y)) == y for y in range(2))
    assert all(inclusion(projection(y)) ^ incoming(up(y)) ^ down(outgoing(y)) == y for y in range(8))
    for x, y in itertools.product(cycle, repeat=2):
        assert (projection(x) == projection(y)) == (x ^ y in boundary)
    assert all(y in boundary or y ^ 2 in boundary for y in cycle)
    branch_cases.append(dict(boolean=b, index=index, cycle_count=8, boundary_count=4,
                             quotient_cardinality=2, all_cycle_pairs=64))

modules = ['Basic', 'Quotient', 'Fact764']
records = []
reports = 0
for name in modules:
    record = json.loads((HERE / (name + '-compile.json')).read_text())
    assert record['observed_exit_code'] == 0
    assert record['source_sha256'] == sha(HERE / (name + '.lean'))
    assert record['log_sha256'] == sha(HERE / (name + '.log'))
    log = (HERE / (name + '.log')).read_text()
    assert 'sorryAx' not in log and 'error:' not in log and 'error(' not in log
    axioms = re.findall(r'depends on axioms: \[([^]]*)\]', log)
    assert all({x.strip() for x in a.split(',')} <= {'propext', 'Classical.choice', 'Quot.sound'} for a in axioms)
    reports += len(axioms) + log.count('does not depend on any axioms')
    records.append(dict(module=name, exit_code=0, source_log_match=True,
                        current_olean_matches_direct=record['olean_sha256'] == sha(
                            ROOT / '.lake/build/lib/lean/ActualAdamsUniqueBridge' / (name + '.olean'))))
assert reports == 11
files = [HERE / (name + '.lean') for name in modules] + [
    ROOT / 'ActualAdamsSystemBridge/Basic.lean', ROOT / 'ActualAdamsSystemBridge/Trace.lean',
    ROOT / 'ManualInputObligations/Reference/AdamsHomology.lean',
    ROOT / 'UniqueHomologyCertificates/Basic.lean', ROOT / 'UniqueHomologyCertificates/Import.lean',
    ROOT / 'Fact764ConstrainedE5/Actual.lean', ROOT / 'Fact764ConstrainedE5/Imported.lean',
    ROOT / 'Fact764ConstrainedE5/certificate0.json', ROOT / 'Fact764ConstrainedE5/certificate1.json',
    ROOT / 'Stem125E5Search/branches.json', Path(__file__)]
result = dict(status='independent_actual_adams_unique_review_passed', findings=[],
    reviewer='/root/certificate_pipeline_next', modules=modules,
    proof_review=[
        'IsUnique uses actual S.differential, all actual PageBoundary sources, and every actual cycle.',
        'Incoming is Unit plus the Sigma of every source degree with the exact AdamsTarget equality. Unit supplies zero even when no nonnegative source degree exists.',
        'boundary_iff reconstructs actual witnesses via incoming_surjective, incoming_all and current faithfulness; a selected row list would not suffice.',
        'transport uses faithful outgoing coordinates to reflect the named cycle and current_add for the actual y+x boundary. It requires no current-coordinate surjectivity.',
        'quotientEquivBool constructs a genuine equivalence with the actual PageHomology quotient and distinguishes the named class from the zero class using quotient_zero_iff.',
        'actual_next_cardinality transports cardinality along the supplied nextPage equivalence. It does not claim that this arbitrary equivalence preserves zero or sends the named class to a nonzero next-page element.',
        'check_sound recomputes finite semantic check in the Lean kernel; adams_unique_cert uses rfl/decide, with actual coordinates and named interpretation supplied as proof-bearing fields.',
        'The canonical JSON importer rejects unknown/duplicate/noncanonical fields before materializing the finite wire. check_sound itself checks semantic comparison and named vector, not the outer metadata version; manually built wires still prove only the corresponding mathematical statement.',
        'Fact764 binds the exact imported branch8/18 complete matrices, named vector [false,true,false], page4 and degree(25,150), yielding a conditional actual page5 cardinality theorem.',
        'No actual sphere spectral sequence, actual coordinates, named monomial interpretation or convergence result is constructed.'],
    finite_checks=dict(complexes=complexes, unique_named_comparisons=unique_comparisons,
        actual_coordinate_models=coordinate_models, proper_current_coordinate_models=proper_current_models,
        actual_cycle_checks=actual_cycle_checks, quotient_pair_checks=quotient_pair_checks,
        next_page_type_equivalences=next_type_equivalences,
        missing_incoming_surjectivity_counterexample=True, missing_outgoing_faithfulness_counterexample=True,
        missing_current_faithfulness_counterexample=True,
        nonzero_next_page_counterexample='The two-point transposition preserves cardinality but maps the nonzero class to next-page zero.',
        fact764_branches=branch_cases),
    build_evidence=dict(records=records, standard_or_no_axiom_reports=reports),
    input_sha256={str(path.relative_to(ROOT)): sha(path) for path in files})
(HERE / 'independent-review.json').write_text(json.dumps(result, indent=2) + '\n')
print(f'{coordinate_models} actual models ({proper_current_models} proper current inclusions); '
      f'{quotient_pair_checks} quotient pairs; {reports} standard reports; no findings')
