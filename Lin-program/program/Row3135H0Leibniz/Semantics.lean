import Row3135H0Leibniz.Basic
import BranchReplayCertificates.BasisSemantics
namespace Row3135H0Leibniz.Semantics
open LinearCertificates NamedElementCertificates BranchReplayCertificates.BasisSemantics Data
variable {R : Type*} [CommRing R] [CharP R 2]
def sourceProductSource : Fin 3 → Polynomial := fun i => ([[[0,22,188]],[[0,8,267]],[[0,0,17,209]]] : List Polynomial)[i.val]!
def sourceProductTarget : Fin 3 → Polynomial := fun i => ([[[455]],[[0,0,8,267]],[[0,0,0,17,209]]] : List Polynomial)[i.val]!
def sourceProductMatrix : Matrix 3 3 := fun i j => sourceProduct.product i ⟨0,by decide⟩ j
theorem sourceProduct0_decoded : EqualModuloRelations []
    (decodedBasisVector sourceProductTarget (fun i => sourceProductMatrix i 0)) sourceProduct0.output := by
  lin_cert using ([] : List Term)
theorem sourceProduct0_semantic (v : Nat → R)
    (relations : ∀ rel ∈ sourceProduct0.relations, evaluate v rel = 0) :
    interpret (fun i => evaluate v (sourceProductTarget i)) (fun i => sourceProductMatrix i 0) =
      evaluate v [[0]] * evaluate v (sourceProductSource 0) := by
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ sourceProduct0_decoded (by simp)]
  have h := equalModulo_evaluate v _ _ _ sourceProduct0_valid relations
  rw [evaluate_multiply] at h
  exact h.symm
theorem sourceProduct1_decoded : EqualModuloRelations []
    (decodedBasisVector sourceProductTarget (fun i => sourceProductMatrix i 1)) sourceProduct1.output := by
  lin_cert using ([] : List Term)
theorem sourceProduct1_semantic (v : Nat → R)
    (relations : ∀ rel ∈ sourceProduct1.relations, evaluate v rel = 0) :
    interpret (fun i => evaluate v (sourceProductTarget i)) (fun i => sourceProductMatrix i 1) =
      evaluate v [[0]] * evaluate v (sourceProductSource 1) := by
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ sourceProduct1_decoded (by simp)]
  have h := equalModulo_evaluate v _ _ _ sourceProduct1_valid relations
  rw [evaluate_multiply] at h
  exact h.symm
theorem sourceProduct2_decoded : EqualModuloRelations []
    (decodedBasisVector sourceProductTarget (fun i => sourceProductMatrix i 2)) sourceProduct2.output := by
  lin_cert using ([] : List Term)
theorem sourceProduct2_semantic (v : Nat → R)
    (relations : ∀ rel ∈ sourceProduct2.relations, evaluate v rel = 0) :
    interpret (fun i => evaluate v (sourceProductTarget i)) (fun i => sourceProductMatrix i 2) =
      evaluate v [[0]] * evaluate v (sourceProductSource 2) := by
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ sourceProduct2_decoded (by simp)]
  have h := equalModulo_evaluate v _ _ _ sourceProduct2_valid relations
  rw [evaluate_multiply] at h
  exact h.symm
theorem sourceProduct_all_vectors (v : Nat → R)
    (relations0 : ∀ rel ∈ sourceProduct0.relations, evaluate v rel = 0)
    (relations1 : ∀ rel ∈ sourceProduct1.relations, evaluate v rel = 0)
    (relations2 : ∀ rel ∈ sourceProduct2.relations, evaluate v rel = 0)
    (x : Vec 3) :
    interpret (fun i => evaluate v (sourceProductTarget i)) (eval sourceProductMatrix x) =
      evaluate v [[0]] * interpret (fun j => evaluate v (sourceProductSource j)) x := by
  apply all_products v sourceProductSource sourceProductTarget sourceProductMatrix [[0]] _ x
  intro j
  have casesJ : j = 0 ∨ j = 1 ∨ j = 2 := by
    rcases j with ⟨j,hj⟩
    have h : j = 0 ∨ j = 1 ∨ j = 2 := by omega
    rcases h with rfl | rfl | rfl <;> simp
  rcases casesJ with rfl | rfl | rfl
  · exact sourceProduct0_semantic v relations0
  · exact sourceProduct1_semantic v relations1
  · exact sourceProduct2_semantic v relations2
#print axioms sourceProduct_all_vectors
def rightProductSource : Fin 3 → Polynomial := fun i => ([[[471]],[[8,13,13,101]],[[0,454]]] : List Polynomial)[i.val]!
def rightProductTarget : Fin 2 → Polynomial := fun i => ([[[0,471]],[[0,0,454]]] : List Polynomial)[i.val]!
def rightProductMatrix : Matrix 2 3 := fun i j => rightProduct.product i ⟨0,by decide⟩ j
theorem rightProduct0_decoded : EqualModuloRelations []
    (decodedBasisVector rightProductTarget (fun i => rightProductMatrix i 0)) rightProduct0.output := by
  lin_cert using ([] : List Term)
theorem rightProduct0_semantic (v : Nat → R)
    (relations : ∀ rel ∈ rightProduct0.relations, evaluate v rel = 0) :
    interpret (fun i => evaluate v (rightProductTarget i)) (fun i => rightProductMatrix i 0) =
      evaluate v [[0]] * evaluate v (rightProductSource 0) := by
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ rightProduct0_decoded (by simp)]
  have h := equalModulo_evaluate v _ _ _ rightProduct0_valid relations
  rw [evaluate_multiply] at h
  exact h.symm
theorem rightProduct1_decoded : EqualModuloRelations []
    (decodedBasisVector rightProductTarget (fun i => rightProductMatrix i 1)) rightProduct1.output := by
  lin_cert using ([] : List Term)
theorem rightProduct1_semantic (v : Nat → R)
    (relations : ∀ rel ∈ rightProduct1.relations, evaluate v rel = 0) :
    interpret (fun i => evaluate v (rightProductTarget i)) (fun i => rightProductMatrix i 1) =
      evaluate v [[0]] * evaluate v (rightProductSource 1) := by
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ rightProduct1_decoded (by simp)]
  have h := equalModulo_evaluate v _ _ _ rightProduct1_valid relations
  rw [evaluate_multiply] at h
  exact h.symm
theorem rightProduct2_decoded : EqualModuloRelations []
    (decodedBasisVector rightProductTarget (fun i => rightProductMatrix i 2)) rightProduct2.output := by
  lin_cert using ([] : List Term)
theorem rightProduct2_semantic (v : Nat → R)
    (relations : ∀ rel ∈ rightProduct2.relations, evaluate v rel = 0) :
    interpret (fun i => evaluate v (rightProductTarget i)) (fun i => rightProductMatrix i 2) =
      evaluate v [[0]] * evaluate v (rightProductSource 2) := by
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ rightProduct2_decoded (by simp)]
  have h := equalModulo_evaluate v _ _ _ rightProduct2_valid relations
  rw [evaluate_multiply] at h
  exact h.symm
theorem rightProduct_all_vectors (v : Nat → R)
    (relations0 : ∀ rel ∈ rightProduct0.relations, evaluate v rel = 0)
    (relations1 : ∀ rel ∈ rightProduct1.relations, evaluate v rel = 0)
    (relations2 : ∀ rel ∈ rightProduct2.relations, evaluate v rel = 0)
    (x : Vec 3) :
    interpret (fun i => evaluate v (rightProductTarget i)) (eval rightProductMatrix x) =
      evaluate v [[0]] * interpret (fun j => evaluate v (rightProductSource j)) x := by
  apply all_products v rightProductSource rightProductTarget rightProductMatrix [[0]] _ x
  intro j
  have casesJ : j = 0 ∨ j = 1 ∨ j = 2 := by
    rcases j with ⟨j,hj⟩
    have h : j = 0 ∨ j = 1 ∨ j = 2 := by omega
    rcases h with rfl | rfl | rfl <;> simp
  rcases casesJ with rfl | rfl | rfl
  · exact rightProduct0_semantic v relations0
  · exact rightProduct1_semantic v relations1
  · exact rightProduct2_semantic v relations2
#print axioms rightProduct_all_vectors
end Row3135H0Leibniz.Semantics
