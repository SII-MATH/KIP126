"""Read-only independent bitset replay of the frozen SecondLater package."""
import hashlib
import itertools
import json
from pathlib import Path
import re
import sqlite3

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
PACKAGE = ROOT / 'Fact721SecondLater'
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
manifest = load(PACKAGE / 'frozen-source.json')
for name, digest in manifest['files'].items():
    assert sha(PACKAGE / name) == digest, name
data = load(PACKAGE / 'source.json')
db = ROOT / 'upstream/kervaire-49/S0_AdamsSS_t261.db'
assert sha(db) == data['database_sha256']
connection = sqlite3.connect(f'file:{db}?mode=ro', uri=True)
version = {row[1]: row[2] for row in connection.execute('select * from version')}
assert version['t_max'] == 261 and version['d2_t_max'] == 177


def bits(raw, dimension):
    assert raw is not None
    entries = [] if raw == '' else [int(i) for i in raw.split(',')]
    assert len(set(entries)) == len(entries)
    assert all(0 <= i < dimension for i in entries)
    return sum(1 << i for i in entries)


def columns(wire, field, rows, cols):
    values = wire[field]
    assert len(values) == rows * cols and all(type(v) is bool for v in values)
    return tuple(sum(int(values[i * cols + j]) << i for i in range(rows))
                 for j in range(cols))


def apply(matrix, value):
    assert 0 <= value < (1 << len(matrix))
    result = 0
    for column, image in enumerate(matrix):
        if value & (1 << column):
            result ^= image
    return result


def check_quotient(w):
    assert set(w) == {'version', 'k', 'm', 'n', 'h', 'outgoing', 'incoming',
                      'inclusion', 'projection', 'up', 'down'}
    assert type(w['version']) is int and w['version'] == 1
    assert all(type(w[f]) is int and w[f] >= 0 for f in ('k', 'm', 'n', 'h'))
    k, m, n, h = (w[f] for f in ('k', 'm', 'n', 'h'))
    outgoing, incoming, inclusion, projection, up, down = [
        columns(w, f, rows, cols) for f, rows, cols in [
            ('outgoing', k, m), ('incoming', m, n), ('inclusion', m, h),
            ('projection', h, m), ('up', n, m), ('down', m, k)]]
    image = {apply(incoming, x) for x in range(1 << n)}
    kernel = {x for x in range(1 << m) if apply(outgoing, x) == 0}
    assert image <= kernel
    assert all(apply(projection, x) == 0 for x in image)
    for j, value in enumerate(inclusion):
        assert value in kernel and apply(projection, value) == 1 << j
    for j in range(m):
        assert (apply(inclusion, projection[j]) ^ apply(incoming, up[j]) ^
                apply(down, outgoing[j])) == 1 << j
    for x, y in itertools.product(kernel, repeat=2):
        assert (apply(projection, x) == apply(projection, y)) == ((x ^ y) in image)
    return len(kernel), len(kernel) ** 2


counts = dict(comparisons=0, cycle_vectors=0, quotient_pairs=0,
              complete_d2_columns=0, known_events=0, empty_incoming_degrees=0)
for name, block in data['blocks'].items():
    w = block['wire']
    assert load(PACKAGE / 'wire' / (name + '.json')) == w
    vectors, pairs = check_quotient(w)
    counts['comparisons'] += 1
    counts['cycle_vectors'] += vectors
    counts['quotient_pairs'] += pairs
    s, t = block['degree']
    if 'rows' in block:
        assert t + 1 <= version['d2_t_max']
        for degree, rows in zip([(s - 2, t - 1), (s, t), (s + 2, t + 1)], block['rows']):
            raw = connection.execute(
                'select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id', degree).fetchall()
            assert raw == [(row['id'], row['mon'], row['d2']) for row in rows]
        assert [list(row) for row in connection.execute(
            'select id,base,diff,level from S0_AdamsE2_ss where s=? and t=? order by id',
            (s, t))] == block['staircase']
        assert [len(rows) for rows in block['rows']] == [w['n'], w['m'], w['k']]
        for rows, field, output in [(block['rows'][0], 'incoming', w['m']),
                                    (block['rows'][1], 'outgoing', w['k'])]:
            actual = columns(w, field, output, len(rows))
            assert actual == tuple(bits(row['d2'], output) for row in rows)
            counts['complete_d2_columns'] += len(rows)


def project(name, raw):
    w = data['blocks'][name]['wire']
    return apply(columns(w, 'projection', w['h'], w['m']), bits(raw, w['m']))


def event(rid, degree, page):
    s, t, base, diff, level = connection.execute(
        'select s,t,base,diff,level from S0_AdamsE2_ss where id=?', (rid,)).fetchone()
    assert (s, t) == degree and level == 10000 - page and diff is not None
    counts['known_events'] += 1
    return base, diff


for rid, expected in [(2913, 1), (2912, 2)]:
    base, diff = event(rid, (14, 137), 3)
    assert project('ii8d2', base) == project('i8d2', diff) == expected
base, diff = event(3140, (18, 140), 3)
assert project('i9d2', base) == project('t9d2', diff) == 1
base, diff = event(3242, (20, 141), 4)
source, target = (data['blocks'][name]['wire'] for name in ['t8d3', 't4d3'])
assert apply(columns(source, 'projection', 1, 1), project('t8d2', base)) == 1
assert apply(columns(target, 'projection', 2, 2), project('t4d2', diff)) == 2
for target, current, incoming, outgoing in [('t8d3', 't8d2', 'i8d2', 'o8d2'),
                                            ('t4d3', 't4d2', 't9d2', 'o4d2')]:
    w = data['blocks'][target]['wire']
    assert w['m'] == data['blocks'][current]['wire']['h']
    assert w['n'] == data['blocks'][incoming]['wire']['h']
    assert w['k'] == data['blocks'][outgoing]['wire']['h'] == 0
    assert not any(w['incoming'])
assert data['blocks']['t10d2']['wire']['h'] == 0


def invertible(dimension):
    for cols in itertools.product(range(1 << dimension), repeat=dimension):
        if len({apply(cols, x) for x in range(1 << dimension)}) == 1 << dimension:
            yield cols


# Change all coordinates, then test the full images, including unknown other
# columns of the one-dimensional-target map. No missing column is set to zero.
gl2, gl3 = list(invertible(2)), list(invertible(3))
assert (len(gl2), len(gl3)) == (6, 168)
relabels = 0
for left, right in itertools.product(gl2, repeat=2):
    inverse = {apply(left, v): v for v in range(4)}
    transported = [apply(right, inverse[1 << j]) for j in range(2)]
    assert {apply(transported, x) for x in range(4)} == set(range(4))
    for outgoing in itertools.product(range(4), repeat=2):
        if all(apply(outgoing, apply(transported, x)) == 0 for x in range(4)):
            assert outgoing == (0, 0)
    relabels += 1
for source_change in gl3:
    inverse = {apply(source_change, v): v for v in range(8)}
    for unknown1, unknown2 in itertools.product(range(2), repeat=2):
        original = (1, unknown1, unknown2)
        transported = [apply(original, inverse[1 << j]) for j in range(3)]
        assert apply(transported, apply(source_change, 1)) == 1
        assert {apply(transported, x) for x in range(8)} == {0, 1}
        relabels += 1
counts['complete_map_relabels'] = relabels
for target_change in gl2:
    assert apply(target_change, 2) != 0
counts['death_target_relabels'] = len(gl2)

expected = {(12 - r, 134 - r + 1) for r in range(8, 13)}
actual = set()
for degree, rows in data['empty_incoming_E2'].items():
    pair = tuple(map(int, degree.strip('()').split(',')))
    assert rows == [] and pair[1] <= version['t_max']
    assert connection.execute('select count(*) from S0_AdamsE2_basis where s=? and t=?', pair).fetchone() == (0,)
    actual.add(pair)
    counts['empty_incoming_degrees'] += 1
assert actual == expected
for rid in [2999, 3476]:
    assert connection.execute('select diff from S0_AdamsE2_ss where id=?', (rid,)).fetchone() == (None,)
assert connection.execute('select level from S0_AdamsE2_ss where id=3139').fetchone() == (7,)

reports = empty = 0
historical_changes = []
modules = (PACKAGE / 'modules.txt').read_text().splitlines()
for module in modules:
    name = module.split('.')[-1]
    record = load(PACKAGE / (name + '-compile.json'))
    assert record['observed_exit_code'] == 0 and record['inputs_stable']
    assert sha(PACKAGE / (name + '.lean')) == record['source_sha256']
    log = PACKAGE / record['log']
    assert sha(log) == record['log_sha256']
    for path, digest in record['external_input_sha256'].items():
        assert sha(ROOT / path) == digest
    for path, digest in record['dependencies_sha256'].items():
        dependency = ROOT / path
        if not dependency.exists() or sha(dependency) != digest:
            historical_changes.append(dict(module=module, dependency=path))
    text = log.read_text()
    assert 'sorryAx' not in text and 'error:' not in text
    for axioms in re.findall(r'depends on axioms:\s*\[([^]]*)\]', text):
        assert set(a.strip() for a in axioms.split(',') if a.strip()) <= {
            'propext', 'Classical.choice', 'Quot.sound'}
        reports += 1
    empty += text.count('does not depend on any axioms')
    assert not re.search(r'\b(sorry|admit|axiom|unsafe|native_decide)\b', (PACKAGE / (name + '.lean')).read_text())

counts.update(frozen_files=len(manifest['files']), modules=len(modules),
              standard_axiom_reports=reports, empty_axiom_reports=empty)
result = dict(status='passed', script_sha256=sha(Path(__file__)),
              frozen_manifest_sha256=sha(PACKAGE / 'frozen-source.json'), counts=counts,
              historical_dependency_changes=historical_changes,
              incoming_tail='Lean Incoming.zero proves all r >= 8: r <= 12 is exactly the five imported empty degrees; r > 12 has no legal incoming source.',
              reviewed_semantics='Complete d8 target E4 uses full incoming maps and d-squared; d9 target is wholly hit; every endpoint extends the same previous E8 trace.',
              limitations='Actual E2 coordinate meanings, recorded event meanings, and quotient laws remain explicit premises. No E12 or permanence theorem.')
(HERE / 'review.json').write_text(json.dumps(result, indent=2) + '\n')
print(json.dumps(result, indent=2))
