"""Independent finite snapshot check; does not certify the later Lean overlay."""
import itertools
import json
import hashlib
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
old=json.loads((ROOT/'Fact713RefinedSourceSearch/refined.json').read_text())
new=json.loads((HERE/'refined.json').read_text())
before=old['comparisons']|old['successor_closure']
after=new['comparisons']|new['successor_closure']
assert len(before)==1239 and len(after)==1249
assert all(after[k]==v for k,v in before.items())
added=sorted(set(after)-set(before));assert len(added)==10

def mat(bits,m,n):
    assert len(bits)==m*n
    return [bits[i*n:(i+1)*n] for i in range(m)]
def apply(m,v):return tuple(sum(x and y for x,y in zip(row,v))%2==1 for row in m)
def vecs(n):return itertools.product([False,True],repeat=n)
def add(x,y):return tuple(a!=b for a,b in zip(x,y))
checks=[]
for key in added:
    b=after[key];w=b['wire'];k,m,n,h=[w[x] for x in ['k','m','n','h']]
    d,j,p,i=mat(w['outgoing'],k,m),mat(w['incoming'],m,n),mat(w['projection'],h,m),mat(w['inclusion'],m,h)
    cycles=[x for x in vecs(m) if not any(apply(d,x))]
    images={apply(j,x) for x in vecs(n)}
    assert all(not any(apply(d,x)) for x in images)
    for z in vecs(h):assert apply(i,z) in cycles and apply(p,apply(i,z))==z
    for x in cycles:
        assert add(x,apply(i,apply(p,x))) in images
        for y in cycles:assert (apply(p,x)==apply(p,y))==(add(x,y) in images)
    for field in ['incoming','outgoing']:
        assert all(isinstance(x,bool) for x in w[field])
    checks.append(dict(key=key,dimensions=[k,m,n,h],cycles=len(cycles),images=len(images)))
linked=consecutive=0
for key,a in after.items():
    obj,s,t,r=a['object'],*a['center'],a['page']
    same=after.get(f'{obj}:{s+r},{t+r-1}:d{r}')
    if same:
        assert a['wire']['k']==same['wire']['m'] and a['wire']['m']==same['wire']['n']
        assert a['wire']['outgoing']==same['wire']['incoming'];linked+=1
    nextpage=after.get(f'{obj}:{s},{t}:d{r+1}')
    if nextpage:
        assert a['wire']['h']==nextpage['wire']['m'];consecutive+=1
rule=after['S0:13,135:d3']
assert rule['wire']['outgoing']==[False,True,False,False]
assert rule['uses'][0]['row']==[2773,'1',None,9000]
assert rule['uses'][0]['kind']=='conditional_row2773_actual_leibniz'
assert rule['uses'][1]['row']==[2774,'0','2',9997]
assert rule['uses'][1]['kind']=='stored_event'
assert new['available_comparisons']==1246 and new['unresolved_comparisons']==174
report=dict(status='finite_snapshot_passed_lean_overlay_review_pending',
    preserved_comparisons=1239,new_distinct_comparisons=10,merged_comparisons=1249,
    graph_comparisons=1246,graph_unresolved=174,new_checks=checks,
    whole_family_adjacent_equalities=linked,whole_family_consecutive_dimensions=consecutive,
    raw_null_preserved=True,conditional_theorem=new['theorem'],
    snapshot_sha256=hashlib.sha256((HERE/'refined.json').read_bytes()).hexdigest(),
    script_sha256=hashlib.sha256(Path(__file__).read_bytes()).hexdigest())
compiled=HERE/'Data-compile.json'
if compiled.exists():
    sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
    evidence=json.loads(compiled.read_text())
    assert evidence['observed_exit_code']==0
    assert evidence['source_sha256']==sha(HERE/'Data.lean')
    assert evidence['log_sha256']==sha(HERE/'Data.log')
    assert 'sorryAx' not in (HERE/'Data.log').read_text()
    for path,digest in evidence['external_input_sha256'].items():assert sha(ROOT/path)==digest
    for key in added:
        obj,st,page=key.split(':');s,t=st.split(',')
        wire=HERE/'wires'/f'b_{obj}_{s}_{t}_{page}.json'
        assert json.loads(wire.read_text())==after[key]['wire']
    current=(True,True);trajectory=[]
    for page in range(2,6):
        wire=after[f'S0:9,132:d{page}']['wire']
        d,j,p=mat(wire['outgoing'],wire['k'],wire['m']),mat(wire['incoming'],wire['m'],wire['n']),mat(wire['projection'],wire['h'],wire['m'])
        assert len(current)==wire['m'] and not any(apply(d,current))
        assert current not in {apply(j,x) for x in vecs(wire['n'])}
        nextvector=apply(p,current)
        trajectory.append(dict(page=page,input=current,output=nextvector))
        current=nextvector
    assert current==(True,)
    report.update(status='finite_snapshot_and_data_leaf_review_passed',data_compilation=evidence,
        finite_trajectory=trajectory,actual_E6_asserted=False,
        actual_link='row2773_actual_column derives only the named actual zero column; full family realization remains external.')
(HERE/'independent-snapshot-review.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps({k:v for k,v in report.items() if k!='new_checks'},indent=2))
