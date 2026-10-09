import Row2574D3Search.Data
import BranchReplayCertificates.BasisSemantics

namespace Row2574D3Search.Semantics
open LinearCertificates NamedElementCertificates BranchReplayCertificates.BasisSemantics
variable {R : Type*} [CommRing R] [CharP R 2]
def source : Fin 5 → Polynomial := fun i => ([[[391]],[[390]],[[69,82]],[[18,190]],[[0,375]]] : List Polynomial)[i.val]!
def target : Fin 4 → Polynomial := fun i => ([[[442]],[[441]],[[2,69,82]],[[0,0,3,68,69]]] : List Polynomial)[i.val]!
def matrix : Matrix 4 5 := Row2574Detector.h2.matrix9_134
theorem decoded0 : EqualModuloRelations []
    (decodedBasisVector target (fun i => matrix i ⟨0,by decide⟩)) Row2574Detector.h2.column2695.output := by
  lin_cert using ([] : List Term)
theorem value0 (v : Nat → R) (relations : ∀ rel ∈ Row2574Detector.h2.column2695.relations, evaluate v rel = 0) :
    interpret (fun i => evaluate v (target i)) (fun i => matrix i ⟨0,by decide⟩) =
      evaluate v [[2]] * evaluate v (source ⟨0,by decide⟩) := by
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ decoded0 (by simp)]
  have h := equalModulo_evaluate v _ _ _ Row2574Detector.h2.column2695_product relations
  rw [evaluate_multiply] at h
  exact h.symm
#print axioms decoded0
#print axioms value0
theorem decoded1 : EqualModuloRelations []
    (decodedBasisVector target (fun i => matrix i ⟨1,by decide⟩)) Row2574Detector.h2.column2696.output := by
  lin_cert using ([] : List Term)
theorem value1 (v : Nat → R) (relations : ∀ rel ∈ Row2574Detector.h2.column2696.relations, evaluate v rel = 0) :
    interpret (fun i => evaluate v (target i)) (fun i => matrix i ⟨1,by decide⟩) =
      evaluate v [[2]] * evaluate v (source ⟨1,by decide⟩) := by
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ decoded1 (by simp)]
  have h := equalModulo_evaluate v _ _ _ Row2574Detector.h2.column2696_product relations
  rw [evaluate_multiply] at h
  exact h.symm
#print axioms decoded1
#print axioms value1
theorem decoded2 : EqualModuloRelations []
    (decodedBasisVector target (fun i => matrix i ⟨2,by decide⟩)) Row2574Detector.h2.column2697.output := by
  lin_cert using ([] : List Term)
theorem value2 (v : Nat → R) (relations : ∀ rel ∈ Row2574Detector.h2.column2697.relations, evaluate v rel = 0) :
    interpret (fun i => evaluate v (target i)) (fun i => matrix i ⟨2,by decide⟩) =
      evaluate v [[2]] * evaluate v (source ⟨2,by decide⟩) := by
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ decoded2 (by simp)]
  have h := equalModulo_evaluate v _ _ _ Row2574Detector.h2.column2697_product relations
  rw [evaluate_multiply] at h
  exact h.symm
#print axioms decoded2
#print axioms value2
theorem decoded3 : EqualModuloRelations []
    (decodedBasisVector target (fun i => matrix i ⟨3,by decide⟩)) Row2574Detector.h2.column2698.output := by
  lin_cert using ([] : List Term)
theorem value3 (v : Nat → R) (relations : ∀ rel ∈ Row2574Detector.h2.column2698.relations, evaluate v rel = 0) :
    interpret (fun i => evaluate v (target i)) (fun i => matrix i ⟨3,by decide⟩) =
      evaluate v [[2]] * evaluate v (source ⟨3,by decide⟩) := by
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ decoded3 (by simp)]
  have h := equalModulo_evaluate v _ _ _ Row2574Detector.h2.column2698_product relations
  rw [evaluate_multiply] at h
  exact h.symm
#print axioms decoded3
#print axioms value3
theorem decoded4 : EqualModuloRelations []
    (decodedBasisVector target (fun i => matrix i ⟨4,by decide⟩)) Row2574Detector.h2.column2699.output := by
  lin_cert using ([] : List Term)
theorem value4 (v : Nat → R) (relations : ∀ rel ∈ Row2574Detector.h2.column2699.relations, evaluate v rel = 0) :
    interpret (fun i => evaluate v (target i)) (fun i => matrix i ⟨4,by decide⟩) =
      evaluate v [[2]] * evaluate v (source ⟨4,by decide⟩) := by
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ decoded4 (by simp)]
  have h := equalModulo_evaluate v _ _ _ Row2574Detector.h2.column2699_product relations
  rw [evaluate_multiply] at h
  exact h.symm
#print axioms decoded4
#print axioms value4
theorem all_vectors (v : Nat → R)
    (r0 : ∀ rel ∈ Row2574Detector.h2.column2695.relations, evaluate v rel = 0)
    (r1 : ∀ rel ∈ Row2574Detector.h2.column2696.relations, evaluate v rel = 0)
    (r2 : ∀ rel ∈ Row2574Detector.h2.column2697.relations, evaluate v rel = 0)
    (r3 : ∀ rel ∈ Row2574Detector.h2.column2698.relations, evaluate v rel = 0)
    (r4 : ∀ rel ∈ Row2574Detector.h2.column2699.relations, evaluate v rel = 0)
    (x : Vec 5) : interpret (fun i => evaluate v (target i)) (eval matrix x) =
      evaluate v [[2]] * interpret (fun i => evaluate v (source i)) x := by
  apply all_products v source target matrix [[2]] _ x
  intro j
  fin_cases j
  · exact value0 v r0
  · exact value1 v r1
  · exact value2 v r2
  · exact value3 v r3
  · exact value4 v r4
#print axioms all_vectors
end Row2574D3Search.Semantics
