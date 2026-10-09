"""Bind every tensor column to characteristic-two ring evaluation."""
import json
from pathlib import Path
HERE=Path(__file__).resolve().parent
report=json.loads((HERE/'provenance.json').read_text())
def mon(raw):
    cells=list(map(int,raw.split(','))) if raw else []
    return [g for g,e in zip(cells[::2],cells[1::2]) for _ in range(e)]
pl=lambda p:json.dumps(p,separators=(',',':'))
lines=['import EtaD3Source.Basic','import BranchReplayCertificates.BasisSemantics',
       'namespace EtaD3Source.Semantics',
       'open LinearCertificates NamedElementCertificates BranchReplayCertificates.BasisSemantics Data',
       'variable {R : Type*} [CommRing R] [CharP R 2]']
for name in ['zeroProduct','detectProduct']:
    columns=[p for p in report['products'] if p['name']==name]
    left=pl([mon(columns[0]['left_basis']['mon'])])
    source=pl([[mon(p['right_basis']['mon'])] for p in columns])
    target=pl([[mon(p['mon'])] for p in columns[0]['target_basis']])
    rows=len(columns[0]['target_basis'])
    lines += [f'def {name}Source : Fin 1 → Polynomial := fun i => ({source} : List Polynomial)[i.val]!',
              f'def {name}Target : Fin {rows} → Polynomial := fun i => ({target} : List Polynomial)[i.val]!',
              f'def {name}Matrix : Matrix {rows} 1 := fun i j => {name}.product i ⟨0,by decide⟩ j']
    for j in range(1):
        col=f'{name}{j}'
        lines += [f'theorem {col}_decoded : EqualModuloRelations []',
                  f'    (decodedBasisVector {name}Target (fun i => {name}Matrix i {j})) {col}.output := by',
                  '  lin_cert using ([] : List Term)',
                  f'theorem {col}_semantic (v : Nat → R)',
                  f'    (relations : ∀ rel ∈ {col}.relations, evaluate v rel = 0) :',
                  f'    interpret (fun i => evaluate v ({name}Target i)) (fun i => {name}Matrix i {j}) =',
                  f'      evaluate v {left} * evaluate v ({name}Source {j}) := by',
                  f'  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ {col}_decoded (by simp)]',
                  f'  have h := equalModulo_evaluate v _ _ _ {col}_valid relations',
                  '  rw [evaluate_multiply] at h','  exact h.symm']
    lines += [f'theorem {name}_all_vectors (v : Nat → R)',
              f'    (relations0 : ∀ rel ∈ {name}0.relations, evaluate v rel = 0)',
              '    (x : Vec 1) :',
              f'    interpret (fun i => evaluate v ({name}Target i)) (eval {name}Matrix x) =',
              f'      evaluate v {left} * interpret (fun j => evaluate v ({name}Source j)) x := by',
              f'  apply all_products v {name}Source {name}Target {name}Matrix {left} _ x',
              '  intro j','  have hj : j = 0 := Fin.eq_zero j','  subst j',
              f'  exact {name}0_semantic v relations0',
              f'#print axioms {name}_all_vectors']
lines += ['end EtaD3Source.Semantics']
(HERE/'Semantics.lean').write_text('\n'.join(lines)+'\n')
