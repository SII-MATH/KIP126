import json,sqlite3,subprocess,hashlib
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parents[1];db=r/'upstream/kervaire-49/S0_AdamsSS_t261.db';c=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
def br(s,t):return c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',(s,t)).fetchall()
def bl(a):return '['+','.join('true' if x else 'false' for x in a)+']'
lines=['import NamedPageComparison.Row2858.Refutation','import PageTransitionCertificates.Import','namespace NamedPageComparison.Row2858.Boundaries','open LinearCertificates PageTransitionCertificates ResolutionCertificates']
audit=[]
for label,s,t,matrix in [('G',17,162,'boundariesG'),('H1',14,140,'boundariesH1'),('H3',14,146,'boundariesH3'),('Target',13,138,'earlierTarget')]:
 data=[br(s-2,t-1),br(s,t),br(s+2,t+1)];n,m,k=map(len,data)
 def mat(rs,dim):
  cols=[]
  for _,_,d in rs:
   if d is None:raise ValueError('unknown d2')
   ids=list(map(int,d.split(','))) if d else []
   cols.append([i in ids for i in range(dim)])
  return [col[i] for i in range(dim) for col in cols]
 args=list(map(str,[k,m,n]))+[''.join('1' if b else '0' for b in mat(rs,dim)) or '-' for rs,dim in [(data[1],k),(data[0],m)]]
 w=json.loads(subprocess.check_output([str(r/'PageTransitionCertificates/page-transition-export'),*args],text=True))
 lines += [f'def {label} : WireComparison := ⟨1,{k},{m},{n},{w["h"]},'+','.join(bl(w[f]) for f in ['outgoing','incoming','inclusion','projection','up','down'])+'⟩',f'theorem {label}_complete : {label}.Valid := by lin_cert using ()']
 # Boundary matrices can have redundant original sources. Verify equality of spans via inclusion both ways.
 lines += [f'theorem {label}_boundary_span (x : Vec {m}) : InImage (matrixOf {m} {n} {label}.incoming) x ↔ InImage {matrix} x := by']
 # construct factorization both ways by elementary exhaustive GF2 solves
 A=mat(data[0],m);oldn={'G':0,'H1':1,'H3':1,'Target':2}[label];B=[[int(i==j+3) if label=='Target' else int(i==({'H1':3,'H3':4}.get(label,-1))) for j in range(oldn)] for i in range(m)]
 def solve(cols,v):
  for mask in range(1<<len(cols)):
   if all(sum(col[i] for j,col in enumerate(cols) if mask>>j&1)%2==v[i] for i in range(len(v))):return [bool(mask>>j&1) for j in range(len(cols))]
  raise ValueError('span mismatch')
 Ac=[[A[i*n+j] for i in range(m)] for j in range(n)];Bc=[[B[i][j] for i in range(m)] for j in range(oldn)]
 X=[solve(Bc,v) for v in Ac];Y=[solve(Ac,v) for v in Bc]
 lines += [f'  let forward : Matrix {oldn} {n} := matrixOf {oldn} {n} {bl([X[j][i] for i in range(oldn) for j in range(n)])}',f'  let backward : Matrix {n} {oldn} := matrixOf {n} {oldn} {bl([Y[j][i] for i in range(n) for j in range(oldn)])}',f'  have hf : compose {matrix} forward = matrixOf {m} {n} {label}.incoming := by',f'    funext i j; exact (show ∀ i j, compose {matrix} forward i j = matrixOf {m} {n} {label}.incoming i j from by decide) i j',f'  have hb : compose (matrixOf {m} {n} {label}.incoming) backward = {matrix} := by',f'    funext i j; exact (show ∀ i j, compose (matrixOf {m} {n} {label}.incoming) backward i j = {matrix} i j from by decide) i j','  constructor','  · rintro ⟨v,hv⟩','    refine ⟨eval forward v, ?_⟩','    rw [← eval_compose, hf, hv]','  · rintro ⟨v,hv⟩','    refine ⟨eval backward v, ?_⟩','    rw [← eval_compose, hb, hv]']
 audit.append(dict(label=label,center=[s,t],rows=data,wire=w))
lines+=['end NamedPageComparison.Row2858.Boundaries'];(p/'Boundaries.lean').write_text('\n'.join(lines)+'\n');(p/'boundaries-source.json').write_text(json.dumps({'sha256':hashlib.sha256(db.read_bytes()).hexdigest(),'blocks':audit},indent=2)+'\n')
# Generate maintained-source-independent whole-column and whole-matrix valuation bridges.
def mon(raw):
 a=list(map(int,raw.split(','))) if raw else [];return [g for g,e in zip(a[::2],a[1::2]) for _ in range(e)]
def pl(ms):return '['+','.join('['+','.join(map(str,m))+']' for m in ms)+']'
for factor in ['g','h1','h3']:
 rows=json.loads((p/f'products-{factor}-provenance.json').read_text())
 ns=f'NamedPageComparison.Row2858.Semantics_{factor}'
 lines=[f'import NamedPageComparison.Row2858.Products_{factor}','import BranchReplayCertificates.BasisSemantics',f'namespace {ns}',f'open LinearCertificates NamedElementCertificates BranchReplayCertificates.BasisSemantics NamedPageComparison.Row2858.{factor}','variable {R : Type*} [CommRing R] [CharP R 2]']
 for row in rows:
  bid=row['source_id'];ids=row['target_basis_ids'];bs=[mon(c.execute('select mon from S0_AdamsE2_basis where id=?',(i,)).fetchone()[0]) for i in ids];s,t=row['source_degree'];local=row['source_local'];name=f'c{bid}';m=len(ids)
  lines += [f'def {name}Basis : Fin {m} → Polynomial := fun i => ([{",".join(pl([b]) for b in bs)}] : List Polynomial)[i.val]!',f'theorem {name}Decode : EqualModuloRelations [] (decodedBasisVector {name}Basis (fun i => matrix{s}_{t} i ⟨{local}, by decide⟩)) column{bid}.output := by lin_cert using ([] : List Term)',f'theorem {name}Semantic (v : Nat → R) (hr : ∀ r ∈ column{bid}.relations, evaluate v r = 0) : evaluate v (decodedBasisVector {name}Basis (fun i => matrix{s}_{t} i ⟨{local}, by decide⟩)) = evaluate v factor * evaluate v {pl([mon(c.execute("select mon from S0_AdamsE2_basis where id=?",(bid,)).fetchone()[0])])} := by',f'  rw [equalModulo_evaluate v [] _ _ {name}Decode (by simp)]',f'  have hp := equalModulo_evaluate v _ _ _ column{bid}_product hr',f'  rw [evaluate_multiply] at hp',f'  exact hp.symm']
 for s,t in [(10,136),(13,138)]:
  group=[x for x in rows if x['source_degree']==[s,t]];src=br(s,t);first=group[0]['source_id'];m=len(group[0]['target_basis_ids']);n=len(src)
  lines += [f'def source{s} : Fin {n} → Polynomial := fun j => ([{",".join(pl([mon(x[1])]) for x in src)}] : List Polynomial)[j.val]!',f'theorem allCoefficients{s} (v : Nat → R)']
  lines += [f'    (hr{x["source_id"]} : ∀ r ∈ column{x["source_id"]}.relations, evaluate v r = 0)' for x in group]
  lines += [f'    (x : Vec {n}) : interpret (fun i => evaluate v (c{first}Basis i)) (eval matrix{s}_{t} x) = evaluate v factor * interpret (fun j => evaluate v (source{s} j)) x := by',f'  apply all_products v source{s} c{first}Basis matrix{s}_{t} factor _ x','  intro j','  obtain ⟨j,hj⟩ := j',f'  have hh : {" ∨ ".join(f"j={i}" for i in range(n))} := by omega',f'  rcases hh with {" | ".join(f"h{i}" for i in range(n))}']
  for row in group:bid=row['source_id'];lines += ['  · subst j',f'    exact (decoded_evaluate v c{first}Basis _).symm.trans (c{bid}Semantic v hr{bid})']
 lines += [f'end {ns}'];(p/f'Semantics_{factor}.lean').write_text('\n'.join(lines)+'\n')
print('four complete boundary comparisons and six whole-matrix semantic bridges generated')
