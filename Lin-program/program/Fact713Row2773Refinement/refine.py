"""Separate E12 reconstruction adding only the proved row2773 Leibniz rule."""
from pathlib import Path
import collections
import hashlib
import json

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
baseline_path=ROOT/'Fact713RefinedSourceSearch/refined.json'
baseline=json.loads(baseline_path.read_text())
graph=json.loads((ROOT/'Fact713E12Search/search.json').read_text())['graph']
script=ROOT/'Fact713RefinedSourceSearch/refine.py'
outer={'__file__':str(script)}
exec(compile(script.read_text().split('\nresults={}')[0],str(script),'exec'),outer)
ns=outer['ns'];ensure=outer['ensure']
old=baseline['comparisons']|baseline['successor_closure']
ns['cache'].update(old)
ns['failures'].clear()
original=ns['matrix']
def matrix(obj,s,t,r,uses):
    if (obj,s,t,r)!=('S0',13,135,3):return original(obj,s,t,r,uses)
    selected=ns['selected'](obj,s,t,r)
    assert selected==[[2773,'1',None,9000],[2774,'0','2',9997]]
    assert ns['dim'](obj,s,t,r)==2 and ns['dim'](obj,s+r,t+r-1,r)==2
    columns=[]
    for rid,base,diff,level in selected:
        if rid==2773:
            columns.append([0,0])
            kind='conditional_row2773_actual_leibniz'
        else:
            columns.append(ns['project'](obj,s+r,t+r-1,r,ns['bits'](diff,len(ns['e2'](obj,s+r,t+r-1)))))
            kind='stored_event'
        uses.append(dict(object=obj,source=[s,t],page=r,row=[rid,base,diff,level],kind=kind,
            target_predecessor='S0:16,137:d2',
            **(dict(theorem='Row2773Leibniz.Actual.actual_row2773_d3_zero',
                     premise='Complete actual quotient/product meanings and named factors. No NULL prefix or eta d3 value assumed.') if rid==2773 else {})))
    return ns['rows'](columns,2)
ns['matrix']=matrix
results={}
for key,node in sorted(graph.items(),key=lambda kv:(kv[1]['page'],kv[1]['center'])):
    try:
        b=ensure('S0',*node['center'],node['page'])
        result=dict(status='finite_comparison_available',dimensions={f:b['wire'][f] for f in ['k','m','n','h']})
    except (ValueError,AssertionError,KeyError) as e:result=dict(status='unresolved',first_failure=str(e))
    result['unresolved_predecessors']=[k for k in node['predecessors'] if results[k]['status']=='unresolved']
    results[key]=result
assert all(ns['cache'][key]==b for key,b in old.items())
cache={key:ns['cache'][key] for key in graph if key in ns['cache']}
unknowns=[]
for entry in baseline['unknowns']:
    item={k:v for k,v in entry.items() if k not in ['resolution','uses','target_comparison']}
    uses=[dict(comparison=key,use=u) for key,b in cache.items() for u in b['uses']
          if u['source']==entry['source'] and u['page']==entry['page'] and u['row']==entry['row']]
    pred=entry['target_predecessor']
    if uses:status='explicit_conditional_source_theorem' if uses[0]['use']['kind'].startswith('conditional') else 'complete_finite_zero_target'
    elif pred in cache and cache[pred]['wire']['h']==0:status='complete_finite_zero_target_before_source_ready'
    elif pred not in cache:status='unresolved_target_predecessor'
    else:status='unresolved_value_with_complete_nonzero_target'
    item.update(resolution=status,uses=uses,target_comparison=results[pred]);unknowns.append(item)
roots=[]
for page in range(2,12):
    key=f'S0:9,132:d{page}'
    roots.append(dict(key=key,**results[key]))
sha=lambda path:hashlib.sha256(path.read_bytes()).hexdigest()
report=dict(status='conditional_row2773_leibniz_refinement',
    baseline_available=baseline['available_comparisons'],baseline_blocked=baseline['unresolved_comparisons'],
    available_comparisons=len(cache),unresolved_comparisons=len(graph)-len(cache),
    preserved_distinct_comparisons=len(old),new_comparison_keys=sorted(set(cache)-set(baseline['comparisons'])),
    comparisons=cache,successor_closure=baseline['successor_closure'],unknowns=unknowns,
    unknown_resolution_counts=dict(collections.Counter(x['resolution'] for x in unknowns)),
    roots=roots,frontier={k:v for k,v in results.items() if v['status']=='unresolved' and not v['unresolved_predecessors']},
    raw_row=[2773,'1',None,9000],theorem='Row2773Leibniz.Actual.actual_row2773_d3_zero',
    scope='Separate finite reconstruction. Actual quotient/product/naming meanings and inherited conditions remain caller obligations; no raw NULL is overwritten.',
    input_sha256={str(p.relative_to(ROOT)):sha(p) for p in [baseline_path,script,Path(__file__),
        ROOT/'Row2773Leibniz/Actual.lean',ROOT/'Row2773Leibniz/provenance.json']})
(HERE/'refined.json').write_text(json.dumps(report,indent=2)+'\n')
print(len(cache),'available;',len(graph)-len(cache),'blocked;',len(report['new_comparison_keys']),'new',flush=True)
print('roots',[(r['key'],r['status']) for r in roots],flush=True)
print(report['unknown_resolution_counts'])
