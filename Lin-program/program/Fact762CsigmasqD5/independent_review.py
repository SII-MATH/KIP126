"""Read-only SQL and bitset review, independent of certificate generators."""
from collections import Counter
import hashlib
import json
from pathlib import Path
import sqlite3

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
load = lambda name: json.loads((HERE / name).read_text())
sha = lambda path: hashlib.sha256(path.read_bytes()).hexdigest()
db = {name: sqlite3.connect(
    f'file:{ROOT}/upstream/kervaire-49/{name}_AdamsSS_t{bound}.db?mode=ro', uri=True)
    for name, bound in [('Csigmasq', 200), ('S0', 261)]}
counts = Counter()


def monomial(raw):
    numbers = list(map(int, raw.split(','))) if raw else []
    assert len(numbers) % 2 == 0
    assert all(e > 0 for e in numbers[1::2])
    return tuple(sorted(g for g, e in zip(numbers[::2], numbers[1::2]) for _ in range(e)))


def module_monomial(raw):
    parts = raw.split(',')
    return monomial(','.join(parts[:-1])), int(parts[-1])


def parity(items):
    return {x for x, n in Counter(items).items() if n % 2}


def expression(raw):
    assert len(raw) == 2
    return parity((tuple(sorted(m)), g) for g, terms in enumerate(raw) for m in terms)


def basis(obj, degree, differential=False):
    fields = 'id,mon,d2' if differential else 'id,mon'
    return [list(x) for x in db[obj].execute(
        f'select {fields} from {obj}_AdamsE2_basis where s=? and t=? order by id', degree)]


def columns(entries, rows, cols):
    assert len(entries) == rows * cols
    assert all(x in (0, 1) for x in entries)
    return [sum(int(entries[i * cols + j]) << i for i in range(rows)) for j in range(cols)]


def apply(matrix, vector):
    assert vector < (1 << len(matrix))
    out = 0
    for j, column in enumerate(matrix):
        if vector >> j & 1:
            out ^= column
    return out


def comparison(w):
    k, m, n, h = (w[x] for x in ('k', 'm', 'n', 'h'))
    o, i, u, p, up, down = [columns(w[name], rows, cols) for name, rows, cols in [
        ('outgoing', k, m), ('incoming', m, n), ('inclusion', m, h),
        ('projection', h, m), ('up', n, m), ('down', m, k)]]
    assert all(apply(o, x) == apply(p, x) == 0 for x in i)
    assert all(apply(o, x) == 0 and apply(p, x) == 1 << j for j, x in enumerate(u))
    for j in range(m):
        assert apply(u, p[j]) ^ apply(i, up[j]) ^ apply(down, o[j]) == 1 << j
    boundaries = {apply(i, x) for x in range(1 << n)}
    cycles = [x for x in range(1 << m) if apply(o, x) == 0]
    for x in cycles:
        for y in cycles:
            assert (apply(p, x) == apply(p, y)) == ((x ^ y) in boundaries)
    counts['quotient_pairs'] += len(cycles) ** 2
    counts['cycles'] += len(cycles)
    counts['comparisons'] += 1
    return o, i, p


d2 = load('d2.json')
for b in d2['matrices'].values():
    assert b['source'] == basis('Csigmasq', b['source_degree'])
    assert b['target'] == basis('Csigmasq', b['target_degree'])
    assert b['target_degree'] == [b['source_degree'][0] + 2, b['source_degree'][1] + 1]
    target = [module_monomial(raw) for _, raw in b['target']]
    matrix = columns(b['entries'], b['rows'], b['cols'])
    for j, c in enumerate(b['columns']):
        assert [c['id'], c['mon']] == b['source'][j]
        co, g = module_monomial(c['mon'])
        assert g == c['generator']
        coeff = c['coefficient']
        row = db['S0'].execute('select mon,d2,s,t from S0_AdamsE2_basis where id=?',
                              (coeff['id'],)).fetchone()
        assert row == (coeff['mon'], coeff['d2'], *coeff['degree'])
        assert row[1] is not None and monomial(row[0]) == co
        indices = list(map(int, row[1].split(','))) if row[1] else []
        assert indices == sorted(set(indices))
        coeff_target = basis('S0', [row[2] + 2, row[3] + 1], True)
        assert coeff['differential_rows'] == [coeff_target[i] for i in indices]
        expected = {(monomial(coeff_target[i][1]), g) for i in indices}
        if g == 1:
            expected ^= {(tuple(sorted(co + (3, 3))), 0)}
        assert expression(c['input']) == expected
        current = expected.copy()
        assert len(c['relation_sources']) == len(c['relations'])
        for rel, origin in zip(c['relations'], c['relation_sources']):
            obj = 'Csigmasq' if origin['kind'] == 'module' else 'S0'
            raw, s, t = db[obj].execute(
                f'select rel,s,t from {obj}_AdamsE2_relations where rowid=?',
                (origin['rowid'],)).fetchone()
            assert raw == origin['raw']
            if obj == 'Csigmasq':
                assert [s, t] == origin['degree']
                decoded = parity(module_monomial(x) for x in raw.split(';'))
            else:
                assert [s, t] == origin['ring_degree']
                assert origin['degree'] == [s, t + 15 * origin['generator']]
                decoded = parity((monomial(x), origin['generator']) for x in raw.split(';'))
            assert expression(rel) == decoded
            counts['sql_relations'] += 1
        for term in c['terms']:
            rel = expression(c['relations'][term['relation']])
            current ^= parity((tuple(sorted(tuple(q) + a)), h)
                              for q in term['multiplier'] for a, h in rel)
        assert current == expression(c['output'])
        assert current == {target[i] for i in range(len(target)) if matrix[j] >> i & 1}
        w = load(f"d2wire/b{c['id']}.json")
        assert w['coefficient'] == [list(co)] and w['top'] == (g == 1)
        assert parity(tuple(x) for x in w['coefficientDifferential']) == {
            monomial(coeff_target[i][1]) for i in indices}
        assert w['reduction']['rank'] == 2
        for key in ['input', 'output']:
            assert expression(w['reduction'][key]) == expression(c[key])
        assert [expression(x) for x in w['reduction']['relations']] == [expression(x) for x in c['relations']]
        assert w['reduction']['terms'] == c['terms']
        counts['d2_columns'] += 1

report, maps = load('search.json'), load('maps.json')
complexes = {}
conditions = {}
for key, b in report['comparisons'].items():
    complexes[key] = comparison(b['wire'])
    if b['object'] == 'Csigmasq' and b['page'] == 2:
        s, t = b['center']
        assert b['wire']['outgoing'] == d2['matrices'][f'Csigmasq:{s},{t}']['entries']
        assert b['wire']['incoming'] == d2['matrices'][f'Csigmasq:{s-2},{t-1}']['entries']
    for use in b['uses']:
        if 'row' not in use:
            continue
        obj = use['object']
        row = db[obj].execute(f'select id,base,diff,level,s,t from {obj}_AdamsE2_ss where id=?',
                              (use['row'][0],)).fetchone()
        assert list(row[:4]) == use['row'] and list(row[4:]) == use['source']
        counts['sql_staircase_rows'] += 1
        if use['kind'].startswith('explicit_'):
            assert row[2] is None
            conditions[(obj, row[0], use['page'])] = use
assert len(conditions) == 10

for key, b in maps['maps'].items():
    if 'wire' not in b:
        continue
    w, a = b['wire'], b['wire']['algebra']
    assert w['suspension'] == 15 and w['filtration'] == 0
    assert b['source'] == basis('Csigmasq', [w['sourceS'], w['sourceT']])
    assert b['target'] == basis('S0', [w['sourceS'], w['sourceT'] - 15])
    assert [w['targetS'], w['targetT']] == [w['sourceS'], w['sourceT'] - 15]
    assert a['images'] == [[[]], [[[]]]] and not a['relations']
    mat = columns(b['entries'], b['rows'], b['cols'])
    for j, (_, raw) in enumerate(b['source']):
        co, g = module_monomial(raw)
        assert expression(a['source'][j]) == {(co, g)}
        value = parity(monomial(b['target'][i][1]) for i in range(b['rows']) if mat[j] >> i & 1)
        assert value == ({co} if g == 1 else set())
        counts['map_columns'] += 1
    assert a['entries'] == b['entries'] and a['terms'] == [[] for _ in range(b['cols'])]

for key in maps['compatible']:
    b = report['comparisons'][key]
    s, t = b['center']; r = b['page']
    so, si, sp = complexes[key]
    to, ti, tp = complexes[f'S0:{s},{t-15}:d{r}']
    fs = [maps['maps'][k] for k in [f'{s},{t}:E{r}', f'{s+r},{t+r-1}:E{r}',
                                  f'{s-r},{t-r+1}:E{r}', f'{s},{t}:E{r+1}']]
    f, upper, lower, nxt = [columns(x['entries'], x['rows'], x['cols']) for x in fs]
    for x in range(1 << len(so)):
        assert apply(to, apply(f, x)) == apply(upper, apply(so, x))
        if apply(so, x) == 0:
            assert apply(tp, apply(f, x)) == apply(nxt, apply(sp, x))
        counts['map_vectors'] += 1
    for x in range(1 << len(si)):
        assert apply(ti, apply(lower, x)) == apply(f, apply(si, x))
    counts['compatible_maps'] += 1

for name, expected in load('frozen-source.json')['files_sha256'].items():
    assert sha(HERE / name) == expected, name
    counts['frozen_files'] += 1

out = dict(status='passed', counts=dict(counts), explicit_conditions=list(conditions.values()),
           source_sha256=sha(Path(__file__)),
           limitation='SQL provenance and finite algebra only; actual E2 interpretations, quotient laws, '
                      'naturality and named source d5 cycle remain premises. No E6 nonzero or permanence.')
(HERE / 'independent-review.json').write_text(json.dumps(out, indent=2) + '\n')
print(json.dumps(out['counts'], indent=2))
print('PASS: independent SQL, polynomial and complete bitset replay')
