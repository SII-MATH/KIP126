"""Independent raw-column and quotient-coordinate audit of the frozen eta route."""
import collections
import hashlib
import itertools
import json
from pathlib import Path
import re
import sqlite3

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
DB = ROOT / 'upstream/kervaire-49/S0_AdamsSS_t261.db'
sql = sqlite3.connect(f'file:{DB}?mode=ro', uri=True)
read = lambda name: json.loads((HERE / name).read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
bits = lambda xs: sum(int(x) << i for i, x in enumerate(xs))

def cols(raw, m, n):
    assert len(raw) == m * n
    return [bits([raw[i * n + j] for i in range(m)]) for j in range(n)]

def ev(M, x):
    out = 0
    for j, c in enumerate(M):
        if x >> j & 1: out ^= c
    return out

def composition(a, b): return [ev(a, c) for c in b]

def block(w):
    return {field: cols(w[field], m, n) for field, m, n in [
        ('outgoing', w['k'], w['m']), ('incoming', w['m'], w['n']),
        ('projection', w['h'], w['m']), ('inclusion', w['m'], w['h']),
        ('up', w['n'], w['m']), ('down', w['m'], w['k'])]}

def full_laws(w):
    b = block(w)
    boundary = {ev(b['incoming'], x) for x in range(1 << w['n'])}
    cycle = {x for x in range(1 << w['m']) if not ev(b['outgoing'], x)}
    assert boundary <= cycle
    for x in range(1 << w['m']):
        assert ev(b['inclusion'], ev(b['projection'], x)) ^ ev(b['incoming'], ev(b['up'], x)) ^ ev(b['down'], ev(b['outgoing'], x)) == x
    for x in range(1 << w['h']):
        assert ev(b['projection'], ev(b['inclusion'], x)) == x
    for x, y in itertools.product(cycle, repeat=2):
        assert (ev(b['projection'], x) == ev(b['projection'], y)) == (x ^ y in boundary)
    return b, len(cycle) ** 2

def basis(s, t):
    return list(sql.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', (s, t)))

def mon(raw):
    ns = [int(x) for x in raw.split(',')] if raw else []
    assert len(ns) % 2 == 0
    return tuple(sorted(g for g, e in zip(ns[::2], ns[1::2]) for _ in range(e)))

def parity(values): return {x for x, n in collections.Counter(values).items() if n % 2}
def multiply(a, b): return parity(tuple(sorted(x + y)) for x in a for y in b)

matrices = {}; products = reductions = 0
for provenance, folder, factor, shift in [
    ('products-provenance.json', 'products_eta', (1,), (1, 2)),
    ('h05-provenance.json', 'products_h05', (0,) * 5, (5, 5))]:
    groups = {}
    for r in read(provenance):
        source, target = tuple(r['source_degree']), tuple(r['target_degree'])
        assert target == tuple(x + y for x, y in zip(source, shift))
        sb, tb = basis(*source), basis(*target)
        assert sb[r['source_local']][0] == r['source_id']
        assert [x[0] for x in tb] == r['target_basis_ids']
        wire = read(f"{folder}/basis{r['source_id']}.json")
        current = multiply({factor}, {mon(sb[r['source_local']][1])})
        assert current == parity(tuple(x) for x in wire['input'])
        rels = []
        for rowid, relation in zip(r['relation_rowids'], wire['relations'], strict=True):
            raw = sql.execute('SELECT rel FROM S0_AdamsE2_relations WHERE rowid=?', (rowid,)).fetchone()[0]
            polynomial = parity(mon(x) for x in raw.split(';'))
            assert polynomial == parity(tuple(x) for x in relation)
            rels.append(polynomial)
        for term in wire['terms']:
            current ^= multiply(parity(tuple(x) for x in term['multiplier']), rels[term['relation']])
            reductions += 1
        assert current == parity(tuple(x) for x in wire['output']) == parity(mon(tb[i][1]) for i in r['target_coordinates'])
        groups.setdefault(source, []).append(r)
        products += 1
    for degree, rows in groups.items():
        assert [r['source_local'] for r in rows] == list(range(len(basis(*degree))))
        matrices[folder, degree] = [sum(1 << i for i in r['target_coordinates']) for r in rows]

data = read('comparison-source.json')
lower = {tuple(b['center']): b for b in data['d2']}
higher = {b['tag']: b for b in data['d3']}
cycle_pairs = 0
for b in [*lower.values(), *higher.values()]:
    _, pairs = full_laws(b['wire']); cycle_pairs += pairs
for degree, b in lower.items():
    w = b['wire']; s, t = degree
    for start, field in [((s, t), 'outgoing'), ((s - 2, t - 1), 'incoming')]:
        sb, tb = basis(*start), basis(start[0] + 2, start[1] + 1)
        assert all(row[2] is not None for row in sb)
        expected = [sum(1 << i for i in (map(int, row[2].split(',')) if row[2] else [])) for row in sb]
        dims = (w['k'], w['m']) if field == 'outgoing' else (w['m'], w['n'])
        assert len(tb) == dims[0] and len(sb) == dims[1]
        assert expected == cols(w[field], *dims)
induced = {}
for s, t in [(8, 135), (11, 137), (14, 139), (12, 138), (15, 140), (18, 142)]:
    sw, tw = lower[s, t]['wire'], lower[s + 1, t + 2]['wire']
    sb, tb = block(sw), block(tw)
    f, up, down = [matrices['products_eta', (s + ds, t + dt)] for ds, dt in [(0, 0), (2, 1), (-2, -1)]]
    assert composition(up, sb['outgoing']) == composition(tb['outgoing'], f)
    assert composition(f, sb['incoming']) == composition(tb['incoming'], down)
    induced[s, t] = composition(tb['projection'], composition(f, sb['inclusion']))
for degree, source, target in [((11, 137), 'source', 'target'), ((15, 140), 'upperSource', 'upperTarget')]:
    sb, tb = block(higher[source]['wire']), block(higher[target]['wire'])
    s, t = degree
    assert composition(induced[s + 3, t + 2], sb['outgoing']) == composition(tb['outgoing'], induced[s, t])
    assert composition(induced[s, t], sb['incoming']) == composition(tb['incoming'], induced[s - 3, t - 2])
upper_s, upper_t = block(higher['upperSource']['wire']), block(higher['upperTarget']['wire'])
detection = composition(upper_t['projection'], composition(induced[15, 140], upper_s['inclusion']))
assert detection == [0, 1]
raw_named = (1 << 1) ^ (1 << 2)
source_b = block(lower[11, 137]['wire'])
assert ev(source_b['projection'], raw_named) == 1
assert ev(matrices['products_eta', (11, 137)], raw_named) == 0
assert higher['upperSource']['wire']['k'] == 0
assert lower[18, 142]['wire']['h'] == 0
prefix3152 = [u for b in higher.values() for u in b['uses'] if u['row'][0] == 3152]
assert len(prefix3152) == 1 and prefix3152[0]['page'] == 3
assert prefix3152[0]['kind'] == 'stored_zero_prefix_or_boundary'
conditions = []
for b in higher.values():
    for u in b['uses']:
        raw = list(sql.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE id=?', (u['row'][0],)).fetchone())
        assert raw == u['row']
        if u['kind'].startswith('conditional'): conditions.append([u['row'][0], u['kind']])
left = read('leftTermD3.json')
assert left['tensor'] == [False] * 4
assert left['right'] == higher['source']['wire'] and left['target'] == higher['upperTarget']['wire']
assert read('detaD3.json')['h'] == 1
branch_count = 0
for b, c in itertools.product([0, 1], repeat=2):
    boundary = 2 in {ev([b | (c << 1), 1], x) for x in range(4)}
    assert boundary == bool(c)
    assert (not ev(detection, b | (c << 1))) == (not boundary)
    branch_count += 1
leaves = ['Products', 'Comparison', 'Higher', 'ProductSemantics', 'H05', 'H05Semantics', 'LeftTerm', 'Naturality', 'Restriction']
records = {}; count = 0
for name in leaves:
    record = read(name + '-compile.json')
    assert record['observed_exit_code'] == 0
    assert record['source_sha256'] == sha(HERE / (name + '.lean'))
    assert record['log_sha256'] == sha(HERE / (name + '.log'))
    log = (HERE / (name + '.log')).read_text()
    assert not re.search(r'sorryAx|error:|error\(', log)
    axes = re.findall(r'depends on axioms: \[([^]]*)\]', log)
    assert all(set(x.strip() for x in a.split(',')) <= {'propext', 'Classical.choice', 'Quot.sound'} for a in axes)
    reports = len(axes) + log.count('does not depend on any axioms'); count += reports
    obj = ROOT / '.lake/build/lib/lean/Row2925EtaD4' / (name + '.olean')
    records[name] = dict(exit_code=0, standard_reports=reports,
        current_object_matches_direct=obj.exists() and sha(obj) == record.get('olean_sha256'))
report = dict(status='independent_eta_route_review_passed', polynomial_columns=products,
    polynomial_reduction_steps=reductions, d2_comparisons=12, d3_comparisons=4,
    d2_chain_maps=6, d3_chain_maps=2, cycle_pairs=cycle_pairs, branches=branch_count,
    upper_eta_columns=detection, arbitrary_deta_left_term_zero=True,
    row3152_d3_codomain_zero_from_d2=True, row3152_d5_value_needed=False,
    inherited_conditional_d3_uses=conditions, standard_reports=count, direct_records=records,
    input_sha256={str(p.relative_to(ROOT)): sha(p) for p in [HERE / (n + '.lean') for n in leaves] +
        [HERE / 'products-provenance.json', HERE / 'h05-provenance.json', HERE / 'comparison-source.json',
         HERE / 'leftTermD3.json', DB]},
    limitation='Restriction is conditional on exact full ordinary Leibniz and coordinate meanings. Actual.lean is outside this nine-leaf review.')
(HERE / 'independent-review.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps({k: v for k, v in report.items() if k not in ['input_sha256', 'direct_records']}, indent=2))
