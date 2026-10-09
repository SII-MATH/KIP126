"""Independent finite-group review with arbitrary initial and constant tail subgroups."""
from collections import Counter
from itertools import product
from pathlib import Path
import hashlib
import json
import re
import sys

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
COUNTS = Counter()


def subgroup_catalog(size, add):
    return tuple(frozenset(x for x in range(size) if mask >> x & 1)
                 for mask in range(1, 1 << size, 2)
                 if all(mask >> add(x, y) & 1 for x in range(size) for y in range(size)
                        if mask >> x & 1 and mask >> y & 1))


def review_group(label, size, add, maps):
    universe = frozenset(range(size))
    subs = subgroup_catalog(size, add)
    flags = tuple((a, b, c) for a, b, c in product(subs, repeat=3) if c <= b <= a)
    # All flags stay constant at their last subgroup. No separatedness or F0=top is imposed.
    level = lambda flag, index: flag[min(index, 2)]
    neg = {x: next(y for y in universe if add(x, y) == 0) for x in universe}
    sub = lambda x, y: add(x, neg[y])
    plus = lambda h, k: frozenset(add(x, y) for x in h for y in k)
    image = lambda f, h: frozenset(f[x] for x in h)
    qclass = lambda x, h: min(add(x, a) for a in h)
    quotient = lambda h, k: frozenset(qclass(x, k) for x in h)
    local_counts = Counter()

    for F, G, f in product(flags, flags, maps):
        if not all(image(f, F[i]) <= G[i] for i in range(3)):
            continue
        local_counts['filtered_maps'] += 1
        local_counts['proper_source_F0'] += F[0] != universe
        local_counts['proper_target_G0'] += G[0] != universe
        local_counts['nonseparated_source'] += len(F[2]) > 1
        local_counts['nonseparated_target'] += len(G[2]) > 1

        def local(s, n):
            fs, fs1, gt, gt1 = level(F, s), level(F, s+1), level(G, s+n), level(G, s+n+1)
            cycles = frozenset(x for x in fs if f[x] in gt)
            correction = frozenset(x for x in fs1 if f[x] in gt)
            relations = plus(gt1, image(f, correction))
            return fs, fs1, gt, gt1, cycles, correction, relations

        def all_relations(t, n):
            source_index = max(0, t+1-n)
            allowed = frozenset(x for x in level(F, source_index) if f[x] in level(G, t))
            return plus(level(G, t+1), image(f, allowed))

        for s, n in product(range(3), range(4)):
            fs, fs1, gt, gt1, cycles, correction, relations = local(s, n)
            source = quotient(cycles, correction)
            survivor = quotient(cycles, fs1)
            assert len(source) == len(survivor)
            assert frozenset(qclass(x, fs1) for x in source) == survivor
            boundaries = quotient(relations, gt1)
            target = quotient(gt, relations)
            # Double quotient labels obtained by actual translations in the graded group.
            graded_target = quotient(gt, gt1)
            double = frozenset(min(qclass(add(y, b), gt1) for b in boundaries) for y in graded_target)
            assert len(double) == len(target)
            next_cycles = local(s, n+1)[4]
            assert quotient(next_cycles, fs1) == frozenset(qclass(x, fs1) for x in cycles if f[x] in relations)
            local_counts['local_comparisons_and_source_recursions'] += 1
            if n == 0:
                assert cycles == fs and correction == fs1 and relations == gt1
                local_counts['initial_local_pages'] += 1
            for x, y in product(fs, gt):
                on_page = any(qclass(a, fs1) == qclass(x, fs1) and
                              qclass(f[a], relations) == qclass(y, relations) for a in cycles)
                ordinary = any(sub(a, x) in fs1 and sub(f[a], y) in gt1 for a in universe)
                assert on_page == ordinary
                assert (qclass(y, relations) != 0) == (qclass(y, gt1) not in boundaries)
                local_counts['event_and_essential_equivalences'] += 1
                local_counts['noncycle_original_events'] += on_page and f[x] not in gt
            old = local(s+1, n)
            new = local(s, n+1)
            assert old[2:4] == new[2:4]
            old_target = quotient(old[2], old[6])
            assert frozenset(qclass(y, new[6]) for y in old_target) == quotient(new[2], new[6])
            assert frozenset(y for y in old_target if qclass(y, new[6]) == 0) == quotient(image(f, old[4]), old[6])
            local_counts['shifted_target_cokernel_recursions'] += 1

        for t, n in product(range(5), range(7)):
            rel = all_relations(t, n)
            nxt = all_relations(t, n+1)
            assert rel <= nxt <= level(G, t)
            old_page = quotient(level(G, t), rel)
            next_page = quotient(level(G, t), nxt)
            assert frozenset(qclass(y, nxt) for y in old_page) == next_page
            local_counts['all_target_monotone_surjections'] += 1
            if n == 0:
                assert rel == level(G, t+1)
                local_counts['all_target_initial_pages'] += 1
            if n <= t:
                s = t-n
                loc = local(s, n)
                assert rel == loc[6]
                assert nxt == plus(level(G, t+1), image(f, loc[4]))
                kernel = frozenset(y for y in old_page if qclass(y, nxt) == 0)
                differential_image = quotient(image(f, loc[4]), rel)
                assert kernel == differential_image
                assert len(old_page) == len(kernel) * len(next_page)
                local_counts['all_target_cokernel_steps'] += 1
                if s == 0:
                    local_counts['source_zero_steps'] += 1
                    local_counts['source_zero_nonzero_kernels'] += len(kernel) > 1
            else:
                final = plus(level(G, t+1), image(f, F[0]) & level(G, t))
                assert rel == final == nxt
                local_counts['truncated_stable_steps'] += 1
                whole = plus(level(G, t+1), image(f, universe) & level(G, t))
                local_counts['whole_image_is_strictly_larger'] += whole != final
    COUNTS.update(local_counts)
    return dict(group=label, subgroups=len(subs), arbitrary_flags=len(flags), counts=dict(local_counts))


groups = [review_group('Z/4', 4, lambda x, y: (x+y) % 4,
                       [tuple(k*x % 4 for x in range(4)) for k in range(4)]),
          review_group('(Z/2)^2', 4, lambda x, y: x ^ y,
                       [(0, a, b, a ^ b) for a, b in product(range(4), repeat=2)]),
          review_group('Z/6', 6, lambda x, y: (x+y) % 6,
                       [tuple(k*x % 6 for x in range(6)) for k in range(6)])]
for name in ['proper_source_F0', 'proper_target_G0', 'nonseparated_source',
             'nonseparated_target', 'noncycle_original_events',
             'source_zero_nonzero_kernels', 'whole_image_is_strictly_larger']:
    assert COUNTS[name] > 0, name

sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
records = {}
inputs = [HERE / 'review.py']
oracle_only = '--oracle-only' in sys.argv
modules = [('FilteredMapGradedComparison', ['Basic', 'Event', 'Recurrence', 'AllTargets', 'Examples'])]
if not oracle_only:
    modules.append(('FilteredMapGradedReview', ['Examples']))
for folder, names in modules:
    for name in names:
        source, log, record_path = [ROOT / folder / (name + suffix) for suffix in ['.lean', '.log', '-compile.json']]
        record = json.loads(record_path.read_text())
        assert record['observed_exit_code'] == 0
        assert record['source_sha256'] == sha(source)
        assert record['log_sha256'] == sha(log)
        content = log.read_text()
        assert not re.search(r'sorryAx|error:|error\(', content)
        assert not re.search(r'\b(sorry|admit|axiom|native_decide)\b', source.read_text())
        reports = re.findall(r'depends on axioms: \[([^]]*)\]', content)
        assert all(set(x.strip() for x in report.split(',')) <=
                   {'propext', 'Classical.choice', 'Quot.sound'} for report in reports)
        obj = ROOT / '.lake/build/lib/lean' / folder / (name + '.olean')
        records[folder + '.' + name] = dict(
            observed_direct_exit_code=0,
            standard_axiom_reports=len(reports) + content.count('does not depend on any axioms'),
            historical_direct_olean_sha256=record['olean_sha256'],
            current_olean_sha256=sha(obj) if obj.exists() else None,
            current_object_matches_direct=obj.exists() and sha(obj) == record['olean_sha256'])
        inputs.extend([source, log, record_path])

result = dict(status='independent_oracle_passed' if oracle_only else 'independent_review_passed', findings=[],
              scope='Five frozen graded comparison leaves; independent arbitrary-F0 and constant-nonzero-tail finite-group replay.',
              new_lean_edge_case_leaf_checked=not oracle_only,
              counts=dict(COUNTS), groups=groups, direct_records=records,
              input_sha256={str(p.relative_to(ROOT)): sha(p) for p in inputs},
              limits=['Finite replay is diagnostic evidence, not a proof for infinite groups.',
                      'No registered dependency was recompiled; preserved direct records bind historical object hashes.',
                      'No categorical page packaging, convergence, Adams-to-homotopy identification, synthetic ESS, or full Kervaire theorem follows.'])
(HERE / ('oracle-review.json' if oracle_only else 'review.json')).write_text(json.dumps(result, indent=2) + '\n')
print(json.dumps({key: value for key, value in result.items() if key not in ['input_sha256', 'direct_records']}, indent=2))
