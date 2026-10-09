"""Independent finite quotient model review; does not invoke Lean or Lake."""
import hashlib
import itertools
import json
import re
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()


def subspaces(dimension):
    all_spaces = {frozenset({0})}
    pending = [frozenset({0})]
    while pending:
        space = pending.pop()
        for x in range(1 << dimension):
            expanded = space | frozenset(y ^ x for y in space)
            if expanded not in all_spaces:
                all_spaces.add(expanded)
                pending.append(expanded)
    return sorted(all_spaces, key=lambda s: (len(s), sorted(s)))


spaces = {dimension: subspaces(dimension) for dimension in range(4)}
steps = {}
quotient_checks = 0
for dimension in range(4):
    size = 1 << dimension
    choices = []
    for functional in range(size):
        outgoing = [(x & functional).bit_count() % 2 for x in range(size)]
        kernel = {x for x in range(size) if outgoing[x] == 0}
        for boundary in spaces[dimension]:
            if not boundary <= kernel:
                continue
            representatives = sorted({min(x ^ b for b in boundary) for x in kernel})
            advance = [representatives.index(min(x ^ b for b in boundary))
                       if x in kernel else 0 for x in range(size)]
            next_dimension = (len(representatives)).bit_length() - 1
            for x in kernel:
                assert (advance[x] == 0) == (x in boundary)
                for y in kernel:
                    quotient_checks += 1
                    assert (advance[x] == advance[y]) == ((x ^ y) in boundary)
            # The labels for cosets need not use inherited bitwise addition;
            # equivalence, homology-zero, and cycle coverage are the relevant laws.
            assert set(advance[x] for x in kernel) == set(range(1 << next_dimension))
            choices.append((outgoing, boundary, advance, next_dimension, functional))
    steps[dimension] = choices

counts = dict(page_sequences=0, boundary_stability_comparisons=0,
              nonzero_endpoint_implications=0, cumulative_monotonicity_checks=0,
              outgoing_death_not_boundary=0, late_incoming_without_tail=0)
countermodels = {}
HORIZON = 4


def visit(dimension, at_history, cycle_history, boundary_history, step_history):
    if len(step_history) < HORIZON:
        previous_at, previous_cycles = at_history[-1], cycle_history[-1]
        for outgoing, incoming, advance, following, functional in steps[dimension]:
            at = [advance[value] for value in previous_at]
            cycles = [good and outgoing[value] == 0
                      for good, value in zip(previous_cycles, previous_at)]
            boundary = [good and value == 0 for good, value in zip(cycles, at)]
            visit(following, at_history + [at], cycle_history + [cycles],
                  boundary_history + [boundary],
                  step_history + [(dimension, functional, sorted(incoming))])
        return
    counts['page_sequences'] += 1
    number = len(at_history[0])
    # Thereafter use identity pages with zero incoming/outgoing, so this
    # finite trace defines an infinite model with an explicit constant tail.
    for x in range(number):
        ever_boundary = any(boundary[x] for boundary in boundary_history)
        for n in range(HORIZON):
            counts['cumulative_monotonicity_checks'] += 1
            assert not boundary_history[n][x] or boundary_history[n + 1][x]
        for cutoff in range(HORIZON + 1):
            tail_zero = all(step[2] == [0] for step in step_history[cutoff:])
            if tail_zero:
                for n in range(cutoff, HORIZON + 1):
                    counts['boundary_stability_comparisons'] += 1
                    assert boundary_history[n][x] == boundary_history[cutoff][x]
                if cycle_history[cutoff][x] and at_history[cutoff][x] != 0:
                    counts['nonzero_endpoint_implications'] += 1
                    assert not ever_boundary
            elif cycle_history[cutoff][x] and at_history[cutoff][x] != 0 and ever_boundary:
                counts['late_incoming_without_tail'] += 1
                countermodels.setdefault('missing_tail', {
                    'initial': x, 'cutoff': cutoff, 'steps': step_history,
                    'at': [v[x] for v in at_history],
                    'cycles': [v[x] for v in cycle_history],
                    'boundaries': [v[x] for v in boundary_history]})
        if not ever_boundary and any(at[x] == 0 for at in at_history):
            counts['outgoing_death_not_boundary'] += 1
            countermodels.setdefault('outgoing_death_with_zero_at', {
                'initial': x, 'steps': step_history,
                'at': [v[x] for v in at_history],
                'cycles': [v[x] for v in cycle_history],
                'boundaries': [v[x] for v in boundary_history]})


for dimension in range(4):
    size = 1 << dimension
    visit(dimension, [list(range(size))], [[True] * size],
          [[x == 0 for x in range(size)]], [])

assert counts['nonzero_endpoint_implications'] > 0
assert counts['outgoing_death_not_boundary'] > 0
assert counts['late_incoming_without_tail'] > 0
countermodels['missing_nonzero'] = {
    'description': 'The initial zero has a trace through every page and zero incoming tail, '
                   'but belongs to Boundary 0 and BInfinity.',
    'initial': 0, 'boundary_at_zero': True}

degree_cases = 0
for filtration in range(21):
    for total in range(31):
        for page in range(2, 24):
            sources = [(s, t) for s in range(21) for t in range(31)
                       if s + page == filtration and t + page - 1 == total]
            degree_cases += 1
            if page > filtration:
                assert not sources
countermodels['nonstrict_degree_cutoff'] = {
    'page': 9, 'target': [9, 132], 'legal_source': [0, 124],
    'explanation': 'At r=s=9 a nonzero incoming source may exist; only r>s excludes it.'}

reviewed = ['Basic', 'Fact713']
reports = []
for module in reviewed:
    source = HERE / (module + '.lean')
    report = json.loads((HERE / (module + '-compile.json')).read_text())
    assert report['observed_exit_code'] == 0 and report['inputs_stable']
    assert report['source_sha256'] == sha(source)
    log = HERE / report['log']
    assert report['log_sha256'] == sha(log)
    output = log.read_text()
    assert 'sorryAx' not in output and 'error:' not in output
    assert not re.search(r'\b(sorry|axiom|native_decide)\b', source.read_text())
    axioms = re.findall(r'depends on axioms:\s*\[([^]]*)\]', output)
    assert all({a.strip() for a in group.split(',') if a.strip()} <=
               {'propext', 'Classical.choice', 'Quot.sound'} for group in axioms)
    reports.append(dict(module=module, source_sha256=sha(source),
                        compile_record_sha256=sha(HERE / (module + '-compile.json')),
                        axiom_reports=len(axioms) + output.count('does not depend on any axioms')))

result = dict(status='passed', reviewed_modules=reports,
              finite_horizon=HORIZON, max_page_dimension=3,
              complete_local_quotient_choices={str(k): len(v) for k, v in steps.items()},
              full_quotient_equivalence_pairs=quotient_checks, **counts,
              exact_Adams_degree_queries=degree_cases,
              countermodels=countermodels,
              scope='Independent local additive-page quotient models with a constant infinite tail; '
                    'not a reconstruction of the sphere or complete global Adams system.',
              build_note='Only existing direct compile records read; no dependencies compiled. '
                         'Current dependency object hashes may change during the root build.')
(HERE / 'independent_review.json').write_text(json.dumps(result, indent=2) + '\n')
print(json.dumps({k: v for k, v in result.items()
                  if k not in ('countermodels', 'reviewed_modules')}))
