"""Replay finite subgroup semantics independently of Lean and of the producer."""
import hashlib, itertools, json, random
from pathlib import Path

P = Path(__file__).resolve().parent
R = P.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()

def action(m, x, rows=2, cols=2):
    return sum(((sum(((m >> (i*cols+j)) & 1) * ((x >> j) & 1)
                     for j in range(cols))) % 2) << i for i in range(rows))

def composed(a, b):
    return tuple(action(a, action(b, x)) for x in range(4))

def in_span(h, x):
    return any(action(h, s) == x for s in range(4))

def extension(f, h, k, x, y):
    return any(in_span(h, rep ^ x) and in_span(k, action(f, rep) ^ y)
               for rep in range(4))

def witness(f, h, k, x, y):
    for rep, s, t in itertools.product(range(4), repeat=3):
        if action(h, s) == rep ^ x and action(k, t) == action(f, rep) ^ y:
            return rep, s, t
    return None

matrices = range(16)
preservation_cases = 0
factorizations = 0
for f, h, k in itertools.product(matrices, repeat=3):
    stable = all(not in_span(h, x) or in_span(k, action(f, x)) for x in range(4))
    factors = []
    for t in matrices:
        checked = all(action(f, action(h, 1 << j)) == action(k, action(t, 1 << j))
                      for j in range(2))
        full = all(action(f, action(h, x)) == action(k, action(t, x)) for x in range(4))
        assert checked == full
        if checked:
            assert stable
            factors.append(t)
            factorizations += 1
        preservation_cases += 1
    assert stable == bool(factors)

squares = []
square_cases = 0
for f, p, q, g in itertools.product(matrices, repeat=4):
    checked = all(action(q, action(f, 1 << j)) == action(g, action(p, 1 << j))
                  for j in range(2))
    full = composed(q, f) == composed(g, p)
    assert checked == full
    if checked:
        squares.append((f, p, q, g))
    square_cases += 1

rng = random.Random(20260921)
cases = transfers = nonzero = missing_last = different_reps = 0
branch_counts = {'f': 0, 'p': 0}
for _ in range(12000):
    f, p, q, g = rng.choice(squares)
    ha, hb, hc, hd = [rng.randrange(16) for _ in range(4)]
    x, y, z, w = [rng.randrange(4) for _ in range(4)]
    first = witness(f, ha, hb, x, y)
    second = witness(p, ha, hc, x, z)
    third = witness(g, hc, hd, z, w)
    assert bool(first is not None) == extension(f, ha, hb, x, y)
    assert bool(second is not None) == extension(p, ha, hc, x, z)
    assert bool(third is not None) == extension(g, hc, hd, z, w)
    cases += 1
    if first is None or second is None or third is None:
        continue
    stable_f = all(not in_span(ha, a) or in_span(hb, action(f, a)) for a in range(4))
    stable_p = all(not in_span(ha, a) or in_span(hc, action(p, a)) for a in range(4))
    stable_g = all(not in_span(hc, a) or in_span(hd, action(g, a)) for a in range(4))
    if not (stable_f or stable_p):
        continue
    conclusion = extension(q, hb, hd, y, w)
    if not stable_g:
        missing_last += not conclusion
        continue
    assert conclusion
    transfers += 1
    nonzero += not in_span(hd, w)
    different_reps += first[0] != second[0]
    for name, stable, rep in [('f', stable_f, action(f, second[0])),
                               ('p', stable_p, action(f, first[0]))]:
        if stable:
            assert in_span(hb, rep ^ y) and in_span(hd, action(q, rep) ^ w)
            branch_counts[name] += 1
assert all(branch_counts.values()) and nonzero and missing_last and different_reps

sources = [Path(__file__), P/'README.md', *sorted(P.glob('*.lean')),
           R/'LinearCertificates/Basic.lean', R/'LinearCertificates/Checker.lean',
           R/'LinearCertificates/Import.lean', R/'GeneralizedLeibnizAudit/RepresentativeSquare.lean']
report = dict(status='representative_matrix_semantics_passed',
              square_matrix_cases=square_cases, commuting_squares=len(squares),
              preservation_matrix_cases=preservation_cases, full_factorizations=factorizations,
              semantic_queries=cases, accepted_transfers=transfers, nonzero_transfers=nonzero,
              distinct_representative_transfers=different_reps,
              missing_last_counterexamples=missing_last, constructed_branches=branch_counts,
              paper_theorem_6_1_formalized=False,
              source_sha256={str(p.relative_to(R)): sha(p) for p in sources})
(P/'review.json').write_text(json.dumps(report, indent=2, sort_keys=True)+'\n')
print(json.dumps({k:v for k,v in report.items() if k != 'source_sha256'}))
