"""Reconstruct d2 only through a complete invertible staircase basis.
NULL permanent rows remain unknown; placeholder bits are never certified values.
"""
import hashlib,json,sqlite3
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parent
path=r/'upstream/kervaire-49/Ctheta4_AdamsSS_t200.db'
c=sqlite3.connect(f'file:{path}?mode=ro',uri=True)
def bits(raw,n):
 if raw is None: raise ValueError('NULL vector')
 ids=[int(x) for x in raw.split(',') if x]
 if len(set(ids))!=len(ids) or any(i<0 or i>=n for i in ids):raise ValueError('invalid coordinates')
 return [int(i in ids) for i in range(n)]
def solve(B,v):
 n=len(v);a=[B[i][:]+[v[i]] for i in range(n)]
 for j in range(n):
  pivot=next((i for i in range(j,n) if a[i][j]),None)
  if pivot is None:raise ValueError('incomplete staircase basis')
  a[j],a[pivot]=a[pivot],a[j]
  for i in range(n):
   if i!=j and a[i][j]:a[i]=[x^y for x,y in zip(a[i],a[j])]
 return [a[i][-1] for i in range(n)]
def rows(cs,n):return [[col[i] for col in cs] for i in range(n)]
def mul(a,b):return [[sum(x*y for x,y in zip(row,col))%2 for col in zip(*b)] for row in a]
def bl(a):return '['+','.join('true' if x else 'false' for x in a)+']'
def flat(a):return [x for row in a for x in row]
records=[];lines=['import Fact713Ctheta4Certificates.Basic','namespace Fact713Ctheta4Certificates.Data','open LinearCertificates ResolutionCertificates PageTransitionCertificates','open Fact713Ctheta4Certificates']
for tag,s,t in [('source',17,168),('incoming',18,169),('target',20,170)]:
 basis=c.execute('select id,mon from Ctheta4_AdamsE2_basis where s=? and t=? order by id',(s,t)).fetchall(); target=c.execute('select id,mon from Ctheta4_AdamsE2_basis where s=? and t=? order by id',(s+2,t+1)).fetchall();raw=c.execute('select id,base,diff,level from Ctheta4_AdamsE2_ss where s=? and t=? order by id',(s,t)).fetchall();n=len(basis);k=len(target)
 assert len(raw)==n
 B=rows([bits(x[1],n) for x in raw],n);I=rows([solve(B,[int(i==j) for i in range(n)]) for j in range(n)],n)
 known=[];images=[]
 for _,base,diff,level in raw:
  if level==9998 and diff is not None:known.append(True);images.append(bits(diff,k))
  elif 0<level<5000 or 9000<level<9998:known.append(True);images.append([0]*k)
  else:known.append(False);images.append([0]*k)
 Y=rows(images,k);D=mul(Y,I)
 lines += [f'def {tag}Basis : Matrix {n} {n} := matrixOf {n} {n} {bl(flat(B))}',f'def {tag}Inverse : Matrix {n} {n} := matrixOf {n} {n} {bl(flat(I))}',f'def {tag}Images : Matrix {k} {n} := matrixOf {k} {n} {bl(flat(Y))}',f'def {tag}Known : Fin {n} → Bool := fun j => ({bl(known)} : List Bool)[j.val]!',f'theorem {tag}_basis_complete : compose {tag}Basis {tag}Inverse = identityMatrix {n} := by funext i j; exact (show ∀ i j, compose {tag}Basis {tag}Inverse i j = identityMatrix {n} i j from by decide) i j']
 if all(known):
  lines += [f'def {tag}D2 : Matrix {k} {n} := matrixOf {k} {n} {bl(flat(D))}',f'theorem {tag}_reconstruction : compose {tag}D2 {tag}Basis = {tag}Images := by funext i j; exact (show ∀ i j, compose {tag}D2 {tag}Basis i j = {tag}Images i j from by decide) i j',f'theorem {tag}_unique (A : Matrix {k} {n}) (h : compose A {tag}Basis = {tag}Images) : ∀ v, eval A v = eval {tag}D2 v := complete_basis_unique {tag}_basis_complete h {tag}_reconstruction']
 records.append(dict(tag=tag,s=s,t=t,basis=basis,target_basis=target,raw=raw,known=known,basis_matrix=B,inverse=I,images=Y,reconstructed_d2=D if all(known) else None))
lines += ['end Fact713Ctheta4Certificates.Data'];(p/'Data.lean').write_text('\n'.join(lines)+'\n');(p/'source.json').write_text(json.dumps(dict(database_sha256=hashlib.sha256(path.read_bytes()).hexdigest(),records=records),indent=2)+'\n');print([(x['tag'],x['known']) for x in records])
