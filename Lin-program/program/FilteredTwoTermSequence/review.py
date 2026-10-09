"""Literal full-page kernels, incoming images, quotients and next-page maps."""
from collections import Counter
import hashlib
import itertools
import json
from pathlib import Path
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
U = frozenset(range(4)); ZERO = frozenset([0])
SUBS = [ZERO, frozenset([0, 1]), frozenset([0, 2]), frozenset([0, 3]), U]
CHAINS = [(a, b, c, ZERO) for a, b, c in itertools.product(SUBS, repeat=3)
          if c <= b <= a]
MAPS = [tuple([0, a, b, a ^ b]) for a in U for b in U]
at = lambda F, t: F[t] if t < len(F) else ZERO
coset = lambda x, H: frozenset(x ^ h for h in H)
count = Counter()

def data(F, G, f, n, t):
    cycles = {x for x in at(F, t) if f[x] in at(G, t + n)}
    corrections = {x for x in at(F, t + 1) if f[x] in at(G, t + n)}
    relations = {y ^ f[x] for y in at(G, t + 1)
                 for x in at(F, max(t + 1 - n, 0)) if f[x] in at(G, t)}
    return frozenset(cycles), frozenset(corrections), frozenset(relations)

def page(F, G, f, n, t):
    cycles, corrections, relations = data(F, G, f, n, t)
    return set(itertools.product({min(coset(x, corrections)) for x in cycles},
                                 {min(coset(y, relations)) for y in at(G, t)}))

def page_add(F, G, f, n, t, x, y):
    _, corrections, relations = data(F, G, f, n, t)
    return min(coset(x[0] ^ y[0], corrections)), min(coset(x[1] ^ y[1], relations))

def differential(F, G, f, n, t, x):
    relations = data(F, G, f, n, t + n)[2]
    return 0, min(coset(f[x[0]], relations))

for F, G, f in itertools.product(CHAINS, CHAINS, MAPS):
    if not all(f[x] in G[i] for i in range(4) for x in F[i]): continue
    count['filtered_maps'] += 1
    if F[0] != U or G[0] != U:
        count['nonexhaustive_filtered_maps'] += 1
    for n, t in itertools.product(range(5), range(4)):
        current = page(F, G, f, n, t)
        next_page = page(F, G, f, n + 1, t)
        next_relations = data(F, G, f, n + 1, t)[2]
        cycles = {x for x in current if differential(F, G, f, n, t, x) == (0, 0)}
        for x in current:
            assert differential(F, G, f, n, t + n, differential(F, G, f, n, t, x)) == (0, 0)
            count['differential_square_zero'] += 1
        incoming = ({differential(F, G, f, n, t - n, x) for x in page(F, G, f, n, t - n)}
                    if n <= t else {(0, 0)})
        assert incoming <= cycles
        quotient = {frozenset(page_add(F, G, f, n, t, x, b) for b in incoming) for x in cycles}
        images = set()
        quotient_map = {}
        for q in quotient:
            possible = set()
            for x in q:
                # Use the actual next-source kernel lift: find the unique next
                # source class with the same current leading class.
                current_corrections = data(F, G, f, n, t)[1]
                lifts = {z[0] for z in next_page if min(coset(z[0], current_corrections)) == x[0]}
                assert len(lifts) == 1
                possible.add((next(iter(lifts)), min(coset(x[1], next_relations))))
            assert len(possible) == 1
            images |= possible
            quotient_map[q] = next(iter(possible))
            count['homology_classes'] += 1
        assert len(images) == len(quotient) and images == next_page
        for q, r in itertools.product(quotient, repeat=2):
            total = page_add(F, G, f, n, t, next(iter(q)), next(iter(r)))
            sum_class = frozenset(page_add(F, G, f, n, t, total, b) for b in incoming)
            assert quotient_map[sum_class] == page_add(
                F, G, f, n + 1, t, quotient_map[q], quotient_map[r])
            count['homology_map_additive'] += 1
        count['homology_next_isomorphisms'] += 1
        if n == 0:
            initial = set(itertools.product({min(coset(x, at(F, t + 1))) for x in at(F, t)},
                                            {min(coset(y, at(G, t + 1))) for y in at(G, t)}))
            assert current == initial
            for x in current:
                assert differential(F, G, f, 0, t, x) == (0, min(coset(f[x[0]], at(G, t + 1))))
            count['initial_graded_pages'] += 1
        if n == t:
            count['last_source_zero_incoming'] += 1
        if n > t:
            assert incoming == {(0, 0)}
            assert data(F, G, f, n, t)[2] == next_relations
            count['absent_incoming_stable_target'] += 1
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
records = {}
for name in ['Algebra', 'Basic', 'Homology']:
    record = json.loads((HERE / (name + '-compile.json')).read_text())
    assert record['observed_exit_code'] == 0
    assert record['source_sha256'] == sha(HERE / (name + '.lean'))
    assert record['log_sha256'] == sha(HERE / (name + '.log'))
    log = (HERE / (name + '.log')).read_text()
    assert not re.search(r'sorryAx|error:|error\(', log)
    axes = re.findall(r'depends on axioms: \[([^]]*)\]', log)
    assert all(set(x.strip() for x in a.split(',')) <= {'propext', 'Classical.choice', 'Quot.sound'} for a in axes)
    obj = ROOT / '.lake/build/lib/lean/FilteredTwoTermSequence' / (name + '.olean')
    records[name] = dict(exit_code=0, standard_reports=len(axes) + log.count('does not depend on any axioms'),
        current_object_matches_direct=obj.exists() and sha(obj) == record['olean_sha256'])
report = dict(status='literal_two_term_page_homology_replay_passed', counts=dict(count), direct_records=records,
    input_sha256={p.name: sha(p) for p in [HERE / (n + '.lean') for n in records] + [HERE / 'review.py']})
(HERE / 'review.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps({k: v for k, v in report.items() if k != 'input_sha256'}, indent=2))
