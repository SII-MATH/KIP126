"""Root review of full neighborhoods, both input traces and the E2 target collapse."""
from collections import Counter
import hashlib
import itertools
import json
from pathlib import Path
import sqlite3

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
frozen = load(HERE / 'frozen-source.json')
for path, digest in frozen['files'].items():
    p = ROOT / path if path.startswith(HERE.name + '/') else HERE / path
    assert sha(p) == digest


def cols(w, field, rows, columns):
    bits = w[field]
    assert len(bits) == rows * columns
    return [sum(int(bits[i*columns+j]) << i for i in range(rows)) for j in range(columns)]


def ev(columns, value):
    assert value < 1 << len(columns)
    result = 0
    for j, column in enumerate(columns):
        if value >> j & 1:
            result ^= column
    return result


def quotient(w):
    k, m, n, h = [w[f] for f in ['k', 'm', 'n', 'h']]
    a, b, i, p, u, d = [cols(w, f, r, c) for f, r, c in [
        ('outgoing', k, m), ('incoming', m, n), ('inclusion', m, h),
        ('projection', h, m), ('up', n, m), ('down', m, k)]]
    boundaries = {ev(b, v) for v in range(1 << n)}
    cycles = {v for v in range(1 << m) if ev(a, v) == 0}
    assert boundaries <= cycles
    assert {ev(p, v) for v in cycles} == set(range(1 << h))
    for v in range(1 << h):
        assert ev(i, v) in cycles and ev(p, ev(i, v)) == v
    for v in range(m):
        assert ev(i, p[v]) ^ ev(b, u[v]) ^ ev(d, a[v]) == 1 << v
    for x, y in itertools.product(cycles, repeat=2):
        assert (ev(p, x) == ev(p, y)) == (x ^ y in boundaries)
    return len(cycles) ** 2


key = lambda e: tuple(e['key'][f] for f in ['object', 'page', 's', 't'])
results = []
for branch in range(2):
    label = f'zero_b{branch}'
    old = load(ROOT / 'Fact713Row2693Continuation' / (label + '-family.json'))['entries']
    entries = load(HERE / (label + '-family.json'))['entries']
    by = {key(e): e['wire'] for e in entries}
    assert entries[:len(old)] == old and len(old) == 1413
    assert len(entries) == len(by) == 1431
    count = Counter()
    for (obj, page, s, t), w in by.items():
        count['quotient_pairs'] += quotient(w)
        if page > 2:
            for d, ps, pt in [(w['n'], s-page, t-page+1), (w['m'], s, t),
                              (w['k'], s+page, t+page-1)]:
                assert by[obj, page-1, ps, pt]['h'] == d
                count['predecessors'] += 1
        upper = by.get((obj, page, s+page, t+page-1))
        if upper is not None:
            assert (w['k'], w['m'], w['outgoing']) == (upper['m'], upper['n'], upper['incoming'])
            count['adjacent'] += 1
        later = by.get((obj, page+1, s, t))
        if later is not None:
            assert w['h'] == later['m']
            count['consecutive'] += 1
    assert count['predecessors'] == 2775
    for degree, initial, last in [((9, 132), 3, 10), ((14, 138), 4, 4)]:
        value = initial
        for page in range(2, last+1):
            w = by['S0', page, *degree]
            a, b, p = [cols(w, f, r, c) for f, r, c in [
                ('outgoing', w['k'], w['m']), ('incoming', w['m'], w['n']),
                ('projection', w['h'], w['m'])]]
            assert ev(a, value) == 0
            assert value not in {ev(b, x) for x in range(1 << w['n'])}
            value = ev(p, value)
        assert value == 1
    assert by['S0', 2, 19, 141] == load(HERE / 'source-wire/target2.json')
    assert by['S0', 2, 19, 141]['h'] == 0
    assert by['S0', 3, 10, 135]['h'] == 0
    assert ('S0', 11, 9, 132) not in by
    results.append(dict(branch=branch, entries=len(by), counts=dict(count)))

target = load(HERE / 'source-wire/target2.json')
conn = sqlite3.connect('file:' + str(ROOT / 'upstream/kervaire-49/S0_AdamsSS_t261.db') + '?mode=ro', uri=True)
rows = [conn.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',
                     degree).fetchall() for degree in [(17,140), (19,141), (21,142)]]
assert [len(r) for r in rows] == [target['n'], target['m'], target['k']]
for field, group, m, n in [('incoming', rows[0], target['m'], target['n']),
                          ('outgoing', rows[1], target['k'], target['m'])]:
    assert all(r[2] is not None for r in group)
    assert cols(target, field, m, n) == [sum(1 << int(x) for x in r[2].split(',') if x) for r in group]

request = load(HERE / 'fact713.json')
assert request == dict(version=1, claim='fact-7.13:E11', source=[True, True], output=[True])
assert all(json.loads(line) == request for line in (HERE / 'fact713.jsonl').read_text().splitlines())
result = dict(status='passed', findings=[], frozen_files=len(frozen['files']), branches=results,
    target_early_collapse=dict(degree=[19,141], E2dimension=target['m'], E3dimension=target['h'],
        full_SQL_groups=3, full_SQL_d2_columns=target['n']+target['m']),
    scope='Main same-input nonzero E11 follows from full d2 target collapse to E3zero, '
          'transported to E10, and inherited Prefix10. Row3005 fills finite-family '
          'predecessors and yields its own same-input nonzeroE5. Complete actual '
          'E2 meanings and quotient laws remain explicit; no E12 theorem.')
(HERE / 'independent-review.json').write_text(json.dumps(result, indent=2) + '\n')
print(json.dumps(result, indent=2))
