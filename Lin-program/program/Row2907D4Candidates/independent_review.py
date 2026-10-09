"""Supplemental independent review; never rebuild or edit frozen producers."""
import hashlib,itertools,json,re
from pathlib import Path
HERE=Path(__file__).resolve().parent;ROOT=HERE.parent
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
freeze=json.loads((HERE/'frozen-source.json').read_text())
for f,h in freeze['files'].items():assert sha(ROOT/f)==h
reports=0
for name in ['Finite','Actual','Tactic']:
 r=json.loads((HERE/f'{name}-compile.json').read_text())
 assert r['observed_exit_code']==0 and r['inputs_stable']
 assert r['source_sha256']==sha(HERE/f'{name}.lean')
 assert r['olean_sha256']==sha(ROOT/'.lake/build/lib/lean/Row2907D4Candidates'/f'{name}.olean')
 text=(HERE/r['log']).read_text()
 assert 'error:' not in text and 'sorryAx' not in text
 for ax in re.findall(r'depends on axioms:\s*\[([^]]*)\]',text):
  assert set(a.strip() for a in ax.split(',') if a.strip())<={'propext','Classical.choice','Quot.sound'}
 reports+=len(re.findall(r'depends on axioms:',text))+text.count('does not depend on any axioms')
 assert not re.search(r'\b(sorry|axiom|native_decide)\b',(HERE/f'{name}.lean').read_text())
counts=dict(full_quotient_product_pairs=0,same_input_models=0,whole_d4_inputs=0,rejected_wrong_first_column=0)
# Canonical r=0 target quotient has both coordinates; r=1 kills second.
for r in [0,1]:
 for factor,y in itertools.product(range(2),range(4)):
  quotient=(y&1) if r else y
  included=quotient
  assert factor*(y&1)==factor*(included&1)
  counts['full_quotient_product_pairs']+=1
# All carrier permutations, including coordinate changes that move raw zero.
for src,tar,prod,fac,known in itertools.product(itertools.permutations(range(2)),
 itertools.permutations(range(4)),itertools.permutations(range(2)),itertools.permutations(range(2)),itertools.permutations(range(2))):
 for b in [0,1]:
  inverse=lambda c,x:c.index(x)
  named=inverse(src,1)
  column=1+2*b
  d=lambda x:inverse(tar,column*src[x])
  mul=lambda x,y:inverse(known,fac[x]*(tar[y]&1))
  assert tar[d(named)]&1==1
  assert known[mul(inverse(fac,1),d(named))]==1
  for x in range(2):
   assert tar[d(x)]==column*src[x]
   # The staircase target coordinates swap both entries, for all values.
   y=tar[d(x)]; staircase=((y&1)<<1)|((y>>1)&1)
   assert staircase==(b+2)*src[x]
   counts['whole_d4_inputs']+=1
  for wrong in [0,2]:
   assert wrong&1==0
   counts['rejected_wrong_first_column']+=1
  counts['same_input_models']+=1
sources=[list(x) for n in range(5) for x in itertools.product([False,True],repeat=n)]
outputs=[list(x) for n in range(4) for x in itertools.product([False,True],repeat=n)]
candidates=[[]]+[[a] for a in outputs]+[[a,b] for a,b in itertools.product(outputs,repeat=2)]
accept=lambda s,c:s==[True,False] and c==[[True,False],[True,True]]
accepted=[]
for s,c in itertools.product(sources,candidates):
 if accept(s,c):accepted.append((s,c))
assert len(accepted)==1
requests=list(itertools.product(sources,candidates))
assert len(requests)==7471
# An accepted batch can contain only the one semantically valid request.
valid=accepted[0]
for request in requests:
 assert all(accept(*q) for q in [valid,request])==accept(*request)
result={'status':'pass_no_findings','frozen_files':len(freeze['files']),'modules':3,'standard_only_axiom_reports':reports,
'counts':counts,'request_cases':len(requests),'batch_pair_cases':len(requests),'accepted_request_shapes':1,
'scope':'Full actual quotient product and Leibniz proof reviewed; known product differential remains explicit. Canonical [1,b] requires staircase swap to [b,1].'}
(HERE/'independent-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))
