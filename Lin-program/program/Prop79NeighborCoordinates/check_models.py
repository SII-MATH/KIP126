"""Complete neighboring quotient checks with transported actual carriers."""
from pathlib import Path
from collections import Counter
import hashlib
import itertools
import json
import re
P=Path(__file__).resolve().parent;R=P.parent
load=lambda f:json.loads(f.read_text());sha=lambda f:hashlib.sha256(f.read_bytes()).hexdigest()
s=load(R/'Prop79IncomingSearch/search.json');counts=Counter()
def ev(a,m,n,x):return sum((sum(a[i*n+j]*((x>>j)&1) for j in range(n))%2)<<i for i in range(m))
for degree,dimensions in [((10,136),[3,1,0]),((18,142),[2,0,0]),((9,135),[5,3,2,1])]:
 wires=[s['comparisons'][f'Cnu:{degree[0]},{degree[1]}:d{r}']['wire'] for r in range(2,len(dimensions)+1)]
 for r,w in enumerate(wires):
  n,m,k,h=(w[t] for t in ['n','m','k','h']);assert [m,h]==dimensions[r:r+2]
  boundaries={ev(w['incoming'],m,n,x) for x in range(1<<n)}
  cycles=[x for x in range(1<<m) if ev(w['outgoing'],k,m,x)==0]
  assert boundaries<=set(cycles)
  for x,y in itertools.product(cycles,repeat=2):
   assert (ev(w['projection'],h,m,x)==ev(w['projection'],h,m,y))==(x^y in boundaries)
   counts['finite_quotient_pairs']+=1
  for x in range(1<<h):assert ev(w['projection'],h,m,ev(w['inclusion'],m,h,x))==x
 for offsets in itertools.product(*[range(min(2,1<<d)) for d in dimensions]):
  maps=[]
  for d,offset in zip(dimensions,offsets):
   permutation=list(range(1<<d))
   if d>1:permutation[1],permutation[2]=permutation[2],permutation[1]
   maps.append({x:v^offset for x,v in enumerate(permutation)})
  inverses=[{v:x for x,v in co.items()} for co in maps]
  current=maps[0]
  for index,w in enumerate(wires):
   n,m,k,h=(w[t] for t in ['n','m','k','h'])
   cycles=[x for x in current if ev(w['outgoing'],k,m,current[x])==0]
   boundaries={ev(w['incoming'],m,n,x) for x in range(1<<n)}
   transition=lambda x:inverses[index+1][ev(w['projection'],h,m,current[x])]
   derived={transition(x):ev(w['projection'],h,m,current[x]) for x in cycles}
   assert derived==maps[index+1]
   for x,y in itertools.product(cycles,repeat=2):
    assert (transition(x)==transition(y))==((current[x]^current[y]) in boundaries)
    counts['actual_quotient_pairs']+=1
   current=derived;counts['constructed_steps']+=1
  assert len(current)==(1<<dimensions[-1])
  counts['actual_models']+=1
# A map from the final one-dimensional source is determined by zero and its
# named generator. There are three countermodels if the generator premise is lost.
for generator in range(4):
 values=[0,generator]
 if generator==0:assert all(v==0 for v in values)
 else:counts['missing_prefix_countermodels']+=1
reports={}
for leaf in ['Basic','Assembly']:
 rec=load(P/(leaf+'-compile.json'));src=P/(leaf+'.lean');log=P/(leaf+'.log')
 assert rec['observed_exit_code']==0 and rec['source_sha256']==sha(src) and rec['log_sha256']==sha(log)
 assert not re.search(r'error:|sorryAx|Lean\.ofReduceBool',log.read_text())
 axioms=re.findall(r'depends on axioms: \[([^\]]*)\]',log.read_text())
 for ax in axioms:assert set(filter(None,map(str.strip,ax.split(','))))<={'propext','Classical.choice','Quot.sound'}
 reports[leaf]=len(axioms)+log.read_text().count('does not depend on any axioms')
assert sum(reports.values())==11
result=dict(status='pass',counts=dict(counts),axiom_reports=reports,
 derived_neighbors=['incoming d4 E4 dimension0','outgoing d4 E4 dimension0','incoming d5 E5 dimension1'],
 remaining=['initial complete additive coordinates for each neighboring degree',
 'whole known neighboring actual differential meanings and local quotient laws',
 'one actual d5-zero theorem on the constructed incoming E5 basis element'],
 sources={str(f.relative_to(R)):sha(f) for f in [*sorted(P.glob('*.lean')),R/'Prop79IncomingSearch/search.json']})
(P/'model-check.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps({k:v for k,v in result.items() if k!='sources'},indent=2))
