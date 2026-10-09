"""Add only the two explicitly identified injective-successor conditions.

This is a separate conditional snapshot; search.json and all raw rows remain
unchanged. No loop guesses further unknown values from desired dimensions.
"""
import collections
import hashlib
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
base=json.loads((HERE/'search.json').read_text())
builder=ROOT/'Stem125E4Search/search.py'
namespace={'__file__':str(builder)}
exec(compile(builder.read_text().split('\nrows=[]')[0],str(builder),'exec'),namespace)
ns=namespace['ns'];ensure=namespace['ensure']
ns['cache'].update(base['comparisons'])
original=ns['matrix']
overrides={('S0',16,138,4):[2999,'2',None,9000],('S0',21,143,3):[3386,'1',None,9000]}
def matrix(o,s,t,r,uses):
    if (o,s,t,r) not in overrides:
        return original(o,s,t,r,uses)
    row=overrides[o,s,t,r]
    assert ns['selected'](o,s,t,r)==[row]
    assert ns['dim'](o,s,t,r)==1 and ns['dim'](o,s+r,t+r-1,r)==1
    uses.append(dict(object=o,source=[s,t],page=r,row=row,
        kind='conditional_injective_successor',
        target_predecessor=f'{o}:{s+r},{t+r-1}:d{r-1}',
        successor_row=3242 if r==4 else 3551,
        premise='Full actual successor coordinates [1,0], coordinate faithfulness and differential square zero.'))
    return [[0]]
ns['matrix']=matrix
results={}
for k,node in sorted(base['graph'].items(),key=lambda item:(item[1]['page'],item[1]['center'])):
    try:
        block=ensure('S0',*node['center'],node['page'])
        results[k]=dict(status='finite_comparison_available',dimensions={x:block['wire'][x] for x in ['k','m','n','h']})
    except (ValueError,AssertionError,KeyError) as e:
        results[k]=dict(status='unresolved',first_failure=str(e))
    results[k]['unresolved_predecessors']=[p for p in node['predecessors'] if results[p]['status']=='unresolved']
assert all(ns['cache'][k]==v for k,v in base['comparisons'].items())
cache={k:ns['cache'][k] for k in base['graph'] if k in ns['cache']}
changed={k:v for k,v in cache.items() if k not in base['comparisons']}
unknown=[]
for event in base['unknowns']:
    item={k:v for k,v in event.items() if k not in ['resolution','reused_value','target_comparison']}
    uses=[dict(comparison=k,use=u) for k,b in cache.items() for u in b['uses']
        if u['source']==event['source'] and u['page']==event['page'] and u['row']==event['row']]
    predecessor=event['target_predecessor']
    if uses:
        kind=uses[0]['use']['kind']
        status='explicit_conditional_source_theorem' if kind.startswith('conditional') else 'complete_finite_zero_target'
    elif predecessor in cache and cache[predecessor]['wire']['h']==0:
        status='complete_finite_zero_target_before_source_ready'
    elif predecessor not in cache:
        status='unresolved_target_predecessor'
    else:
        status='unresolved_value_with_complete_nonzero_target'
    item.update(resolution=status,uses=uses,target_comparison=results[predecessor])
    unknown.append(item)
result=dict(status='incomplete_E12_with_two_explicit_successor_conditions',
    baseline_search_sha256=hashlib.sha256((HERE/'search.json').read_bytes()).hexdigest(),
    available_comparisons=len(cache),new_comparisons=len(changed),
    unresolved_comparisons=len(base['graph'])-len(cache),
    unknown_resolution_counts=dict(collections.Counter(x['resolution'] for x in unknown)),
    new_conditional_rows=[dict(source=list(k[1:3]),page=k[3],row=v) for k,v in overrides.items()],
    roots=[dict(key=r['key'],**results[r['key']]) for r in base['roots']],
    frontier={k:v for k,v in results.items() if v['status']=='unresolved' and not v['unresolved_predecessors']},
    comparisons=cache,new_comparison_keys=sorted(changed),unknowns=unknown,
    raw_NULL_statement='All 82 raw NULL row/page source obligations in NULL-obligations.json remain recorded; two values now have explicit conditional successor derivations, not trusted database proofs.')
(HERE/'successor-search.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
print(result['available_comparisons'],'available;',result['new_comparisons'],'new;',result['unknown_resolution_counts'])
