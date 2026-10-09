"""Independent canonical-filtration replay and exact successful source/log audit."""
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()

def linear(columns, x):
    y = 0
    for i, c in enumerate(columns):
        if (x >> i) & 1:
            y ^= c
    return y

def transitions(dimension):
    size = 1 << dimension
    result = []
    for incoming_columns in itertools.product(range(size), repeat=2):
        incoming = [linear(incoming_columns, x) for x in range(4)]
        for outgoing_columns in itertools.product(range(4), repeat=dimension):
            outgoing = [linear(outgoing_columns, x) for x in range(size)]
            if any(outgoing[x] for x in incoming):
                continue
            cycles = {x for x in range(size) if outgoing[x] == 0}
            boundaries = set(incoming)
            rep = lambda x: min(x ^ b for b in boundaries)
            cosets = sorted({rep(x) for x in cycles})
            for permutation in itertools.permutations(range(1, len(cosets))):
                identify = dict(zip(cosets, (0, *permutation)))
                advance = [identify[rep(x)] if x in cycles else 0 for x in range(size)]
                assert {advance[x] for x in cycles} == set(range(len(cosets)))
                assert all((advance[x] == 0) == (x in boundaries) for x in cycles)
                assert outgoing[0] == 0 and incoming[0] == 0 and advance[0] == 0
                result.append(dict(size=size, next_size=len(cosets), incoming=incoming,
                    outgoing=outgoing, advance=advance))
    return result

choices = {1 << n: transitions(n) for n in range(3)}
families = initial_cases = local_elements = local_pairs = trace_cases = strong_cases = 0
killed_nonzero = noncycle_rejections = 0
for first in choices[4]:
    for second in choices[first['next_size']]:
        terminal_size = second['next_size']
        terminal = dict(size=terminal_size, next_size=terminal_size,
            incoming=[0] * 4, outgoing=[0] * terminal_size,
            advance=list(range(terminal_size)))
        stages = [first, second, terminal, terminal]
        families += 1
        at = [[x] for x in range(4)]
        cycle = [[True] for _ in range(4)]
        for x in range(4):
            for stage in stages:
                y = at[x][-1]
                cycle[x].append(cycle[x][-1] and stage['outgoing'][y] == 0)
                at[x].append(stage['advance'][y])
        for n in range(4):
            stage = stages[n]
            z = [x for x in range(4) if cycle[x][n]]
            assert {at[x][n] for x in z} == set(range(stage['size']))
            for x in z:
                assert (stage['outgoing'][at[x][n]] == 0) == cycle[x][n+1]
                assert (cycle[x][n+1] and at[x][n+1] == 0) == (
                    at[x][n] in stage['incoming'])
                local_elements += 1
                for y in z:
                    if at[x][n] == at[y][n]:
                        assert cycle[x][n+1] == cycle[y][n+1]
                        if cycle[x][n+1]:
                            assert at[x][n+1] == at[y][n+1]
                    local_pairs += 1
            # Quotient by equality of actual representatives has exactly the
            # whole actual page, and zero is its precise boundary fiber.
            fibers = {at[x][n]: {y for y in z if at[y][n] == at[x][n]} for x in z}
            assert len(fibers) == stage['size']
            assert set().union(*fibers.values()) == set(z)
        for x in range(4):
            path = [x]
            for n, stage in enumerate(stages):
                exists_trace = bool(path)
                assert exists_trace == cycle[x][n]
                if exists_trace:
                    assert path[-1] == at[x][n]
                    trace_cases += 1
                    if stage['outgoing'][path[-1]] == 0:
                        path.append(stage['advance'][path[-1]])
                    else:
                        path = []
                        noncycle_rejections += 1
            intersection = cycle[x][-1]
            boundary_union = any(cycle[x][n] and at[x][n] == 0 for n in range(5))
            permanent = all(stage['outgoing'][at[x][n]] == 0 and
                at[x][n] not in stage['incoming'] for n, stage in enumerate(stages))
            assert not boundary_union or intersection
            assert permanent == (intersection and not boundary_union)
            strong_cases += permanent
            killed_nonzero += x != 0 and intersection and boundary_union
            initial_cases += 1

# A weak homology-zero System can contain later phantom elements. Here all
# current elements are boundaries, every cycle advances to zero, and true is
# absent from the actual cycle image despite satisfying the weak zero law.
phantom_incoming = [0, 1]
phantom_outgoing = [0, 0]
phantom_advance = [0, 0]
assert all((phantom_advance[x] == 0) == (x in phantom_incoming) for x in range(2))
assert {phantom_advance[x] for x in range(2) if phantom_outgoing[x] == 0} != {0, 1}

modules = [('Basic', 4), ('Actual', 6), ('Examples', 4)]
build = []
for name, count in modules:
    record = json.loads((HERE / (name + '-compile.json')).read_text())
    assert record['observed_exit_code'] == 0
    assert record['source_sha256'] == sha(HERE / (name + '.lean'))
    assert record['log_sha256'] == sha(HERE / (name + '.log'))
    log = (HERE / (name + '.log')).read_text()
    reports = re.findall(r'depends on axioms: \[([^]]*)\]', log)
    assert all({x.strip() for x in report.split(',')} <= {
        'propext', 'Classical.choice', 'Quot.sound'} for report in reports)
    assert len(reports) + log.count('does not depend on any axioms') == count
    assert 'sorryAx' not in log and 'error:' not in log
    current = ROOT / '.lake/build/lib/lean/ActualAdamsFiltration' / (name + '.olean')
    build.append(dict(module=name, observed_exit_code=0, standard_or_no_axiom_reports=count,
        current_olean_exists=current.exists(),
        current_olean_matches_direct=(sha(current) == record['olean_sha256'])
            if current.exists() else None))
files = [HERE / (name + '.lean') for name, _ in modules] + [
    ROOT / 'ActualAdamsSystemBridge/Basic.lean', ROOT / 'ActualAdamsSystemBridge/Trace.lean',
    ROOT / 'ManualInputObligations/Typed.lean', ROOT / 'ManualInputObligations/Reference/AdamsHomology.lean',
    ROOT / 'OutgoingCycleFiltrationCertificates/Basic.lean',
    ROOT / 'OutgoingCycleFiltrationCertificates/Boundary.lean',
    ROOT / 'OutgoingCycleFiltrationCertificates/Strong.lean',
    ROOT / 'OutgoingCycleFiltrationCertificates/Examples.lean',
    ROOT / 'OutgoingCycleCertificates/Examples.lean']
report = dict(status='independent_review_passed', findings=[], reviewer='/root/map_search_next',
    scope='Three frozen leaves: canonical cycle filtration, actual quotient realization, trace equivalence, and semantic counterexamples.',
    indexing=dict(system_n='Adams page n+2', Z_n='Prior outgoing pages 2 through n+1',
        Z_0='All E2 elements', endpoint='Adams page n+2 after exactly n cycle steps',
        boundary_n='Prior-cycle initial elements whose representative is zero on page n+2',
        incoming_at_n='Creates boundary at n+1, i.e. zero on page n+3'),
    constructed_by_definition=['Z subsets from finite prior outgoing-cycle conditions',
        'Boundary equivalence as equal actual n-page representatives',
        'Local outgoing iff next Z and commuting advance square',
        'Quotient injectivity from its defining fibers'],
    proved_completeness=['Every actual page element has an E2 ancestor satisfying every prior cycle condition, by repeated CycleSurjective.',
        'The entire canonical quotient surjects onto every actual page.',
        'Actual cycle surjectivity follows from CertifiedAdamsPages rightInverse and quotient representative elimination.',
        'Trace and Cycles are equivalent using real cycle proofs and advance_on_cycle, with no separate compatibility premise.'],
    not_eliminated=['Caller-supplied actual AdamsSpectralSequence and full differential maps',
        'CertifiedAdamsPages full homology identifications', 'ZeroMeaning',
        'Actual E2/Ext and spectrum/name realization',
        'Identification of canonical Z/B predicates with independently defined additive paper subgroups',
        'Additive quotient compatibility and convergence'],
    finite_replay=dict(transition_options={str(k): len(v) for k, v in choices.items()},
        two_transition_families=families, initial_elements=initial_cases,
        local_elements=local_elements, local_fiber_pairs=local_pairs,
        actual_trace_prefix_cases=trace_cases, noncycle_trace_rejections=noncycle_rejections,
        strong_permanent_cases=strong_cases, nonzero_initial_boundary_cycles=killed_nonzero,
        phantom_next_page_counterexample=True,
        scope='Complete F2-linear incoming/outgoing complexes up to current dimension2, all zero-preserving quotient identifications, two arbitrary transitions then constant stable tails.'),
    build_evidence=build,
    inputs_sha256={str(p.relative_to(ROOT)): sha(p) for p in files})
(HERE / 'independent-review.json').write_text(json.dumps(report, indent=2) + '\n')
print(f'Independent review passed: {families} full quotient towers, {initial_cases} initial elements, '
      f'{local_pairs} fiber pairs, {trace_cases} trace prefixes; 3 direct0/14 standard reports')
