"""Generate recursive finite comparisons; fail on unknown event or incomplete span."""
import sqlite3,json,subprocess,hashlib
from pathlib import Path
P=Path(__file__).resolve().parent; R=P.parent
c=sqlite3.connect(f'file:{R}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
needed=set(); records={}; cache={}
def ss(s,t):return c.execute('select id,base,diff,level from S0_AdamsE2_ss where s=? and t=? order by id',(s,t)).fetchall()
def e2(s,t):return c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',(s,t)).fetchall()
def selected(s,t,r):return [x for x in ss(s,t) if r<=x[3]<5000 or 5000<=x[3]<=10000-r]
def add(s,t,r):
 if r<2 or (s,t,r) in needed:return
 needed.add((s,t,r))
 for a,b in [(s-r,t-r+1),(s,t),(s+r,t+r-1)]:add(a,b,r-1)
for r in range(2,6):add(8,130,r)
def ident(n):return [[int(i==j) for j in range(n)] for i in range(n)]
def mul(a,b,n=0):return [[sum(x*y for x,y in zip(row,col))%2 for col in zip(*b)] for row in a] if b else [[0]*n for row in a]
def bits(raw,n):
 if raw is None:raise ValueError('unknown event')
 a=[0]*n
 for i in map(int,raw.split(',')) if raw else []:a[i]=1
 return a
def solve(cols,v):
 piv={}
 for j,col in enumerate(cols):
  a=col[:];q=[int(i==j) for i in range(len(cols))]
  for i in range(len(a)):
   if not a[i]:continue
   if i in piv:
    b,z=piv[i];a=[x^y for x,y in zip(a,b)];q=[x^y for x,y in zip(q,z)]
   else:piv[i]=(a,q);break
 q=[0]*len(cols);a=v[:]
 for i in range(len(a)):
  if a[i]:
   if i not in piv:raise ValueError('incomplete span')
   b,z=piv[i];a=[x^y for x,y in zip(a,b)];q=[x^y for x,y in zip(q,z)]
 return q
def cols(a,n):return [[row[j] for row in a] for j in range(n)]
def rows(cs,m):return [[v[i] for v in cs] for i in range(m)]
def project(s,t,r,v):
 if r==2:return v
 w=cache[s,t,r-1];x=project(s,t,r-1,v)
 return [sum(a*b for a,b in zip(row,x))%2 for row in w['P']]
def dim(s,t,r):return len(e2(s,t)) if r==2 else len(selected(s,t,r))
def matrix(s,t,r):
 k=dim(s+r,t+r-1,r);m=dim(s,t,r)
 if r==2:return rows([bits(x[2],k) for x in e2(s,t)],k)
 out=[]
 for _,base,diff,level in selected(s,t,r):
  if level==10000-r:raw=bits(diff,len(e2(s+r,t+r-1)))
  elif level<5000 or 9000<level<10000-r:raw=[0]*len(e2(s+r,t+r-1))
  else:raise ValueError(f'blocked: source ({s},{t}), page {r}, row {_}, level {level}, diff {diff!r}; sentinel is unknown')
  out.append(project(s+r,t+r-1,r,raw))
 return rows(out,k)
def flat(a):return [bool(x) for row in a for x in row]
def listlean(a):return '['+','.join('true' if x else 'false' for x in a)+']'
def name(s,t,r):return f'b{s}_{t}_{r}'.replace('-', 'neg')
def expr(s,t,r,raw):
 e='(fun i => ('+listlean(raw)+' : List Bool)[i.val]!)'
 for page in range(2,r):e=f'(eval {name(s,t,page)}.comparison.projection {e})'
 return e
lines=['import NamedPageComparison.Fact761D3','import Fact719PageCertificates.Survivor','namespace Fact719TrajectoryCertificates','open NamedPageComparison','open LinearCertificates PageTransitionCertificates', 'def queryStored (n : Nat) (row : Fact761D3.ImportedRow) (page : Nat) : Option (Vec n) := match PropagationCertificates.decodeLevel row.level with | some (.outgoing eventPage) => if 2 ≤ page ∧ page < eventPage then some (fun _ => false) else if page = eventPage then row.diff.map (fun entries i => entries.contains i.val) else none | _ => none']
for s,t,r in sorted(needed,key=lambda x:(x[2],x[0],x[1])):
 m=dim(s,t,r);n=dim(s-r,t-r+1,r);k=dim(s+r,t+r-1,r)
 out=matrix(s,t,r);inc=matrix(s-r,t-r+1,r)
 args=list(map(str,[k,m,n]))+[''.join(str(x) for row in a for x in row) or '-' for a in [out,inc]]
 w=json.loads(subprocess.check_output([str(R/'PageTransitionCertificates/page-transition-export'),*args],text=True));h=w['h']
 oldI=[list(map(int,w['inclusion'][i*h:(i+1)*h])) for i in range(m)]
 oldP=[list(map(int,w['projection'][i*m:(i+1)*m])) for i in range(h)]
 chosen=[project(s,t,r,bits(x[1],len(e2(s,t)))) for x in selected(s,t,r+1)]
 assert len(chosen)==h
 I=rows(chosen,m);change=mul(oldP,I);changeCols=cols(change,h)
 inverse=rows([solve(changeCols,[int(i==j) for i in range(h)]) for j in range(h)],h)
 Pmat=mul(inverse,oldP,m)
 # Solve homotopy residual with incoming; keep original down and recompute up.
 down=[list(map(int,w['down'][i*k:(i+1)*k])) for i in range(m)]
 ip=mul(I,Pmat,m);do=mul(down,out,m)
 residual=[[int(i==j)^ip[i][j]^do[i][j] for j in range(m)] for i in range(m)]
 up=rows([solve(cols(inc,n),v) for v in cols(residual,m)],n)
 w.update(inclusion=flat(I),projection=flat(Pmat),up=flat(up));cache[s,t,r]={'P':Pmat,'w':w}
 tag=name(s,t,r);records[tag]={'center':[s,t,r],'e2':{str((a,b)):e2(a,b) for a,b in [(s-r,t-r+1),(s,t),(s+r,t+r-1)]},'raw':{str((a,b)):ss(a,b) for a,b in [(s-r,t-r+1),(s,t),(s+r,t+r-1)]},'wire':w}
 lines += [f'def {tag} : WireComparison := ⟨1,{k},{m},{n},{h},'+','.join(listlean(w[f]) for f in ['outgoing','incoming','inclusion','projection','up','down'])+'⟩',f'theorem {tag}_complete : {tag}.Valid := by lin_cert using ()']
 # Every selected next-page representative uses the preceding quotient projection.
 for j,row in enumerate(selected(s,t,r+1)):
  v=expr(s,t,r,bits(row[1],len(e2(s,t))))
  lines.append(f'theorem {tag}_representative_{j} : ∀ i : Fin {m}, {tag}.comparison.inclusion i ⟨{j},by decide⟩ = {v} i := by decide')
 if r>2:
  for a,b,field,targetS,targetT,targetDim,sourceDim in [(s,t,'outgoing',s+r,t+r-1,k,m),(s-r,t-r+1,'incoming',s,t,m,n)]:
   for j,row in enumerate(selected(a,b,r)):
    rawlevel=row[3]
    diff='none' if row[2] is None else 'some ['+row[2]+']'
    rowname=f'{tag}_{field}_row_{j}'
    lines.append(f'def {rowname} : Fact761D3.ImportedRow := ⟨{row[0]},[{row[1]}],{rawlevel},{diff}⟩')
    # Incoming rows are already boundaries and represent zero. Their chosen
    # coordinate survives only as an incoming-event row at this page.
    if rawlevel<5000:
     lines.append(f'theorem {rowname}_boundary : PropagationCertificates.decodeLevel {rawlevel} = some (.incoming {rawlevel}) := by decide')
     raw=[0]*len(e2(targetS,targetT));v=expr(targetS,targetT,r,raw)
     lines.append(f'theorem {rowname}_column : ∀ i : Fin {targetDim}, matrixOf {targetDim} {sourceDim} {tag}.{field} i ⟨{j},by decide⟩ = {v} i := by decide')
    else:
     transported='v'
     for page in range(2,r): transported=f'(eval {name(targetS,targetT,page)}.comparison.projection {transported})'
     lines.append(f'theorem {rowname}_column : ∀ i : Fin {targetDim}, (queryStored {len(e2(targetS,targetT))} {rowname} {r}).map (fun v => {transported} i) = some (matrixOf {targetDim} {sourceDim} {tag}.{field} i ⟨{j},by decide⟩) := by decide')
# Incoming matrix at each center is exactly its source's constructed outgoing.
for s,t,r in sorted(needed):
 src=(s-r,t-r+1,r)
 if src in needed:
  lines.append(f'theorem {name(s,t,r)}_incoming_link : {name(s,t,r)}.incoming = {name(*src)}.outgoing := by decide')
vec=[1];st=[]
for r in range(2,6):
 w=cache[8,130,r];st.append('⟨'+name(8,130,r)+','+listlean(vec)+'⟩');vec=[sum(a*b for a,b in zip(row,vec))%2 for row in w['P']]
lines += ['def stages : List Stage := ['+','.join(st)+']','theorem named_finite_E6 : TrajectoryValid stages := by lin_cert using ()','end Fact719TrajectoryCertificates']
(P/'Generated.lean').write_text('\n'.join(lines)+'\n');(P/'source.json').write_text(json.dumps({'database_sha256':hashlib.sha256((R/'upstream/kervaire-49/S0_AdamsSS_t261.db').read_bytes()).hexdigest(),'blocks':records},indent=2)+'\n')
print('generated',len(needed),'complete recursive finite comparisons')
