"""Independent bitset and actual-matrix review of all four frozen branches."""
from collections import Counter
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


def apply(mat, x):
    assert x < 1 << len(mat)
    value = 0
    for j, col in enumerate(mat):
        if x >> j & 1:
            value ^= col
    return value


def quotient(w):
    k, m, n, h = [w[x] for x in ['k', 'm', 'n', 'h']]
    a = columns(w, 'outgoing', k, m)
    b = columns(w, 'incoming', m, n)
    u = columns(w, 'inclusion', m, h)
    p = columns(w, 'projection', h, m)
    up = columns(w, 'up', n, m)
    down = columns(w, 'down', m, k)
    boundaries = {apply(b, x) for x in range(1 << n)}
    cycles = [x for x in range(1 << m) if apply(a, x) == 0]
    assert boundaries <= set(cycles)
    assert all(apply(a, col) == 0 and apply(p, col) == 1 << j for j, col in enumerate(u))
    for j in range(m):
        assert apply(u, p[j]) ^ apply(b, up[j]) ^ apply(down, a[j]) == 1 << j
    for x, y in itertools.product(cycles, repeat=2):
        assert (apply(p, x) == apply(p, y)) == ((x ^ y) in boundaries)
    return len(cycles) ** 2


key = lambda e: tuple(e['key'][x] for x in ['object', 'page', 's', 't'])
results = []
for residual, a in itertools.product(range(2), repeat=2):
    name = ('residual' if residual else 'zero') + f'_a{a}'
    old = load(ROOT / 'Fact713Row2431Continuation' /
               ('residual-family.json' if residual else 'zero-family.json'))['entries']
    entries = load(HERE / f'{name}-family.json')['entries']
    assert entries[:len(old)] == old
    by = {key(e): e['wire'] for e in entries}
    assert len(by) == len(entries)
    pairs = sum(quotient(e['wire']) for e in entries)
    adjacency = consecutive = 0
    for e in entries:
        obj, r, s, t = key(e); w = e['wire']
        upper = by.get((obj, r, s + r, t + r - 1))
        if upper:
            assert (w['k'], w['m'], w['outgoing']) == (upper['m'], upper['n'], upper['incoming'])
            adjacency += 1
        nxt = by.get((obj, r + 1, s, t))
        if nxt:
            assert w['h'] == nxt['m']
            consecutive += 1
    source, target = by[('S0', 3, 20, 140)], by[('S0', 3, 23, 142)]
    assert source['outgoing'] == [0, a, 0, 0]
    assert source['incoming'] == [residual, 0]
    assert source['h'] == 2 - residual - a
    assert target['outgoing'] == [0, 1]
    assert target['incoming'] == source['outgoing']
    assert target['h'] == 1 - a
    for v in range(4):
        swapped = (v & 1) * 2 + (v >> 1)
        assert apply(columns(source, 'outgoing', 2, 2), swapped) == (a if v & 1 else 0)
    if residual and a:
        restored = by[('S0', 4, 16, 137)]
        assert [restored[x] for x in ['k', 'm', 'n', 'h']] == [0, 1, 1, 1]
        assert restored['incoming'] == [False]
    value = 3
    for r in range(2, 9):
        w = by[('S0', r, 9, 132)]
        assert apply(columns(w, 'outgoing', w['k'], w['m']), value) == 0
        assert value not in {apply(columns(w, 'incoming', w['m'], w['n']), x)
                             for x in range(1 << w['n'])}
        value = apply(columns(w, 'projection', w['h'], w['m']), value)
    assert value == 1
    results.append(dict(case=name, entries=len(entries), prefix=len(old), quotient_pairs=pairs,
                        adjacent=adjacency, consecutive=consecutive, source_h=source['h'], target_h=target['h']))

# Arbitrary bijections include coordinate charts whose actual zero has a
# nonzero label. The two named bindings are essential to the deduction.
counts = Counter()
for src, tgt in itertools.product(itertools.permutations(range(4)), repeat=2):
    si, ti = [{x: i for i, x in enumerate(chart)} for chart in [src, tgt]]
    for first, second in itertools.product(range(4), repeat=2):
        differential = lambda x: tgt[apply([first, second], si[x])]
        for u in range(2):
            target_differential = lambda y: apply([u, 1], ti[y])
            row3135 = src[2]
            row3305 = tgt[1]
            if differential(row3135) != tgt[0]:
                counts['second_column_rejected'] += 1
                continue
            if target_differential(row3305) != 0:
                counts['target_parameter_rejected'] += 1
                continue
            if any(target_differential(differential(x)) != 0 for x in src):
                counts['square_zero_rejected'] += 1
                continue
            assert u == 0 and second == 0 and first in (0, 1)
            counts['actual_models_accepted'] += 1
assert counts['actual_models_accepted'] == 1152

frozen = load(HERE / 'frozen-source.json')
for name, expected in frozen['files'].items():
    assert sha(ROOT / name) == expected, name
for record in frozen['modules']:
    assert record['observed_exit_code'] == 0
out = dict(status='passed', cases=results, actual_models=dict(counts),
           frozen_files=len(frozen['files']), modules=len(frozen['modules']),
           standard_axiom_reports=frozen['axiom_reports'],
           reviewer_source_sha256=sha(Path(__file__)),
           limitation='All four finite branches retained; no actual branch choice or realization of '
                      'other whole-family meanings inferred. The raw NULL d4 schedule is not a nonzero theorem.')
(HERE / 'independent-review.json').write_text(json.dumps(out, indent=2) + '\n')
print(json.dumps(out, indent=2))
