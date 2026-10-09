"""Recheck emitted family JSONs and canonical/staircase quotient changes."""
import hashlib
import importlib.util
import itertools
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda p: json.loads(p.read_text())
spec = importlib.util.spec_from_file_location('matrix_review', ROOT / 'Row3147MapSearch/review.py')
review = importlib.util.module_from_spec(spec)
spec.loader.exec_module(review)
ev = lambda bits, m, n, v: tuple(review.matmul(bits, list(v), m, n, 1))
vectors = lambda n: itertools.product([0, 1], repeat=n)
key = lambda e: tuple(e['key'][k] for k in ['object', 'page', 's', 't'])
reports = []
for label, residual, coefficient in [('zero_a0', 0, 0), ('zero_a1', 0, 1),
                                      ('residual_a0', 1, 0), ('residual_a1', 1, 1)]:
    path = HERE / (label + '-family.json')
    entries = load(path)['entries']
    old = load(ROOT / 'Fact713Row2431Continuation' /
               ('residual-family.json' if residual else 'zero-family.json'))['entries']
    assert entries[:len(old)] == old
    assert len({key(e) for e in entries}) == len(entries)
    for e in entries:
        assert e['key']['object'] and e['key']['page'] >= 2
        review.check_wire(e['wire'])
    adjacent = consecutive = pairs = 0
    for left, right in itertools.product(entries, repeat=2):
        pairs += 1
        o, r, s, t = key(left)
        oo, rr, ss, tt = key(right)
        a, b = left['wire'], right['wire']
        if o == oo and r == rr and ss == s+r and tt == t+r-1:
            assert a['k'] == b['m'] and a['m'] == b['n'] and a['outgoing'] == b['incoming']
            adjacent += 1
        if o == oo and rr == r+1 and (s, t) == (ss, tt):
            assert a['h'] == b['m']
            consecutive += 1
    table = {key(e): e['wire'] for e in entries}
    coordinate_checks = 0
    for side, degree in [('source', (20, 140)), ('target', (23, 142))]:
        can = load(ROOT / 'Row3136SquareCandidates/wire' /
                   f'u0a{coefficient}r{residual}_{side}.json')
        stair = table[('S0', 3, *degree)]
        change = (lambda v: (v[1], v[0])) if side == 'source' else tuple
        upper = tuple
        lower = tuple if side == 'source' else lambda v: (v[1], v[0])
        for v in vectors(can['m']):
            assert ev(stair['outgoing'], stair['k'], stair['m'], change(v)) == upper(
                ev(can['outgoing'], can['k'], can['m'], v))
        for v in vectors(can['n']):
            assert ev(stair['incoming'], stair['m'], stair['n'], lower(v)) == change(
                ev(can['incoming'], can['m'], can['n'], v))
        forward = lambda v: ev(stair['projection'], stair['h'], stair['m'], change(
            ev(can['inclusion'], can['m'], can['h'], v)))
        backward = lambda v: ev(can['projection'], can['h'], can['m'], change(
            ev(stair['inclusion'], stair['m'], stair['h'], v)))
        for v in vectors(can['h']):
            assert backward(forward(v)) == v
            coordinate_checks += 1
        for v in vectors(stair['h']):
            assert forward(backward(v)) == v
            coordinate_checks += 1
    reports.append(dict(case=label, entries=len(entries), ordered_pairs=pairs,
                        adjacent=adjacent, consecutive=consecutive,
                        inverse_coordinate_checks=coordinate_checks,
                        family_sha256=hashlib.sha256(path.read_bytes()).hexdigest()))

matrices = second_failures = square_failures = accepted = 0
for bits in vectors(4):
    matrices += 1
    if ev(bits, 2, 2, (0, 1)) != (0, 0):
        second_failures += 1
        continue
    if any(ev((0, 1), 1, 2, ev(bits, 2, 2, v)) != (0,) for v in vectors(2)):
        square_failures += 1
        continue
    assert bits == (bits[0], 0, 0, 0)
    accepted += 1
assert accepted == 2
report = dict(status='pass', families=reports, source_matrices=matrices,
              rejected_by_row3135=second_failures, rejected_by_square=square_failures,
              candidate_matrices=accepted,
              total_pairs=sum(r['ordered_pairs'] for r in reports))
(HERE / 'family-review.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps(report, indent=2))
