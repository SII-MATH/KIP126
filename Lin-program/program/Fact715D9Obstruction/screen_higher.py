"""Bounded untrusted higher-factor screen; no positive result is a theorem."""
import collections
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
old = ROOT / 'AggregateThreeProductConditional/Remaining/screen.py'
ns = {'__file__': str(old)}
exec(compile(old.read_text().split('\nfactors, excluded =')[0], str(old), 'exec'), ns)
c, basis, comparison, project, product, algebra = [ns[k] for k in
    ['c', 'basis', 'comparison', 'project', 'product', 'algebra']]


def stair_coordinates(degree, raw):
    rows = list(c.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss '
                          'WHERE s=? AND t=? ORDER BY id', degree))
    pivots = {}
    for j, (_, b, _, _) in enumerate(rows):
        v, w = sum(1 << int(i) for i in b.split(',') if i), 1 << j
        while v:
            k = v.bit_length() - 1
            if k in pivots:
                v, w = v ^ pivots[k][0], w ^ pivots[k][1]
            else:
                pivots[k] = v, w
                break
    v, w = sum(int(b) << i for i, b in enumerate(raw)), 0
    while v:
        k = v.bit_length() - 1
        if k not in pivots:
            raise ValueError('raw vector outside staircase span')
        v, w = v ^ pivots[k][0], w ^ pivots[k][1]
    return [rows[j] for j in range(len(rows)) if w >> j & 1]


records = []
for s, t in c.execute('SELECT DISTINCT s,t FROM S0_AdamsE2_basis '
                      'WHERE 40<t AND t<=120 ORDER BY t,s'):
    try:
        w = comparison(s, t)
    except ValueError as error:
        records.append(dict(degree=[s, t], status='unknown', reason=str(error)))
        continue
    rows = basis(s, t)
    for j in range(w['h']):
        v = [int(w['inclusion'][i*w['h']+j]) for i in range(w['m'])]
        item = dict(degree=[s, t], homology_column=j, raw=v,
                    basis_ids=[rows[i][0] for i, b in enumerate(v) if b],
                    basis_monomials=[rows[i][1] for i, b in enumerate(v) if b])
        records.append(item)
        try:
            factor = algebra.parity(algebra.mono(x) for x in item['basis_monomials'])
            tv = product(factor, 11, 136, [0, 0, 0, 1, 0], s, t)
            td = [s+11, t+136]
            stair = stair_coordinates(td, tv)
            item['target'] = dict(degree=td, raw=tv, staircase=stair)
            potential = [row for row in stair if 9 <= row[3] <= 9991]
            if not potential:
                item['status'] = 'no_possible_E9_staircase_component'
                continue
            item['target']['E3'] = project(comparison(*td), tv)
            sv = product(factor, 2, 128, [1], s, t)
            sd = [s+2, t+128]
            item['source'] = dict(degree=sd, raw=sv,
                                  E3=project(comparison(*sd), sv),
                                  staircase=stair_coordinates(sd, sv))
            item['status'] = 'needs_higher_pages'
            print(item, flush=True)
        except (ValueError, AssertionError) as error:
            item.update(status='unknown', reason=str(error))
report = dict(scope='Every complete E3 basis column for factors with 40<t<=120. '
                    'Vanishing is only an untrusted staircase screen; combinations '
                    'are exhausted for the linear question of target-image support, '
                    'not for source-annihilator detection.',
              results=records,
              counts=dict(collections.Counter(x['status'] for x in records)),
              input_sha256=hashlib.sha256(ns['db'].read_bytes()).hexdigest())
(HERE / 'higher-screen.json').write_text(json.dumps(report, indent=2) + '\n')
print(report['counts'])
