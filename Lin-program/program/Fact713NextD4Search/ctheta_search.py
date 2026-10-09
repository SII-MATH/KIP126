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
for name in ['Ctheta4', 'S0']:
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
    d2 = 'd2' if obj == 'S0' else 'NULL'
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


original_matrix = ns['matrix']
reconstructions = {}
leibniz_path = HERE/'ctheta-d2.json'
leibniz = json.loads(leibniz_path.read_text())['matrices'] if leibniz_path.exists() else {}


def matrix(obj,s,t,r,uses):
    if r != 2 or obj == 'S0':
        return original_matrix(obj,s,t,r,uses)
    ensure_degree(obj,s+2,t+1)
    m,k = len(ns['e2'](obj,s,t)),len(ns['e2'](obj,s+2,t+1))
    if f'{obj}:{s},{t}' in leibniz:
        b=leibniz[f'{obj}:{s},{t}']
        assert (b['rows'],b['cols'])==(k,m)
        assert [[row[0],row[1]] for row in ns['e2'](obj,s,t)]==b['source']
        uses.append(dict(object=obj,source=[s,t],page=2,kind='coefficient_module_Leibniz_d2',certificate=f'{obj}:{s},{t}'))
        return [b['entries'][i*m:(i+1)*m] for i in range(k)]
    stairs = ns['raw'](obj,s,t)
    columns = [ns['bits'](row[1],m) for row in stairs]
    if len(columns) != m:
        raise ValueError('staircase does not cover complete E2 basis')
    inverse = ns['rows']([ns['solve'](columns,[int(i==j) for i in range(m)]) for j in range(m)],m)
    images,evidence = [],[]
    for row in stairs:
        rid,base,diff,level = row
        if level == 9998:
            image,kind = ns['bits'](diff,k),'stored_outgoing_d2'
        elif 2 <= level < 5000:
            image,kind = [0]*k,'incoming_boundary_finite_d2_cycle'
        elif 9000 < level < 9998:
            image,kind = [0]*k,'later_outgoing_finite_d2_cycle_prefix'
        elif k == 0:
            image,kind = [],'complete_zero_codomain'
        else:
            raise ValueError(f'unknown {obj}:{s},{t}:d2 row{rid} level{level}; target dimension {k}')
        images.append(image)
        evidence.append(dict(row=row,kind=kind))
    result = ns['mul'](ns['rows'](images,k),inverse,m)
    record = dict(object=obj,source=[s,t],page=2,kind='complete_staircase_d2',
                  source_basis=ns['e2'](obj,s,t),target_basis=ns['e2'](obj,s+2,t+1),
                  basis_columns=columns,inverse_rows=inverse,images=images,entries=result,evidence=evidence)
    reconstructions[f'{obj}:{s},{t}'] = record
    uses.append(record)
    return result


ns['matrix'] = matrix
roots = [(obj,s,t,3) for obj,shift in [('Ctheta4',31),('S0',0)] for s,t in [(17,138+shift),(21,141+shift)]]
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
    scope='Finite staircase interpretations only. Future d48 implies a supplied finite cycle prefix, never all-page permanence.')
(HERE/'ctheta-search.json').write_text(json.dumps(report,indent=2)+'\n')
print('complete',len(ns['cache']),'of',len(results))
for key in report['roots']:
    print(key,results[key])
print('direct unknowns:')
for key,result in results.items():
    if result['status']=='unresolved' and result['reason'].startswith('unknown '+key):
        print(key,result['reason'])
