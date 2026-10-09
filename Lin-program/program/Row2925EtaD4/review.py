"""Read-only SQL, polynomial, full-comparison and eta-coordinate replay."""
import collections
import hashlib
import itertools
import json
import sqlite3
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
DATABASE = ROOT / 'upstream/kervaire-49/S0_AdamsSS_t261.db'
sql = sqlite3.connect(f'file:{DATABASE}?mode=ro', uri=True)
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
meta = dict(sql.execute('SELECT name,value FROM version'))


def mon(raw):
    values = list(map(int, raw.split(','))) if raw else []
    assert len(values) % 2 == 0
    assert all(0 <= g < 4294967295 and e >= 0 for g, e in zip(values[::2], values[1::2]))
    return tuple(sorted(g for g, e in zip(values[::2], values[1::2]) for _ in range(e)))


def parity(values):
    return {v for v, n in collections.Counter(values).items() if n % 2}


def multiply(left, right):
    return parity(tuple(sorted(a + b)) for a in left for b in right)


def matrix_product(a, b, rows, inner, cols):
    assert len(a) == rows * inner and len(b) == inner * cols
    return [bool(sum(a[i * inner + k] and b[k * cols + j] for k in range(inner)) % 2)
            for i in range(rows) for j in range(cols)]


def ev(a, rows, cols, x):
    return matrix_product(a, x, rows, cols, 1)


def comparison_laws(w):
    k, m, n, h = (w[x] for x in ['k', 'm', 'n', 'h'])
    a, b, inclusion, projection = (w[x] for x in ['outgoing', 'incoming', 'inclusion', 'projection'])
    assert not any(matrix_product(a, b, k, m, n))
    assert not any(matrix_product(a, inclusion, k, m, h))
    assert not any(matrix_product(projection, b, h, m, n))
    assert matrix_product(projection, inclusion, h, m, h) == [i == j for i in range(h) for j in range(h)]
    pieces = [matrix_product(inclusion, projection, m, h, m),
              matrix_product(b, w['up'], m, n, m), matrix_product(w['down'], a, m, k, m)]
    assert [bool(sum(x) % 2) for x in zip(*pieces)] == [i == j for i in range(m) for j in range(m)]


def basis(s, t):
    assert t <= meta['t_max']
    return list(sql.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id', (s, t)))


def raw_d2(s, t):
    assert t <= meta['d2_t_max']
    src, tgt = basis(s, t), basis(s + 2, t + 1)
    cols = []
    for _, _, raw in src:
        assert raw is not None
        ids = set(map(int, raw.split(','))) if raw else set()
        assert all(0 <= j < len(tgt) for j in ids)
        cols.append(ids)
    return [i in c for i in range(len(tgt)) for c in cols]


def verify_products(file, directory, factor, shift):
    records = json.loads((HERE / file).read_text())
    groups, reductions = {}, 0
    for row in records:
        s, t = row['source_degree']
        assert row['target_degree'] == [s + shift[0], t + shift[1]]
        src, tgt = basis(s, t), basis(*row['target_degree'])
        assert src[row['source_local']][0] == row['source_id']
        assert [r[0] for r in tgt] == row['target_basis_ids']
        wire = json.loads((HERE / directory / f"basis{row['source_id']}.json").read_text())
        current = multiply({factor}, {mon(src[row['source_local']][1])})
        assert current == parity(tuple(m) for m in wire['input'])
        relations = []
        for rid, terms in zip(row['relation_rowids'], wire['relations'], strict=True):
            raw, rs, rt = sql.execute('SELECT rel,s,t FROM S0_AdamsE2_relations WHERE rowid=?', (rid,)).fetchone()
            assert rs <= row['target_degree'][0] and rt <= row['target_degree'][1]
            expected = parity(mon(term) for term in raw.split(';'))
            assert expected == parity(tuple(term) for term in terms)
            relations.append(expected)
        for term in wire['terms']:
            current ^= multiply(parity(tuple(m) for m in term['multiplier']), relations[term['relation']])
            reductions += 1
        output = parity(tuple(m) for m in wire['output'])
        assert current == output == parity(mon(tgt[i][1]) for i in row['target_coordinates'])
        groups.setdefault((s, t), []).append(row)
    matrices = {}
    for degree, rows in groups.items():
        assert [r['source_local'] for r in rows] == list(range(len(basis(*degree))))
        matrices[degree] = [i in row['target_coordinates']
                            for i in range(len(rows[0]['target_basis_ids'])) for row in rows]
    return records, matrices, reductions


def main():
    eta, matrices, eta_steps = verify_products('products-provenance.json', 'products_eta', (1,), (1, 2))
    h05, left_matrices, left_steps = verify_products('h05-provenance.json', 'products_h05', (0,) * 5, (5, 5))
    data = json.loads((HERE / 'comparison-source.json').read_text())
    blocks = {tuple(b['center']): b for b in data['d2']}
    for b in data['d2']:
        w = b['wire']
        comparison_laws(w)
        s, t = b['center']
        assert w['m'] == len(basis(s, t))
        assert w['outgoing'] == raw_d2(s, t)
        assert w['incoming'] == raw_d2(s - 2, t - 1)
    centers = [(8,135),(11,137),(14,139),(12,138),(15,140),(18,142)]
    induced = {}
    for s, t in centers:
        source, target = blocks[(s,t)]['wire'], blocks[(s+1,t+2)]['wire']
        f, upper, lower = (matrices[(s+ds,t+dt)] for ds,dt in [(0,0),(2,1),(-2,-1)])
        assert matrix_product(upper, source['outgoing'], target['k'], source['k'], source['m']) == matrix_product(target['outgoing'], f, target['k'], target['m'], source['m'])
        assert matrix_product(f, source['incoming'], target['m'], source['m'], source['n']) == matrix_product(target['incoming'], lower, target['m'], target['n'], source['n'])
        induced[(s,t)] = matrix_product(target['projection'], matrix_product(f, source['inclusion'], target['m'], source['m'], source['h']), target['h'], target['m'], source['h'])
    higher = {b['tag']: b for b in data['d3']}
    for b in higher.values():
        comparison_laws(b['wire'])
        for use in b['uses']:
            raw = list(sql.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE id=?', (use['row'][0],)).fetchone())
            assert raw == use['row']
    for st, left_tag, right_tag in [((11,137),'source','target'),((15,140),'upperSource','upperTarget')]:
        s,t=st
        source,target=higher[left_tag]['wire'],higher[right_tag]['wire']
        f,upper,lower=(induced[(s+ds,t+dt)] for ds,dt in [(0,0),(3,2),(-3,-2)])
        assert matrix_product(upper,source['outgoing'],target['k'],source['k'],source['m']) == matrix_product(target['outgoing'],f,target['k'],target['m'],source['m'])
        assert matrix_product(f,source['incoming'],target['m'],source['m'],source['n']) == matrix_product(target['incoming'],lower,target['m'],target['n'],source['n'])
    sw, tw = higher['upperSource']['wire'], higher['upperTarget']['wire']
    detection=matrix_product(tw['projection'],matrix_product(induced[(15,140)],sw['inclusion'],tw['m'],sw['m'],sw['h']),tw['h'],tw['m'],sw['h'])
    assert detection == [False, True]
    raw_named=[False,True,True,False,False,False]
    assert not any(ev(matrices[(11,137)],3,6,raw_named))
    assert not any(ev(left_matrices[(11,137)],3,6,raw_named))
    assert ev(blocks[(11,137)]['wire']['projection'],2,6,raw_named) == [True,False]
    left_product=json.loads((HERE/'leftTermD3.json').read_text())
    assert left_product['tensor']==[False]*4
    assert left_product['right']==higher['source']['wire'] and left_product['target']==higher['upperTarget']['wire']
    for q in [2,3]:
        comparison_laws(json.loads((HERE/f'detaD{q}.json').read_text()))
    assert json.loads((HERE/'detaD3.json').read_text())['h']==1
    # The zero d3 codomain makes the stored event3152 value irrelevant to this column.
    assert higher['upperSource']['wire']['k']==0
    used=[u for b in higher.values() for u in b['uses'] if u['row'][0]==3152]
    assert len(used)==1 and used[0]['kind']=='stored_zero_prefix_or_boundary' and used[0]['page']==3
    branches=[]
    for b,c in itertools.product([False,True],repeat=2):
        image={tuple(ev([b,True,c,False],2,2,x)) for x in itertools.product([False,True],repeat=2)}
        boundary=(False,True) in image
        assert boundary==c
        branches.append(dict(first=b,second=c,eta_constraint=not c,source3152_boundary=boundary))
    raw_rows={str(i):list(sql.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=?',(i,)).fetchone()) for i in [2925,2926,3151,3152]}
    assert raw_rows['2925']==[2925,11,137,'1,2',None,9000]
    files=[Path(__file__),DATABASE,HERE/'products-provenance.json',HERE/'h05-provenance.json',HERE/'comparison-source.json',HERE/'product-source.json']
    report=dict(status='raw_polynomial_quotient_replay_passed',eta_columns=len(eta),h05_columns=len(h05),eta_reductions=eta_steps,h05_reductions=left_steps,d2_comparisons=12,d3_comparisons=4,d2_chain_maps=6,d3_chain_maps=2,eta_target_matrix=detection,branches=branches,raw_rows=raw_rows,
        no_event3152_d5_value_used=True,eta_d4_unrestricted=True,unknown_first_coordinate_retained=True,
        inputs_sha256={str(f.relative_to(ROOT)):sha(f) for f in files},
        scope='Full finite products and quotients. Actual Adams multiplication meanings and earlier conditional column meanings remain explicit; no new d5 event asserted.')
    (HERE/'review.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
    print('76 polynomial columns;12 d2+4 d3 comparisons;6+2 chain maps;eta second-coordinate exclusion;all passed')


if __name__ == '__main__':
    main()
