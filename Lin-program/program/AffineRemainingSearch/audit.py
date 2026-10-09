"""Exhaustive conditional branch audit; no selection and no theorem assertion."""
import hashlib
import importlib.util
import json
import sqlite3
import subprocess
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
spec=importlib.util.spec_from_file_location('oracle',R/'Row2925Detector/source_independent_audit.py')
a=importlib.util.module_from_spec(spec);spec.loader.exec_module(a)
source=json.loads((R/'AggregateDC2h6Conditional/source.json').read_text());blocks=source['blocks']
c=sqlite3.connect(f'file:{R}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
raw={rid:list(c.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=?',(rid,)).fetchone()) for rid in [2574,2695,2696,2697,2707,2708]}
assert raw[2574]==[2574,6,132,'0',None,9997]
assert raw[2696]==[2696,9,134,'3',None,9993]
assert raw[2697]==[2697,9,134,'1','0',9997]
assert raw[2708]==[2708,7,134,'0,1',None,9997]

def ev(w,v):return a.matmul(w['projection'],v,w['h'],w['m'],1)
def comparison(k,m,n,out,inc):
 args=list(map(str,[k,m,n]))+[''.join(str(int(x)) for x in xs) or '-' for xs in [out,inc]]
 run=subprocess.run([str(R/'PageTransitionCertificates/page-transition-export'),*args],capture_output=True,text=True,check=True)
 w=json.loads(run.stdout);a.wire_laws(w);return w

canonical=json.loads((R/'Row2574Detector/target.json').read_text());aggregate=blocks['S0:9,134:d2']['wire']
assert canonical['h']==aggregate['h']==3
branches=[]
for bit in [0,1]:
 coords=[0,bit,1];rep=a.matmul(canonical['inclusion'],coords,5,3,1);ag=ev(aggregate,rep)
 assert rep==[0,0,bit,1,0] and ag==[bit,1,0]
 # Outgoing on staircase basis (row2695,row2696,row2697) follows prior
 # zero detector, imported d7 prefix, and stored nonzero row2697 d3.
 outgoing=[0,0,1]
 w=comparison(1,3,1,outgoing,ag)
 named2696=[0,1,0];named2697=[0,0,1]
 assert w['h']==1 and not a.in_image(ag,3,1,named2697)
 assert a.matmul(outgoing,named2697,1,3,1)==[1]
 branch=dict(branch=bit,canonical_target_coordinates=coords,E2_representative=rep,E2_basis_ids=[row[0] for row,x in zip(c.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=9 AND t=134 ORDER BY id'),rep) if x],
  aggregate_incoming_coordinates=ag,complete_d3=w,
  event2697=dict(source_coordinates=named2697,target_coordinates=[1],finite_d3_value_valid=True),
  event2696=dict(raw_target=None,d3_cycle=True,E4_projection=ev(w,named2696),d3_boundary=a.in_image(ag,3,1,named2696)),
  stored_next_basis_coordinates=[[1,0,0],[0,1,0]],stored_next_basis_count=2,actual_E4_dimension=w['h'],
  stored_next_basis_independent=False)
 branches.append(branch)
 (P/f'branch2574-{bit}.json').write_text(json.dumps(w,sort_keys=True,separators=(',',':'))+'\n')
assert branches[0]['event2696']['d3_boundary'] and not branches[1]['event2696']['d3_boundary']

S=blocks['S0:7,134:d2']['wire'];T=blocks['S0:10,136:d2']['wire']
a.wire_laws(S);a.wire_laws(T)
survivor=ev(S,[0,0,1,0,0]);named=ev(S,[1,1,0,0,0])
assert survivor==[1,0] and named==[0,1] and T['h']==1
assert blocks['S0:4,132:d3']['wire']['outgoing']==[False,False]
choices=[]
for bit in [0,1]:
 # First column zero follows the later-page prefix of row2707; second
 # remains freely chosen unless complete E4 kernel semantics are supplied.
 w=comparison(1,2,1,[0,bit],[0,0]);proj=ev(w,survivor)
 complete=w['h']==1 and proj==[1]
 choices.append(dict(named_d3=bit,complete_d3=w,actual_E4_dimension=w['h'],stored_E4_basis_count=1,
  later_prefix_survivor_coordinates=survivor,full_staircase_kernel_semantics_consistent=complete))
 (P/f'branch2708-{bit}.json').write_text(json.dumps(w,sort_keys=True,separators=(',',':'))+'\n')
assert [x['full_staircase_kernel_semantics_consistent'] for x in choices]==[False,True]

claims=json.loads((R/'AllClaimTrajectoryAudit/claims.json').read_text())
inputs=[R/'AggregateDC2h6Conditional/source.json',R/'AggregateDC2h6Conditional/dag.json',R/'Row2574Detector/target.json',R/'Row2574Detector/Additional/Combined.lean',R/'AllClaimTrajectoryAudit/claims.json',R/'Row2708MapSearch/nonzero-source-constraints.json']
report=dict(schema='remaining_affine_branch_audit/v1',raw_rows=raw,row2574_branches=branches,
 row2708=dict(source_full_d2=S,target_full_d2=T,named_E3=named,survivor_E3=survivor,source_incoming_d3=blocks['S0:4,132:d3'],choices=choices,
  valid_conditional_conclusion='Under complete E4 kernel/boundary semantics for the displayed sole survivor and zero incoming d3, the entire 1D target forces d3(named)=1. NULL9997 alone supplies neither nonzero nor zero.'),
 conclusions=['Row2697 has the same known nonzero d3 in both exhaustive row2574 branches; each branch has a valid one-dimensional E4 comparison.',
  'Row2696 is a d3 boundary in branch0 and survives to E4 in branch1. Its stored d7 target is NULL, so no unconditional finite nonzero d7 event is exported.',
  'Both row2574 branches contradict treating the two displayed next-page staircase vectors as an independent complete basis; their true quotient has dimension1. A branch-aware quotient basis is required.',
  'Using global next-page staircase completeness without a separate semantic premise would erase an actual inconsistency. The row2708 uniqueness observation is conditional and must not be applied globally.'],
 input_sha256={str(f.relative_to(R)):a.sha(f) for f in inputs},database_sha256=a.sha(R/'upstream/kervaire-49/S0_AdamsSS_t261.db'),script_sha256=a.sha(Path(__file__)),
 no_unconditional_assignment=True,no_theorem_asserted=True)
(P/'audit.json').write_text(json.dumps(report,indent=2,sort_keys=True)+'\n')
print('Both affine branches checked:2697 value stable;2696 boundary differs;nextbasis2!=E4dim1. Row2708 uniquely nonzero only under explicit complete-kernel semantics.')
