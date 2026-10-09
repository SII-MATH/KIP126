"""Independent exact imports, branch completeness and complete-kernel audit."""
import hashlib
import importlib.util
import itertools
import json
import sqlite3
import subprocess
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
spec=importlib.util.spec_from_file_location('oracle',R/'Row3147MapSearch/review.py');a=importlib.util.module_from_spec(spec);spec.loader.exec_module(a)
files=[P/'audit.json']+sorted(P.glob('branch*.json'))+sorted(P.glob('d2*.json'))+sorted(P.glob('event2697*.json'))+[P/'Data.lean']
before={p.name:sha(p) for p in files}
subprocess.run(['python3',str(P/'audit.py')],check=True)
subprocess.run(['python3',str(P/'generate.py')],check=True)
assert before=={p.name:sha(p) for p in files}
report=json.loads((P/'audit.json').read_text());agg=json.loads((R/'AggregateDC2h6Conditional/source.json').read_text())['blocks']
c=sqlite3.connect(f'file:{R}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
for rid,raw in report['raw_rows'].items():assert raw==list(c.execute('SELECT id,s,t,base,diff,level FROM S0_AdamsE2_ss WHERE id=?',(int(rid),)).fetchone())
for p in sorted(P.glob('branch*.json'))+sorted(P.glob('d2*.json')):
 w=json.loads(p.read_text());a.check_wire(w)
 assert p.read_text()==json.dumps(w,sort_keys=True,separators=(',',':'))+'\n'
for name,s,t in [('d2source2697',9,134),('d2target2697',12,136),('d2source2708',7,134),('d2target2708',10,136)]:
 w=json.loads((P/f'{name}.json').read_text());assert w==agg[f'S0:{s},{t}:d2']['wire']
 groups=[c.execute('SELECT id,mon,d2 FROM S0_AdamsE2_basis WHERE s=? AND t=? ORDER BY id',st).fetchall() for st in [(s-2,t-1),(s,t),(s+2,t+1)]]
 assert list(map(len,groups))==[w['n'],w['m'],w['k']]
 for field,rows,dim in [('incoming',groups[0],w['m']),('outgoing',groups[1],w['k'])]:
  cols=[]
  for _,_,raw in rows:
   assert raw is not None
   ids=[] if raw=='' else list(map(int,raw.split(',')));assert ids==sorted(set(ids)) and all(0<=i<dim for i in ids);cols.append(ids)
  assert w[field]==[i in col for i in range(dim) for col in cols]
for b in [0,1]:
 w=json.loads((P/f'branch2574-{b}.json').read_text());assert w['incoming']==[bool(b),True,False]
 assert w['outgoing']==[False,False,True] and w['h']==1
 f=json.loads((P/f'event2697-branch{b}.json').read_text());assert f['event']==w
 for side in ['source','target']:
  v=f['raw'+side.title()]
  assert len(f[side+'Stages'])==1
  st=f[side+'Stages'][0];a.check_wire(st['wire']);sw=st['wire'];assert st['representative']==v
  assert not any(a.matmul(sw['outgoing'],v,sw['k'],sw['m'],1))
  assert a.matmul(sw['projection'],v,sw['h'],sw['m'],1)==f[side] and any(f[side])
 assert a.matmul(w['outgoing'],f['source'],1,3,1)==f['target']==[True]
assert [list(v) for v in itertools.product([0,1],repeat=3) if v[0]==0 and v[2]==1]==[[0,0,1],[0,1,1]]
for bit in [0,1]:
 w=json.loads((P/f'branch2708-{bit}.json').read_text())
 kernel=[list(v) for v in itertools.product([0,1],repeat=2) if not any(a.matmul(w['outgoing'],v,1,2,1))]
 supplied_span=[[0,0],[1,0]]
 assert (kernel==supplied_span)==bool(bit)
 # Raw unknown value remains NULL for both mutually exclusive completions.
 assert report['raw_rows']['2708'][4] is None
result=dict(status='independent_full_branch_and_raw_input_audit_passed',finite_events=2,exhaustive_affine_branches=2,full_d2_comparisons=4,branch_comparisons=4,
 compatible_with_complete_kernel=[1],raw_unknowns_preserved=True,generated_sha256=before,
 source_sql_sha256=sha(R/'upstream/kervaire-49/S0_AdamsSS_t261.db'),
 input_sha256={str(p.relative_to(R)):sha(p) for p in [R/'AggregateDC2h6Conditional/source.json',R/'Row2574Detector/target.json',R/'Row2574Detector/Additional/Combined.lean']},
 scripts_sha256={n:sha(P/n) for n in ['audit.py','generate.py','review.py']},
 limitations='Two2697 finite proofs share explicit basis-value premises.2696 has incompatible branch behavior and NULLd7target.2708 requires completekernel semantic premise, which is not inferred from rawNULL9997.')
(P/'review.json').write_text(json.dumps(result,indent=2,sort_keys=True)+'\n')
print('Two exhaustive branch2697 certificates, four full d2 comparisons, exact raw identities and conditional kernel uniqueness reviewed')
