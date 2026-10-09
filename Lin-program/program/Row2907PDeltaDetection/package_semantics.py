"""Generate complete polynomial action meanings and C++ d2 basis imports."""
import importlib.util
import json
from pathlib import Path
import subprocess

HERE=Path(__file__).resolve().parent
ROOT=HERE.parent
spec=importlib.util.spec_from_file_location('algebra',ROOT/'RealMapCertificates/export.py')
alg=importlib.util.module_from_spec(spec);spec.loader.exec_module(alg)
products=json.loads((HERE/'products.json').read_text())['products']
arr=lambda value:str(value).replace(' ','')
lines=['import Row2907PDeltaDetection.Basic','import BranchReplayCertificates.BasisSemantics',
       'namespace Row2907PDeltaDetection.Semantics',
       'open LinearCertificates NamedElementCertificates BranchReplayCertificates.BasisSemantics Data',
       'variable {R : Type*} [CommRing R] [CharP R 2]']
for name,prod in products.items():
    m,k=len(prod['source']),len(prod['target'])
    assert m==3
    for label,rows in [('Source',prod['source']),('Target',prod['target'])]:
        polynomials=[[list(alg.mono(raw))] for _,raw in rows]
        lines += [f'def {name}{label} : Fin {len(rows)} → Polynomial := fun i => ({arr(polynomials)} : List Polynomial)[i.val]!']
    lines += [f'def {name}Matrix : Matrix {k} {m} := fun i j => {name}Product.product i ⟨0,by decide⟩ j']
    for j in range(m):
        lines += [f'theorem {name}{j}_input : {name}{j}.input = multiply [[31]] ({name}Source {j}) := by decide',
            f'theorem {name}{j}_decoded : EqualModuloRelations [] (decodedBasisVector {name}Target (fun i => {name}Matrix i {j})) {name}{j}.output := by lin_cert using ([] : List Term)',
            f'theorem {name}{j}_semantic (v : Nat → R) (relations : ∀ rel ∈ {name}{j}.relations, evaluate v rel = 0) :',
            f'    interpret (fun i => evaluate v ({name}Target i)) (fun i => {name}Matrix i {j}) =',
            f'      evaluate v [[31]] * evaluate v ({name}Source {j}) := by',
            f'  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ {name}{j}_decoded (by simp)]',
            f'  have h := equalModulo_evaluate v _ _ _ {name}{j}_valid relations',
            f'  rw [{name}{j}_input,evaluate_multiply] at h','  exact h.symm']
    lines += [f'theorem {name}_all_vectors (v : Nat → R)']
    lines += [f'    (relations{j} : ∀ rel ∈ {name}{j}.relations, evaluate v rel = 0)' for j in range(m)]
    lines += [f'    (x : Vec {m}) :',
        f'    interpret (fun i => evaluate v ({name}Target i)) (eval {name}Matrix x) =',
        f'      evaluate v [[31]] * interpret (fun j => evaluate v ({name}Source j)) x := by',
        f'  apply all_products v {name}Source {name}Target {name}Matrix [[31]] _ x','  intro j',
        '  have casesJ : j = 0 ∨ j = 1 ∨ j = 2 := by','    rcases j with ⟨j,hj⟩',
        '    have h : j = 0 ∨ j = 1 ∨ j = 2 := by omega',
        '    rcases h with rfl | rfl | rfl <;> simp','  rcases casesJ with rfl | rfl | rfl']
    lines += [f'  · exact {name}{j}_semantic v relations{j}' for j in range(m)]
    lines += [f'#print axioms {name}_all_vectors']
lines += ['end Row2907PDeltaDetection.Semantics']
(HERE/'Semantics.lean').write_text('\n'.join(lines)+'\n')

report=json.loads((HERE/'search.json').read_text())
lines=['import Row2907PDeltaDetection.Data','import HighFiltrationD2Certificates.Basic',
       'namespace Row2907PDeltaDetection.D2Links',
       'open LinearCertificates PageTransitionCertificates HighFiltrationD2Certificates Data']
bits=lambda values:''.join('1' if x else '0' for x in values) or '-'
for key,b in sorted(report['reconstructed'].items()):
    s,t=b['degree'];m,k=b['cols'],b['rows'];name=f'd{s}_{t}'
    basis=[b['basis_columns'][j][i] for i in range(m) for j in range(m)]
    images=[b['staircase_images'][j][i] for i in range(k) for j in range(m)]
    run=subprocess.run([str(ROOT/'HighFiltrationD2Audit/d2-basis-export'),str(k),str(m),bits(basis),bits(images)],
                       capture_output=True,text=True,check=True)
    assert json.loads(run.stdout)['matrix']==b['entries']
    (HERE/'wire'/f'{name}.json').write_text(run.stdout)
    lines += [f'def {name} : HighFiltrationD2Certificates.Wire := d2_basis% "Row2907PDeltaDetection/wire/{name}.json"',
        f'theorem {name}_valid : {name}.Valid := by lin_cert using ()',
        f'theorem {name}_reconstruct (d : Vec {m} → Vec {k}) (hz : d zero = zero)',
        '    (ha : ∀ x y, d (add x y) = add (d x) (d y))',
        f'    (values : ∀ j, d (fun i => {name}.basisMatrix i j) = (fun i => {name}.imageMatrix i j)) :',
        f'    ∀ x, d x = eval {name}.outputMatrix x := additive_reconstruction {name} {name}_valid d hz ha values',
        f'#print axioms {name}_reconstruct']
    for block in report['comparisons'].values():
        if block['page']!=2:continue
        cs,ct=block['center'];cname=f'c{cs}_{ct}_2'
        if [cs,ct]==[s,t]:
            lines += [f'theorem {name}_{cname}_outgoing : matrixOf {cname}.k {cname}.m {cname}.outgoing = {name}.outputMatrix := by decide']
        if [cs-2,ct-1]==[s,t]:
            lines += [f'theorem {name}_{cname}_incoming : matrixOf {cname}.m {cname}.n {cname}.incoming = {name}.outputMatrix := by decide']
lines += ['end Row2907PDeltaDetection.D2Links']
(HERE/'D2Links.lean').write_text('\n'.join(lines)+'\n')
print('Generated whole polynomial semantics and 9 complete d2 basis imports')
