"""Root review: full row2693 source/target spaces and inherited families."""
import hashlib
import itertools
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()


def columns(w, field, rows, cols):
    bits = w[field]
    assert len(bits) == rows * cols
    return [sum(int(bits[i * cols + j]) << i for i in range(rows)) for j in range(cols)]


def apply(cols, x):
    result = 0
    for j, col in enumerate(cols):
        if x >> j & 1:
            result ^= col
    return result


def quotient(w):
    k, m, n, h = (w[x] for x in ['k', 'm', 'n', 'h'])
    a, b, i, p, u, d = [columns(w, f, r, c) for f, r, c in [
        ('outgoing', k, m), ('incoming', m, n), ('inclusion', m, h),
        ('projection', h, m), ('up', n, m), ('down', m, k)]]
    boundaries = {apply(b, x) for x in range(1 << n)}
    cycles = {x for x in range(1 << m) if apply(a, x) == 0}
    assert boundaries <= cycles
    assert all(apply(a, x) == 0 and apply(p, x) == 1 << j for j, x in enumerate(i))
    assert all(apply(p, x) == 0 for x in boundaries)
    for j in range(m):
        assert apply(i, p[j]) ^ apply(b, u[j]) ^ apply(d, a[j]) == 1 << j
    for x, y in itertools.product(cycles, repeat=2):
        assert (apply(p, x) == apply(p, y)) == (x ^ y in boundaries)
    return len(cycles) ** 2


key = lambda e: tuple(e['key'][x] for x in ['object', 'page', 's', 't'])
results = []
for case in ['zero_b0', 'zero_b1']:
    previous = load(ROOT / 'Fact713H2Continuation' / f'{case}-family.json')['entries']
    entries = load(HERE / f'{case}-family.json')['entries']
    by = {key(e): e['wire'] for e in entries}
    assert len(by) == len(entries) == 1413
    assert entries[:len(previous)] == previous and len(previous) == 1403
    old = load(ROOT / 'Fact713H2Continuation/branches' / f'{case}.json')
    new = load(HERE / 'branches' / f'{case}.json')
    assert all(new['new_comparisons'][k] == v for k, v in old['new_comparisons'].items())
    for field in ['selection_changes', 'inherited_row3136_selection_changes']:
        assert new[field] == old[field]
    pairs = sum(quotient(w) for w in by.values())
    adjacent = consecutive = predecessors = 0
    for (obj, page, s, t), w in by.items():
        if page > 2:
            for dim, ss, tt in [(w['n'], s-page, t-page+1), (w['m'], s, t),
                                (w['k'], s+page, t+page-1)]:
                assert by[obj, page-1, ss, tt]['h'] == dim
                predecessors += 1
        upper = by.get((obj, page, s+page, t+page-1))
        if upper is not None:
            assert (w['k'], w['m'], w['outgoing']) == (upper['m'], upper['n'], upper['incoming'])
            adjacent += 1
        later = by.get((obj, page+1, s, t))
        if later is not None:
            assert w['h'] == later['m']
            consecutive += 1
    source = by['S0', 5, 10, 134]
    target = by['S0', 5, 15, 138]
    assert source == load(ROOT / 'Fact763Continuation/wire/source5.json')
    assert (source['m'], source['n'], source['k'], source['h']) == (2, 0, 1, 1)
    a = columns(source, 'outgoing', 1, 2)
    p = columns(source, 'projection', 1, 2)
    assert a == [0, 1] and p == [1, 0]
    assert (target['m'], target['n'], target['k'], target['h']) == (1, 2, 0, 0)
    assert columns(target, 'incoming', 1, 2) == a
    assert {apply(a, x) for x in range(4)} == {0, 1}
    assert by['S0', 4, 5, 130]['h'] == 0
    named = 16
    for page in range(2, 6):
        w = by['S0', page, 10, 134]
        assert apply(columns(w, 'outgoing', w['k'], w['m']), named) == 0
        assert named not in {apply(columns(w, 'incoming', w['m'], w['n']), x) for x in range(1 << w['n'])}
        named = apply(columns(w, 'projection', w['h'], w['m']), named)
    assert named == 1
    value = 3
    for page in range(2, 10):
        w = by['S0', page, 9, 132]
        assert apply(columns(w, 'outgoing', w['k'], w['m']), value) == 0
        assert value not in {apply(columns(w, 'incoming', w['m'], w['n']), x) for x in range(1 << w['n'])}
        value = apply(columns(w, 'projection', w['h'], w['m']), value)
    assert value == 1 and ('S0', 10, 9, 132) not in by
    results.append(dict(case=case, entries=len(entries), previous_preserved=len(previous),
        quotient_pairs=pairs, predecessors=predecessors, adjacent=adjacent, consecutive=consecutive,
        named_E2_coordinate=4, named_E5_coordinate=0, source_E6_dimension=1, target_E6_dimension=0))

frozen = load(HERE / 'frozen-source.json')
for name, digest in frozen['files'].items():
    assert sha(ROOT / name) == digest, name
assert all(m['observed_exit_code'] == 0 for m in frozen['modules'])
report = dict(status='passed', branches=results, frozen_files=len(frozen['files']),
    modules=len(frozen['modules']), standard_axiom_reports=frozen['axiom_reports'],
    review_source_sha256=sha(Path(__file__)),
    scope='Complete finite spaces and same input E2/E6 binding. Actual E10 still needs Prefix10; '
          'full incoming semantics and independently stored last d5 column remain explicit.')
(HERE / 'independent-review.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps(report, indent=2))
