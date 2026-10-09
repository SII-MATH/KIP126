import Row2907PDeltaDetection.Basic
import BranchReplayCertificates.BasisSemantics
namespace Row2907PDeltaDetection.Semantics
open LinearCertificates NamedElementCertificates BranchReplayCertificates.BasisSemantics Data
variable {R : Type*} [CommRing R] [CharP R 2]
def sourceSource : Fin 3 → Polynomial := fun i => ([[[422]],[[8,261]],[[0,7,267]]] : List Polynomial)[i.val]!
def sourceTarget : Fin 2 → Polynomial := fun i => ([[[8,22,292]],[[8,8,492]]] : List Polynomial)[i.val]!
def sourceMatrix : Matrix 2 3 := fun i j => sourceProduct.product i ⟨0,by decide⟩ j
theorem source0_input : source0.input = multiply [[31]] (sourceSource 0) := by decide
theorem source0_decoded : EqualModuloRelations [] (decodedBasisVector sourceTarget (fun i => sourceMatrix i 0)) source0.output := by lin_cert using ([] : List Term)
theorem source0_semantic (v : Nat → R) (relations : ∀ rel ∈ source0.relations, evaluate v rel = 0) :
    interpret (fun i => evaluate v (sourceTarget i)) (fun i => sourceMatrix i 0) =
      evaluate v [[31]] * evaluate v (sourceSource 0) := by
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ source0_decoded (by simp)]
  have h := equalModulo_evaluate v _ _ _ source0_valid relations
  rw [source0_input,evaluate_multiply] at h
  exact h.symm
theorem source1_input : source1.input = multiply [[31]] (sourceSource 1) := by decide
theorem source1_decoded : EqualModuloRelations [] (decodedBasisVector sourceTarget (fun i => sourceMatrix i 1)) source1.output := by lin_cert using ([] : List Term)
theorem source1_semantic (v : Nat → R) (relations : ∀ rel ∈ source1.relations, evaluate v rel = 0) :
    interpret (fun i => evaluate v (sourceTarget i)) (fun i => sourceMatrix i 1) =
      evaluate v [[31]] * evaluate v (sourceSource 1) := by
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ source1_decoded (by simp)]
  have h := equalModulo_evaluate v _ _ _ source1_valid relations
  rw [source1_input,evaluate_multiply] at h
  exact h.symm
theorem source2_input : source2.input = multiply [[31]] (sourceSource 2) := by decide
theorem source2_decoded : EqualModuloRelations [] (decodedBasisVector sourceTarget (fun i => sourceMatrix i 2)) source2.output := by lin_cert using ([] : List Term)
theorem source2_semantic (v : Nat → R) (relations : ∀ rel ∈ source2.relations, evaluate v rel = 0) :
    interpret (fun i => evaluate v (sourceTarget i)) (fun i => sourceMatrix i 2) =
      evaluate v [[31]] * evaluate v (sourceSource 2) := by
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ source2_decoded (by simp)]
  have h := equalModulo_evaluate v _ _ _ source2_valid relations
  rw [source2_input,evaluate_multiply] at h
  exact h.symm
theorem source_all_vectors (v : Nat → R)
    (relations0 : ∀ rel ∈ source0.relations, evaluate v rel = 0)
    (relations1 : ∀ rel ∈ source1.relations, evaluate v rel = 0)
    (relations2 : ∀ rel ∈ source2.relations, evaluate v rel = 0)
    (x : Vec 3) :
    interpret (fun i => evaluate v (sourceTarget i)) (eval sourceMatrix x) =
      evaluate v [[31]] * interpret (fun j => evaluate v (sourceSource j)) x := by
  apply all_products v sourceSource sourceTarget sourceMatrix [[31]] _ x
  intro j
  have casesJ : j = 0 ∨ j = 1 ∨ j = 2 := by
    rcases j with ⟨j,hj⟩
    have h : j = 0 ∨ j = 1 ∨ j = 2 := by omega
    rcases h with rfl | rfl | rfl <;> simp
  rcases casesJ with rfl | rfl | rfl
  · exact source0_semantic v relations0
  · exact source1_semantic v relations1
  · exact source2_semantic v relations2
#print axioms source_all_vectors
def targetSource : Fin 3 → Polynomial := fun i => ([[[455]],[[0,0,8,267]],[[0,0,0,17,209]]] : List Polynomial)[i.val]!
def targetTarget : Fin 3 → Polynomial := fun i => ([[[17,17,278]],[[8,688]],[[8,8,8,13,194]]] : List Polynomial)[i.val]!
def targetMatrix : Matrix 3 3 := fun i j => targetProduct.product i ⟨0,by decide⟩ j
theorem target0_input : target0.input = multiply [[31]] (targetSource 0) := by decide
theorem target0_decoded : EqualModuloRelations [] (decodedBasisVector targetTarget (fun i => targetMatrix i 0)) target0.output := by lin_cert using ([] : List Term)
theorem target0_semantic (v : Nat → R) (relations : ∀ rel ∈ target0.relations, evaluate v rel = 0) :
    interpret (fun i => evaluate v (targetTarget i)) (fun i => targetMatrix i 0) =
      evaluate v [[31]] * evaluate v (targetSource 0) := by
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ target0_decoded (by simp)]
  have h := equalModulo_evaluate v _ _ _ target0_valid relations
  rw [target0_input,evaluate_multiply] at h
  exact h.symm
theorem target1_input : target1.input = multiply [[31]] (targetSource 1) := by decide
theorem target1_decoded : EqualModuloRelations [] (decodedBasisVector targetTarget (fun i => targetMatrix i 1)) target1.output := by lin_cert using ([] : List Term)
theorem target1_semantic (v : Nat → R) (relations : ∀ rel ∈ target1.relations, evaluate v rel = 0) :
    interpret (fun i => evaluate v (targetTarget i)) (fun i => targetMatrix i 1) =
      evaluate v [[31]] * evaluate v (targetSource 1) := by
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ target1_decoded (by simp)]
  have h := equalModulo_evaluate v _ _ _ target1_valid relations
  rw [target1_input,evaluate_multiply] at h
  exact h.symm
theorem target2_input : target2.input = multiply [[31]] (targetSource 2) := by decide
theorem target2_decoded : EqualModuloRelations [] (decodedBasisVector targetTarget (fun i => targetMatrix i 2)) target2.output := by lin_cert using ([] : List Term)
theorem target2_semantic (v : Nat → R) (relations : ∀ rel ∈ target2.relations, evaluate v rel = 0) :
    interpret (fun i => evaluate v (targetTarget i)) (fun i => targetMatrix i 2) =
      evaluate v [[31]] * evaluate v (targetSource 2) := by
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ target2_decoded (by simp)]
  have h := equalModulo_evaluate v _ _ _ target2_valid relations
  rw [target2_input,evaluate_multiply] at h
  exact h.symm
theorem target_all_vectors (v : Nat → R)
    (relations0 : ∀ rel ∈ target0.relations, evaluate v rel = 0)
    (relations1 : ∀ rel ∈ target1.relations, evaluate v rel = 0)
    (relations2 : ∀ rel ∈ target2.relations, evaluate v rel = 0)
    (x : Vec 3) :
    interpret (fun i => evaluate v (targetTarget i)) (eval targetMatrix x) =
      evaluate v [[31]] * interpret (fun j => evaluate v (targetSource j)) x := by
  apply all_products v targetSource targetTarget targetMatrix [[31]] _ x
  intro j
  have casesJ : j = 0 ∨ j = 1 ∨ j = 2 := by
    rcases j with ⟨j,hj⟩
    have h : j = 0 ∨ j = 1 ∨ j = 2 := by omega
    rcases h with rfl | rfl | rfl <;> simp
  rcases casesJ with rfl | rfl | rfl
  · exact target0_semantic v relations0
  · exact target1_semantic v relations1
  · exact target2_semantic v relations2
#print axioms target_all_vectors
end Row2907PDeltaDetection.Semantics
