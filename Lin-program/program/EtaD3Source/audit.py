"""Recheck raw low-stem data, quotient laws and complete multiplication maps."""
from pathlib import Path
import hashlib
import json
import re
import sqlite3

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda p: json.loads(p.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
report = load(HERE / 'provenance.json')
sql = sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro', uri=True)

def mon(raw):
    cells = list(map(int, raw.split(','))) if raw else []
    return tuple(g for g, e in zip(cells[::2], cells[1::2]) for _ in range(e))

def multiply(a, b):
    result = set()
    for x in a:
        for y in b:
            result.symmetric_difference_update([tuple(sorted(x + y))])
    return result

def matrix(bits, m, n):
    assert len(bits) == m * n
    return [sum(int(bits[i*n+j]) << i for i in range(m)) for j in range(n)]

def ev(columns, x):
    result = 0
    for j, column in enumerate(columns):
        if x & (1 << j):
            result ^= column
    return result

blocks = report['comparisons']
decoded = {}
pairs = 0
for name, block in blocks.items():
    s, t = block['degree']
    rows = [[dict(id=i, mon=m, d2=d) for i, m, d in sql.execute(
        'SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', degree)]
        for degree in [(s-2, t-1), (s, t), (s+2, t+1)]]
    assert rows == block['rows']
    w = load(HERE / (name + '.json'))
    assert w == block['wire'] and list(map(len, rows)) == [w['n'], w['m'], w['k']]
    for field, data, dim in [('incoming', rows[0], w['m']), ('outgoing', rows[1], w['k'])]:
        supports = []
        for row in data:
            assert row['d2'] is not None
            support = list(map(int, row['d2'].split(','))) if row['d2'] else []
            assert support == sorted(set(support)) and all(0 <= i < dim for i in support)
            supports.append(support)
        assert w[field] == [i in c for i in range(dim) for c in supports]
    a = {key: matrix(w[key], *dims) for key, dims in dict(
        outgoing=(w['k'], w['m']), incoming=(w['m'], w['n']),
        inclusion=(w['m'], w['h']), projection=(w['h'], w['m'])).items()}
    cycles = [x for x in range(1 << w['m']) if ev(a['outgoing'], x) == 0]
    boundaries = {ev(a['incoming'], x) for x in range(1 << w['n'])}
    assert all(ev(a['outgoing'], x) == 0 for x in boundaries)
    for z in range(1 << w['h']):
        assert ev(a['outgoing'], ev(a['inclusion'], z)) == 0
        assert ev(a['projection'], ev(a['inclusion'], z)) == z
    for x in cycles:
        for y in cycles:
            assert (ev(a['projection'], x) == ev(a['projection'], y)) == (x ^ y in boundaries)
            pairs += 1
    decoded[name] = a

reductions = 0
for item in report['products']:
    relations = []
    for encoded, origin in zip(item['bundle']['relations'], item['relation_sources'], strict=True):
        raw, s, t = sql.execute('SELECT rel,s,t FROM S0_AdamsE2_relations WHERE rowid=?',
                               (origin['rowid'],)).fetchone()
        assert raw == origin['raw'] and [s, t] == origin['degree']
        actual = {mon(x) for x in raw.split(';')}
        assert actual == {tuple(x) for x in encoded}
        relations.append(actual)
    current = multiply({mon(item['left_basis']['mon'])}, {mon(item['right_basis']['mon'])})
    for term in item['bundle']['terms']:
        current.symmetric_difference_update(multiply(
            {tuple(m) for m in term['multiplier']}, relations[term['relation']]))
        reductions += 1
    assert current == {tuple(x) for x in item['bundle']['output']}
    assert current == {mon(item['target_basis'][i]['mon']) for i in item['coordinates']}
    assert item['bundle'] == load(HERE / (item['name'] + str(item['column']) + '.json'))

products = []
for name, left, right, target in [('zeroProduct', 'h0', 'eta', 'zeroProductTarget'),
                                  ('detectProduct', 'h0', 'etaTarget', 'detectTarget')]:
    w = load(HERE / (name + '.json'))
    assert w['left'] == blocks[left]['wire'] and w['right'] == blocks[right]['wire']
    assert w['target'] == blocks[target]['wire']
    assert w['tensor'] == ([] if name == 'zeroProduct' else [True])
    values = [0 if name == 'zeroProduct' else a & b for a in range(2) for b in range(2)]
    products.append(dict(name=name, all_input_pair_values=values))
assert len({ev(decoded['detectTarget']['projection'], b) for b in range(2)}) == 2
assert blocks['h0Target']['wire']['h'] == blocks['zeroProductTarget']['wire']['h'] == 0
assert reductions == 1 and pairs == 18
raw_h0 = list(sql.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE id=1').fetchone())
raw_eta = list(sql.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE id=3').fetchone())
assert raw_h0 == [1, '0', None, 9000] and raw_eta == [3, '0', None, 9000]
compiled = {}
reports = 0
for name in ['Data', 'Basic', 'Semantics', 'Actual']:
    src, log = HERE / (name + '.lean'), HERE / (name + '.log')
    rec = load(HERE / (name + '-compile.json'))
    assert rec['observed_exit_code'] == 0 and rec['source_sha256'] == sha(src)
    assert rec['log_sha256'] == sha(log) and 'sorryAx' not in log.read_text()
    assert not re.search(r'\b(sorry|admit|axiom|native_decide)\b', src.read_text())
    reports += sum(line.startswith("'EtaD3Source.") for line in log.read_text().splitlines())
    compiled[name] = rec
result = dict(status='passed', complete_d2_comparisons=6, quotient_cycle_pairs=pairs,
              full_product_columns=2, ring_reduction_steps=reductions, products=products,
              detector_kernel=[0], raw_h0=raw_h0, raw_eta=raw_eta,
              axiom_reports=reports, compiled=compiled,
              scope='Actual quotient and product meanings remain explicit; no unknown staircase differential is used.')
(HERE / 'audit.json').write_text(json.dumps(result, indent=2) + '\n')
print(json.dumps({k: v for k, v in result.items() if k != 'compiled'}, indent=2))
