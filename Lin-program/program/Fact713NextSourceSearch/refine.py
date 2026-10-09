"""Add only row2684 d3 from the complete C2h5 naturality detector."""
from pathlib import Path
import collections
import hashlib
import json

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
basepath=ROOT/'Fact713Row2773Refinement/refined.json'
base=json.loads(basepath.read_text())
graph=json.loads((ROOT/'Fact713E12Search/search.json').read_text())['graph']
script=ROOT/'Fact713Row2773Refinement/refine.py'
outer={'__file__':str(script)}
exec(compile(script.read_text().split('\nresults={}')[0],str(script),'exec'),outer)
ns=outer['ns'];ensure=outer['ensure']
old=base['comparisons']|base['successor_closure']
ns['cache'].update(old);ns['failures'].clear()
original=ns['matrix']
def matrix(obj,s,t,r,uses):
    if (obj,s,t,r)!=('S0',12,134,3):return original(obj,s,t,r,uses)
    assert ns['selected'](obj,s,t,r)==[[2683,'1','0',3],[2684,'0',None,9000]]
    assert ns['dim'](obj,s,t,r)==2 and ns['dim'](obj,s+r,t+r-1,r)==2
    uses += [dict(object=obj,source=[s,t],page=r,row=[2683,'1','0',3],
                  kind='stored_zero_prefix_or_boundary',target_predecessor='S0:15,136:d2'),
             dict(object=obj,source=[s,t],page=r,row=[2684,'0',None,9000],
                  kind='conditional_row2684_c2h5_naturality',target_predecessor='S0:15,136:d2',
                  theorem='Fact713NextSourceSearch.Actual.actual_row2684_d3_zero',
                  premise='Complete actual maps and faithful quotient meanings, named source and actual d3 naturality.')]
    return [[0,0],[0,0]]
ns['matrix']=matrix
results={}
for key,node in sorted(graph.items(),key=lambda kv:(kv[1]['page'],kv[1]['center'])):
    try:
        block=ensure('S0',*node['center'],node['page'])
        item=dict(status='finite_comparison_available',dimensions={f:block['wire'][f] for f in ['k','m','n','h']})
    except (ValueError,AssertionError,KeyError) as e:item=dict(status='unresolved',first_failure=str(e))
    item['unresolved_predecessors']=[k for k in node['predecessors'] if results[k]['status']=='unresolved']
    results[key]=item
assert all(ns['cache'][k]==v for k,v in old.items())
cache={k:ns['cache'][k] for k in graph if k in ns['cache']}
unknown=[]
for e in base['unknowns']:
    item={k:v for k,v in e.items() if k not in ['resolution','uses','target_comparison']}
    uses=[dict(comparison=k,use=u) for k,b in cache.items() for u in b['uses']
          if u['source']==e['source'] and u['page']==e['page'] and u['row']==e['row']]
    pred=e['target_predecessor']
    if uses:status='explicit_conditional_source_theorem' if uses[0]['use']['kind'].startswith('conditional') else 'complete_finite_zero_target'
    elif pred in cache and cache[pred]['wire']['h']==0:status='complete_finite_zero_target_before_source_ready'
    elif pred not in cache:status='unresolved_target_predecessor'
    else:status='unresolved_value_with_complete_nonzero_target'
    item.update(resolution=status,uses=uses,target_comparison=results[pred]);unknown.append(item)
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
report=dict(status='conditional_row2684_c2h5_refinement',baseline_available=len(base['comparisons']),
    baseline_preserved=len(old),available_comparisons=len(cache),unresolved_comparisons=len(graph)-len(cache),
    new_comparison_keys=sorted(set(cache)-set(base['comparisons'])),comparisons=cache,
    successor_closure=base['successor_closure'],unknowns=unknown,
    unknown_resolution_counts=dict(collections.Counter(x['resolution'] for x in unknown)),
    roots=[dict(key=f'S0:9,132:d{q}',**results[f'S0:9,132:d{q}']) for q in range(2,12)],
    frontier={k:v for k,v in results.items() if v['status']=='unresolved' and not v['unresolved_predecessors']},
    shortest_original_gap_path=['S0:9,132:d6','S0:3,127:d5','S0:8,131:d4','S0:12,134:d3'],
    raw_row=[2684,'0',None,9000],
    scope='Only the named d3 value is filled from the conditional detector theorem. Other NULL values, including later pages of row2684, remain unresolved.',
    input_sha256={str(p.relative_to(ROOT)):sha(p) for p in [basepath,script,Path(__file__),HERE/'Actual.lean',HERE/'source.json']})
(HERE/'refined.json').write_text(json.dumps(report,indent=2)+'\n')
print(len(cache),'available;',len(graph)-len(cache),'blocked;',len(report['new_comparison_keys']),'new')
print([(x['key'],x['status'],x.get('first_failure')) for x in report['roots']])
