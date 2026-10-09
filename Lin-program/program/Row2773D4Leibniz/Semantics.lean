import Row2773D4Leibniz.Basic
import BranchReplayCertificates.BasisSemantics
namespace Row2773D4Leibniz.Semantics
open LinearCertificates NamedElementCertificates BranchReplayCertificates.BasisSemantics Data
variable {R : Type*} [CommRing R] [CharP R 2]
def sourceProductSource : Fin 2 → Polynomial := fun i => ([[[1,351]],[[0,365]]] : List Polynomial)[i.val]!
def sourceProductTarget : Fin 3 → Polynomial := fun i => ([[[407]],[[1,1,351]],[[0,0,69,79]]] : List Polynomial)[i.val]!
def sourceProductMatrix : Matrix 3 2 := fun i j => sourceProduct.product i ⟨0,by decide⟩ j
theorem sourceProduct0_decoded : EqualModuloRelations []
    (decodedBasisVector sourceProductTarget (fun i => sourceProductMatrix i 0)) sourceProduct0.output := by
  lin_cert using ([] : List Term)
theorem sourceProduct0_semantic (v : Nat → R)
    (relations : ∀ rel ∈ sourceProduct0.relations, evaluate v rel = 0) :
    interpret (fun i => evaluate v (sourceProductTarget i)) (fun i => sourceProductMatrix i 0) =
      evaluate v [[1]] * evaluate v (sourceProductSource 0) := by
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
      evaluate v [[1]] * evaluate v (sourceProductSource 1) := by
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ sourceProduct1_decoded (by simp)]
  have h := equalModulo_evaluate v _ _ _ sourceProduct1_valid relations
  rw [evaluate_multiply] at h
  exact h.symm
theorem sourceProduct_all_vectors (v : Nat → R)
    (relations0 : ∀ rel ∈ sourceProduct0.relations, evaluate v rel = 0)
    (relations1 : ∀ rel ∈ sourceProduct1.relations, evaluate v rel = 0)
    (x : Vec 2) :
    interpret (fun i => evaluate v (sourceProductTarget i)) (eval sourceProductMatrix x) =
      evaluate v [[1]] * interpret (fun j => evaluate v (sourceProductSource j)) x := by
  apply all_products v sourceProductSource sourceProductTarget sourceProductMatrix [[1]] _ x
  intro j
  have casesJ : j = 0 ∨ j = 1 := by
    rcases j with ⟨j,hj⟩
    have h : j = 0 ∨ j = 1 := by omega
    rcases h with rfl | rfl <;> simp
  rcases casesJ with rfl | rfl
  · exact sourceProduct0_semantic v relations0
  · exact sourceProduct1_semantic v relations1
#print axioms sourceProduct_all_vectors
def leftProductSource : Fin 2 → Polynomial := fun i => ([[[1,351]],[[0,365]]] : List Polynomial)[i.val]!
def leftProductTarget : Fin 4 → Polynomial := fun i => ([[[436]],[[23,188]],[[0,422]],[[0,0,7,267]]] : List Polynomial)[i.val]!
def leftProductMatrix : Matrix 4 2 := fun i j => leftProduct.product i ⟨0,by decide⟩ j
theorem leftProduct0_decoded : EqualModuloRelations []
    (decodedBasisVector leftProductTarget (fun i => leftProductMatrix i 0)) leftProduct0.output := by
  lin_cert using ([] : List Term)
theorem leftProduct0_semantic (v : Nat → R)
    (relations : ∀ rel ∈ leftProduct0.relations, evaluate v rel = 0) :
    interpret (fun i => evaluate v (leftProductTarget i)) (fun i => leftProductMatrix i 0) =
      evaluate v [[0,0,0,0,0]] * evaluate v (leftProductSource 0) := by
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ leftProduct0_decoded (by simp)]
  have h := equalModulo_evaluate v _ _ _ leftProduct0_valid relations
  rw [evaluate_multiply] at h
  exact h.symm
theorem leftProduct1_decoded : EqualModuloRelations []
    (decodedBasisVector leftProductTarget (fun i => leftProductMatrix i 1)) leftProduct1.output := by
  lin_cert using ([] : List Term)
theorem leftProduct1_semantic (v : Nat → R)
    (relations : ∀ rel ∈ leftProduct1.relations, evaluate v rel = 0) :
    interpret (fun i => evaluate v (leftProductTarget i)) (fun i => leftProductMatrix i 1) =
      evaluate v [[0,0,0,0,0]] * evaluate v (leftProductSource 1) := by
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ leftProduct1_decoded (by simp)]
  have h := equalModulo_evaluate v _ _ _ leftProduct1_valid relations
  rw [evaluate_multiply] at h
  exact h.symm
theorem leftProduct_all_vectors (v : Nat → R)
    (relations0 : ∀ rel ∈ leftProduct0.relations, evaluate v rel = 0)
    (relations1 : ∀ rel ∈ leftProduct1.relations, evaluate v rel = 0)
    (x : Vec 2) :
    interpret (fun i => evaluate v (leftProductTarget i)) (eval leftProductMatrix x) =
      evaluate v [[0,0,0,0,0]] * interpret (fun j => evaluate v (leftProductSource j)) x := by
  apply all_products v leftProductSource leftProductTarget leftProductMatrix [[0,0,0,0,0]] _ x
  intro j
  have casesJ : j = 0 ∨ j = 1 := by
    rcases j with ⟨j,hj⟩
    have h : j = 0 ∨ j = 1 := by omega
    rcases h with rfl | rfl <;> simp
  rcases casesJ with rfl | rfl
  · exact leftProduct0_semantic v relations0
  · exact leftProduct1_semantic v relations1
#print axioms leftProduct_all_vectors
def rightProductSource : Fin 2 → Polynomial := fun i => ([[[7,266]],[[3,3,267]]] : List Polynomial)[i.val]!
def rightProductTarget : Fin 4 → Polynomial := fun i => ([[[436]],[[23,188]],[[0,422]],[[0,0,7,267]]] : List Polynomial)[i.val]!
def rightProductMatrix : Matrix 4 2 := fun i j => rightProduct.product i ⟨0,by decide⟩ j
theorem rightProduct0_decoded : EqualModuloRelations []
    (decodedBasisVector rightProductTarget (fun i => rightProductMatrix i 0)) rightProduct0.output := by
  lin_cert using ([] : List Term)
theorem rightProduct0_semantic (v : Nat → R)
    (relations : ∀ rel ∈ rightProduct0.relations, evaluate v rel = 0) :
    interpret (fun i => evaluate v (rightProductTarget i)) (fun i => rightProductMatrix i 0) =
      evaluate v [[1]] * evaluate v (rightProductSource 0) := by
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
      evaluate v [[1]] * evaluate v (rightProductSource 1) := by
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ rightProduct1_decoded (by simp)]
  have h := equalModulo_evaluate v _ _ _ rightProduct1_valid relations
  rw [evaluate_multiply] at h
  exact h.symm
theorem rightProduct_all_vectors (v : Nat → R)
    (relations0 : ∀ rel ∈ rightProduct0.relations, evaluate v rel = 0)
    (relations1 : ∀ rel ∈ rightProduct1.relations, evaluate v rel = 0)
    (x : Vec 2) :
    interpret (fun i => evaluate v (rightProductTarget i)) (eval rightProductMatrix x) =
      evaluate v [[1]] * interpret (fun j => evaluate v (rightProductSource j)) x := by
  apply all_products v rightProductSource rightProductTarget rightProductMatrix [[1]] _ x
  intro j
  have casesJ : j = 0 ∨ j = 1 := by
    rcases j with ⟨j,hj⟩
    have h : j = 0 ∨ j = 1 := by omega
    rcases h with rfl | rfl <;> simp
  rcases casesJ with rfl | rfl
  · exact rightProduct0_semantic v relations0
  · exact rightProduct1_semantic v relations1
#print axioms rightProduct_all_vectors
end Row2773D4Leibniz.Semantics
