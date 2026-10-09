"""Exact remaining missing targets and exhaustive small-matrix obstructions."""
import hashlib
import importlib.util
import itertools
import json
import sqlite3
import subprocess
from pathlib import Path
p=Path(__file__).resolve().parent
r=p.parent
spec=importlib.util.spec_from_file_location('oracle',r/'Row2925Detector/source_independent_audit.py')
a=importlib.util.module_from_spec(spec);spec.loader.exec_module(a)
db=r/'upstream/kervaire-49/S0_AdamsSS_t261.db'
c=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
s=json.loads((r/'AggregateD5Conditional/source.json').read_text())
blocks=s['blocks']
raw={rid:list(c.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=?',(rid,)).fetchone()) for rid in [2696,2852,3152,3147,3148,2925,2926]}
assert raw[2696]==[2696,9,134,'3',None,9993]
assert raw[2852]==[2852,11,136,'3',None,9995]
assert raw[3152]==[3152,15,140,'2','0',9995]
assert raw[3147]==[3147,16,140,'4',None,9000]
affine=json.loads((r/'AffineRemainingSearch/audit.json').read_text())['row2574_branches']
assert [b['event2696']['d3_boundary'] for b in affine]==[True,False]
assert all(b['actual_E4_dimension']==1 and b['stored_next_basis_count']==2 for b in affine)
def path(s,t,local,end):
    v=[int(i==local) for i in range(blocks[f'S0:{s},{t}:d2']['wire']['m'])]
    trace=[]
    for q in range(2,end):
        w=blocks[f'S0:{s},{t}:d{q}']['wire']
        a.wire_laws(w)
        assert not any(a.matmul(w['outgoing'],v,w['k'],w['m'],1))
        v=a.matmul(w['projection'],v,w['h'],w['m'],1)
        assert any(v)
        trace.append(dict(page=q,projection=v))
    return trace
trace2852=path(11,136,3,5)
assert trace2852[-1]['projection']==[1]
trace3152target=path(20,144,0,5)
assert trace3152target[-1]['projection']==[1]
branches3152=[]
for b,e in itertools.product([0,1],repeat=2):
    w=json.loads((r/f'Row3151BranchCertificates/comparison{b}{e}.json').read_text())
    boundary=a.in_image(w['outgoing'],2,2,[0,1])
    assert boundary==bool(e)
    branches3152.append(dict(row2925_column=[b,e],event3152_source_is_d4_boundary=boundary,
        source_d4_rank=2 if e else 1,admissible_for_nonzero_event3152=not boundary))
branches3147=[]
for u,v in itertools.product([0,1],repeat=2):
    run=subprocess.run([str(r/'PageTransitionCertificates/page-transition-export'),'2','3','3',f'0{u}10{v}0','001000000'],check=True,capture_output=True,text=True)
    w=json.loads(run.stdout);a.wire_laws(w)
    encoded=json.dumps(w,sort_keys=True,separators=(',',':'))+'\n'
    path3147=p/f'row3147-{u}{v}.json'
    if path3147.exists():assert path3147.read_text()==encoded
    path3147.write_text(encoded)
    target=[0,1,0]
    cycle=not any(a.matmul(w['outgoing'],target,2,3,1))
    assert cycle==(u==v==0)
    branches3147.append(dict(row3147_value=[u,v],E4_dimension=w['h'],stored_row3147_is_cycle=cycle,
        E4_projection=a.matmul(w['projection'],target,w['h'],3,1),complete_comparison=w))
assert [b['E4_dimension'] for b in branches3147]==[1,0,1,0]
all_input=[p/'Consequences.lean',p/'audit.py',r/'AggregateD5Conditional/source.json',r/'AffineRemainingSearch/audit.json',r/'Row3151BranchCertificates/Semantics.lean',db]
report=dict(raw_rows=raw,event2696=dict(branch0_boundary=True,branch1_nonboundary=True,missing_target=True,
    impossible_common_nonzero_d7=True,next_basis_conflict='both source branches have E4dimension1, stored list has2; cannot keep old basis'),
    event2852=dict(source_complete_through_E5=trace2852,missing_target=True,target_degree=[16,140],
        missing_target_trajectory='row3147 d3 unknown in full2Dtarget; its nextpage stored representative is a cycle only for zero value'),
    event3152=dict(target_complete_through_E5=trace3152target,source_degree=[15,140],branches=branches3152,
        independent_missing='actual source nonboundary at E5 requires row2925 second coordinate false, independent of the stored3152 event; the d5 value is still supplied data'),
    row3147_all_completions=branches3147,
    distinction='row2708 CompleteKernel is not required to prove every listed conflict; changing the old selected basis does not fill NULL event targets or independently determine higher differential values.',
    no_new_event=True,no_arbitrary_unknown_choice=True,
    inputs_sha256={str(f.relative_to(r)):hashlib.sha256(f.read_bytes()).hexdigest() for f in all_input})
(p/'audit.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
print('2696:no common nonzero d7 and NULLtarget;2852:complete sourceE5 but NULLtarget/unknown3147;3152:targetE5 complete,half source branches already boundaries')
