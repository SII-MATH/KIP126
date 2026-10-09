"""Independent bitset and exact SQL replay for the named C2h5 detector."""
import hashlib
import itertools
import json
from pathlib import Path
import sqlite3

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda path: json.loads(path.read_text())
sha = lambda path: hashlib.sha256(path.read_bytes()).hexdigest()
source = load(HERE / 'source.json')
blocks = load(HERE / 'comparison-source.json')
db = {name: sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/{name}_AdamsSS_t{top}.db?mode=ro', uri=True)
      for name, top in [('S0', 261), ('C2h5', 200)]}


def coeff(raw):
    fields = list(map(int, raw.split(','))) if raw else []
    assert len(fields) % 2 == 0
    return tuple(sorted(g for g, e in zip(fields[::2], fields[1::2]) for _ in range(e)))


def mono(raw):
    fields = raw.split(',')
    return coeff(','.join(fields[:-1])), int(fields[-1])


def expression(encoded):
    result = set()
    for gen, terms in enumerate(encoded):
        for term in terms:
            result.symmetric_difference_update([(tuple(sorted(term)), gen)])
    return result


def columns(bits, rows, cols):
    assert len(bits) == rows * cols
    return [sum(int(bits[i * cols + j]) << i for i in range(rows)) for j in range(cols)]


def apply(matrix, value):
    result = 0
    for j, column in enumerate(matrix):
        if value & (1 << j):
            result ^= column
    return result


matrices = {}
reductions = 0
for record in source['matrices']:
    degree = record['source_degree']
    assert record['target_degree'] == degree
    w = record['wire']['algebra']
    left = [list(row) for row in db['S0'].execute(
        'SELECT id,mon FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', degree)]
    right = [list(row) for row in db['C2h5'].execute(
        'SELECT id,mon FROM C2h5_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', degree)]
    assert record['source'] == left and record['target'] == right
    assert w['rows'] == len(right) and w['cols'] == len(left)
    assert [expression(e) for e in w['source']] == [{(coeff(raw), 0)} for _, raw in left]
    assert [expression(e) for e in w['target']] == [{mono(raw)} for _, raw in right]
    assert [expression(e) for e in w['images']] == [{((), 0)}]
    relations = []
    for encoded, origin in zip(w['relations'], record['relation_sources'], strict=True):
        obj = 'C2h5' if origin['kind'] == 'module' else 'S0'
        raw, s, t = db[obj].execute(
            f'SELECT rel,s,t FROM {obj}_AdamsE2_relations WHERE rowid=?', (origin['rowid'],)).fetchone()
        assert raw == origin['raw']
        terms = set()
        for term in raw.split(';'):
            value = mono(term) if obj == 'C2h5' else (coeff(term), origin['module_generator'])
            terms.symmetric_difference_update([value])
        assert expression(encoded) == terms
        relations.append(terms)
    for j, ((_, raw), trace) in enumerate(zip(left, w['terms'], strict=True)):
        value = {(coeff(raw), 0)}
        for term in trace:
            for multiplier in term['multiplier']:
                for mon, gen in relations[term['relation']]:
                    value.symmetric_difference_update([(tuple(sorted(tuple(multiplier) + mon)), gen)])
            reductions += 1
        assert value == {mono(raw) for i, (_, raw) in enumerate(right) if w['entries'][i * w['cols'] + j]}
    matrices[tuple(degree)] = columns(w['entries'], w['rows'], w['cols'])

quotients = {}
pairs = 0
for block in blocks:
    w = block['wire']
    s, t = block['degree']
    obj = block['object']
    rows = [[dict(id=i, mon=raw, d2=delta) for i, raw, delta in db[obj].execute(
        f'SELECT id,mon,d2 FROM {obj}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', degree)]
        for degree in [(s - 2, t - 1), (s, t), (s + 2, t + 1)]]
    assert rows == block['rows']
    for field, group, count in [('incoming', rows[0], w['m']), ('outgoing', rows[1], w['k'])]:
        assert all(row['d2'] is not None for row in group)
        expected = [sum(1 << int(i) for i in row['d2'].split(',') if i) for row in group]
        assert columns(w[field], count, len(group)) == expected
    a = columns(w['outgoing'], w['k'], w['m'])
    b = columns(w['incoming'], w['m'], w['n'])
    inc = columns(w['inclusion'], w['m'], w['h'])
    proj = columns(w['projection'], w['h'], w['m'])
    up = columns(w['up'], w['n'], w['m'])
    down = columns(w['down'], w['m'], w['k'])
    cycles = [x for x in range(1 << w['m']) if not apply(a, x)]
    boundaries = {apply(b, x) for x in range(1 << w['n'])}
    assert boundaries <= set(cycles)
    for x in range(1 << w['m']):
        assert apply(inc, apply(proj, x)) ^ apply(b, apply(up, x)) ^ apply(down, apply(a, x)) == x
    for x in range(1 << w['h']):
        assert not apply(a, apply(inc, x)) and apply(proj, apply(inc, x)) == x
    for x, y in itertools.product(cycles, repeat=2):
        assert (apply(proj, x) == apply(proj, y)) == ((x ^ y) in boundaries)
        pairs += 1
    quotients[obj, s, t] = (w, a, b, inc, proj, cycles)

induced = []
squares = 0
for s, t in [(13, 137), (16, 139)]:
    w, a, b, inc, proj, cycles = quotients['S0', s, t]
    z, za, zb, zinc, zproj, _ = quotients['C2h5', s, t]
    f, upper, lower = [matrices[degree] for degree in [(s, t), (s + 2, t + 1), (s - 2, t - 1)]]
    for x in range(1 << w['m']):
        assert apply(za, apply(f, x)) == apply(upper, apply(a, x))
        squares += 1
    for x in range(1 << w['n']):
        assert apply(f, apply(b, x)) == apply(zb, apply(lower, x))
        squares += 1
    f3 = [apply(zproj, apply(f, value)) for value in inc]
    for x in cycles:
        assert apply(zproj, apply(f, x)) == apply(f3, apply(proj, x))
    induced.append(f3)
assert induced == [[4, 0, 8], [4]]
assert apply(induced[0], 2) == 0
assert [y for y in range(2) if apply(induced[1], y) == 0] == [0]
frozen = load(HERE / 'frozen-source.json')
for path, expected in frozen['files'].items():
    candidate = ROOT / path if path.startswith(HERE.name + '/') else HERE / path
    assert sha(candidate) == expected
record = dict(status='passed', matrices=6, columns=23, reductions=reductions,
              quotient_pairs=pairs, square_vectors=squares, full_induced_columns=induced,
              actual_source_review='Complete d2 meanings and quotient transitions construct both E3 maps; exact named binding retained',
              inputs={str(path.relative_to(ROOT)): sha(path) for path in
                      [Path(__file__), HERE / 'frozen-source.json', HERE / 'source.json', HERE / 'comparison-source.json']})
(HERE / 'independent-review.json').write_text(json.dumps(record, indent=2) + '\n')
print(json.dumps(record, indent=2))
