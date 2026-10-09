"""Independent review of the kernel comparison over unequal cyclic groups."""
from itertools import product
from pathlib import Path
import hashlib
import json
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()


def flags(n):
    subgroups = [frozenset(range(0, n, d)) for d in range(1, n + 1) if n % d == 0]
    return [(h, k, j) for h, k, j in product(subgroups, repeat=3) if j <= k <= h]


counts = dict(homomorphism_filtration_candidates=0, preserving_maps=0,
              unequal_group_preserving_maps=0, injections=0, addition_checks=0,
              bounded_surjections=0, unbounded_surjections=0,
              unbounded_failures=0, proper_source_initial=0)
first_failure = None
for a, b in product(range(1, 9), repeat=2):
    for source, target in product(flags(a), flags(b)):
        for coefficient in range(b):
            if coefficient * a % b:
                continue
            counts['homomorphism_filtration_candidates'] += 1
            f = lambda x: coefficient * x % b
            if any(not {f(x) for x in h} <= k for h, k in zip(source, target)):
                continue
            counts['preserving_maps'] += 1
            counts['unequal_group_preserving_maps'] += a != b
            counts['proper_source_initial'] += len(source[0]) < a
            kernel = {x for x in range(a) if f(x) == 0}
            canonical = lambda x, subgroup: min((x + y) % a for y in subgroup)
            for s, n in product(range(3), range(5)):
                fs, higher = source[s], source[min(s + 1, 2)]
                gt = target[min(s + n, 2)]
                cycles = {x for x in fs if f(x) in gt}
                corrections = {x for x in higher if f(x) in gt}
                actual = kernel & fs
                actual_relations = kernel & higher
                graded = {canonical(x, actual_relations) for x in actual}
                page = {canonical(x, corrections) for x in cycles}
                graph = {(canonical(x, actual_relations), canonical(x, corrections))
                         for x in actual}
                assert {x for x, _ in graph} == graded
                assert len(graph) == len(graded) == len({y for _, y in graph})
                assert {y for _, y in graph} <= page
                mapped = dict(graph)
                for x, y in product(graded, repeat=2):
                    assert mapped[canonical((x + y) % a, actual_relations)] == \
                        canonical((mapped[x] + mapped[y]) % a, corrections)
                    counts['addition_checks'] += 1
                counts['injections'] += 1
                surjective = {y for _, y in graph} == page
                if gt == {0}:
                    assert cycles == actual and corrections == actual_relations
                    assert surjective
                    counts['bounded_surjections'] += 1
                elif surjective:
                    counts['unbounded_surjections'] += 1
                else:
                    counts['unbounded_failures'] += 1
                    if first_failure is None:
                        first_failure = dict(source_order=a, target_order=b,
                            source=list(map(sorted, source)), target=list(map(sorted, target)),
                            coefficient=coefficient, s=s, n=n,
                            graded_cardinality=len(graded), source_page_cardinality=len(page))

assert counts['unbounded_failures'] > 0
assert counts['unequal_group_preserving_maps'] > 0
observed = []
for name in ['Basic', 'Examples']:
    source, log = HERE / (name + '.lean'), HERE / (name + '.log')
    record = json.loads((HERE / (name + '-compile.json')).read_text())
    assert record['observed_exit_code'] == 0
    assert record['source_sha256'] == sha(source)
    assert record['log_sha256'] == sha(log)
    code = re.sub(r'/\-.*?\-/', '', source.read_text(), flags=re.S)
    code = re.sub(r'--[^\n]*', '', code)
    assert not re.search(r'\b(sorry|admit|axiom|native_decide)\b', code)
    axioms = re.findall(r"'([^']+)' depends on axioms: \[([^\]]*)\]", log.read_text(), re.S)
    for theorem, deps in axioms:
        assert {a.strip() for a in deps.split(',') if a.strip()} <= {
            'propext', 'Classical.choice', 'Quot.sound'}, theorem
    observed.append(dict(module='FilteredMapKernelGraded.' + name,
                         reviewed_source_sha256=sha(source),
                         reviewed_log_sha256=sha(log),
                         upstream_recorded_exit=record['observed_exit_code'],
                         standard_only_axiom_reports=len(axioms)))
assert sum(x['standard_only_axiom_reports'] for x in observed) == 8
report = dict(findings=[], counts=counts, first_unbounded_failure=first_failure,
    oracle='cyclic source and target groups of every order 1..8; all three-level decreasing flags with constant tail',
    indices='s=0..2, n=0..4; unequal groups, proper F0, constant nonzero tails included',
    proof_review='read-only source and current recorded direct logs; no independent recompilation claimed',
    modules=observed, script_sha256=sha(Path(__file__)))
(HERE / 'independent-review.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps(counts))
