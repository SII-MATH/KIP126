"""Untrusted complete g-action columns for the recorded d5 detector."""
import importlib.util
import json
from pathlib import Path
import sqlite3

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
spec = importlib.util.spec_from_file_location('module_helper', ROOT / 'Row3147MapSearch/search_lifted.py')
helper = importlib.util.module_from_spec(spec)
spec.loader.exec_module(helper)
alg = helper.alg
sql = sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/Csigmasq_AdamsSS_t200.db?mode=ro', uri=True)
ring = sqlite3.connect(f'file:{ROOT}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro', uri=True)
relations = []
for rid, raw, s, t in sql.execute('select rowid,rel,s,t from Csigmasq_AdamsE2_relations order by rowid'):
    relations.append((dict(kind='module', rowid=rid, raw=raw, degree=[s, t]),
                      [helper.module_mon(x) for x in raw.split(';')]))
for g, shift in [(0, 0), (1, 15)]:
    for rid, raw, s, t in ring.execute('select rowid,rel,s,t from S0_AdamsE2_relations where t<=182 order by rowid'):
        relations.append((dict(kind='ring_lift', rowid=rid, raw=raw, degree=[s, t+shift], generator=g),
                          [(alg.mono(x), g) for x in raw.split(';')]))


def expression(poly):
    return [[list(co) for co, gen in sorted(poly) if gen == g] for g in range(2)]


def action(s, t):
    source = list(sql.execute('select id,mon from Csigmasq_AdamsE2_basis where s=? and t=? order by id', (s, t)))
    target = list(sql.execute('select id,mon from Csigmasq_AdamsE2_basis where s=? and t=? order by id', (s+4, t+24)))
    lookup = {helper.module_mon(raw): i for i, (_, raw) in enumerate(target)}
    cols = []
    for bid, raw in source:
        co, gen = helper.module_mon(raw)
        initial = {(tuple(sorted(co + (13,))), gen)}
        current = initial.copy()
        used, origins, terms, seen = [], [], [], set()
        for _ in range(10000):
            bad = next((x for x in sorted(current) if x not in lookup), None)
            if bad is None:
                break
            state = tuple(sorted(current))
            assert state not in seen
            seen.add(state)
            choice = next(((origin, rel, alg.divide(bad[0], rel[0][0]))
                for origin, rel in relations if rel and rel[0][1] == bad[1]
                and origin['degree'][0] <= s+4 and origin['degree'][1] <= t+24
                and alg.divide(bad[0], rel[0][0]) is not None), None)
            if choice is None:
                raise ValueError(f'missing relation for {bid}: {bad}')
            origin, rel, q = choice
            terms.append(dict(relation=len(used), multiplier=[list(q)]))
            used.append(expression(rel)); origins.append(origin)
            current.symmetric_difference_update(alg.parity((tuple(sorted(q+a)), g) for a, g in rel))
        else:
            raise ValueError('reduction limit')
        cols.append(dict(id=bid, mon=raw, input=expression(initial), output=expression(current),
                         relations=used, relation_sources=origins, terms=terms,
                         coordinates=sorted(lookup[x] for x in current)))
    return dict(source_degree=[s, t], target_degree=[s+4, t+24], source=source, target=target,
                columns=cols, rows=len(target), cols=len(source),
                entries=[int(i in c['coordinates']) for i in range(len(target)) for c in cols])


report = dict(source=action(14, 154), target=action(19, 158),
              scope='E2 g-action reductions only; later actual product and finite d5 detector still require proof.')
(HERE / 'products.json').write_text(json.dumps(report, indent=2) + '\n')
for key, value in report.items():
    if not isinstance(value, dict):
        continue
    print(key, [(x['id'], x['coordinates']) for x in value['columns']])
