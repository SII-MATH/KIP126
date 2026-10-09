import Fact762SphereGDetection.H0Data
import BranchReplayCertificates.BasisSemantics
namespace Fact762SphereGDetection.Semantics
open LinearCertificates NamedElementCertificates BranchReplayCertificates.BasisSemantics
variable {R : Type*} [CommRing R] [CharP R 2]
set_option maxRecDepth 8192
def gSource : Fin 2 → Polynomial := fun i => ([[[8,293]],[[0,0,0,0,0,440]]] : List Polynomial)[i.val]!
def gTarget : Fin 5 → Polynomial := fun i => ([[[8,8,350]],[[1,64,187]],[[0,69,185]],[[0,0,702]],[[0,0,64,188]]] : List Polynomial)[i.val]!
def gMatrix : Matrix 5 2 := fun i j => Data.product2.product i ⟨0,by decide⟩ j
theorem g0_decoded : EqualModuloRelations [] (decodedBasisVector gTarget (fun i => gMatrix i ⟨0,by decide⟩)) Data.p2.output := by lin_cert using ([] : List Term)
theorem g0_value (v : Nat → R) (relations : ∀ rel ∈ Data.p2.relations, evaluate v rel = 0) : interpret (fun i => evaluate v (gTarget i)) (fun i => gMatrix i ⟨0,by decide⟩) = evaluate v [[13]] * evaluate v (gSource ⟨0,by decide⟩) := by
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ g0_decoded (by simp)]
  have h := equalModulo_evaluate v _ _ _ Data.p2_valid relations
  rw [evaluate_multiply] at h
  exact h.symm
theorem g1_decoded : EqualModuloRelations [] (decodedBasisVector gTarget (fun i => gMatrix i ⟨1,by decide⟩)) Data.p3.output := by lin_cert using ([] : List Term)
theorem g1_value (v : Nat → R) (relations : ∀ rel ∈ Data.p3.relations, evaluate v rel = 0) : interpret (fun i => evaluate v (gTarget i)) (fun i => gMatrix i ⟨1,by decide⟩) = evaluate v [[13]] * evaluate v (gSource ⟨1,by decide⟩) := by
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ g1_decoded (by simp)]
  have h := equalModulo_evaluate v _ _ _ Data.p3_valid relations
  rw [evaluate_multiply] at h
  exact h.symm
theorem g_all_vectors (v : Nat → R)
    (relations0 : ∀ rel ∈ Data.p2.relations, evaluate v rel = 0)
    (relations1 : ∀ rel ∈ Data.p3.relations, evaluate v rel = 0)
    (x : Vec 2) : interpret (fun i => evaluate v (gTarget i)) (eval gMatrix x) = evaluate v [[13]] * interpret (fun j => evaluate v (gSource j)) x := by
  apply all_products v gSource gTarget gMatrix [[13]] _ x
  intro j
  have casesJ : j = 0 ∨ j = 1 := by omega
  rcases casesJ with rfl | rfl
  · exact g0_value v relations0
  · exact g1_value v relations1
#print axioms g_all_vectors
def h0Source : Fin 4 → Polynomial := fun i => ([[[69,185]],[[0,702]],[[0,64,188]],[[0,0,690]]] : List Polynomial)[i.val]!
def h0Target : Fin 5 → Polynomial := fun i => ([[[8,8,350]],[[1,64,187]],[[0,69,185]],[[0,0,702]],[[0,0,64,188]]] : List Polynomial)[i.val]!
def h0Matrix : Matrix 5 4 := fun i j => H0Data.wire.product i ⟨0,by decide⟩ j
theorem h00_decoded : EqualModuloRelations [] (decodedBasisVector h0Target (fun i => h0Matrix i ⟨0,by decide⟩)) H0Data.column0.output := by lin_cert using ([] : List Term)
theorem h00_value (v : Nat → R) (relations : ∀ rel ∈ H0Data.column0.relations, evaluate v rel = 0) : interpret (fun i => evaluate v (h0Target i)) (fun i => h0Matrix i ⟨0,by decide⟩) = evaluate v [[0]] * evaluate v (h0Source ⟨0,by decide⟩) := by
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ h00_decoded (by simp)]
  have h := equalModulo_evaluate v _ _ _ H0Data.column0_valid relations
  rw [evaluate_multiply] at h
  exact h.symm
theorem h01_decoded : EqualModuloRelations [] (decodedBasisVector h0Target (fun i => h0Matrix i ⟨1,by decide⟩)) H0Data.column1.output := by lin_cert using ([] : List Term)
theorem h01_value (v : Nat → R) (relations : ∀ rel ∈ H0Data.column1.relations, evaluate v rel = 0) : interpret (fun i => evaluate v (h0Target i)) (fun i => h0Matrix i ⟨1,by decide⟩) = evaluate v [[0]] * evaluate v (h0Source ⟨1,by decide⟩) := by
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ h01_decoded (by simp)]
  have h := equalModulo_evaluate v _ _ _ H0Data.column1_valid relations
  rw [evaluate_multiply] at h
  exact h.symm
theorem h02_decoded : EqualModuloRelations [] (decodedBasisVector h0Target (fun i => h0Matrix i ⟨2,by decide⟩)) H0Data.column2.output := by lin_cert using ([] : List Term)
theorem h02_value (v : Nat → R) (relations : ∀ rel ∈ H0Data.column2.relations, evaluate v rel = 0) : interpret (fun i => evaluate v (h0Target i)) (fun i => h0Matrix i ⟨2,by decide⟩) = evaluate v [[0]] * evaluate v (h0Source ⟨2,by decide⟩) := by
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ h02_decoded (by simp)]
  have h := equalModulo_evaluate v _ _ _ H0Data.column2_valid relations
  rw [evaluate_multiply] at h
  exact h.symm
theorem h03_decoded : EqualModuloRelations [] (decodedBasisVector h0Target (fun i => h0Matrix i ⟨3,by decide⟩)) H0Data.column3.output := by lin_cert using ([] : List Term)
theorem h03_value (v : Nat → R) (relations : ∀ rel ∈ H0Data.column3.relations, evaluate v rel = 0) : interpret (fun i => evaluate v (h0Target i)) (fun i => h0Matrix i ⟨3,by decide⟩) = evaluate v [[0]] * evaluate v (h0Source ⟨3,by decide⟩) := by
  rw [← decoded_evaluate,equalModulo_evaluate v [] _ _ h03_decoded (by simp)]
  have h := equalModulo_evaluate v _ _ _ H0Data.column3_valid relations
  rw [evaluate_multiply] at h
  exact h.symm
theorem h0_all_vectors (v : Nat → R)
    (relations0 : ∀ rel ∈ H0Data.column0.relations, evaluate v rel = 0)
    (relations1 : ∀ rel ∈ H0Data.column1.relations, evaluate v rel = 0)
    (relations2 : ∀ rel ∈ H0Data.column2.relations, evaluate v rel = 0)
    (relations3 : ∀ rel ∈ H0Data.column3.relations, evaluate v rel = 0)
    (x : Vec 4) : interpret (fun i => evaluate v (h0Target i)) (eval h0Matrix x) = evaluate v [[0]] * interpret (fun j => evaluate v (h0Source j)) x := by
  apply all_products v h0Source h0Target h0Matrix [[0]] _ x
  intro j
  have casesJ : j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 := by omega
  rcases casesJ with rfl | rfl | rfl | rfl
  · exact h00_value v relations0
  · exact h01_value v relations1
  · exact h02_value v relations2
  · exact h03_value v relations3
#print axioms h0_all_vectors
end Fact762SphereGDetection.Semantics
