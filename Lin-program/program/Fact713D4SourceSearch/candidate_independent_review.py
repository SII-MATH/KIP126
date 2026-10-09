"""Independent raw SQL, reduction, quotient and exhaustive C2h5 d3 audit.

Imports no producer code. Database annotations remain external finite inputs;
the two S0 unknown-column zero refinements are explicitly conditional inputs.
"""
import collections
import hashlib
import itertools
import json
import sqlite3
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
source = json.loads((HERE / 'source.json').read_text())
comparison_source = json.loads((HERE / 'comparison-source.json').read_text())
candidates = json.loads((HERE / 'c2h5-e4-candidates.json').read_text())
parameters = json.loads((HERE / 'parameters.json').read_text())
dbpaths = {name: ROOT / f'upstream/kervaire-49/{name}_AdamsSS_t{limit}.db'
           for name, limit in [('S0', 261), ('C2h5', 200)]}
sql = {name: sqlite3.connect(f'file:{path}?mode=ro', uri=True)
       for name, path in dbpaths.items()}
assert source['sources'] == {p.name: sha(p) for p in dbpaths.values()}
assert source['raw_row'] == list(sql['S0'].execute(
    'SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2684').fetchone())

def parity(xs):
    return {x for x, count in collections.Counter(xs).items() if count % 2}

def coefficient(raw):
    xs = list(map(int, raw.split(','))) if raw else []
    assert len(xs) % 2 == 0 and all(x >= 0 for x in xs)
    return tuple(sorted(g for g, e in zip(xs[::2], xs[1::2]) for _ in range(e)))

def monomial(raw):
    co, _, gen = raw.rpartition(',')
    return coefficient(co), int(gen)

def expression(encoded):
    return parity((tuple(m), g) for g, poly in enumerate(encoded) for m in poly)

def multiple(relation, polynomial):
    return parity((tuple(sorted(a + tuple(b))), g) for a, g in relation for b in polynomial)

def vectors(n):
    return itertools.product((0, 1), repeat=n)

def mat(bits, m, n):
    assert len(bits) == m * n
    return tuple(tuple(int(x) for x in bits[i*n:(i+1)*n]) for i in range(m))

def apply(matrix, x):
    assert all(len(row) == len(x) for row in matrix)
    return tuple(sum(a*b for a, b in zip(row, x)) % 2 for row in matrix)

def add(x, y):
    assert len(x) == len(y)
    return tuple(a ^ b for a, b in zip(x, y))

def support(raw, n):
    assert raw is not None
    xs = list(map(int, raw.split(','))) if raw else []
    assert xs == sorted(set(xs)) and all(0 <= x < n for x in xs)
    return tuple(int(i in xs) for i in range(n))

generators = {name: {i: (s, t) for i, s, t in con.execute(
    f'SELECT id,s,t FROM {name}_AdamsE2_generators')} for name, con in sql.items()}
def degree(term):
    co, g = term
    return tuple(sum(generators['S0'][i][k] for i in co) + generators['C2h5'][g][k]
                 for k in range(2))

matrices = {}
reductions = 0
for item in source['matrices']:
    st = tuple(item['source_degree'])
    assert item['target_degree'] == list(st)
    assert st not in matrices
    w = item['wire']['algebra']
    sr = [list(x) for x in sql['S0'].execute(
        'SELECT id,mon FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', st)]
    tr = [list(x) for x in sql['C2h5'].execute(
        'SELECT id,mon FROM C2h5_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', st)]
    assert sr == item['source'] and tr == item['target']
    assert (w['cols'], w['rows']) == (len(sr), len(tr))
    assert [expression(x) for x in w['source']] == [{(coefficient(raw), 0)} for _, raw in sr]
    assert [expression(x) for x in w['target']] == [{monomial(raw)} for _, raw in tr]
    assert [expression(x) for x in w['images']] == [{((), 0)}]
    relations = []
    for encoded, origin in zip(w['relations'], item['relation_sources'], strict=True):
        assert origin['kind'] == 'module'
        assert origin['table'] == 'C2h5_AdamsE2_relations'
        raw, s, t = sql['C2h5'].execute(
            'SELECT rel,s,t FROM C2h5_AdamsE2_relations WHERE rowid=?', (origin['rowid'],)).fetchone()
        relation = parity(monomial(x) for x in raw.split(';'))
        assert origin['raw'] == raw and origin['degree'] == [s, t]
        assert expression(encoded) == relation and all(degree(x) == (s, t) for x in relation)
        relations.append(relation)
    for j, ((_, raw), trace) in enumerate(zip(sr, w['terms'], strict=True)):
        value = {(coefficient(raw), 0)}
        assert all(degree(x) == st for x in value)
        for step in trace:
            delta = multiple(relations[step['relation']], step['multiplier'])
            assert all(degree(x) == st for x in delta)
            value.symmetric_difference_update(delta)
            reductions += 1
        assert value == {monomial(raw) for i, (_, raw) in enumerate(tr) if w['entries'][i*w['cols']+j]}
    matrices[st] = mat(w['entries'], w['rows'], w['cols'])
assert len(matrices) == 16 and sum(len(m[0]) if m else 0 for m in matrices.values()) == 44

pair_checks = 0
def quotient(w):
    global pair_checks
    n, m, k, h = (w[x] for x in ['n', 'm', 'k', 'h'])
    d, j = mat(w['outgoing'], k, m), mat(w['incoming'], m, n)
    p, i = mat(w['projection'], h, m), mat(w['inclusion'], m, h)
    cycles = [x for x in vectors(m) if not any(apply(d, x))]
    boundaries = {apply(j, x) for x in vectors(n)}
    assert boundaries <= set(cycles)
    for z in vectors(h):
        assert apply(i, z) in cycles and apply(p, apply(i, z)) == z
    for x in cycles:
        assert add(x, apply(i, apply(p, x))) in boundaries
        for y in cycles:
            assert (apply(p, x) == apply(p, y)) == (add(x, y) in boundaries)
            pair_checks += 1
    return dict(w=w, d=d, j=j, p=p, i=i, cycles=cycles, boundaries=boundaries)

quotients = {}
for item in comparison_source:
    name, (s, t), w = item['object'], item['degree'], item['wire']
    groups = [[dict(id=i, mon=raw, d2=d2) for i, raw, d2 in sql[name].execute(
        f'SELECT id,mon,d2 FROM {name}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', st)]
        for st in [(s-2, t-1), (s, t), (s+2, t+1)]]
    assert groups == item['rows']
    assert [len(xs) for xs in groups] == [w['n'], w['m'], w['k']]
    for rows, dim, field in [(groups[0], w['m'], 'incoming'), (groups[1], w['k'], 'outgoing')]:
        columns = [support(row['d2'], dim) for row in rows]
        assert w[field] == [column[i] for i in range(dim) for column in columns]
    quotients[name, s, t] = quotient(w)
assert len(quotients) == 12

e3maps = {}
square_checks = 0
for s, t in [(9, 132), (12, 134), (15, 136), (13, 135), (16, 137), (19, 139)]:
    a, b = quotients['S0', s, t], quotients['C2h5', s, t]
    f, upper, lower = matrices[s, t], matrices[s+2, t+1], matrices[s-2, t-1]
    for x in vectors(a['w']['m']):
        assert apply(b['d'], apply(f, x)) == apply(upper, apply(a['d'], x))
        square_checks += 1
    for x in vectors(a['w']['n']):
        assert apply(f, apply(a['j'], x)) == apply(b['j'], apply(lower, x))
        square_checks += 1
    columns = [apply(b['p'], apply(f, tuple(a['i'][i][j] for i in range(a['w']['m']))))
               for j in range(a['w']['h'])]
    bits = [col[i] for i in range(b['w']['h']) for col in columns]
    assert candidates['coordinate_maps'][str((s, t))] == bits
    e3maps[s, t] = mat(bits, b['w']['h'], a['w']['h'])

raw = {st: [list(row) for row in sql['C2h5'].execute(
    'SELECT id,base,diff,level FROM C2h5_AdamsE2_ss WHERE s=? AND t=? ORDER BY id', st)]
       for st in [(9, 132), (12, 134), (15, 136), (13, 135), (16, 137), (19, 139)]}
assert {f'{s},{t}': rows for (s, t), rows in raw.items()} == candidates['raw_staircase_rows']
assert raw[16, 137] == [[4185, '3', '5', 9996], [4186, '1', '0', 9997],
                        [4187, '2', '1', 9997], [4188, '0', None, 9997]]
assert raw[13, 135] == [[3988, '3', None, 9000], [3989, '1', None, 9993],
                        [3990, '2', None, 9993], [3991, '0', None, 9993]]
assert raw[12, 134] == [[3868, '0,1', None, 9997], [3869, '1', '2', 9998]]
assert apply(quotients['C2h5', 12, 134]['p'], support('0,1', 2)) == (1,)
assert apply(e3maps[16, 137], (1, 0)) == (0, 0, 0, 1)
assert apply(e3maps[13, 135], (0, 1)) == (0, 0, 0, 1)
assert apply(quotients['C2h5', 16, 137]['p'], support('3', 4)) == (0, 0, 0, 1)
assert apply(quotients['C2h5', 16, 137]['p'], support('0', 4)) == (1, 0, 0, 0)
assert [row['id'] for item in comparison_source if item['tag'] == 'tD' for row in item['rows'][1]] == [4185, 4186, 4187, 4188]
assert [row['id'] for item in comparison_source if item['tag'] == 'tiD' for row in item['rows'][1]] == [3988, 3989, 3990, 3991]

# These two S0 zero refinements have prior conditional proofs; SQL NULL is not
# decoded as zero. All other d3 columns below are fixed by complete raw rows.
qs = quotient(parameters['sourceS'])
qt = quotient(parameters['targetS'])
assert parameters['sourceS']['outgoing'] == [0, 0, 0, 0]
assert parameters['sourceS']['incoming'] == [0, 0, 1, 1]
assert parameters['targetS']['outgoing'] == [0, 0]
assert parameters['targetS']['incoming'] == [0, 0, 1, 0]
parameter_quotients = {key: quotient(w) for key, w in parameters.items() if key not in ['sourceS', 'targetS']}
assert len(parameter_quotients) == 12

# Check the raw staircase vectors in the E2-ordered E3 coordinates. In
# particular, linear combinations of staircase vectors must not be dropped.
raw_d3_checks = []
def check_raw_column(name, s, t, rowid, next_degree, matrix, expected, reason):
    row = sql[name].execute(f'SELECT id,base,diff,level FROM {name}_AdamsE2_ss WHERE id=?', (rowid,)).fetchone()
    q = quotients[name, s, t]
    base = support(row[1], q['w']['m'])
    assert not any(apply(q['d'], base))
    coordinate = apply(q['p'], base)
    assert apply(matrix, coordinate) == expected
    if reason == 'stored_d3':
        assert row[3] == 9997 and row[2] is not None
        qtgt = quotients[(name, *next_degree)]
        assert apply(qtgt['p'], support(row[2], qtgt['w']['m'])) == expected
    elif reason == 'later_prefix':
        assert 9000 < row[3] < 9997 and not any(expected)
    elif reason == 'conditional_refinement':
        assert row[2] is None and row[3] == 9000 and not any(expected)
    elif reason == 'd3_boundary_cycle':
        assert row[3] == 3 and not any(expected)
    else:
        raise AssertionError(reason)
    raw_d3_checks.append(dict(object=name, row=list(row), source_E3=list(coordinate),
        checked_image=list(expected), justification=reason))

check_raw_column('S0', 9, 132, 2569, (12, 134), qs['j'], (0, 0), 'later_prefix')
check_raw_column('S0', 9, 132, 2570, (12, 134), qs['j'], (0, 1), 'stored_d3')
assert apply(qs['j'], (1, 0)) == (0, 1) == apply(qs['j'], (0, 1))
check_raw_column('S0', 12, 134, 2684, (15, 136), qs['d'], (0, 0), 'conditional_refinement')
check_raw_column('S0', 12, 134, 2683, (15, 136), qs['d'], (0, 0), 'd3_boundary_cycle')
check_raw_column('S0', 13, 135, 2773, (16, 137), qt['j'], (0, 0), 'conditional_refinement')
check_raw_column('S0', 13, 135, 2774, (16, 137), qt['j'], (0, 1), 'stored_d3')
check_raw_column('S0', 16, 137, 2906, (19, 139), qt['d'], (0,), 'd3_boundary_cycle')
check_raw_column('S0', 16, 137, 2907, (19, 139), qt['d'], (0,), 'later_prefix')
sd0 = parameter_quotients['sourceD000']
check_raw_column('C2h5', 9, 132, 3682, (12, 134), sd0['j'], (0,), 'later_prefix')
check_raw_column('C2h5', 9, 132, 3683, (12, 134), sd0['j'], (0,), 'later_prefix')
for bits in vectors(2):
    td = parameter_quotients['targetD'+''.join(map(str, bits))]
    check_raw_column('C2h5', 16, 137, 4185, (19, 139), td['d'], (0, 0), 'later_prefix')
    check_raw_column('C2h5', 16, 137, 4186, (19, 139), td['d'], (1, 0), 'stored_d3')
    check_raw_column('C2h5', 16, 137, 4187, (19, 139), td['d'], (0, 1), 'stored_d3')
    assert apply(td['d'], (1, 0, 0, 0)) == bits
    for rowid in [3989, 3990, 3991]:
        check_raw_column('C2h5', 13, 135, rowid, (16, 137), td['j'], (0, 0, 0, 0), 'later_prefix')

accepted = []
tested = 0
for abc in vectors(3):
    sd = parameter_quotients['sourceD' + ''.join(map(str, abc))]
    assert sd['w']['outgoing'] == list(abc) and not any(sd['w']['incoming'])
    for uv in vectors(2):
        td = parameter_quotients['targetD' + ''.join(map(str, uv))]
        assert td['w']['outgoing'] == [uv[0], 1, 0, 0, uv[1], 0, 1, 0]
        assert not any(td['w']['incoming'])
        for unknown in vectors(4):
            tested += 1
            inc = tuple((0, 0, 0, x) for x in unknown)
            squares = [
                all(apply(sd['d'], apply(e3maps[12, 134], x)) == apply(e3maps[15, 136], apply(qs['d'], x)) for x in vectors(2)),
                all(apply(e3maps[12, 134], apply(qs['j'], x)) == apply(sd['j'], apply(e3maps[9, 132], x)) for x in vectors(2)),
                all(apply(td['d'], apply(e3maps[16, 137], x)) == apply(e3maps[19, 139], apply(qt['d'], x)) for x in vectors(2)),
                all(apply(e3maps[16, 137], apply(qt['j'], x)) == apply(inc, apply(e3maps[13, 135], x)) for x in vectors(2))]
            if not all(squares):
                continue
            assert unknown == (0, 0, 0, 0)
            assert all(not any(apply(td['d'], apply(inc, x))) for x in vectors(4))
            for x in qs['cycles']:
                assert apply(e3maps[12, 134], x) in sd['boundaries']
            for x in qt['cycles']:
                assert apply(e3maps[16, 137], x) in td['cycles']
                assert (apply(e3maps[16, 137], x) in td['boundaries']) == (x in qt['boundaries'])
            assert td['w']['h'] == 2 and sd['w']['h'] == int(not any(abc))
            accepted.append((abc, uv, unknown))
assert tested == 512 and len(accepted) == 32
assert set(accepted) == {(tuple(x['source_d3']), tuple(x['target_d3_unknown']), tuple(x['incoming_d3_unknown'])) for x in candidates['cases']}

coordinate_bridge_checks = 0
swap = mat([0,1,1,0],2,2)
incoming_change = mat([1,0,1,1],2,2)
for mode, batch_name, index, d3_path, s, t, change in [
    ('source', 'Batch06', 24, 'Fact713NextSourceSearch/wires/b_S0_12_134_d3.json', 12, 134, incoming_change),
    ('target', 'Batch07', 6, 'Fact713Row2773Refinement/wires/b_S0_16_137_d3.json', 16, 137, swap)]:
    old2 = quotients['S0', s, t]
    entry = json.loads((ROOT/f'Fact713ComparisonBatches/{batch_name}.json').read_text())['entries'][index]
    assert entry['key'] == dict(object='S0', page=2, s=s, t=t)
    stair2 = quotient(entry['wire'])
    for key in ['k','m','n','h','outgoing','incoming']:
        assert old2['w'][key] == stair2['w'][key]
    for x in vectors(2):
        assert apply(stair2['p'], apply(old2['i'], x)) == apply(swap, x)
        assert apply(old2['p'], apply(stair2['i'], x)) == apply(swap, x)
        coordinate_bridge_checks += 2
    old3 = qs if mode == 'source' else qt
    stair3 = quotient(json.loads((ROOT/d3_path).read_text()))
    for x in vectors(2):
        assert apply(stair3['d'], apply(swap, x)) == apply(old3['d'], x)
        assert apply(stair3['j'], apply(change, x)) == apply(swap, apply(old3['j'], x))
        coordinate_bridge_checks += 2
    for z in vectors(1):
        assert apply(stair3['p'], apply(swap, apply(old3['i'], z))) == z
        assert apply(old3['p'], apply(swap, apply(stair3['i'], z))) == z
        coordinate_bridge_checks += 2
    assert apply(old3['p'], (1,0)) == apply(stair3['p'], (0,1)) == (1,)
assert coordinate_bridge_checks == 40
report = dict(status='no_correctness_findings', matrices=16, columns=44, relation_steps=reductions,
    complete_d2_quotients=12, whole_d2_square_vectors=square_checks, quotient_pair_checks=pair_checks,
    parameter_d3_quotients=14, tested_unknown_assignments=tested, accepted_assignments=len(accepted),
    rejected_assignments=tested-len(accepted), incoming_unknown_forced_zero=True,
    whole_source_map_zero_in_all_cases=True, whole_target_map_reflects_zero_in_all_cases=True,
    coordinate_bridge_checks=coordinate_bridge_checks,
    raw_d3_column_checks=raw_d3_checks,
    resolved_findings=[dict(location='sourceS.incoming', original=[0,0,0,1], corrected=[0,0,1,1],
        reason='Raw incoming staircase basis (e0+e1,e1) differs from E2-ordered E3 basis (e0,e1). Both columns hit e1.')],
    exact_row_binding={'named_target': {'staircase_id': 4185, 'base': '3', 'basis_id': 4188},
        'unknown_target_d3': {'staircase_id': 4188, 'base': '0', 'basis_id': 4185},
        'incoming_unknown': {'staircase_id': 3988, 'base': '3', 'basis_id': 3991}},
    actual_premises=['complete current coordinate meanings for all six neighborhoods',
        'conditional S0 d3-zero refinements for staircase rows 2684 and 2773',
        'actual current map interpretation on every element',
        'actual quotient transitions with explicit zero laws', 'actual d4 naturality'],
    limitation='Independent finite-data audit only; database rows and reduction relations are not topological realizations.',
    input_sha256={str(p.relative_to(ROOT)): sha(p) for p in [Path(__file__), HERE/'source.json',
        HERE/'comparison-source.json', HERE/'c2h5-e4-candidates.json', HERE/'parameters.json', *dbpaths.values()]})
(HERE/'candidate-independent-review.json').write_text(json.dumps(report, indent=2)+'\n')
print(json.dumps(report, indent=2))
