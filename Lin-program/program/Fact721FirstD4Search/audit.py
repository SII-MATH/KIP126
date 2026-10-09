"""Independently reconstruct the complete d3 maps from exact SQL rows."""
import hashlib
import importlib.util
import itertools
import json
import sqlite3
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
spec = importlib.util.spec_from_file_location('independent', ROOT / 'Row3147MapSearch/review.py')
a = importlib.util.module_from_spec(spec)
spec.loader.exec_module(a)
source = json.loads((HERE / 'source.json').read_text())
records = json.loads((HERE / 'comparison-source.json').read_text())
comparisons = {(x['object'], *x['degree']): x['wire'] for x in records}
db = {name: sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/{name}_AdamsSS_t{limit}.db?mode=ro', uri=True)
      for name, limit in [('S0', 261), ('C2h6', 200)]}
ev = lambda m, rows, cols, v: a.matmul(m, list(v), rows, cols, 1)
vectors = lambda n: itertools.product([0, 1], repeat=n)
checked_coordinates = 0
for block in records:
    name, (s, t), wire = block['object'], block['degree'], block['wire']
    c = db[name]
    meta = dict(c.execute('SELECT name,value FROM version'))
    assert t <= meta['d2_t_max'] and t + 1 <= meta['t_max']
    rows = [[dict(id=i, mon=mon, d2=d2) for i, mon, d2 in c.execute(
        f'SELECT id,mon,d2 FROM {name}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', degree)]
        for degree in [(s-2, t-1), (s, t), (s+2, t+1)]]
    assert rows == block['rows']
    assert list(map(len, rows)) == [wire['n'], wire['m'], wire['k']]
    for field, group, dimension in [('incoming', rows[0], wire['m']), ('outgoing', rows[1], wire['k'])]:
        columns = []
        for row in group:
            assert row['d2'] is not None
            ids = [] if row['d2'] == '' else list(map(int, row['d2'].split(',')))
            assert ids == sorted(set(ids)) and all(0 <= i < dimension for i in ids)
            columns.append(ids)
        assert wire[field] == [i in column for i in range(dimension) for column in columns]
    a.check_wire(wire)
    for v in vectors(wire['m']):
        if not any(ev(wire['outgoing'], wire['k'], wire['m'], v)):
            checked_coordinates += 1

raw_maps = []
def d3(name, s, t):
    S, T = comparisons[name, s, t], comparisons[name, s+3, t+2]
    raw = [list(row) for row in db[name].execute(
        f'SELECT id,base,diff,level FROM {name}_AdamsE2_ss WHERE s=? AND t=? ORDER BY id', (s,t))]
    selected = [row for row in raw if 3 <= row[3] < 5000 or 5000 <= row[3] <= 9997]
    assert len(selected) == S['h']
    cols, values, uses = [], [], []
    for row in selected:
        rid, base, diff, level = row
        ids = [] if base == '' else list(map(int, base.split(',')))
        assert ids == sorted(set(ids)) and all(0 <= i < S['m'] for i in ids)
        v = [i in ids for i in range(S['m'])]
        assert not any(ev(S['outgoing'], S['k'], S['m'], v))
        cols.append(ev(S['projection'], S['h'], S['m'], v))
        if level == 9997:
            assert diff is not None
            ids = [] if diff == '' else list(map(int, diff.split(',')))
            assert ids == sorted(set(ids)) and all(0 <= i < T['m'] for i in ids)
            image = [i in ids for i in range(T['m'])]
            assert not any(ev(T['outgoing'], T['k'], T['m'], image))
            values.append(ev(T['projection'], T['h'], T['m'], image))
            kind = 'recorded_d3_event'
        elif 3 <= level < 5000 or 9000 < level < 9997:
            values.append([0] * T['h'])
            kind = 'strict_earlier_prefix_or_boundary'
        else:
            assert name == 'S0' and (s, t, rid, base, diff, level) in [
                (11, 133, 2622, '1', None, 9000), (12, 134, 2684, '0', None, 9000)]
            values.append([0] * T['h'])
            kind = 'explicit_existing_conditional_actual_d3_theorem'
        uses.append(dict(row=row, kind=kind))
    basis = [cols[j][i] for i in range(S['h']) for j in range(S['h'])]
    result = [None] * (T['h'] * S['h'])
    combinations = {tuple(ev(basis, S['h'], S['h'], v)): v for v in vectors(S['h'])}
    assert len(combinations) == 2 ** S['h']
    for j in range(S['h']):
        factors = combinations[tuple(int(i == j) for i in range(S['h']))]
        for i in range(T['h']):
            result[i*S['h']+j] = sum(factors[k] * values[k][i] for k in range(S['h'])) % 2
    for canonical, factors in combinations.items():
        assert ev(result, T['h'], S['h'], canonical) == [
            sum(factors[k] * values[k][i] for k in range(S['h'])) % 2 for i in range(T['h'])]
    raw_maps.append(dict(object=name, degree=[s,t], all_rows=raw, selected=uses,
                         staircase_in_canonical=basis, staircase_images=values, canonical_matrix=result))
    return result

wires = json.loads((HERE / 'd3-source.json').read_text())['wires']
for key, name, s, t in [('sourceS','S0',11,133), ('sourceD','C2h6',11,133),
                         ('targetS','S0',15,136), ('targetD','C2h6',15,136)]:
    wire = wires[key]
    assert wire['outgoing'] == d3(name,s,t)
    assert wire['incoming'] == d3(name,s-3,t-2)
    a.check_wire(wire)

matrices = {tuple(x['source_degree']): x['wire']['algebra'] for x in source['matrices']}
e3 = {}
for tag, s, t in [('si',8,131),('s',11,133),('so',14,135),('ti',12,134),('t',15,136),('to',18,138)]:
    S, T = comparisons['S0',s,t], comparisons['C2h6',s,t]
    middle, upper, lower = (matrices[st]['entries'] for st in [(s,t),(s+2,t+1),(s-2,t-1)])
    assert a.matmul(T['outgoing'],middle,T['k'],T['m'],S['m']) == a.matmul(upper,S['outgoing'],T['k'],S['k'],S['m'])
    assert a.matmul(middle,S['incoming'],T['m'],S['m'],S['n']) == a.matmul(T['incoming'],lower,T['m'],T['n'],S['n'])
    e3[tag] = a.matmul(T['projection'],a.matmul(middle,S['inclusion'],T['m'],S['m'],S['h']),T['h'],T['m'],S['h'])
for key, middle, upper, lower in [('source','s','so','si'),('target','t','to','ti')]:
    S, T = wires[key+'S'], wires[key+'D']
    assert a.matmul(T['outgoing'],e3[middle],T['k'],T['m'],S['m']) == a.matmul(e3[upper],S['outgoing'],T['k'],S['k'],S['m'])
    assert a.matmul(e3[middle],S['incoming'],T['m'],S['m'],S['n']) == a.matmul(T['incoming'],e3[lower],T['m'],T['n'],S['n'])
    induced = a.matmul(T['projection'],a.matmul(e3[middle],S['inclusion'],T['m'],S['m'],S['h']),T['h'],T['m'],S['h'])
    if key == 'source':
        assert S['h'] == 1 and T['h'] == 0
    else:
        assert S['h'] == T['h'] == 2 and induced == [1,0,0,1]

report = dict(status='independent_full_source_and_quotient_audit_passed',
    complete_d2_quotients=12, full_d2_maps=6, complete_d3_quotients=4, full_d3_maps=2,
    cycle_coordinate_checks=checked_coordinates, d3_raw_maps=raw_maps, E3_maps=e3,
    source_E4_dimensions=[1,0], target_E4_dimensions=[2,2], target_E4_matrix=[1,0,0,1],
    source_all_E4_zero=True, target_all_E4_vectors_injective=True,
    no_raw_NULL_changed=True, actual_status='conditional_on_full_actual_meanings_and_naturality',
    sha256={str(p.relative_to(ROOT)): hashlib.sha256(p.read_bytes()).hexdigest()
            for p in [Path(__file__), HERE/'source.json', HERE/'comparison-source.json', HERE/'d3-source.json']})
(HERE / 'audit.json').write_text(json.dumps(report, indent=2) + '\n')
print('12 complete d2 quotients; six d2 chain maps; four d3 quotients; two d3 chain maps')
print('Every d3 column reconstructed from SQL in canonical coordinates; two explicit conditional NULLs retained')
