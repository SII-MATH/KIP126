"""Interpret every checked h0 product column and arbitrary source vector."""
import json
from pathlib import Path

HERE = Path(__file__).resolve().parent
report = json.loads((HERE / 'provenance.json').read_text())


def mon(raw):
    fields = list(map(int, raw.split(','))) if raw else []
    return [g for g, exponent in zip(fields[::2], fields[1::2]) for _ in range(exponent)]


encode = lambda data: json.dumps(data, separators=(',', ':'))
lines = ['import Row3305H0Search.Basic', 'import BranchReplayCertificates.BasisSemantics',
         'namespace Row3305H0Search.Semantics',
         'open LinearCertificates NamedElementCertificates BranchReplayCertificates.BasisSemantics Data',
         'variable {R : Type*} [CommRing R] [CharP R 2]']
for name in ['sourceProduct', 'rightProduct']:
    cols = [entry for entry in report['products'] if entry['name'] == name]
    n, m = len(cols), len(cols[0]['target_basis'])
    left = encode([mon(cols[0]['left_basis']['mon'])])
    source = encode([[mon(entry['right_basis']['mon'])] for entry in cols])
    target = encode([[mon(entry['mon'])] for entry in cols[0]['target_basis']])
    lines += [f'def {name}Source : Fin {n} → Polynomial := fun i => ({source} : List Polynomial)[i.val]!',
              f'def {name}Target : Fin {m} → Polynomial := fun i => ({target} : List Polynomial)[i.val]!',
              f'def {name}Matrix : Matrix {m} {n} := fun i j => {name}.product i ⟨0,by decide⟩ j']
    for j in range(n):
        col = f'{name}{j}'
        lines += [f'theorem {col}_decoded : EqualModuloRelations []',
                  f'    (decodedBasisVector {name}Target (fun i => {name}Matrix i {j})) {col}.output := by',
                  '  lin_cert using ([] : List Term)',
                  f'theorem {col}_semantic (v : Nat → R)',
                  f'    (relations : ∀ rel ∈ {col}.relations, evaluate v rel = 0) :',
                  f'    interpret (fun i => evaluate v ({name}Target i)) (fun i => {name}Matrix i {j}) =',
                  f'      evaluate v {left} * evaluate v ({name}Source {j}) := by',
                  f'  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ {col}_decoded (by simp)]',
                  f'  have h := equalModulo_evaluate v _ _ _ {col}_valid relations',
                  '  rw [evaluate_multiply] at h', '  exact h.symm']
    cases = ' ∨ '.join(f'j = {j}' for j in range(n))
    alternatives = ' | '.join(['rfl'] * n)
    lines += [f'theorem {name}_all_vectors (v : Nat → R)']
    lines += [f'    (relations{j} : ∀ rel ∈ {name}{j}.relations, evaluate v rel = 0)' for j in range(n)]
    lines += [f'    (x : Vec {n}) :',
              f'    interpret (fun i => evaluate v ({name}Target i)) (eval {name}Matrix x) =',
              f'      evaluate v {left} * interpret (fun j => evaluate v ({name}Source j)) x := by',
              f'  apply all_products v {name}Source {name}Target {name}Matrix {left} _ x',
              '  intro j', f'  have casesJ : {cases} := by',
              '    rcases j with ⟨j,hj⟩', f'    have h : {cases} := by omega',
              f'    rcases h with {alternatives} <;> simp', f'  rcases casesJ with {alternatives}']
    lines += [f'  · exact {name}{j}_semantic v relations{j}' for j in range(n)]
    lines += [f'#print axioms {name}_all_vectors']
lines += ['end Row3305H0Search.Semantics']
(HERE / 'Semantics.lean').write_text('\n'.join(lines) + '\n')
