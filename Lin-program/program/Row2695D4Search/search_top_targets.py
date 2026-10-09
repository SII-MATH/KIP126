"""Finite d2--d5 staircase comparisons; unknown columns stay unresolved."""
import hashlib
import json
import sqlite3
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
BASE = ROOT / 'upstream/kervaire-49'
SCRIPT = ROOT / 'AggregateD5Conditional/generate.py'
ns = {'__file__': str(SCRIPT)}
exec(compile(SCRIPT.read_text().split('\ncandidates=[]')[0], str(SCRIPT), 'exec'), ns)
ns['dag'] = dict(degrees={}, blocks={})
ns['cache'].clear()
ns['failures'].clear()
ns['attempted'].clear()
connections = {}
metadata = {}
database_paths = {}
for name in ['C2', 'C2h4', 'C2h5', 'C2h6', 'CW_nu_eta', 'CW_nu_eta_2', 'CW_nu_sigma', 'S0']:
    path = next(BASE.glob(name + '_AdamsSS_*.db'))
    database_paths[name] = path
    connections[name] = sqlite3.connect(f'file:{path}?mode=ro', uri=True)
    metadata[name] = dict(connections[name].execute('select name,value from version'))


def ensure_degree(obj, s, t):
    key = f'{obj}:{s},{t}'
    if key in ns['dag']['degrees']:
        return
    if t > metadata[obj]['t_max']:
        raise ValueError('outside complete E2 basis window')
    c = connections[obj]
    d2 = 'd2'
    e2 = c.execute(f'select id,mon,{d2} from {obj}_AdamsE2_basis where s=? and t=? order by id', (s,t)).fetchall()
    stairs = c.execute(f'select id,base,diff,level from {obj}_AdamsE2_ss where s=? and t=? order by id', (s,t)).fetchall()
    ns['dag']['degrees'][key] = dict(object=obj, degree=[s,t], e2=e2, staircase=stairs)


def ensure_graph(obj, s, t, r):
    key = ns['key'](obj,s,t,r)
    if key in ns['dag']['blocks']:
        return
    predecessors = []
    for a,b in [(s-r,t-r+1),(s,t),(s+r,t+r-1)]:
        ensure_degree(obj,a,b)
        if r > 2:
            ensure_graph(obj,a,b,r-1)
            predecessors.append(ns['key'](obj,a,b,r-1))
    ns['dag']['blocks'][key] = dict(object=obj,center=[s,t],page=r,predecessors=predecessors)


reconstructions = {}

roots = [(obj,s+a,t+b,3) for obj,s,t in [('C2',8,71),('C2',9,135),('C2h6',8,71),('CW_nu_eta',8,126),('CW_nu_eta_2',8,126),('CW_nu_sigma',8,132),('C2h4',9,150),('C2h5',9,166)] for a,b in [(0,0),(3,2),(4,3)]]
for obj,s,t,r in roots:
    ensure_graph(obj,s,t,r)
results = {}
for key,node in sorted(ns['dag']['blocks'].items(),key=lambda item:(item[1]['page'],item[0])):
    try:
        b = ns['build'](node['object'],*node['center'],node['page'])
        results[key] = dict(status='finite_comparison',dimensions={k:b['wire'][k] for k in ['k','m','n','h']})
    except (ValueError,AssertionError,KeyError) as error:
        results[key] = dict(status='unresolved',reason=str(error))
report = dict(roots=[ns['key'](*root) for root in roots],results=results,
    comparisons=ns['cache'],reconstructed_d2=reconstructions,graph=ns['dag'],
    metadata=metadata,input_sha256={str(p.relative_to(ROOT)):hashlib.sha256(p.read_bytes()).hexdigest() for p in database_paths.values()},
    scope='Complete finite quotient comparisons. Unresolved NULL columns remain failures.')
(HERE/'top-target-search.json').write_text(json.dumps(report,indent=2)+'\n')
print('complete',len(ns['cache']),'of',len(results))
for key in report['roots']:
    print(key,results[key])
print('direct unknowns:')
for key,result in results.items():
    if result['status']=='unresolved' and result['reason'].startswith('unknown '+key):
        print(key,result['reason'])
