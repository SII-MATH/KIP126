import Row2684D5Search.Data
import BranchReplayCertificates.BasisSemantics

namespace Row2684D5Search.Semantics
open LinearCertificates PageProductCertificates NamedElementCertificates
open BranchReplayCertificates.BasisSemantics Data

def factorBasis : Fin 2 → Polynomial := fun i => ([[[75]],[[74]]] : List Polynomial)[i.val]!
def sourceBasis : Fin 3 → Polynomial := fun i =>
  ([[[18,188]],[[0,371]],[[0,69,79]]] : List Polynomial)[i.val]!

variable {R : Type*} [CommRing R] [CharP R 2]

theorem column00 (v : Nat → R)
    (relations : ∀ rel ∈ product00.relations, evaluate v rel = 0) :
    interpret (fun i => evaluate v (sourceBasis i)) (fun i => tensor i 0 0) =
      evaluate v (factorBasis 0) * evaluate v (factorBasis 0) := by
  have decoded : EqualModuloRelations []
      (decodedBasisVector sourceBasis (fun i => tensor i 0 0)) product00.output := by
    lin_cert using ([] : List Term)
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ decoded (by simp)]
  have h := equalModulo_evaluate v _ _ _ product00_valid relations
  change evaluate v (multiply (factorBasis 0) (factorBasis 0)) = _ at h
  rw [evaluate_multiply] at h
  exact h.symm

theorem column01 (v : Nat → R)
    (relations : ∀ rel ∈ product01.relations, evaluate v rel = 0) :
    interpret (fun i => evaluate v (sourceBasis i)) (fun i => tensor i 0 1) =
      evaluate v (factorBasis 0) * evaluate v (factorBasis 1) := by
  have decoded : EqualModuloRelations []
      (decodedBasisVector sourceBasis (fun i => tensor i 0 1)) product01.output := by
    lin_cert using ([] : List Term)
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ decoded (by simp)]
  have h := equalModulo_evaluate v _ _ _ product01_valid relations
  change evaluate v (multiply (factorBasis 0) (factorBasis 1)) = _ at h
  rw [evaluate_multiply] at h
  exact h.symm

theorem column10 (v : Nat → R)
    (relations : ∀ rel ∈ product10.relations, evaluate v rel = 0) :
    interpret (fun i => evaluate v (sourceBasis i)) (fun i => tensor i 1 0) =
      evaluate v (factorBasis 1) * evaluate v (factorBasis 0) := by
  have decoded : EqualModuloRelations []
      (decodedBasisVector sourceBasis (fun i => tensor i 1 0)) product10.output := by
    lin_cert using ([] : List Term)
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ decoded (by simp)]
  have h := equalModulo_evaluate v _ _ _ product10_valid relations
  have input : evaluate v product10.input = evaluate v (factorBasis 1) * evaluate v (factorBasis 0) := by
    simp [product10,factorBasis,evaluate,evaluateMonomial,mul_comm]
  exact h.symm.trans input

theorem column11 (v : Nat → R)
    (relations : ∀ rel ∈ product11.relations, evaluate v rel = 0) :
    interpret (fun i => evaluate v (sourceBasis i)) (fun i => tensor i 1 1) =
      evaluate v (factorBasis 1) * evaluate v (factorBasis 1) := by
  have decoded : EqualModuloRelations []
      (decodedBasisVector sourceBasis (fun i => tensor i 1 1)) product11.output := by
    lin_cert using ([] : List Term)
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ decoded (by simp)]
  have h := equalModulo_evaluate v _ _ _ product11_valid relations
  change evaluate v (multiply (factorBasis 1) (factorBasis 1)) = _ at h
  rw [evaluate_multiply] at h
  exact h.symm

theorem all_products (v : Nat → R)
    (h00 : ∀ rel ∈ product00.relations, evaluate v rel = 0)
    (h01 : ∀ rel ∈ product01.relations, evaluate v rel = 0)
    (h10 : ∀ rel ∈ product10.relations, evaluate v rel = 0)
    (h11 : ∀ rel ∈ product11.relations, evaluate v rel = 0)
    (x y : Vec 2) :
    interpret (fun i => evaluate v (sourceBasis i)) (product tensor x y) =
      interpret (fun i => evaluate v (factorBasis i)) x *
      interpret (fun i => evaluate v (factorBasis i)) y := by
  have columns (j k : Fin 2) :
      interpret (fun i => evaluate v (sourceBasis i)) (fun i => tensor i j k) =
        evaluate v (factorBasis j) * evaluate v (factorBasis k) := by
    have jc : j = 0 ∨ j = 1 := by omega
    have kc : k = 0 ∨ k = 1 := by omega
    rcases jc with rfl | rfl <;> rcases kc with rfl | rfl
    · exact column00 v h00
    · exact column01 v h01
    · exact column10 v h10
    · exact column11 v h11
  rw [product,interpret_matrix]
  have inside (j : Fin 2) :
      interpret (fun i => evaluate v (sourceBasis i)) (fun i => eval (tensor i) y j) =
        evaluate v (factorBasis j) * interpret (fun i => evaluate v (factorBasis i)) y := by
    change interpret _ (eval (fun i k => tensor i j k) y) = _
    rw [interpret_matrix]
    simp only [columns]
    exact interpret_mul _ _ _
  simp only [inside]
  have commute (j : Fin 2) : evaluate v (factorBasis j) *
      interpret (fun i => evaluate v (factorBasis i)) y =
    interpret (fun i => evaluate v (factorBasis i)) y * evaluate v (factorBasis j) := mul_comm _ _
  simp only [commute]
  rw [interpret_mul,mul_comm]

#print axioms column00
#print axioms column01
#print axioms column10
#print axioms column11
#print axioms all_products
end Row2684D5Search.Semantics
