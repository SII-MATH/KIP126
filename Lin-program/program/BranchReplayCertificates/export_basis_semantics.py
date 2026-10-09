import json,sqlite3
from pathlib import Path
p=Path(__file__).resolve().parent
c=sqlite3.connect(f'file:{p.parent}/upstream/kervaire-49/S0_AdamsSS_t261.db?mode=ro',uri=True)
def mon(raw):
 a=list(map(int,raw.split(','))) if raw else [];return [g for g,e in zip(a[::2],a[1::2]) for _ in range(e)]
def pl(ms):return '['+','.join('['+','.join(map(str,m))+']' for m in ms)+']'
rows=json.loads((p/'products-provenance.json').read_text())
lines=['import BranchReplayCertificates.BasisSemantics','namespace BranchReplayCertificates.ProductBasisSemantics','open LinearCertificates NamedElementCertificates BasisSemantics Products','variable {R : Type*} [CommRing R] [CharP R 2]']
for row in rows:
 bid=row['source_id'];ids=row['target_basis_ids'];bs=[mon(c.execute('select mon from S0_AdamsE2_basis where id=?',(i,)).fetchone()[0]) for i in ids];s,t=row['source_degree'];local=row['source_local'];name=f'c{bid}';m=len(ids)
 lines += [f'def {name}Basis : Fin {m} → Polynomial := fun i => ({pl([[ ]]) if False else "["+",".join(pl([b]) for b in bs)+"]"} : List Polynomial)[i.val]!',f'theorem {name}Decode : EqualModuloRelations [] (decodedBasisVector {name}Basis (fun i => matrix{s}_{t} i ⟨{local}, by decide⟩)) column{bid}.output := by lin_cert using ([] : List Term)',f'theorem {name}Semantic (v : Nat → R) (hr : ∀ r ∈ column{bid}.relations, evaluate v r = 0) : evaluate v (decodedBasisVector {name}Basis (fun i => matrix{s}_{t} i ⟨{local}, by decide⟩)) = evaluate v factor * evaluate v {pl([mon(c.execute("select mon from S0_AdamsE2_basis where id=?",(bid,)).fetchone()[0])])} := by',f'  rw [equalModulo_evaluate v [] _ _ {name}Decode (by simp)]',f'  have hp := equalModulo_evaluate v _ _ _ column{bid}_product hr',f'  rw [evaluate_multiply] at hp',f'  exact hp.symm']
lines+=['end BranchReplayCertificates.ProductBasisSemantics']
(p/'GeneratedProductColumns.lean').write_text('\n'.join(lines)+'\n')
