"""Independent full-family quotient and adjacency audit."""
import hashlib
import itertools
import json
from pathlib import Path

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
load=lambda p:json.loads(p.read_text())
sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest()
def columns(w,field,rows,cols):
 bits=w[field];assert len(bits)==rows*cols
 return [sum(int(bits[i*cols+j])<<i for i in range(rows)) for j in range(cols)]
def apply(cols,x):
 out=0
 for j,v in enumerate(cols):
  if x>>j&1:out^=v
 return out
def quotient(w):
 k,m,n,h=(w[x] for x in ['k','m','n','h'])
 a,b,u,p,up,down=[columns(w,f,r,c) for f,r,c in [('outgoing',k,m),('incoming',m,n),
  ('inclusion',m,h),('projection',h,m),('up',n,m),('down',m,k)]]
 boundaries={apply(b,x) for x in range(1<<n)}
 cycles=[x for x in range(1<<m) if apply(a,x)==0]
 assert boundaries<=set(cycles)
 for j,col in enumerate(u):assert apply(a,col)==0 and apply(p,col)==1<<j
 for j in range(m):assert apply(u,p[j])^apply(b,up[j])^apply(down,a[j])==1<<j
 for x,y in itertools.product(cycles,repeat=2):assert (apply(p,x)==apply(p,y))==((x^y) in boundaries)
 return len(cycles)**2
key=lambda e:tuple(e['key'][x] for x in ['object','page','s','t'])
results=[]
for case in ['zero_b0','zero_b1']:
 prior=load(ROOT/'Fact713Row2693Continuation'/f'{case}-family.json')['entries']
 entries=load(HERE/f'{case}-family.json')['entries'];by={key(e):e for e in entries}
 assert len(by)==len(entries)==1431 and entries[:len(prior)]==prior and len(prior)==1413
 report=load(HERE/'branches'/f'{case}.json')
 assert len(report['added_to_previous'])==18
 assert report['predecessor_closure_added']==['S0:10,135:d3','S0:7,133:d2']
 old=load(ROOT/'Fact713Row2693Continuation/branches'/f'{case}.json')
 assert all(report['new_comparisons'][k]==v for k,v in old['new_comparisons'].items())
 source=by['S0',4,14,138]['wire'];target=by['S0',4,18,141]['wire']
 assert (source['k'],source['m'],source['n'],source['h'])==(1,1,0,1)
 assert source['outgoing']==[False] and source['projection']==[True]
 assert target['incoming']==[False] and target['h']==1
 assert by['S0',3,14,138]['wire']==load(ROOT/'Row3005D4Search/wire/sphere3.json')
 assert by['S0',2,10,135]['wire']==load(HERE/'source-wire/incoming2.json')
 assert by['S0',2,19,141]['wire']==load(HERE/'source-wire/target2.json')
 assert by['S0',2,19,141]['wire']['h']==0
 uses=report['added_to_previous']['S0:14,138:d4']['uses']
 assert uses[0]['row']==[3005,'2',None,9000]
 assert uses[0]['kind']=='conditional_row3005_whole_C2_topcell_d4_zero'
 pairs=sum(quotient(e['wire']) for e in entries)
 adjacent=consecutive=full_predecessor_checks=0
 for e in entries:
  obj,r,s,t=key(e);w=e['wire'];upper=by.get((obj,r,s+r,t+r-1));nxt=by.get((obj,r+1,s,t))
  if r>2:
   for field,ss,tt in [('m',s,t),('n',s-r,t-r+1),('k',s+r,t+r-1)]:
    assert (obj,r-1,ss,tt) in by, (key(e),field,ss,tt)
    assert w[field]==by[obj,r-1,ss,tt]['wire']['h'], (key(e),field)
    full_predecessor_checks+=1
  if upper:
   v=upper['wire'];assert (w['k'],w['m'],w['outgoing'])==(v['m'],v['n'],v['incoming']);adjacent+=1
  if nxt:assert w['h']==nxt['wire']['m'];consecutive+=1
 value=3
 for page in range(2,11):
  w=by['S0',page,9,132]['wire']
  assert apply(columns(w,'outgoing',w['k'],w['m']),value)==0
  assert value not in {apply(columns(w,'incoming',w['m'],w['n']),v) for v in range(1<<w['n'])}
  value=apply(columns(w,'projection',w['h'],w['m']),value)
 assert value==1 and ('S0',11,9,132) not in by
 assert report['named_trajectory'][-1]==dict(page=11,status='unresolved',
  reason='unknown S0:6,132:d3:row2574; target dimension 3')
 raw=4
 for page in range(2,5):
  w=by['S0',page,14,138]['wire']
  assert apply(columns(w,'outgoing',w['k'],w['m']),raw)==0
  assert raw not in {apply(columns(w,'incoming',w['m'],w['n']),v) for v in range(1<<w['n'])}
  raw=apply(columns(w,'projection',w['h'],w['m']),raw)
 assert raw==1
 results.append(dict(case=case,entries=len(entries),new=18,quotient_cycle_pairs=pairs,
  full_predecessor_checks=full_predecessor_checks,
  adjacent=adjacent,consecutive=consecutive,main_nonzero_page=11,row3005_nonzero_page=5,
  next_blocker='S0:6,132:d3:row2574; target dimension 3'))
out=dict(status='passed',branches=results,audit_source_sha256=sha(Path(__file__)),
 scope='Every full finite quotient and adjacency, exact inherited families, whole row3005 map from C2 top-cell naturality, both original named trajectories. Actual meanings remain explicit.')
(HERE/'audit.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out,indent=2))
