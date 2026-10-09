"""Replay raw degrees and full finite columns without the certificate producer."""
import collections
import hashlib
import json
import sqlite3
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent


def sha(path):
    h = hashlib.sha256()
    with path.open('rb') as stream:
        for chunk in iter(lambda: stream.read(1048576), b''):
            h.update(chunk)
    return h.hexdigest()


def product(a, b, m, k, n):
    assert len(a) == m*k and len(b) == k*n
    return [sum(a[i*k+l]*b[l*n+j] for l in range(k)) % 2
            for i in range(m) for j in range(n)]


def indices(raw, n):
    assert raw is not None and raw not in ['[NULL]', '?', '-1']
    ids = [] if raw == '' else list(map(int, raw.split(',')))
    assert ids == sorted(set(ids)) and all(0 <= i < n for i in ids)
    return [int(i in ids) for i in range(n)]


def check_wire(w):
    assert w['version'] == 1
    k, m, n, h = [w[x] for x in ['k', 'm', 'n', 'h']]
    assert all(type(x) is int and x >= 0 for x in [k, m, n, h])
    for field, size in [('outgoing', k*m), ('incoming', m*n), ('inclusion', m*h),
                        ('projection', h*m), ('up', n*m), ('down', m*k)]:
        assert len(w[field]) == size and all(type(x) is bool for x in w[field])
    a, b, i, p = [w[x] for x in ['outgoing', 'incoming', 'inclusion', 'projection']]
    assert not any(product(a, b, k, m, n))
    assert not any(product(a, i, k, m, h))
    assert not any(product(p, b, h, m, n))
    assert product(p, i, h, m, h) == [int(x == y) for x in range(h) for y in range(h)]
    parts = [product(i, p, m, h, m), product(b, w['up'], m, n, m),
             product(w['down'], a, m, k, m)]
    assert [sum(xs) % 2 for xs in zip(*parts)] == [int(x == y) for x in range(m) for y in range(m)]


def run():
    audit = json.loads((HERE/'audit.json').read_text())
    saved = json.loads((ROOT/'AggregateD5Conditional/source.json').read_text())['blocks']
    blocks = dict(saved)
    for key, value in audit['comparisons'].items():
        assert key not in blocks or blocks[key] == value
        blocks[key] = value
    for name, digest in audit['inputs_sha256'].items():
        assert sha(ROOT/name) == digest
    source = ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db'
    db = sqlite3.connect(f'file:{source}?mode=ro', uri=True)
    meta = dict(db.execute('SELECT name,value FROM version'))
    assert audit['named_row'] == list(db.execute(
        'SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=3080').fetchone())
    assert audit['named_row'] == [3080, 14, 139, '1', None, 9000]
    assert list(db.execute('SELECT id,mon FROM S0_AdamsE2_basis WHERE s=14 AND t=139 ORDER BY id'))[1] == (3080, '1,1,7,1,275,1')

    degrees = audit['degree_data']
    for key, record in degrees.items():
        obj, encoded = key.split(':')
        assert obj == record['object'] == 'S0'
        s, t = map(int, encoded.split(','))
        assert [s, t] == record['degree'] and t <= meta['t_max']
        assert record['e2'] == [list(row) for row in db.execute(
            'SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', (s, t))]
        assert record['staircase'] == [list(row) for row in db.execute(
            'SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id', (s, t))]

    def degree(s, t):
        return degrees[f'S0:{s},{t}']

    def key(s, t, q):
        return f'S0:{s},{t}:d{q}'

    def selected(s, t, q):
        return [x for x in degree(s, t)['staircase']
                if q <= x[3] < 5000 or 5000 <= x[3] <= 10000-q]

    roots = set(audit['comparisons']) | {'S0:11,137:d3'}
    closure = set()

    def visit(k):
        if k in closure:
            return
        closure.add(k)
        for pred in blocks[k]['predecessors']:
            visit(pred)

    for k in roots:
        visit(k)

    def dimension(s, t, q):
        return len(degree(s, t)['e2']) if q == 2 else blocks[key(s, t, q-1)]['wire']['h']

    cycle_projections = 0

    def project(s, t, q, vector):
        nonlocal cycle_projections
        for page in range(2, q):
            w = blocks[key(s, t, page)]['wire']
            assert len(vector) == w['m']
            assert not any(product(w['outgoing'], vector, w['k'], w['m'], 1)), (s, t, page, vector)
            vector = product(w['projection'], vector, w['h'], w['m'], 1)
            cycle_projections += 1
        return vector

    conditional = []
    kinds = collections.Counter()
    raw_columns = higher_columns = 0
    for k in sorted(closure, key=lambda k: (blocks[k]['page'], k)):
        b = blocks[k]
        s, t = b['center']
        q = b['page']
        w = b['wire']
        assert b['object'] == 'S0' and k == key(s, t, q)
        check_wire(w)
        assert b['projection_rows'] == [list(map(int, w['projection'][i*w['m']:(i+1)*w['m']])) for i in range(w['h'])]
        expected = [] if q == 2 else [key(a, z, q-1) for a, z in [(s-q, t-q+1), (s, t), (s+q, t+q-1)]]
        assert b['predecessors'] == expected
        assert [w['n'], w['m'], w['k']] == [dimension(a, z, q) for a, z in [(s-q, t-q+1), (s, t), (s+q, t+q-1)]]
        reconstructed_uses = []
        for field, a, z, target_s, target_t, source_dim, target_dim in [
                ('outgoing', s, t, s+q, t+q-1, w['m'], w['k']),
                ('incoming', s-q, t-q+1, s, t, w['n'], w['m'])]:
            if q == 2:
                assert z <= meta['d2_t_max'] and target_t <= meta['t_max']
                rows = degree(a, z)['e2']
                columns = [indices(row[2], target_dim) for row in rows]
                raw_columns += len(columns)
            else:
                rows = selected(a, z, q)
                columns = []
                for row in rows:
                    uses = [u for u in b['uses'] if u['source'] == [a, z] and u['row'] == row]
                    assert len(uses) == 1
                    use = uses[0]
                    reconstructed_uses.append(use)
                    assert use['object'] == 'S0' and use['page'] == q and use['target_predecessor'] == key(target_s, target_t, q-1)
                    rid, base, value, level = row
                    kind = use['kind']
                    kinds[kind] += 1
                    if kind == 'stored_event':
                        assert level == 10000-q and value is not None
                        col = project(target_s, target_t, q, indices(value, len(degree(target_s, target_t)['e2'])))
                    elif kind == 'stored_zero_prefix_or_boundary':
                        assert 2 <= level < 5000 or 9000 < level < 10000-q
                        col = [0]*target_dim
                    elif kind == 'checked_zero_codomain':
                        assert target_dim == 0
                        col = []
                    else:
                        assert kind in ['conditional_cnu_eta', 'conditional_dc2h6_d3', 'conditional_h3_d0', 'conditional_leibniz']
                        assert k in saved and use in saved[k]['uses']
                        conditional.append(dict(block=k, **use))
                        col = [0]*target_dim
                    columns.append(col)
                higher_columns += len(columns)
            assert len(columns) == source_dim
            assert list(map(int, w[field])) == [col[i] for i in range(target_dim) for col in columns]
        assert b['uses'] == reconstructed_uses
        representatives = [project(s, t, q, indices(row[1], len(degree(s, t)['e2']))) for row in selected(s, t, q+1)]
        assert len(representatives) == w['h']
        assert list(map(int, w['inclusion'])) == [col[i] for i in range(w['m']) for col in representatives]

    assert [row['page'] for row in audit['pages']] == list(range(2, 15))
    for row in audit['pages']:
        q = row['page']
        s, t = 14-q, 140-q
        assert row['source_degree'] == [s, t] and row['target_degree'] == [14, 139]
        assert row['basis'] == degree(s, t)['e2'] and row['raw'] == degree(s, t)['staircase']
        assert [x['row'] for x in row['selected_at_page']] == selected(s, t, q)
        assert row['potential_exception'] == (q in [6, 12])
        for stage in row['source_prefix'].get('stages', []):
            assert stage['comparison'] == key(s, t, stage['page'])
            assert stage['dimension'] == blocks[stage['comparison']]['wire']['h']
    assert blocks['S0:11,137:d3']['wire']['outgoing'] == [False, False]
    for source_key in ['S0:9,135:d4', 'S0:5,131:d2', 'S0:4,130:d3', 'S0:3,129:d2']:
        assert blocks[source_key]['wire']['h'] == 0
    assert blocks['S0:9,135:d4']['wire']['outgoing'] == [True, False, False, True]
    assert blocks['S0:6,132:d2']['wire']['h'] == 1
    assert blocks['S0:3,130:d2']['wire']['h'] == 1
    assert blocks['S0:9,134:d2']['wire']['h'] == 3
    assert degree(1, 127)['e2'] == degree(0, 126)['e2'] == []
    assert audit['pages'][2]['source_prefix']['failed_page'] == 3
    assert audit['pages'][5]['source_prefix']['failed_page'] == 5
    assert audit['pages'][10]['selected_at_page'] == []
    assert audit['pages'][10]['raw'] == [[2314, '0', None, 9993]]
    assert audit['target_global_prefix']['failed_page'] == 4

    inputs = [HERE/'audit.json', HERE/'audit.py', HERE/'review.py', ROOT/'AggregateD5Conditional/source.json',
              ROOT/'AggregateD5Conditional/Data.lean', ROOT/'Row2574Detector/Quotient.lean',
              ROOT/'Row2574Detector/Additional/Combined.lean', ROOT/'Fact762PageCertificates/Survivor.lean', source]
    result = dict(status='independent_raw_and_finite_matrix_replay_passed',
        finite_scope='Database columns and conditional finite quotient matrices; not an actual Adams page realization.',
        pages=list(range(2, 15)), full_comparison_closure=len(closure), comparison_roots=len(roots),
        new_comparisons=len(set(audit['comparisons'])-set(saved)), raw_degrees=len(degrees),
        raw_d2_columns=raw_columns, higher_columns=higher_columns, cycle_projections=cycle_projections,
        use_kinds=dict(kinds), inherited_conditional_uses=conditional,
        comparisons=sorted(closure),
        negative_degree_dependencies=audit['negative_degree_dependencies'],
        remaining=['page4 all-source vanishing', 'page7 all-source vanishing',
                   'actual finite page and column realization', 'zero propagation through actual page transitions',
                   'queried target nonzero and page meaning', 'negative-filtration absence'],
        inputs_sha256={str(p.relative_to(ROOT)):sha(p) for p in inputs})
    (HERE/'review.json').write_text(json.dumps(result, indent=2, sort_keys=True)+'\n')
    print('Raw/matrix review passed:', len(closure), 'full comparisons;', raw_columns,
          'raw d2 columns;', higher_columns, 'higher columns;', cycle_projections, 'cycle projections')


if __name__ == '__main__':
    run()
