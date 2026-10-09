import sqlite3,json,hashlib,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent;r=p.parents[1];db=r/'upstream/kervaire-49/S0_AdamsSS_t261.db';c=sqlite3.connect(f'file:{db}?mode=ro',uri=True)
def rows(s,t):return c.execute('select id,mon,d2 from S0_AdamsE2_basis where s=? and t=? order by id',(s,t)).fetchall()
def bl(a):return '['+','.join('true' if b else 'false' for b in a)+']'
lines=['import NamedPageComparison.Row2858.Products_h0','import PageTransitionCertificates.Import','import BranchReplayCertificates.BasisSemantics','namespace NamedPageComparison.Row2858.H1Zero','open LinearCertificates PageTransitionCertificates NamedElementCertificates','open BranchReplayCertificates.BasisSemantics']
audit=[]
for tag,s,t in [('h0Target',4,3),('h1Source',1,2),('h1Target',4,4),('productSource',2,3),('productTarget',5,5)]:
 rs=[rows(s-2,t-1),rows(s,t),rows(s+2,t+1)];n,m,k=map(len,rs)
 def mat(rs,dim):
  cs=[]
  for _,_,raw in rs:
   assert raw is not None
   inds=list(map(int,raw.split(','))) if raw else [];cs.append([i in inds for i in range(dim)])
  return [v[i] for i in range(dim) for v in cs]
 args=list(map(str,[k,m,n]))+[''.join('1' if x else '0' for x in a) or '-' for a in [mat(rs[1],k),mat(rs[0],m)]]
 w=json.loads(subprocess.check_output([str(r/'PageTransitionCertificates/page-transition-export'),*args],text=True))
 lines += [f'def {tag} : WireComparison := ⟨1,{k},{m},{n},{w["h"]},'+','.join(bl(w[f]) for f in ['outgoing','incoming','inclusion','projection','up','down'])+'⟩',f'theorem {tag}_complete : {tag}.Valid := by lin_cert using ()']
 audit.append(dict(tag=tag,center=[s,t],rows=rs,wire=w))
lines += ['''
-- The actual source of h0 is (1,1), so its d3 target is (4,3).
theorem every_h0_d3_zero (d : Matrix 0 1) : d = (fun _ _ => false) := by
  funext i
  exact Fin.elim0 i

def unitClass : Vec 1 := fun _ => true

theorem h0_fifth_nonboundary :
    ¬ InImage (matrixOf 1 productTarget.n productTarget.incoming) unitClass := by
  rintro ⟨v,hv⟩
  have h := congrFun hv ⟨0,by decide⟩
  change false = true at h
  contradiction

-- Equality modulo the entire imported d2 boundary image is the Leibniz premise.
def LeibnizCompatible (candidate : Vec 1) : Prop :=
  InImage (matrixOf 1 productTarget.n productTarget.incoming)
    (eval h0.matrix4_4 candidate)

theorem compatible_h1_d3_zero (candidate : Vec 1) (hc : LeibnizCompatible candidate) :
    candidate = zero := by
  obtain ⟨v,hv⟩ := hc
  have h := congrFun hv ⟨0,by decide⟩
  change false = xor (candidate 0) false at h
  have hc0 : candidate 0 = false := by simpa using h.symm
  funext i
  have hi : i = 0 := by omega
  subst i
  exact hc0

-- Relation certificates identify both products under arbitrary admissible valuations.
variable {R : Type*} [CommRing R] [CharP R 2]
theorem h0_times_h1_zero (v : Nat → R)
    (hr : ∀ r ∈ h0.column3.relations, evaluate v r = 0) :
    evaluate v h0.factor * evaluate v [[1]] = 0 := by
  have hh := equalModulo_evaluate v _ _ _ h0.column3_product hr
  rw [evaluate_multiply] at hh
  exact hh

theorem h0_times_h0_fourth (v : Nat → R)
    (hr : ∀ r ∈ h0.column5.relations, evaluate v r = 0) :
    evaluate v h0.factor * evaluate v [[0,0,0,0]] = evaluate v [[0,0,0,0,0]] := by
  have hh := equalModulo_evaluate v _ _ _ h0.column5_product hr
  rw [evaluate_multiply] at hh
  exact hh

-- The coordinate multiplication agrees for every coefficient, not just the generator.
theorem multiplication_coordinates (v : Nat → R)
    (hr : ∀ r ∈ h0.column5.relations, evaluate v r = 0) (x : Vec 1) :
    interpret (fun _ : Fin 1 => evaluate v [[0,0,0,0,0]]) (eval h0.matrix4_4 x) =
      evaluate v h0.factor * interpret (fun _ : Fin 1 => evaluate v [[0,0,0,0]]) x := by
  apply all_products v (fun _ : Fin 1 => [[0,0,0,0]])
    (fun _ : Fin 1 => [[0,0,0,0,0]]) h0.matrix4_4 h0.factor _ x
  intro j
  have hj : j = 0 := by omega
  subst j
  change evaluate v [[0,0,0,0,0]] + 0 = _
  rw [add_zero]
  exact (h0_times_h0_fourth v hr).symm
end NamedPageComparison.Row2858.H1Zero
''']
(p/'H1Zero.lean').write_text('\n'.join(lines)+'\n');(p/'h1-zero-source.json').write_text(json.dumps({'sha256':hashlib.sha256(db.read_bytes()).hexdigest(),'blocks':audit},indent=2)+'\n')
