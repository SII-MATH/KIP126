"""Independent generic finite abelian group audit using literal nested cosets."""
from collections import Counter
from itertools import product
from pathlib import Path
import hashlib
import json
import random
import re

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()

class Group:
    def __init__(self, factors):
        self.factors = factors
        self.elements = frozenset(product(*(range(n) for n in factors)))
        self.zero = tuple(0 for _ in factors)
        self.generators = [tuple(int(i == j) % n for i, n in enumerate(factors))
                           for j in range(len(factors))]
        subs = {frozenset([self.zero])}
        for x in sorted(self.elements):
            subs |= {self.generated((*s, x)) for s in tuple(subs)}
        self.subgroups = sorted(subs, key=lambda h: (len(h), sorted(h)))

    def add(self, x, y):
        return tuple((a + b) % n for a, b, n in zip(x, y, self.factors))

    def mul(self, n, x):
        return tuple(n * a % m for a, m in zip(x, self.factors))

    def generated(self, generators):
        out = {self.zero}
        for x in generators:
            powers = {self.mul(k, x) for k in range(1, 1 + max(self.factors) ** len(self.factors))}
            out = {self.add(y, z) for y in out for z in powers}
        return frozenset(out)

    def coset(self, h, x):
        return frozenset(self.add(x, y) for y in h)

rng = random.Random(12620260921)
groups = [Group(f) for f in [(1,), (2,), (3,), (4,), (6,), (8,), (9,), (12,), (2, 2), (4, 2), (3, 3)]]
count = Counter()
for trial in range(6000):
    A, B = rng.choice(groups), rng.choice(groups)
    images = [rng.choice([y for y in sorted(B.elements) if B.mul(n, y) == B.zero])
              for n in A.factors]
    def f(x):
        y = B.zero
        for c, image in zip(x, images):
            y = B.add(y, B.mul(c, image))
        return y
    F = [rng.choice(A.subgroups)]
    for _ in range(3):
        F.append(rng.choice([s for s in A.subgroups if s <= F[-1]]))
    F.append(frozenset([A.zero]))
    G = [None] * 5
    G[4] = frozenset([B.zero])
    for i in reversed(range(4)):
        lower = G[i + 1] | {f(x) for x in F[i]}
        G[i] = rng.choice([h for h in B.subgroups if lower <= h])
    K = frozenset(f(x) for x in F[0])
    q = lambda x: B.coset(K, x)
    C = {q(x) for x in B.elements}
    Q = [{q(x) for x in h} for h in G]
    assert K <= G[0]
    assert (Q[0] == C) == (G[0] == B.elements)
    assert set().union(*Q) == Q[0]
    count['filtered_maps'] += 1
    count['nonexhaustive_source'] += F[0] != A.elements
    count['nonexhaustive_target'] += G[0] != B.elements
    if F[0] == A.elements:
        assert K == frozenset(f(x) for x in A.elements)
        count['full_cokernel_identifications'] += 1
    if K != frozenset(f(x) for x in A.elements):
        count['restricted_image_differs_from_full'] += 1
    for t in range(4):
        R = frozenset(B.add(y, k) for y in G[t + 1] for k in K & G[t])
        assert {x for x in G[t] if q(x) == q(B.zero)} == K & G[t]
        gr = lambda x: frozenset(q(B.add(x, y)) for y in G[t + 1])
        assert {x for x in G[t] if gr(x) == gr(B.zero)} == R
        assert {q(x) for x in R} == Q[t + 1]
        domain = {B.coset(R, x) for x in G[t]}
        codomain = {frozenset(q(B.add(next(iter(x)), next(iter(y)))) for y in Q[t + 1]) for x in Q[t]}
        graph = {(B.coset(R, x), gr(x)) for x in G[t]}
        assert {x for x, y in graph} == domain
        assert {y for x, y in graph} == codomain
        assert len(graph) == len(domain) == len(codomain)
        for x, y in product(sorted(G[t]), repeat=2):
            sum_coset = frozenset(q(B.add(next(iter(a)), next(iter(b)))) for a in gr(x) for b in gr(y))
            assert sum_coset == gr(B.add(x, y))
            count['graded_addition_equations'] += 1
        first = lambda x: B.coset(K & G[t], x)
        iterated = {frozenset(first(B.add(x, r)) for r in R) for x in G[t]}
        flatten = {frozenset().union(*x) for x in iterated}
        assert flatten == domain
        for n in range(t + 1, t + 4):
            source_degree = max(t + 1 - n, 0)
            incoming = {f(x) for x in F[source_degree] if f(x) in G[t]}
            assert frozenset(B.add(y, z) for y in G[t + 1] for z in incoming) == R
            count['stable_target_relation_equations'] += 1
        count['literal_graded_bijections'] += 1

records = {}
for name in ['Basic', 'Conditions', 'Examples']:
    source = HERE / (name + '.lean')
    log = HERE / (name + '.log')
    record = json.loads((HERE / (name + '-compile.json')).read_text())
    assert record['observed_exit_code'] == 0
    assert record['source_sha256'] == sha(source)
    assert record['log_sha256'] == sha(log)
    assert not re.search(r'\bsorry\b|\baxiom\b|native_decide', source.read_text())
    txt = log.read_text()
    assert not re.search(r'sorryAx|error:|error\(', txt)
    axes = re.findall(r'depends on axioms: \[([^]]*)\]', txt)
    assert all(set(a.strip() for a in s.split(',')) <= {'propext', 'Classical.choice', 'Quot.sound'} for s in axes)
    obj = ROOT / '.lake/build/lib/lean/FilteredMapCokernelGraded' / (name + '.olean')
    records[name] = dict(observed_exit_code=0,
        standard_reports=len(axes) + txt.count('does not depend on any axioms'),
        source_sha256=sha(source), log_sha256=sha(log),
        current_object_matches_direct=obj.exists() and sha(obj) == record['olean_sha256'])
report = dict(status='independent_literal_cokernel_graded_review_passed', seed=12620260921,
    groups=[g.factors for g in groups], counts=dict(count), proof_records=records,
    script_sha256=sha(Path(__file__)),
    scope='actual associated graded of B/f(F0); full cokernel when F0=top; exhaustive iff G0=top')
(HERE / 'independent-review.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps(report, indent=2))
