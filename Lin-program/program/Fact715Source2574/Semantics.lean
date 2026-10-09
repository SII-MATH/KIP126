import Fact715Source2574.Finite
import BranchReplayCertificates.BasisSemantics

namespace Fact715Source2574.Semantics
open LinearCertificates NamedElementCertificates BranchReplayCertificates.BasisSemantics
variable {R : Type*} [CommRing R] [CharP R 2]

def source : Fin 2 → Polynomial := fun i =>
  ([[[368]],[[0,0,0,0,69,69]]] : List Polynomial)[i.val]!
def target : Fin 1 → Polynomial := fun _ => [[2,368]]
def matrix : Matrix 1 2 := fun i j => Data.tensor.product i ⟨0,by decide⟩ j

theorem first_decoded : EqualModuloRelations []
    (decodedBasisVector target (fun i => matrix i ⟨0,by decide⟩)) Data.column0.output := by
  lin_cert using ([] : List Term)
theorem second_decoded : EqualModuloRelations []
    (decodedBasisVector target (fun i => matrix i ⟨1,by decide⟩)) Data.column1.output := by
  lin_cert using ([] : List Term)
theorem first_input : Data.column0.input = multiply [[2]] (source ⟨0,by decide⟩) := by decide
theorem second_input : Data.column1.input = multiply [[2]] (source ⟨1,by decide⟩) := by decide

theorem first_value (v : Nat → R) (relations : ∀ rel ∈ Data.column0.relations, evaluate v rel = 0) :
    interpret (fun i => evaluate v (target i)) (fun i => matrix i ⟨0,by decide⟩) =
      evaluate v [[2]] * evaluate v (source ⟨0,by decide⟩) := by
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ first_decoded (by simp)]
  have h := equalModulo_evaluate v _ _ _ Data.column0_valid relations
  rw [first_input,evaluate_multiply] at h
  exact h.symm

theorem second_value (v : Nat → R) (relations : ∀ rel ∈ Data.column1.relations, evaluate v rel = 0) :
    interpret (fun i => evaluate v (target i)) (fun i => matrix i ⟨1,by decide⟩) =
      evaluate v [[2]] * evaluate v (source ⟨1,by decide⟩) := by
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ second_decoded (by simp)]
  have h := equalModulo_evaluate v _ _ _ Data.column1_valid relations
  rw [second_input,evaluate_multiply] at h
  exact h.symm

theorem all_vectors (v : Nat → R)
    (r0 : ∀ rel ∈ Data.column0.relations, evaluate v rel = 0)
    (r1 : ∀ rel ∈ Data.column1.relations, evaluate v rel = 0) (x : Vec 2) :
    interpret (fun i => evaluate v (target i)) (eval matrix x) =
      evaluate v [[2]] * interpret (fun i => evaluate v (source i)) x := by
  apply all_products v source target matrix [[2]] _ x
  intro j
  have cases : j = 0 ∨ j = 1 := by omega
  rcases cases with rfl | rfl
  · exact first_value v r0
  · exact second_value v r1

#print axioms first_decoded
#print axioms second_decoded
#print axioms first_input
#print axioms second_input
#print axioms first_value
#print axioms second_value
#print axioms all_vectors
end Fact715Source2574.Semantics
