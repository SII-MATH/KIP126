"""Extend the frozen finite graph to the recorded g-action d5 detector."""
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
script = ROOT / 'Fact762CsigmasqD5/search.py'
scope = {'__file__': str(script)}
exec(compile(script.read_text().split('\nroots = ')[0], str(script), 'exec'), scope)
ns = scope['ns']
old = json.loads((ROOT / 'Fact762CsigmasqD5/search.json').read_text())
ns['dag'] = old['graph']
ns['cache'].update(old['comparisons'])
reconstruct_script = ROOT / 'Fact762CsigmasqD5/d2.py'
d2_scope = {'__file__': str(reconstruct_script), '__name__': 'read_only_d2_helpers'}
exec(compile(reconstruct_script.read_text().split("\nif __name__=='__main__':")[0], str(reconstruct_script), 'exec'), d2_scope)
base_matrix = ns['matrix']
new_d2, unresolved_d2 = {}, {}


def matrix(obj, s, t, r, uses):
    if obj == 'Csigmasq' and r == 2:
        key = f'{obj}:{s},{t}'
        if key not in scope['leibniz']:
            try:
                b = d2_scope['reconstruct'](s, t)
                new_d2[key] = b
                scope['leibniz'][key] = b
            except (ValueError, AssertionError) as e:
                unresolved_d2[key] = str(e)
    return base_matrix(obj, s, t, r, uses)


ns['matrix'] = matrix
roots = [('S0', 4, 24, 4), ('S0', 9, 28, 4),
         ('Csigmasq', 18, 178, 4), ('Csigmasq', 23, 182, 4)]
for obj, s, t, r in roots:
    scope['ensure_graph'](obj, s, t, r)
results = {}
for key, node in sorted(ns['dag']['blocks'].items(), key=lambda kv: (kv[1]['page'], kv[0])):
    try:
        b = ns['build'](node['object'], *node['center'], node['page'])
        results[key] = dict(status='finite_comparison', dimensions={k: b['wire'][k] for k in ['k', 'm', 'n', 'h']})
    except (ValueError, AssertionError, KeyError) as e:
        results[key] = dict(status='unresolved', reason=str(e))
out = dict(roots=[ns['key'](*root) for root in roots], results=results, graph=ns['dag'],
           comparisons=ns['cache'], new_d2=new_d2, unresolved_d2=unresolved_d2,
           scope='Bounded finite search; every original condition retained. No new NULL is assigned a value.')
(HERE / 'search.json').write_text(json.dumps(out, indent=2) + '\n')
print('finite comparisons', len(ns['cache']), 'of', len(results), 'new d2 matrices', len(new_d2))
for key in out['roots']:
    print(key, results[key])
for key, value in results.items():
    if value['status'] == 'unresolved' and value['reason'].startswith('unknown ' + key):
        print(key, value['reason'])
