"""Add only the independently detected row3476 injective-successor condition."""
from pathlib import Path
import hashlib,json,collections
HERE=Path(__file__).resolve().parent;ROOT=HERE.parent
basepath=ROOT/'Fact713E12Search/successor-search.json';base=json.loads(basepath.read_text())
graph=json.loads((ROOT/'Fact713E12Search/search.json').read_text())['graph']
script=ROOT/'Fact713E12Search/successor_search.py';ctx={'__file__':str(script)}
exec(compile(script.read_text().split('\nresults={}')[0],str(script),'exec'),ctx)
ns=ctx['ns'];ensure=ctx['ensure'];ns['cache'].update(base['comparisons']);ns['failures'].clear()
original=ns['matrix']
def matrix(o,s,t,r,uses):
 if (o,s,t,r)!=('S0',24,144,4):return original(o,s,t,r,uses)
 assert ns['selected'](o,s,t,r)==[[3475,'1','0',4],[3476,'0',None,9000]]
 assert ns['dim'](o,s,t,r)==2 and ns['dim'](o,s+r,t+r-1,r)==1
 uses.append(dict(object=o,source=[s,t],page=r,row=[3475,'1','0',4],
  kind='stored_zero_prefix_or_boundary',target_predecessor='S0:28,147:d3'))
 uses.append(dict(object=o,source=[s,t],page=r,row=[3476,'0',None,9000],
  kind='conditional_row3728_injective_successor',target_predecessor='S0:28,147:d3',
  successor_row=3728,premise='Actual full successor coordinates [1], faithfulness, zero meanings and d4 squared zero.'))
 return [[0,0]]
ns['matrix']=matrix
results={}
for key,node in sorted(graph.items(),key=lambda item:(item[1]['page'],item[1]['center'])):
 try:
  block=ensure('S0',*node['center'],node['page'])
  results[key]=dict(status='finite_comparison_available',dimensions={x:block['wire'][x] for x in ['k','m','n','h']})
 except (ValueError,AssertionError,KeyError) as e:results[key]=dict(status='unresolved',first_failure=str(e))
 results[key]['unresolved_predecessors']=[k for k in node['predecessors'] if results[k]['status']=='unresolved']
# The successor's own full comparison is a separate numerical consequence;
# its outgoing column is derived from the raw known event, independently of
# the incoming-zero override used in that comparison.
ensure('S0',28,147,4)
assert all(ns['cache'][k]==v for k,v in base['comparisons'].items())
cache={k:ns['cache'][k] for k in graph if k in ns['cache']}
closure=set();todo=['S0:28,147:d4']
while todo:
 k=todo.pop()
 if k in closure:continue
 closure.add(k);todo.extend(ns['cache'][k]['predecessors'])
unknown=[]
for old in base['unknowns']:
 item={k:v for k,v in old.items() if k not in ['resolution','uses','target_comparison']}
 uses=[dict(comparison=k,use=u) for k,b in cache.items() for u in b['uses']
       if u['source']==old['source'] and u['page']==old['page'] and u['row']==old['row']]
 pred=old['target_predecessor']
 if uses:status='explicit_conditional_source_theorem' if uses[0]['use']['kind'].startswith('conditional') else 'complete_finite_zero_target'
 elif pred in cache and cache[pred]['wire']['h']==0:status='complete_finite_zero_target_before_source_ready'
 elif pred not in cache:status='unresolved_target_predecessor'
 else:status='unresolved_value_with_complete_nonzero_target'
 item.update(resolution=status,uses=uses,target_comparison=results[pred]);unknown.append(item)
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
report=dict(status='incomplete_E12_with_third_explicit_injective_successor_condition',
 baseline_available=len(base['comparisons']),baseline_blocked=base['unresolved_comparisons'],
 available_comparisons=len(cache),unresolved_comparisons=len(graph)-len(cache),
 new_comparison_keys=sorted(set(cache)-set(base['comparisons'])),comparisons=cache,
 successor_closure={k:ns['cache'][k] for k in sorted(closure)},
 degree_data={k:v for k,v in ns['dag']['degrees'].items() if any(k in [f"S0:{a},{b}" for a,b in [(block['center'][0]-block['page'],block['center'][1]-block['page']+1),tuple(block['center']),(block['center'][0]+block['page'],block['center'][1]+block['page']-1)]] for block in [ns['cache'][c] for c in closure])},
 unknowns=unknown,unknown_resolution_counts=dict(collections.Counter(x['resolution'] for x in unknown)),
 roots=[dict(key=r['key'],**results[r['key']]) for r in base['roots']],
 frontier={k:v for k,v in results.items() if v['status']=='unresolved' and not v['unresolved_predecessors']},
 source_row=[3476,'0',None,9000],successor_row=[3728,'2','0,2',9996],
 scope='Separate conditional numerical snapshot. The actual successor equation and all old input meanings remain caller obligations; no source value is guessed from desired homology dimensions.',
 input_sha256={str(p.relative_to(ROOT)):sha(p) for p in [basepath,script,Path(__file__)]})
(HERE/'refined.json').write_text(json.dumps(report,indent=2)+'\n')
print(report['available_comparisons'],'available',report['unresolved_comparisons'],'blocked',len(report['new_comparison_keys']),'new',len(closure),'successor closure')
print(report['unknown_resolution_counts'])
print('closure',sorted(closure))
