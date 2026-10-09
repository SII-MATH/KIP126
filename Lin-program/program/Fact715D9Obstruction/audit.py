"""Independent finite-algebra audit of the bounded negative searches.

This checks the untrusted search artifacts, not the topology or d9 claim.
It does not invoke a producer, Lean, or Lake, and writes only this directory.
"""
import collections
import ast
import hashlib
import itertools
import json
from pathlib import Path
import sqlite3

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
BASE = ROOT / 'upstream/kervaire-49'


def digest(path):
    h = hashlib.sha256()
    with path.open('rb') as stream:
        for block in iter(lambda: stream.read(1048576), b''):
            h.update(block)
    return h.hexdigest()


def connection(path):
    return sqlite3.connect('file:' + str(path) + '?mode=ro', uri=True)


def sparse(raw):
    assert raw is not None
    indices = list(map(int, raw.split(','))) if raw else []
    assert len(indices) == len(set(indices)) and all(i >= 0 for i in indices)
    return sum(1 << i for i in indices)


def dense(v):
    assert all(b in [0, 1] for b in v)
    return sum(int(b) << i for i, b in enumerate(v))


def columns(a, m, n):
    assert len(a) == m*n
    return [sum(int(a[i*n+j]) << i for i in range(m)) for j in range(n)]


def apply(a, v):
    assert v >> len(a) == 0
    result = 0
    for j, col in enumerate(a):
        if v >> j & 1:
            result ^= col
    return result


def wire_valid(w):
    k, m, n, h = [w[x] for x in ['k', 'm', 'n', 'h']]
    o, inc, inclusion, projection, up, down = [columns(w[x], a, b) for x, a, b in
        [('outgoing', k, m), ('incoming', m, n), ('inclusion', m, h),
         ('projection', h, m), ('up', n, m), ('down', m, k)]]
    assert all(apply(o, col) == 0 for col in inc + inclusion)
    assert all(apply(projection, col) == 0 for col in inc)
    assert all(apply(projection, col) == 1 << j for j, col in enumerate(inclusion))
    assert all(apply(inclusion, projection[j]) ^ apply(inc, up[j]) ^
               apply(down, o[j]) == 1 << j for j in range(m))
    return o, inc, inclusion, projection


db = BASE / 'S0_AdamsSS_t261.db'
c = connection(db)
low = json.loads((HERE / 'products-screen.json').read_text())
high = json.loads((HERE / 'higher-screen.json').read_text())
assert low['input_sha256'] == high['input_sha256'] == digest(db)
valid_wires = 0
for degree, w in low['comparisons'].items():
    outgoing, incoming, _, _ = wire_valid(w)
    s, t = ast.literal_eval(degree)
    assert outgoing == [sparse(row[0]) for row in c.execute(
        'SELECT d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', (s,t))]
    assert incoming == [sparse(row[0]) for row in c.execute(
        'SELECT d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', (s-2,t-1))]
    valid_wires += 1


def decode(raw):
    values = list(map(int, raw.split(','))) if raw else []
    assert len(values) % 2 == 0
    return tuple(sorted(g for g, e in zip(values[::2], values[1::2]) for _ in range(e)))


relations = [(tuple(decode(term) for term in raw.split(';')), s, t)
             for raw, s, t in c.execute('SELECT rel,s,t FROM S0_AdamsE2_relations ORDER BY rowid')]
basis_cache = {}


def basis(degree):
    if degree not in basis_cache:
        basis_cache[degree] = list(c.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis '
                                             'WHERE s=? AND t=? ORDER BY id', degree))
    return basis_cache[degree]


def multiply(left, right, degree):
    terms = set()
    for a in left:
        for b in right:
            term = tuple(sorted(a+b))
            terms.symmetric_difference_update({term})
    lookup = {decode(row[1]): i for i, row in enumerate(basis(degree))}
    seen = set()
    for _ in range(10000):
        bad = next((term for term in sorted(terms) if term not in lookup), None)
        if bad is None:
            return sum(1 << lookup[x] for x in terms)
        frozen = frozenset(terms)
        assert frozen not in seen
        seen.add(frozen)
        target = collections.Counter(bad)
        for rel, s, t in relations:
            if s > degree[0] or t > degree[1]:
                continue
            lead = collections.Counter(rel[0])
            if any(target[g] < e for g, e in lead.items()):
                continue
            q = tuple(sorted((target-lead).elements()))
            for term in rel:
                terms.symmetric_difference_update({tuple(sorted(term+q))})
            break
        else:
            raise AssertionError('no independently replayable reduction')
    raise AssertionError('reduction bound')


def stair_support(degree, v):
    rows = list(c.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss '
                          'WHERE s=? AND t=? ORDER BY id', degree))
    # Ascending pivots give an independent elimination order from the producer.
    pivots = {}
    for j, row in enumerate(rows):
        x, mask = sparse(row[1]), 1 << j
        while x:
            bit = x & -x
            if bit in pivots:
                x, mask = x ^ pivots[bit][0], mask ^ pivots[bit][1]
            else:
                pivots[bit] = x, mask
                break
        assert x != 0, 'dependent staircase basis'
    support = 0
    while v:
        bit = v & -v
        assert bit in pivots
        v, support = v ^ pivots[bit][0], support ^ pivots[bit][1]
    return [list(row) for j, row in enumerate(rows) if support >> j & 1]


expected_low = set()
for s, t in c.execute('SELECT DISTINCT s,t FROM S0_AdamsE2_basis WHERE 0<t AND t<=40'):
    for mask in range(1, 1 << len(basis((s,t)))):
        expected_low.add((s, t, tuple(row[0] for j, row in enumerate(basis((s,t))) if mask >> j & 1)))
assert expected_low == {(x['degree'][0], x['degree'][1], tuple(x['basis_ids'])) for x in low['results']}
noncycles, replayed = 0, 0
for item in low['results']:
    degree = tuple(item['degree'])
    factor = [decode(x) for x in item['basis_monomials']]
    rows = basis(degree)
    mask = sum(1 << j for j, row in enumerate(rows) if row[0] in item['basis_ids'])
    differential = apply([sparse(row[2]) for row in rows], mask)
    if item['status'] == 'unknown':
        assert differential != 0 and 'factor_E3' not in item
        noncycles += 1
        continue
    assert differential == 0
    for label, right in [('source', [(69, 69)]), ('target', [(0, 0, 391)])]:
        output = item[label]
        assert multiply(factor, right, tuple(output['degree'])) == dense(output['raw'])
        _, _, _, projection = wire_valid(low['comparisons'][str(tuple(output['degree']))])
        assert apply(projection, dense(output['raw'])) == dense(output['E3'])
        replayed += 1

def rank(vectors):
    pivots = {}
    for v in vectors:
        while v:
            bit = v & -v
            if bit in pivots:
                v ^= pivots[bit]
            else:
                pivots[bit] = v
                break
    return len(pivots)


high_groups = collections.defaultdict(list)
for item in high['results']:
    high_groups[tuple(item['degree'])].append(item)
for degree in c.execute('SELECT DISTINCT s,t FROM S0_AdamsE2_basis WHERE 40<t AND t<=120'):
    s, t = degree
    outgoing = [sparse(row[2]) for row in basis(degree)]
    incoming = [sparse(row[2]) for row in basis((s-2,t-1))]
    assert all(apply(outgoing, x) == 0 for x in incoming)
    vectors = [dense(item['raw']) for item in high_groups[degree]]
    assert all(apply(outgoing, x) == 0 for x in vectors)
    assert len(vectors) == len(outgoing)-rank(outgoing)-rank(incoming)
    assert rank(incoming+vectors) == rank(incoming)+len(vectors)
for item in high['results']:
    assert item['status'] == 'no_possible_E9_staircase_component'
    factor = [decode(x) for x in item['basis_monomials']]
    output = item['target']
    assert multiply(factor, [(0, 0, 391)], tuple(output['degree'])) == dense(output['raw'])
    support = stair_support(tuple(output['degree']), dense(output['raw']))
    assert support == output['staircase']
    assert not any(9 <= row[3] <= 9991 for row in support)
    replayed += 1

boundaries = []
for obj, degree, source_id, target_index, correction_index in [
        ('S0', (12,137), 2793, 3, None),
        ('Csigma', (12,152), 6069, 6, None),
        ('Ceta', (12,137), 4422, 6, 7)]:
    path = next(BASE.glob(obj+'_AdamsSS*.db'))
    cc = connection(path)
    row = cc.execute('SELECT id,s,t,base,diff,level FROM '+obj+'_AdamsE2_ss WHERE id=?',
                     (source_id,)).fetchone()
    assert tuple(row[1:3]) == (degree[0]-3,degree[1]-2) and row[5] == 9997
    diff = sparse(row[4])
    assert diff == (1 << target_index) ^ (0 if correction_index is None else 1 << correction_index)
    correction = None
    if correction_index is not None:
        previous = list(cc.execute('SELECT id,mon,d2 FROM '+obj+'_AdamsE2_basis '
                                   'WHERE s=? AND t=? ORDER BY id', (degree[0]-2,degree[1]-1)))
        correction = next(list(x) for x in previous if x[2] is not None and sparse(x[2]) == 1 << correction_index)
    boundaries.append(dict(object=obj, target_degree=degree, target_index=target_index,
                           d3_source=row, d2_correction=correction, database_sha256=digest(path)))

files = ['screen_products.py', 'products-screen.json', 'products-screen.log',
         'screen_higher.py', 'higher-screen.json', 'higher-screen.log',
         'screen_events.py', 'map-events.json', 'map-events.log', 'audit.py']
report = dict(status='finite_search_artifacts_checked_d9_mathematics_unresolved',
              complete_low_factor_combinations=len(expected_low), rejected_noncycles=noncycles,
              higher_factor_basis_columns=len(high['results']), comparison_identities=valid_wires,
              independently_replayed_products=replayed, early_detector_boundaries=boundaries,
              input_sha256={name: digest(HERE/name) for name in files},
              limitation='No actual higher-page meaning or d9 exclusion is asserted. '
                         'Staircase upper-page support only screens candidates. '
                         'Unknown differentials and proof events remain untrusted data.')
(HERE/'audit.json').write_text(json.dumps(report, indent=2)+'\n')
print(json.dumps({k:v for k,v in report.items() if k not in ['input_sha256','early_detector_boundaries']}, indent=2))
