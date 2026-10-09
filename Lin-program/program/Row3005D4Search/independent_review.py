"""Root review: full maps, quotient equivalence, and exact named input."""
from collections import Counter
import hashlib
import itertools
import json
from pathlib import Path
import re
import sqlite3

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
counts = Counter()
frozen = load(HERE / 'frozen-source.json')
for name, digest in frozen['files'].items():
    assert sha(ROOT / name) == digest, name


def matrix(bits, rows, columns):
    assert len(bits) == rows * columns
    return [sum(int(bits[i * columns + j]) << i for i in range(rows))
            for j in range(columns)]


def apply(columns, value):
    assert value < 1 << len(columns)
    result = 0
    for j, column in enumerate(columns):
        if value & (1 << j):
            result ^= column
    return result


def comparison(w):
    k, m, n, h = [w[f] for f in ['k', 'm', 'n', 'h']]
    out, inc, include, project = [matrix(w[f], r, c) for f, r, c in [
        ('outgoing', k, m), ('incoming', m, n),
        ('inclusion', m, h), ('projection', h, m)]]
    cycles = {v for v in range(1 << m) if apply(out, v) == 0}
    boundaries = {apply(inc, v) for v in range(1 << n)}
    assert boundaries <= cycles
    assert {apply(project, v) for v in cycles} == set(range(1 << h))
    for x, y in itertools.product(cycles, repeat=2):
        assert (apply(project, x) == apply(project, y)) == (x ^ y in boundaries)
        counts['quotient_pairs'] += 1
    for v in range(1 << h):
        assert apply(include, v) in cycles and apply(project, apply(include, v)) == v
    counts['comparisons'] += 1
    return out, inc, include, project


old = ROOT / 'Fact713C2Row3005'
blocks = {x['tag']: x for x in load(old / 'comparison-source.json')}
maps = {}
text = (old / 'MapComparison.lean').read_text()
for name, r, c, raw in re.findall(
        r'def (\w+) : Matrix \d+ \d+ := matrixOf (\d+) (\d+) \[([^]]*)\]', text):
    maps[name] = matrix([x == 'true' for x in raw.split(',')], int(r), int(c))
assert len(maps) == 6
connections = {name: sqlite3.connect('file:' + str(ROOT / 'upstream/kervaire-49' / file)
    + '?mode=ro', uri=True) for name, file in [
        ('C2', 'C2_AdamsSS_t200.db'), ('S0', 'S0_AdamsSS_t261.db')]}
for block in blocks.values():
    db, obj = connections[block['object']], block['object']
    s, t, w = block['s'], block['t'], block['wire']
    for (a, b), rows in zip([(s-2, t-1), (s, t), (s+2, t+1)], block['rows']):
        actual = db.execute(f'SELECT id,mon,d2 FROM {obj}_AdamsE2_basis '
                            'WHERE s=? AND t=? ORDER BY id', (a, b)).fetchall()
        assert actual == [tuple(x) for x in rows]
        counts['complete_SQL_degrees'] += 1
    out, inc, _, _ = comparison(w)
    for columns, rows in [(out, block['rows'][1]), (inc, block['rows'][0])]:
        assert all(row[2] is not None for row in rows)
        expected = [sum(1 << int(x) for x in row[2].split(',') if x) for row in rows]
        assert columns == expected
        counts['SQL_d2_columns'] += len(columns)

for source, target, middle, lower, upper in [
    ('source', 'target', 'middleMap', 'inMap', 'outMap'),
    ('upperSource', 'upperTarget', 'upperMiddleMap', 'upperInMap', 'upperOutMap')]:
    sw, tw = blocks[source]['wire'], blocks[target]['wire']
    so, si, su, sp = comparison(sw)
    to, ti, tu, tp = comparison(tw)
    f = maps[middle]
    for x in range(1 << sw['m']):
        assert apply(to, apply(f, x)) == apply(maps[upper], apply(so, x))
        counts['outgoing_square_vectors'] += 1
    for x in range(1 << sw['n']):
        assert apply(ti, apply(maps[lower], x)) == apply(f, apply(si, x))
        counts['incoming_square_vectors'] += 1
    induced = [apply(tp, apply(f, x)) for x in su]
    for x in range(1 << sw['m']):
        if apply(so, x) == 0:
            assert apply(induced, apply(sp, x)) == apply(tp, apply(f, x))
            counts['all_cycle_map_descent'] += 1
    maps[middle + '3'] = induced
assert maps['upperMiddleMap3'] == [1]
assert apply(maps['middleMap'], 1) == 4
assert maps['middleMap3'] == [1, 0, 0, 0]
sphere3 = load(HERE / 'wire/sphere3.json')
out, inc, _, project = comparison(sphere3)
assert out == [0] and inc == [0, 0, 0, 0] and project == [1]
for b in [0, 1]:
    family = load(ROOT / 'Fact713Row2693Continuation' / f'zero_b{b}-family.json')
    selected = [e['wire'] for e in family['entries']
                if e['key'] == dict(object='S0', page=3, s=14, t=138)]
    assert selected == [sphere3]
for name in ['empty2', 'empty3']:
    w = load(HERE / 'wire' / (name + '.json'))
    comparison(w)
    assert w['m'] == w['h'] == 0
assert connections['C2'].execute(
    'SELECT id FROM C2_AdamsE2_basis WHERE s=18 AND t=142').fetchall() == []
assert connections['C2'].execute(
    'SELECT diff FROM C2_AdamsE2_ss WHERE id=3110').fetchone() == (None,)

for candidate in itertools.product(range(2), repeat=4):
    commutes = all(apply(maps['upperMiddleMap3'], apply(candidate, x)) == 0
                   for x in range(16))
    assert commutes == (candidate == (0, 0, 0, 0))
    counts['whole_d3_candidates'] += 1
    for x in range(16):
        if commutes:
            assert apply(candidate, x) == 0
for coordinate in itertools.permutations(range(2)):
    nonzero = coordinate.index(1)
    for d4 in [0, 1]:
        actual = lambda x: coordinate.index(apply([d4], coordinate[x]))
        assert (actual(nonzero) == coordinate.index(0)) == (d4 == 0)
        counts['whole_d4_relabelled_models'] += 1

report = dict(status='passed', findings=[], counts=dict(counts),
    modules=len(frozen['modules']), frozen_files=len(frozen['files']),
    scope='Full naturality reflects C2 d3 zero, quotient descent binds exact raw sphere input, '
          'empty C2 d4 target forces whole sphere d4 zero. E5 nonvanishing is not asserted. '
          'Actual complete E2/E3 meanings and naturalities remain explicit hypotheses.')
(HERE / 'independent-review.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps(report, indent=2))
