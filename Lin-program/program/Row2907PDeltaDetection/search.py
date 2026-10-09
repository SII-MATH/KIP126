"""Bounded complete graph for the recorded row2907 d4 product obstruction."""
import hashlib
import json
from pathlib import Path
import sqlite3

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
script = ROOT / 'Fact762CsigmasqD5/search.py'
scope = {'__file__': str(script)}
exec(compile(script.read_text().split('\nroots = ')[0], str(script), 'exec'), scope)
ns = scope['ns']
reconstruction = ROOT / 'HighFiltrationD2Audit/inspect.py'
rh = {'__file__': str(reconstruction)}
exec(compile(reconstruction.read_text().split('\ncomparisons=[]')[0], str(reconstruction), 'exec'), rh)
base = ns['matrix']
reconstructed = {}


def matrix(obj, s, t, r, uses):
    if obj == 'S0' and r == 2 and any(x[2] is None for x in ns['e2'](obj, s, t)):
        b = rh['reconstruct'](s, t)
        reconstructed[f'S0:{s},{t}'] = b
        assert b['source_basis'] == [tuple(x) for x in ns['e2'](obj, s, t)]
        uses.append(dict(kind='explicit_complete_staircase_d2_meaning', object=obj,
                         source=[s, t], page=2, evidence=b['evidence']))
        return [b['entries'][i*b['cols']:(i+1)*b['cols']] for i in range(b['rows'])]
    return base(obj, s, t, r, uses)


ns['matrix'] = matrix
roots = [('S0', 12, 42, 3), ('S0', 16, 45, 3), ('S0', 28, 179, 3), ('S0', 32, 182, 3)]
for obj, s, t, r in roots:
    scope['ensure_graph'](obj, s, t, r)
results = {}
for key, node in sorted(ns['dag']['blocks'].items(), key=lambda kv: (kv[1]['page'], kv[0])):
    try:
        b = ns['build'](node['object'], *node['center'], node['page'])
        results[key] = dict(status='finite_comparison', dimensions={k:b['wire'][k] for k in ['k','m','n','h']})
    except (AssertionError, ValueError, KeyError) as e:
        results[key] = dict(status='unresolved', reason=str(e))
sql = scope['connections']['S0']
out = dict(roots=[ns['key'](*x) for x in roots], results=results, graph=ns['dag'],
           comparisons=ns['cache'], reconstructed=reconstructed,
           known_record=list(sql.execute('select id,s,t,base,diff,level from S0_AdamsE2_ss where id=6934').fetchone()),
           source_record=list(sql.execute('select id,s,t,base,diff,level from S0_AdamsE2_ss where id=2907').fetchone()),
           input_sha256=hashlib.sha256((ROOT/'upstream/kervaire-49/S0_AdamsSS_t261.db').read_bytes()).hexdigest(),
           scope='Known nonzero d4 and full staircase d2 meanings remain explicit actual premises. '
                 'Raw source NULL d4 is not assumed nonzero; no branch selected.')
(HERE/'search.json').write_text(json.dumps(out,indent=2)+'\n')
print('complete',len(ns['cache']),'of',len(results),'reconstructedd2',len(reconstructed))
for key in out['roots']:
    print(key,results[key])
for key,value in results.items():
    if value['status']=='unresolved':
        print(key,value['reason'])
