"""Bounded untrusted E3 product-annihilator search for the first Fact7.21 d6.

All E3 basis factors with 0 < t <= 39 and s <= 12 are screened. Every raw
reduction retains its relation provenance. A candidate is not an E6 proof.
"""
import collections
import importlib.util
import json
from pathlib import Path
import sqlite3

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
spec = importlib.util.spec_from_file_location(
    'product_screen_helper', ROOT / 'Row3147MapSearch/search_lifted.py')
helper = importlib.util.module_from_spec(spec)
spec.loader.exec_module(helper)
alg = helper.alg
DATABASE = ROOT / 'upstream/kervaire-49/S0_AdamsSS_t261.db'
sql = sqlite3.connect(f'file:{DATABASE}?mode=ro', uri=True)
meta = helper.metadata(sql)
relations = [(rid, raw, s, t, [alg.mono(x) for x in raw.split(';')])
             for rid, raw, s, t in sql.execute(
                 'select rowid,rel,s,t from S0_AdamsE2_relations order by rowid')
             if s <= 29 and t <= 177]
comparisons = {}


def comparison(s, t):
    key = f'{s},{t}'
    if key not in comparisons:
        comparisons[key] = helper.comparison(sql, 'S0', s, t, meta)
    return comparisons[key]


def staircase(s, t):
    return [dict(id=i, base=b, diff=d, level=l) for i, b, d, l in sql.execute(
        'select id,base,diff,level from S0_AdamsE2_ss where s=? and t=? order by id', (s, t))]


def reduction(initial, degree):
    s, t = degree
    basis = helper.rows(sql, 'S0', s, t)
    lookup = {alg.mono(row['mon']): i for i, row in enumerate(basis)}
    current, trace, seen = set(initial), [], set()
    applicable = [r for r in relations if r[2] <= s and r[3] <= t]
    for _ in range(10000):
        bad = next((m for m in sorted(current) if m not in lookup), None)
        if bad is None:
            break
        state = tuple(sorted(current))
        if state in seen:
            raise ValueError('reduction cycle')
        seen.add(state)
        choice = next(((r, alg.divide(bad, r[4][0])) for r in applicable
                       if r[4] and alg.divide(bad, r[4][0]) is not None), None)
        if choice is None:
            raise ValueError(f'missing reducing relation at {degree}: {bad}')
        rel, multiplier = choice
        trace.append(dict(rowid=rel[0], raw=rel[1], degree=rel[2:4],
                          multiplier=multiplier, leading=bad))
        current.symmetric_difference_update(alg.multiply({multiplier}, rel[4]))
    else:
        raise ValueError('reduction step limit')
    indices = sorted(lookup[m] for m in current)
    w = comparison(s, t)['wire']
    v = [i in indices for i in range(w['m'])]
    outgoing = helper.ev(w['outgoing'], w['k'], w['m'], v)
    if any(outgoing):
        raise ValueError('product is not a d2 cycle')
    return dict(degree=degree, basis=basis, input=sorted(initial), output=sorted(current),
                trace=trace, indices=indices,
                quotient=helper.ev(w['projection'], w['h'], w['m'], v),
                staircase=staircase(s, t))


def run():
    chosen = [('source', (11, 133), [1]), ('target', (17, 138), [0, 1, 2])]
    polynomials = {}
    for label, degree, indices in chosen:
        basis = helper.rows(sql, 'S0', *degree)
        polynomials[label] = alg.parity(alg.mono(basis[i]['mon']) for i in indices)
    degrees = sql.execute('select distinct s,t from S0_AdamsE2_basis '
                          'where 0<t and t<=39 and s<=12 order by t,s').fetchall()
    results = []
    for s, t in degrees:
        c = comparison(s, t)
        w = c['wire']
        for j in range(w['h']):
            factor = alg.parity(alg.mono(row['mon']) for i, row in enumerate(c['rows'][1])
                                if w['inclusion'][i*w['h']+j])
            item = dict(degree=[s, t], quotient_basis=j, factor=sorted(factor),
                        staircase=staircase(s, t))
            results.append(item)
            try:
                for label, (ds, dt), _ in chosen:
                    item[label] = reduction(alg.multiply(factor, polynomials[label]), (s+ds, t+dt))
                if any(item['source']['quotient']):
                    item['status'] = 'source_product_nonzero_E3'
                elif any(item['target']['quotient']):
                    item['status'] = 'candidate_needs_E6_survival_and_Leibniz'
                else:
                    item['status'] = 'target_product_zero_E3'
            except ValueError as exc:
                item.update(status='unknown', reason=str(exc))
    report = dict(schema='fact721_first_d6_annihilator_screen/v1',
                  status='untrusted_bounded_search_only',
                  claim='No E6 nonvanishing, factor permanence, Leibniz, or first-class d6 zero theorem is asserted.',
                  bounds=dict(factor_max_t=39, factor_max_s=12, max_steps=10000,
                              factors='Complete E3 quotient basis at each eligible bidegree; combinations are not screened.'),
                  source_sha256=helper.digest(DATABASE), script_sha256=helper.digest(Path(__file__)),
                  helper_sha256=helper.digest(ROOT/'Row3147MapSearch/search_lifted.py'),
                  algebra_helper_sha256=helper.digest(ROOT/'RealMapCertificates/export.py'),
                  producer_sha256=helper.digest(helper.PRODUCER),
                  selected=chosen, comparisons=comparisons, factors=results,
                  counts=dict(sorted(collections.Counter(x['status'] for x in results).items())))
    (HERE/'products.json').write_text(json.dumps(report, indent=2, sort_keys=True)+'\n')
    print(json.dumps(report['counts'], sort_keys=True))
    for item in results:
        if item['status'] == 'candidate_needs_E6_survival_and_Leibniz':
            print('candidate', item['degree'], item['quotient_basis'], item['factor'],
                  'target', item['target']['degree'], item['target']['indices'],
                  'E3', item['target']['quotient'])


if __name__ == '__main__':
    run()
