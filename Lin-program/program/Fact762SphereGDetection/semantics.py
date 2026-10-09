"""Relate every product tensor column to the imported polynomial meaning."""
import json,importlib.util
from pathlib import Path
H=Path(__file__).resolve().parent;R=H.parent
spec=importlib.util.spec_from_file_location('a',R/'RealMapCertificates/export.py');a=importlib.util.module_from_spec(spec);spec.loader.exec_module(a)
j=json.loads((H/'search.json').read_text());hp=json.loads((H/'h0-provenance.json').read_text())
pl=lambda p:'['+','.join('['+','.join(map(str,m))+']' for m in p)+']'
ps=lambda rows:'['+','.join(pl([a.mono(raw)]) for _,raw in rows)+']'
lines=['import Fact762SphereGDetection.H0Data','import BranchReplayCertificates.BasisSemantics','namespace Fact762SphereGDetection.Semantics','open LinearCertificates NamedElementCertificates BranchReplayCertificates.BasisSemantics','variable {R : Type*} [CommRing R] [CharP R 2]','set_option maxRecDepth 8192']
for name,source,target,factor,w,cs in [('g',[(p['right'][0],p['right'][1]) for p in j['products'][2:]],[(row[0],row[1]) for row in j['products'][2]['target']],[[13]],'Data.product2',['Data.p2','Data.p3']),('h0',hp['source'],hp['target'],[[0]],'H0Data.wire',[f'H0Data.column{i}' for i in range(4)])]:
 n,m=len(source),len(target)
 lines += [f'def {name}Source : Fin {n} → Polynomial := fun i => ({ps(source)} : List Polynomial)[i.val]!',f'def {name}Target : Fin {m} → Polynomial := fun i => ({ps(target)} : List Polynomial)[i.val]!',f'def {name}Matrix : Matrix {m} {n} := fun i j => {w}.product i ⟨0,by decide⟩ j']
 for j,c in enumerate(cs):
  lines += [f'theorem {name}{j}_decoded : EqualModuloRelations [] (decodedBasisVector {name}Target (fun i => {name}Matrix i ⟨{j},by decide⟩)) {c}.output := by lin_cert using ([] : List Term)',f'theorem {name}{j}_value (v : Nat → R) (relations : ∀ rel ∈ {c}.relations, evaluate v rel = 0) : interpret (fun i => evaluate v ({name}Target i)) (fun i => {name}Matrix i ⟨{j},by decide⟩) = evaluate v {pl(factor)} * evaluate v ({name}Source ⟨{j},by decide⟩) := by',f'  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ {name}{j}_decoded (by simp)]',f'  have h := equalModulo_evaluate v _ _ _ {c}_valid relations','  rw [evaluate_multiply] at h','  exact h.symm']
 lines += [f'theorem {name}_all_vectors (v : Nat → R)']+[f'    (relations{i} : ∀ rel ∈ {c}.relations, evaluate v rel = 0)' for i,c in enumerate(cs)]+[f'    (x : Vec {n}) : interpret (fun i => evaluate v ({name}Target i)) (eval {name}Matrix x) = evaluate v {pl(factor)} * interpret (fun j => evaluate v ({name}Source j)) x := by',f'  apply all_products v {name}Source {name}Target {name}Matrix {pl(factor)} _ x','  intro j',f'  have casesJ : '+ ' ∨ '.join(f'j = {i}' for i in range(n))+' := by omega','  rcases casesJ with '+' | '.join('rfl' for _ in range(n))]
 for i in range(n):lines += [f'  · exact {name}{i}_value v relations{i}']
 lines += [f'#print axioms {name}_all_vectors']
lines.append('end Fact762SphereGDetection.Semantics');(H/'Semantics.lean').write_text('\n'.join(lines)+'\n')
