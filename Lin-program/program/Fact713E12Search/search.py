"""Read-only full Fact7.13 DAG reconstruction with explicit unresolved inputs.

Reuse existing numeric comparison producers in memory. No unknown value is
assigned by this investigation; all inherited conditional uses are recorded.
"""
import collections
import hashlib
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
baseline_path = ROOT / 'Fact713TrajectoryAudit/dag.json'
baseline = json.loads(baseline_path.read_text())
builder_path = ROOT / 'Stem125E4Search/search.py'
namespace = {'__file__': str(builder_path)}
exec(compile(builder_path.read_text().split('\nrows=[]')[0], str(builder_path), 'exec'), namespace)
ns = namespace['ns']
ensure = namespace['ensure']
sql = namespace['sql']
saved = namespace['saved']['blocks']
db = namespace['db']
assert sha(db) == baseline['summary']['database_sha256']

def key(center, page):
    return f'S0:{center[0]},{center[1]}:d{page}'

def oldkey(k):
    return k.removeprefix('S0:').replace(':d', ',d')

# Reconstruct the complete predecessor graph independently of its saved edges.
needed = {}
def visit(s, t, page):
    k = key((s, t), page)
    if k in needed:
        return
    children = []
    if page > 2:
        for a, b in [(s-page, t-page+1), (s,t), (s+page,t+page-1)]:
            children.append(key((a,b), page-1))
            visit(a,b,page-1)
    needed[k] = dict(center=[s,t], page=page, predecessors=children)

for page in range(2, 12):
    visit(9,132,page)
assert len(needed) == 1420
original = {key(b['center'],b['page']):b for b in baseline['blocks']}
assert set(needed) == set(original)
degrees = {}
for k, node in needed.items():
    previous = original[k]
    assert [oldkey(c) for c in node['predecessors']] == previous['predecessors']
    s,t = node['center'];page = node['page']
    for old, (a,b) in zip(previous['spaces'], [(s-page,t-page+1),(s,t),(s+page,t+page-1)]):
        degree = (a,b)
        if degree not in degrees:
            degrees[degree] = dict(
                e2=[list(row) for row in sql.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',degree)],
                staircase=[list(row) for row in sql.execute('SELECT id,base,diff,level FROM S0_AdamsE2_ss WHERE s=? AND t=? ORDER BY id',degree)])
        raw = degrees[degree]
        assert old['degree'] == [a,b] and old['e2'] == raw['e2'] and old['staircase'] == raw['staircase']
        if page > 2:
            selected = [row for row in raw['staircase'] if page <= row[3] < 5000 or 5000 <= row[3] <= 10000-page]
            assert old['selected'] == selected and old['dimension'] == len(selected)
        else:
            assert old['dimension'] == len(raw['e2'])
assert len(degrees) == 681

results = {}
for k,node in sorted(needed.items(),key=lambda item:(item[1]['page'],item[1]['center'])):
    try:
        block = ensure('S0',*node['center'],node['page'])
        results[k] = dict(status='finite_comparison_available', dimensions={x:block['wire'][x] for x in ['k','m','n','h']})
    except (ValueError, AssertionError, KeyError) as error:
        results[k] = dict(status='unresolved', first_failure=str(error))
    results[k]['unresolved_predecessors'] = [c for c in node['predecessors'] if results.get(c,{}).get('status')=='unresolved']
    print(k,results[k]['status'],flush=True)
assert all(ns['cache'][k] == v for k,v in saved.items())

cache = {k:ns['cache'][k] for k in needed if k in ns['cache']}
uses = {}
for block_key, block in cache.items():
    for use in block['uses']:
        event = f"{use['source'][0]},{use['source'][1]},d{use['page']},row{use['row'][0]}"
        if event not in uses:
            uses[event] = dict(use=use,comparison_uses=[])
        assert uses[event]['use'] == use
        uses[event]['comparison_uses'].append(block_key)

def transitive(k):
    seen=set();pending=[k]
    while pending:
        current=pending.pop()
        if current in seen:continue
        seen.add(current);pending.extend(needed[current]['predecessors'])
    return seen

root_keys = [key((9,132),p) for p in range(2,12)]
root_dependencies = {k:transitive(k) for k in root_keys}
ranked = {x['key']:x for x in json.loads((ROOT/'Fact713TrajectoryAudit/ranked-sources.json').read_text())}
unknown = []
for event in baseline['differential_rows']:
    if not event['unknown']:
        continue
    item = dict(event)
    predecessor=key(event['target'],event['page']-1)
    item['target_predecessor']=predecessor
    item['target_comparison']=results[predecessor]
    item['affected_roots']=[k for k,closure in root_dependencies.items()
        if any('S0:'+use.replace(',d',':d') in closure for use in event['used_by'])]
    if event['key'] in uses:
        item['reused_value']=uses[event['key']]
        kind=uses[event['key']]['use']['kind']
        item['resolution']='explicit_conditional_source_theorem' if kind.startswith('conditional') else 'complete_finite_zero_target' if kind=='checked_zero_codomain' else 'unexpected_nonunknown_classification'
    elif predecessor in cache and cache[predecessor]['wire']['h']==0:
        item['resolution']='complete_finite_zero_target_before_source_ready'
    elif predecessor not in cache:
        item['resolution']='unresolved_target_predecessor'
    else:
        item['resolution']='unresolved_value_with_complete_nonzero_target'
    item['source_theorem_leads']=ranked.get(event['key'],{}).get('exact_events',[])
    item['lead_locator_note']='Historical lead line is CSV ordinal+1, not necessarily physical text line; event ID and file are primary locators.'
    unknown.append(item)

conditionals=[dict(key=k,**v) for k,v in uses.items() if v['use']['kind'].startswith('conditional')]
frontier={k:v for k,v in results.items() if v['status']=='unresolved' and not v['unresolved_predecessors']}
roots=[]
for k in root_keys:
    closure=root_dependencies[k]
    roots.append(dict(key=k,**results[k],full_predecessor_count=len(closure),
        available_count=sum(c in cache for c in closure),
        minimal_unresolved_blocks=sorted(set(frontier)&closure),
        unresolved_rows=[e['key'] for e in unknown if k in e['affected_roots'] and e['resolution'].startswith('unresolved')]))
summary=dict(claim='fact-7.13',status='incomplete_finite_E12_reconstruction',
    complete_predecessor_blocks=len(needed),raw_degrees_checked=len(degrees),
    available_comparisons=len(cache),new_comparisons=sum(k not in saved for k in cache),
    preserved_baseline_comparisons=len(saved),unresolved_comparisons=len(needed)-len(cache),
    original_unknown_row_pages=len(unknown),unknown_resolution_counts=dict(collections.Counter(x['resolution'] for x in unknown)),
    conditional_row_pages=len(conditionals),frontier_count=len(frontier),
    named_e2_local_indices=[0,1],named_e2_dense_vector=[True,True],database_sha256=sha(db),
    trust='Finite comparisons need independent Lean checking and actual data meanings. Conditional overrides retain their source theorem premises; raw NULL stays NULL. No actual E12 theorem is claimed.')
inputs=[baseline_path,ROOT/'Fact713TrajectoryAudit/blockers.json',ROOT/'Fact713TrajectoryAudit/ranked-sources.json',
    ROOT/'AggregateD5Conditional/source.json',ROOT/'AggregateD5Conditional/generate.py',builder_path,db,
    ROOT/'Fact713TrajectoryCertificates/Row3076.lean',ROOT/'Fact713TrajectoryCertificates/row3076-source.json']
report=dict(summary=summary,roots=roots,frontier=frontier,unknowns=unknown,conditional_uses=conditionals,
    results=results,graph=needed,comparisons=cache,
    new_comparison_keys=sorted(k for k in cache if k not in saved),
    input_sha256={str(p.relative_to(ROOT)):sha(p) for p in inputs})
(HERE/'search.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
(HERE/'summary.json').write_text(json.dumps(summary,indent=2,sort_keys=True)+'\n')
print(json.dumps(summary,indent=2),flush=True)
