"""Actual S0 multiplier columns, with explicit polynomial-ideal certificates."""
import collections
import importlib.util
import json
from pathlib import Path
import sqlite3

here = Path(__file__).resolve().parent
root = here.parent
spec = importlib.util.spec_from_file_location('map_export', root / 'RealMapCertificates/export.py')
alg = importlib.util.module_from_spec(spec)
spec.loader.exec_module(alg)
db = sqlite3.connect(f'file:{root}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro', uri=True)
def basis(s,t):
    return [(i,alg.mono(raw)) for i,raw in db.execute(
        'SELECT id,mon FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',(s,t))]
factor_id, factor = basis(4,18)[0]
relations = [(i,[alg.mono(x) for x in raw.split(';')],s,t)
             for i,raw,s,t in db.execute('SELECT rowid,rel,s,t FROM S0_AdamsE2_relations')]
out = here / 'products_g8'
out.mkdir(exist_ok=True)
lines=['import NamedElementCertificates.Evaluation','import LinearCertificates.Checker',
       'namespace Row3325Detector.g8',
       'open NamedElementCertificates LinearCertificates LinProgramCertificates']
pl=lambda p:'['+','.join('['+','.join(map(str,m))+']' for m in p)+']'
lines.append(f'def factor : Polynomial := {pl([factor])}')
audit=[]
for s,t in [(15,142),(18,144)]:
    source=basis(s,t); target=basis(s+4,t+18); target_index={m:j for j,(_,m) in enumerate(target)}
    columns=[]
    for local,(bid,monomial) in enumerate(source):
        product=alg.multiply({factor},{monomial}); current=set(product); used=[]; index={}; terms=[]; seen=set()
        for step in range(10000):
            bad=next((m for m in sorted(current) if m not in target_index),None)
            if bad is None:break
            state=tuple(sorted(current))
            if state in seen:raise ValueError('reduction cycle')
            seen.add(state)
            choice=next(((r,alg.divide(bad,r[1][0])) for r in relations if r[2]<=s+4 and r[3]<=t+18 and alg.divide(bad,r[1][0]) is not None),None)
            if choice is None:raise ValueError(f'missing relation for {bid}')
            (rid,rpoly,_,_),mult=choice
            if rid not in index:index[rid]=len(used);used.append((rid,rpoly))
            terms.append(dict(relation=index[rid],multiplier=[mult]))
            current.symmetric_difference_update(alg.multiply({mult},rpoly))
        else:raise ValueError('step limit')
        bundle=dict(relations=[p for _,p in used],input=sorted(product),output=sorted(current),terms=terms)
        (out/f'basis{bid}.json').write_text(json.dumps(bundle,separators=(',',':'),sort_keys=True)+'\n')
        coords=[target_index[m] for m in sorted(current)];columns.append(coords)
        name=f'column{bid}'
        lines += [f'def {name} : Bundle := named_bundle% "Row3325Detector/products_g8/basis{bid}.json"',
                  f'theorem {name}_product : EqualModuloRelations {name}.relations',
                  f'    (multiply factor {pl([monomial])}) {name}.output := by lin_cert using {name}.terms']
        audit.append(dict(source_id=bid,source_local=local,source_degree=[s,t],factor_id=factor_id,
                          target_degree=[s+4,t+18],target_basis_ids=[i for i,_ in target],
                          target_coordinates=coords,relation_rowids=[i for i,_ in used]))
    n=len(source);m=len(target);bits=[i in col for i in range(m) for col in columns]
    bl='['+','.join('true' if b else 'false' for b in bits)+']'
    lines.append(f'def matrix{s}_{t} : Matrix {m} {n} := fun i j => ({bl} : List Bool)[i.val*{n}+j.val]!')
lines.append('end Row3325Detector.g8')
(here/'Products_g8.lean').write_text('\n'.join(lines)+'\n')
(here/'products-g8-provenance.json').write_text(json.dumps(audit,indent=2)+'\n')
print(json.dumps(audit,indent=2))
