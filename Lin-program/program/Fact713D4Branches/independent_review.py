"""Second-reader check of separate branch families and their common named path."""
import json,hashlib,re
from pathlib import Path
HERE=Path(__file__).resolve().parent;ROOT=HERE.parent
load=lambda p:json.loads(p.read_text());sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
base=load(ROOT/'Fact713DC2h6ComparisonFamily/family.json')['entries']
key=lambda e:tuple(e['key'][k] for k in ['object','page','s','t'])
def ev(bits,m,n,v):
 return sum((sum(bool(bits[i*n+j]) and bool(v&(1<<j)) for j in range(n))%2)<<i for i in range(m))
def check(w):
 k,m,n,h=[w[x] for x in ['k','m','n','h']]
 A=lambda x:ev(w['outgoing'],k,m,x);B=lambda x:ev(w['incoming'],m,n,x)
 P=lambda x:ev(w['projection'],h,m,x);I=lambda x:ev(w['inclusion'],m,h,x)
 U=lambda x:ev(w['up'],n,m,x);D=lambda x:ev(w['down'],m,k,x)
 image={B(x) for x in range(1<<n)};cycles=[x for x in range(1<<m) if A(x)==0]
 assert all(A(x)==0 and P(x)==0 for x in image)
 for x in range(1<<h):assert A(I(x))==0 and P(I(x))==x
 for x in range(1<<m):assert I(P(x))^B(U(x))^D(A(x))==x
 for x in cycles:
  for y in cycles:assert (P(x)==P(y))==(x^y in image)
 return len(cycles)**2
families={};branches=[]
for label,file,expected in [('zero','zero-family.json',1283),('residual_rebased','residual-family.json',1284)]:
 es=load(HERE/file)['entries'];assert es[:1272]==base and len(es)==expected
 f={key(e):e['wire'] for e in es};assert len(f)==len(es);families[label]=f
 source=load(HERE/'branches'/f'{label}.json')
 assert len(source['new_comparisons'])==expected-1272
 assert {f'{o}:{s},{t}:d{r}':w for (o,r,s,t),w in f.items() if (o,r,s,t) not in {key(e) for e in base}}=={k:v['wire'] for k,v in source['new_comparisons'].items()}
 pairs=adjacent=consecutive=0
 for (o,r,s,t),w in f.items():
  pairs+=check(w)
  other=f.get((o,r,s+r,t+r-1))
  if other is not None:assert (w['k'],w['m'],w['outgoing'])==(other['m'],other['n'],other['incoming']);adjacent+=1
  nxt=f.get((o,r+1,s,t))
  if nxt is not None:assert w['h']==nxt['m'];consecutive+=1
 v=3
 for r in range(2,8):
  w=f['S0',r,9,132]
  assert ev(w['outgoing'],w['k'],w['m'],v)==0
  assert v not in {ev(w['incoming'],w['m'],w['n'],x) for x in range(1<<w['n'])}
  v=ev(w['projection'],w['h'],w['m'],v)
 assert v==1 and ('S0',8,9,132) not in f
 assert source['new_comparisons']['S0:17,138:d3']['uses'][0]['row']==[2994,'0,1,2',None,9000]
 branches.append(dict(branch=label,count=expected,cyclepairs=pairs,adjacent=adjacent,consecutive=consecutive,raw_unknown_preserved=True))
assert all(families['zero']['S0',r,9,132]==families['residual_rebased']['S0',r,9,132] for r in range(2,8))
assert families['zero']['S0',3,17,138]['outgoing']==[False,False]
assert families['residual_rebased']['S0',3,17,138]['outgoing']==[True,False]
compiled={};reports=0
for name in ['ZeroData','ZeroExtra','ZeroCross','ZeroCoherence','Branches']:
 rec=load(HERE/f'{name}-compile.json');src=HERE/f'{name}.lean';log=HERE/f'{name}.log'
 assert rec['observed_exit_code']==0 and rec['source_sha256']==sha(src) and rec['log_sha256']==sha(log)
 for a in re.findall(r"'[^']+' depends on axioms: \[([^\]]*)\]",log.read_text()):
  assert set(map(str.strip,a.split(',')))<={'propext','Classical.choice','Quot.sound'};reports+=1
 reports+=len(re.findall(r"'[^']+' does not depend on any axioms",log.read_text()))
 assert 'sorryAx' not in log.read_text();compiled[name]=rec
result=dict(status='no_correctness_findings',branches=branches,compiled=compiled,axiom_reports=reports,
 common_named_d2_d7=True,actual_branch_selection=False,scope='Two separate coherent finite families; their shared named path reaches E8, while complete actual map meanings remain premises.')
(HERE/'independent-review.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps({k:v for k,v in result.items() if k!='compiled'},indent=2))
