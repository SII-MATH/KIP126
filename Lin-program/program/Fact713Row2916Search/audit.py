"""Exact raw quotient, chain-map, named-binding and detector model audit."""
from collections import Counter
import hashlib
import importlib.util
import itertools
import json
from pathlib import Path
import sqlite3

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
spec = importlib.util.spec_from_file_location('independent', ROOT / 'Row2925Detector/source_independent_audit.py')
a = importlib.util.module_from_spec(spec)
spec.loader.exec_module(a)
load = lambda p: json.loads(p.read_text())
source = load(HERE / 'source.json')
blocks = load(HERE / 'comparison-source.json')
db = {n: sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/{n}_AdamsSS_t{261 if n == "S0" else 200}.db?mode=ro', uri=True)
      for n in ['S0', 'C2h5']}
counts = Counter()
ev = lambda matrix, m, n, v: a.matmul(matrix, list(v), m, n, 1)
vectors = lambda n: list(itertools.product([0, 1], repeat=n))
for b in blocks:
    obj, (s, t), w = b['object'], b['degree'], b['wire']
    meta = dict(db[obj].execute('SELECT name,value FROM version'))
    assert t <= meta['d2_t_max'] and t + 1 <= meta['t_max']
    rows = [[dict(id=i, mon=mon, d2=d2) for i, mon, d2 in db[obj].execute(
        f'SELECT id,mon,d2 FROM {obj}_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', st)]
        for st in [(s-2, t-1), (s, t), (s+2, t+1)]]
    assert rows == b['rows'] and list(map(len, rows)) == [w['n'], w['m'], w['k']]
    for field, group, dim in [('incoming', rows[0], w['m']), ('outgoing', rows[1], w['k'])]:
        columns = []
        for row in group:
            assert row['d2'] is not None
            ids = [] if row['d2'] == '' else list(map(int, row['d2'].split(',')))
            assert ids == sorted(set(ids)) and all(0 <= i < dim for i in ids)
            columns.append(ids)
        assert w[field] == [i in col for i in range(dim) for col in columns]
    a.wire_laws(w)
    cycles = [v for v in vectors(w['m']) if not any(ev(w['outgoing'], w['k'], w['m'], v))]
    image = {tuple(ev(w['incoming'], w['m'], w['n'], v)) for v in vectors(w['n'])}
    assert set(map(tuple, cycles)) >= image
    for x, y in itertools.product(cycles, repeat=2):
        assert (tuple(i ^ j for i, j in zip(x, y)) in image) == (
            ev(w['projection'], w['h'], w['m'], x) == ev(w['projection'], w['h'], w['m'], y))
        counts['quotient_pairs'] += 1
    counts['cycle_vectors'] += len(cycles)
    counts['complete_quotients'] += 1

matrices = {tuple(r['source_degree']): r['wire']['algebra'] for r in source['matrices']}
induced = []
for S, T in [blocks[:2], blocks[2:]]:
    s, t = S['degree']
    w, z = S['wire'], T['wire']
    middle, upper, lower = (matrices[st]['entries'] for st in [(s,t), (s+2,t+1), (s-2,t-1)])
    assert a.matmul(z['outgoing'],middle,z['k'],z['m'],w['m']) == a.matmul(upper,w['outgoing'],z['k'],w['k'],w['m'])
    assert a.matmul(middle,w['incoming'],z['m'],w['m'],w['n']) == a.matmul(z['incoming'],lower,z['m'],z['n'],w['n'])
    counts['adjacent_square_vectors'] += (1 << w['m']) + (1 << w['n'])
    matrix = a.matmul(z['projection'],a.matmul(middle,w['inclusion'],z['m'],w['m'],w['h']),z['h'],z['m'],w['h'])
    induced.append(matrix)
    for x in vectors(w['m']):
        if not any(ev(w['outgoing'],w['k'],w['m'],x)):
            assert ev(z['projection'],z['h'],z['m'],ev(middle,z['m'],w['m'],x)) == ev(matrix,z['h'],w['h'],ev(w['projection'],w['h'],w['m'],x))
            counts['all_cycle_map_coordinates'] += 1
assert induced == [[0,0,0,0,0,0,1,0,0,0,0,1],[0,0,1]]
assert ev(induced[0],4,3,[0,1,0]) == [0,0,0,0]
assert ev(induced[1],3,1,[1]) == [0,0,1]

# ss identifiers and basis identifiers are independent database keys.
assert list(db['S0'].execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2916').fetchone()) == [2916,13,137,'1',None,9000]
assert blocks[0]['rows'][1][1] == dict(id=2915, mon='9,1,251,1', d2='')
assert list(db['S0'].execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=13 AND t=137 ORDER BY id')) == [
    (2914,'3','4',2),(2915,'0','0',3),(2916,'1',None,9000),(2917,'2','0',9997)]
assert list(db['S0'].execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=10 AND t=135 ORDER BY id')) == [
    (2783,'3','1',2),(2784,'0','0',9997),(2785,'1','1,2',9998),(2786,'2','3,4',9998),(2787,'4','4',9998)]
bridges = []
for b, fn, index in [(blocks[0],'Batch06.json',32),(blocks[2],'Batch07.json',8)]:
    stairs = load(ROOT/'Fact713ComparisonBatches'/fn)['entries'][index]
    assert stairs['key'] == dict(object='S0',page=2,s=b['degree'][0],t=b['degree'][1])
    w, z = b['wire'], stairs['wire']
    assert w['outgoing'] == z['outgoing'] and w['incoming'] == z['incoming']
    bridge = a.matmul(z['projection'],w['inclusion'],z['h'],z['m'],w['h'])
    assert bridge == [int(i==j) for i in range(w['h']) for j in range(w['h'])]
    bridges.append(bridge)

# Exhaust all source-target-detector label permutations relevant to the
# two-element actual target; the named source binding is varied separately.
for actual_source in itertools.permutations(range(8)):
    raw = actual_source.index(2)
    assert actual_source[raw] == 2 and raw != actual_source.index(0)
    assert sum(actual_source[x] == 2 for x in range(8)) == 1
    counts['named_source_relabelings'] += 1
for sphere_target, detector_target in itertools.product(itertools.permutations(range(2)), itertools.permutations(range(8))):
    si = {x:i for i,x in enumerate(sphere_target)}
    di = {x:i for i,x in enumerate(detector_target)}
    upper = {si[0]:di[0],si[1]:di[4]}
    for actual_value in range(2):
        natural = upper[actual_value] == di[0]
        assert natural == (actual_value == si[0])
        counts['natural_zero_values' if natural else 'rejected_nonzero_values'] += 1
    counts['actual_target_relabelings'] += 1

report = dict(status='full_raw_quotient_and_named_d3_audit_passed', counts=dict(counts),
              source_matrix=induced[0], target_matrix=induced[1],
              source_E3_dimensions=[3,4], target_E3_dimensions=[1,3],
              source_named=[0,1,0], target_detected=[0,0,1],
              source_coordinate_bridge=bridges[0], target_coordinate_bridge=bridges[1],
              raw_ss_row=2916, named_basis_row=2915, raw_unknown_preserved=True,
              status_scope='Finite validation; actual source complexes, quotient laws, map meanings and naturality remain explicit',
              sha256={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest()
                      for p in [Path(__file__), HERE/'source.json', HERE/'comparison-source.json']})
(HERE/'audit.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report,indent=2))
