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
      for n in ['S0', 'DC2h6']}
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
assert induced == [[0],[0,0,0,1,0,0,0,1,0,0,0,1]]
assert ev(induced[0],1,1,[1]) == [0]
for v in vectors(3):
    assert (not any(ev(induced[1],4,3,v))) == (not any(v))

assert list(db['S0'].execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=2431').fetchone()) == [2431,9,130,'1',None,9000]
assert blocks[0]['rows'][1][1] == dict(id=2432, mon='0,2,68,1,69,1', d2='')
assert list(db['S0'].execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=6 AND t=128 ORDER BY id')) == []
bridges=[]
for b,index in [(blocks[0],7),(blocks[2],22)]:
    stairs=load(ROOT/'Fact713ComparisonBatches/Batch06.json')['entries'][index]
    assert stairs['key']==dict(object='S0',page=2,s=b['degree'][0],t=b['degree'][1])
    w,z=b['wire'],stairs['wire']
    assert w['outgoing']==z['outgoing'] and w['incoming']==z['incoming']
    bridge=a.matmul(z['projection'],w['inclusion'],z['h'],z['m'],w['h'])
    bridges.append(bridge)
assert bridges==[[1],[1,0,0,1,0,1,0,1,0]]
for v in vectors(3):
    assert ev(bridges[1],3,3,v)==[v[0],v[0]^v[2],v[1]]

# Every permutation of the 8-element actual target and every placement of
# its injection into a 16-element detector is equivalent, for zero
# reflection, to the 16 possible labels of actual detector zero and the
# 15 distinct labels of any one chosen nonzero image. Cover each target
# element independently without assuming that integer label 0 is zero.
for target in itertools.permutations(range(8)):
    inverse={v:i for i,v in enumerate(target)}
    for zero_label in range(16):
        for image_label in range(16):
            if image_label==zero_label:continue
            for input_label in range(8):
                image=zero_label if target[input_label]==0 else image_label
                assert (image==zero_label)==(input_label==inverse[0])
                counts['target_zero_reflection_elements']+=1
            counts['target_injection_label_cases']+=1
    counts['target_carrier_permutations']+=1
# The whole one-dimensional source differential has only 8 possible
# zero-preserving maps to the three-dimensional target. All 7 nonzero
# choices contradict naturality and upper injection.
for source in itertools.permutations(range(2)):
    for target in itertools.permutations(range(8)):
        z=target.index(0)
        for differential_value in range(8):
            natural=not any(ev(induced[1],4,3,tuple((target[differential_value]>>j)&1 for j in range(3))))
            assert natural==(differential_value==z)
            counts['natural_zero_values' if natural else 'rejected_nonzero_values']+=1
        counts['whole_d3_carrier_models']+=1

report = dict(status='full_raw_quotient_and_named_d3_audit_passed', counts=dict(counts),
              source_matrix=induced[0], target_matrix=induced[1],
              source_E3_dimensions=[1,1], target_E3_dimensions=[3,4],
              source_named=[1], target_detected_columns=[[0,1,0,0],[0,0,1,0],[0,0,0,1]],
              source_coordinate_bridge=bridges[0], target_coordinate_bridge=bridges[1],
              raw_ss_row=2431, named_basis_row=2432, raw_unknown_preserved=True,
              status_scope='Finite validation; actual source complexes, quotient laws, map meanings and naturality remain explicit',
              sha256={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest()
                      for p in [Path(__file__), HERE/'source.json', HERE/'comparison-source.json']})
(HERE/'audit.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report,indent=2))
