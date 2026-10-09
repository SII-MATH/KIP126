"""Build only complete predecessor comparisons. Unknowns need a checked zero codomain."""
import json,subprocess
from pathlib import Path
P=Path(__file__).resolve().parent;R=P.parent
dag=json.loads((R/'AllClaimTrajectoryAudit/shared-dag.json').read_text());cache={};failures={};active=set();attempted=[]
def key(o,s,t,r):return f'{o}:{s},{t}:d{r}'
def deg(o,s,t):
 K=f'{o}:{s},{t}'
 if K not in dag['degrees']:raise ValueError('missing audited degree '+K)
 return dag['degrees'][K]
def raw(o,s,t):return deg(o,s,t)['staircase']
def e2(o,s,t):return deg(o,s,t)['e2']
def selected(o,s,t,r):return [x for x in raw(o,s,t) if r<=x[3]<5000 or 5000<=x[3]<=10000-r]
def bits(raw,n):
 if raw is None or raw in ['[NULL]','-1','?']:raise ValueError('unknown vector')
 ids=list(map(int,raw.split(','))) if raw else []
 if len(set(ids))!=len(ids) or any(i<0 or i>=n for i in ids):raise ValueError('invalid indices')
 return [int(i in ids) for i in range(n)]
def rows(cs,m):return [[v[i] for v in cs] for i in range(m)]
def cols(a,n):return [[row[j] for row in a] for j in range(n)]
def mul(a,b,n=0):return [[sum(x*y for x,y in zip(row,col))%2 for col in zip(*b)] for row in a] if b else [[0]*n for row in a]
def solve(cs,v):
 piv={}
 for j,col in enumerate(cs):
  a=col[:];q=[int(i==j) for i in range(len(cs))]
  for i in range(len(a)):
   if not a[i]:continue
   if i in piv:
    b,z=piv[i];a=[x^y for x,y in zip(a,b)];q=[x^y for x,y in zip(q,z)]
   else:piv[i]=(a,q);break
 q=[0]*len(cs);a=v[:]
 for i in range(len(a)):
  if a[i]:
   if i not in piv:raise ValueError('incomplete span')
   b,z=piv[i];a=[x^y for x,y in zip(a,b)];q=[x^y for x,y in zip(q,z)]
 return q
def project(o,s,t,r,v):
 if r==2:return v
 b=cache[key(o,s,t,r-1)];x=project(o,s,t,r-1,v)
 return [sum(a*b for a,b in zip(row,x))%2 for row in b['projection_rows']]
def dim(o,s,t,r):return len(e2(o,s,t)) if r==2 else cache[key(o,s,t,r-1)]['wire']['h']
def matrix(o,s,t,r,uses):
 k=dim(o,s+r,t+r-1,r);m=dim(o,s,t,r)
 if r==2:return rows([bits(x[2],k) for x in e2(o,s,t)],k)
 out=[]
 for rid,base,diff,level in selected(o,s,t,r):
  known=False
  if level==10000-r and diff is not None:rv=bits(diff,len(e2(o,s+r,t+r-1)));known=True;kind='stored_event'
  elif 2<=level<5000 or 9000<level<10000-r:rv=[0]*len(e2(o,s+r,t+r-1));known=True;kind='stored_zero_prefix_or_boundary'
  if known:v=project(o,s+r,t+r-1,r,rv)
  elif (o,s,t,r,rid,base,diff,level) in [('S0',15,139,3,3076,'1,3',None,9000),('S0',10,136,3,2858,'0',None,9000),('S0',17,140,3,3143,'0',None,9000)]:v=[0]*k;kind={3076:'conditional_ceta',2858:'conditional_leibniz',3143:'conditional_c2_successor'}[rid]
  elif k==0:v=[];kind='checked_zero_codomain'
  else:raise ValueError(f'unknown {key(o,s,t,r)}:row{rid}; target dimension {k}')
  uses.append(dict(object=o,source=[s,t],page=r,row=[rid,base,diff,level],kind=kind,target_predecessor=key(o,s+r,t+r-1,r-1)))
  if kind.startswith('conditional'):attempted.append(uses[-1])
  out.append(v)
 assert len(out)==m
 return rows(out,k)
def build(o,s,t,r):
 K=key(o,s,t,r)
 if K in cache:return cache[K]
 if K in failures:raise ValueError(failures[K])
 if K in active:raise ValueError('cyclic comparison')
 if K not in dag['blocks']:raise ValueError('degree outside audited DAG: '+K)
 active.add(K)
 try:
  if r>2:
   for a,b in [(s-r,t-r+1),(s,t),(s+r,t+r-1)]:build(o,a,b,r-1)
  m=dim(o,s,t,r);n=dim(o,s-r,t-r+1,r);k=dim(o,s+r,t+r-1,r);uses=[]
  outgoing=matrix(o,s,t,r,uses);incoming=matrix(o,s-r,t-r+1,r,uses)
  args=list(map(str,[k,m,n]))+[''.join(str(x) for row in a for x in row) or '-' for a in [outgoing,incoming]]
  proc=subprocess.run([str(R/'PageTransitionCertificates/page-transition-export'),*args],capture_output=True,text=True)
  if proc.returncode:raise ValueError(proc.stderr.strip())
  w=json.loads(proc.stdout);h=w['h'];oldP=[list(map(int,w['projection'][i*m:(i+1)*m])) for i in range(h)]
  chosen=[project(o,s,t,r,bits(x[1],len(e2(o,s,t)))) for x in selected(o,s,t,r+1)]
  if len(chosen)!=h:raise ValueError(f'selected dimension mismatch {len(chosen)} != homology {h}')
  I=rows(chosen,m);change=mul(oldP,I);inverse=rows([solve(cols(change,h),[int(i==j) for i in range(h)]) for j in range(h)],h);proj=mul(inverse,oldP,m)
  down=[list(map(int,w['down'][i*k:(i+1)*k])) for i in range(m)];ip=mul(I,proj,m);do=mul(down,outgoing,m);residual=[[int(i==j)^ip[i][j]^do[i][j] for j in range(m)] for i in range(m)];up=rows([solve(cols(incoming,n),v) for v in cols(residual,m)],n)
  w.update(inclusion=[bool(x) for row in I for x in row],projection=[bool(x) for row in proj for x in row],up=[bool(x) for row in up for x in row]);entry=dict(object=o,center=[s,t],page=r,wire=w,projection_rows=proj,uses=uses,predecessors=dag['blocks'][K]['predecessors']);cache[K]=entry;return entry
 except (ValueError,AssertionError) as e:failures[K]=str(e) or 'matrix dimension assertion';raise ValueError(failures[K])
 finally:active.remove(K)
candidates=[]
for rk,row in sorted(dag['rows'].items()):
 if not row['zero_target_candidate']:continue
 o=row['object'];s,t=row['target'];r=row['page'];item=dict(row_ref=rk,raw=row,target_predecessor=key(o,s,t,r-1))
 try:
  b=build(o,s,t,r-1)
  if b['wire']['h']!=0:raise ValueError('verified target is nonzero')
  item['status']='complete_zero_target'
 except ValueError as e:item.update(status='unresolved',reason=str(e))
 candidates.append(item)
# Inspect every audited subdependency even after another branch has failed.
for item in candidates:
 pending=[item['target_predecessor']];seen=set()
 while pending:
  K=pending.pop()
  if K in seen:continue
  seen.add(K);node=dag['blocks'][K];pending.extend(node['predecessors'])
  try:build(node['object'],*node['center'],node['page'])
  except ValueError:pass
def tag(K):return 'b_'+K.replace(':','_').replace(',','_').replace('-','neg')
def bl(a):return '['+','.join('true' if x else 'false' for x in a)+']'
lines=['import AllClaimC2ConditionalCertificates.Basic','namespace AllClaimC2ConditionalCertificates.Data','open LinearCertificates PageTransitionCertificates']
for K,b in sorted(cache.items(),key=lambda kv:(kv[1]['page'],kv[0])):
 w=b['wire'];N=tag(K);k,m,n,h=[w[x] for x in ['k','m','n','h']]
 lines += [f'def {N} : WireComparison := ⟨1,{k},{m},{n},{h},'+','.join(bl(w[f]) for f in ['outgoing','incoming','inclusion','projection','up','down'])+'⟩',f'theorem {N}_complete : {N}.Valid := by lin_cert using ()']
 if h==0:lines += [f'theorem {N}_zero (x : Homology (matrixOf {k} {m} {N}.outgoing) (matrixOf {m} {n} {N}.incoming)) : x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := zero_quotient {N}.comparison {N}_complete.2 x']
def expr(o,s,t,r,v):
 e='(fun i => ('+bl(v)+' : List Bool)[i.val]!)'
 for page in range(2,r):e=f'(eval {tag(key(o,s,t,page))}.comparison.projection {e})'
 return e
for K,b in sorted(cache.items(),key=lambda kv:(kv[1]['page'],kv[0])):
 o=b['object'];s,t=b['center'];r=b['page'];w=b['wire'];N=tag(K);m=w['m']
 for j,row in enumerate(selected(o,s,t,r+1)):
  v=expr(o,s,t,r,bits(row[1],len(e2(o,s,t))))
  lines.append(f'theorem {N}_representative_{j} : ∀ i : Fin {m}, {N}.comparison.inclusion i ⟨{j},by decide⟩ = {v} i := by decide')
 if r>2:
  for a,bb,field,targetS,targetT,targetDim,sourceDim in [(s,t,'outgoing',s+r,t+r-1,w['k'],m),(s-r,t-r+1,'incoming',s,t,m,w['n'])]:
   for j,row in enumerate(selected(o,a,bb,r)):
    rid,base,diff,level=row
    if level==10000-r and diff is not None:rv=bits(diff,len(e2(o,targetS,targetT)))
    elif 2<=level<5000 or 9000<level<10000-r:rv=[0]*len(e2(o,targetS,targetT))
    elif rid in [3076,2858,3143] and r==3 and o=='S0':
     lines.append(f'theorem {N}_{field}_row{rid}_conditional_column : ∀ i : Fin {targetDim}, matrixOf {targetDim} {sourceDim} {N}.{field} i ⟨{j},by decide⟩ = zero i := by decide')
     continue
    else:
     assert targetDim==0
     lines.append(f'theorem {N}_{field}_row{rid}_zero_target : {tag(key(o,targetS,targetT,r-1))}.h = 0 := by decide')
     continue
    v=expr(o,targetS,targetT,r,rv)
    lines.append(f'theorem {N}_{field}_row{rid}_projection : ∀ i : Fin {targetDim}, matrixOf {targetDim} {sourceDim} {N}.{field} i ⟨{j},by decide⟩ = {v} i := by decide')
 src=key(o,s-r,t-r+1,r)
 if src in cache:lines.append(f'theorem {N}_incoming_link : {N}.incoming = {tag(src)}.outgoing := by decide')
for j,item in enumerate(candidates):
 if item['status']!='complete_zero_target':continue
 N=tag(item['target_predecessor']);w=cache[item['target_predecessor']]['wire'];k,m,n=[w[x] for x in ['k','m','n']]
 lines.append(f'theorem candidate{j}_differential_zero {{X : Type}} (d : X → Homology (matrixOf {k} {m} {N}.outgoing) (matrixOf {m} {n} {N}.incoming)) (x : X) : d x = Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _) := differential_to_zero {N}.comparison {N}_complete.2 d x')
lines+=['end AllClaimC2ConditionalCertificates.Data'];(P/'Data.lean').write_text('\n'.join(lines)+'\n');(P/'source.json').write_text(json.dumps(dict(database_sha256=dag['summary']['database_sha256'],candidates=candidates,blocks=cache,failures=failures,attempted_overrides=attempted),indent=2)+'\n');print('candidates',len(candidates),'certified',sum(x['status']=='complete_zero_target' for x in candidates),'comparisons',len(cache),'unresolved',[x['row_ref'] for x in candidates if x['status']=='unresolved'])
