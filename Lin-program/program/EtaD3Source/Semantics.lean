import EtaD3Source.Basic
import BranchReplayCertificates.BasisSemantics
namespace EtaD3Source.Semantics
open LinearCertificates NamedElementCertificates BranchReplayCertificates.BasisSemantics Data
variable {R : Type*} [CommRing R] [CharP R 2]
def zeroProductSource : Fin 1 → Polynomial := fun i => ([[[1]]] : List Polynomial)[i.val]!
def zeroProductTarget : Fin 0 → Polynomial := fun i => ([] : List Polynomial)[i.val]!
def zeroProductMatrix : Matrix 0 1 := fun i j => zeroProduct.product i ⟨0,by decide⟩ j
theorem zeroProduct0_decoded : EqualModuloRelations []
    (decodedBasisVector zeroProductTarget (fun i => zeroProductMatrix i 0)) zeroProduct0.output := by
  lin_cert using ([] : List Term)
theorem zeroProduct0_semantic (v : Nat → R)
    (relations : ∀ rel ∈ zeroProduct0.relations, evaluate v rel = 0) :
    interpret (fun i => evaluate v (zeroProductTarget i)) (fun i => zeroProductMatrix i 0) =
      evaluate v [[0]] * evaluate v (zeroProductSource 0) := by
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ zeroProduct0_decoded (by simp)]
  have h := equalModulo_evaluate v _ _ _ zeroProduct0_valid relations
  rw [evaluate_multiply] at h
  exact h.symm
theorem zeroProduct_all_vectors (v : Nat → R)
    (relations0 : ∀ rel ∈ zeroProduct0.relations, evaluate v rel = 0)
    (x : Vec 1) :
    interpret (fun i => evaluate v (zeroProductTarget i)) (eval zeroProductMatrix x) =
      evaluate v [[0]] * interpret (fun j => evaluate v (zeroProductSource j)) x := by
  apply all_products v zeroProductSource zeroProductTarget zeroProductMatrix [[0]] _ x
  intro j
  have hj : j = 0 := Fin.eq_zero j
  subst j
  exact zeroProduct0_semantic v relations0
#print axioms zeroProduct_all_vectors
def detectProductSource : Fin 1 → Polynomial := fun i => ([[[0,0,0,0]]] : List Polynomial)[i.val]!
def detectProductTarget : Fin 1 → Polynomial := fun i => ([[[0,0,0,0,0]]] : List Polynomial)[i.val]!
def detectProductMatrix : Matrix 1 1 := fun i j => detectProduct.product i ⟨0,by decide⟩ j
theorem detectProduct0_decoded : EqualModuloRelations []
    (decodedBasisVector detectProductTarget (fun i => detectProductMatrix i 0)) detectProduct0.output := by
  lin_cert using ([] : List Term)
theorem detectProduct0_semantic (v : Nat → R)
    (relations : ∀ rel ∈ detectProduct0.relations, evaluate v rel = 0) :
    interpret (fun i => evaluate v (detectProductTarget i)) (fun i => detectProductMatrix i 0) =
      evaluate v [[0]] * evaluate v (detectProductSource 0) := by
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ detectProduct0_decoded (by simp)]
  have h := equalModulo_evaluate v _ _ _ detectProduct0_valid relations
  rw [evaluate_multiply] at h
  exact h.symm
theorem detectProduct_all_vectors (v : Nat → R)
    (relations0 : ∀ rel ∈ detectProduct0.relations, evaluate v rel = 0)
    (x : Vec 1) :
    interpret (fun i => evaluate v (detectProductTarget i)) (eval detectProductMatrix x) =
      evaluate v [[0]] * interpret (fun j => evaluate v (detectProductSource j)) x := by
  apply all_products v detectProductSource detectProductTarget detectProductMatrix [[0]] _ x
  intro j
  have hj : j = 0 := Fin.eq_zero j
  subst j
  exact detectProduct0_semantic v relations0
#print axioms detectProduct_all_vectors
end EtaD3Source.Semantics
