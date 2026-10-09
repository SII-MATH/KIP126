import BranchReplayCertificates.BasisSemantics
namespace BranchReplayCertificates.ProductBasisSemantics
open LinearCertificates NamedElementCertificates BasisSemantics Products
variable {R : Type*} [CommRing R] [CharP R 2]
def c3748Basis : Fin 5 → Polynomial := fun i => ([[[8,9,13,13,13,13,51]],[[8,8,580]],[[8,8,8,8,13,13,80]],[[0,0,0,0,0,0,921]],[[0,0,0,0,0,0,919]]] : List Polynomial)[i.val]!
theorem c3748Decode : EqualModuloRelations [] (decodedBasisVector c3748Basis (fun i => matrix21_147 i ⟨0, by decide⟩)) column3748.output := by lin_cert using ([] : List Term)
theorem c3748Semantic (v : Nat → R) (hr : ∀ r ∈ column3748.relations, evaluate v r = 0) : evaluate v (decodedBasisVector c3748Basis (fun i => matrix21_147 i ⟨0, by decide⟩)) = evaluate v factor * evaluate v [[530]] := by
  rw [equalModulo_evaluate v [] _ _ c3748Decode (by simp)]
  have hp := equalModulo_evaluate v _ _ _ column3748_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
def c3749Basis : Fin 5 → Polynomial := fun i => ([[[8,9,13,13,13,13,51]],[[8,8,580]],[[8,8,8,8,13,13,80]],[[0,0,0,0,0,0,921]],[[0,0,0,0,0,0,919]]] : List Polynomial)[i.val]!
theorem c3749Decode : EqualModuloRelations [] (decodedBasisVector c3749Basis (fun i => matrix21_147 i ⟨1, by decide⟩)) column3749.output := by lin_cert using ([] : List Term)
theorem c3749Semantic (v : Nat → R) (hr : ∀ r ∈ column3749.relations, evaluate v r = 0) : evaluate v (decodedBasisVector c3749Basis (fun i => matrix21_147 i ⟨1, by decide⟩)) = evaluate v factor * evaluate v [[1,510]] := by
  rw [equalModulo_evaluate v [] _ _ c3749Decode (by simp)]
  have hp := equalModulo_evaluate v _ _ _ column3749_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
def c3750Basis : Fin 5 → Polynomial := fun i => ([[[8,9,13,13,13,13,51]],[[8,8,580]],[[8,8,8,8,13,13,80]],[[0,0,0,0,0,0,921]],[[0,0,0,0,0,0,919]]] : List Polynomial)[i.val]!
theorem c3750Decode : EqualModuloRelations [] (decodedBasisVector c3750Basis (fun i => matrix21_147 i ⟨2, by decide⟩)) column3750.output := by lin_cert using ([] : List Term)
theorem c3750Semantic (v : Nat → R) (hr : ∀ r ∈ column3750.relations, evaluate v r = 0) : evaluate v (decodedBasisVector c3750Basis (fun i => matrix21_147 i ⟨2, by decide⟩)) = evaluate v factor * evaluate v [[0,0,0,500]] := by
  rw [equalModulo_evaluate v [] _ _ c3750Decode (by simp)]
  have hp := equalModulo_evaluate v _ _ _ column3750_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
def c3992Basis : Fin 3 → Polynomial := fun i => ([[[8,808]],[[8,8,8,8,8,13,13,51]],[[8,8,8,8,8,8,127]]] : List Polynomial)[i.val]!
theorem c3992Decode : EqualModuloRelations [] (decodedBasisVector c3992Basis (fun i => matrix25_150 i ⟨0, by decide⟩)) column3992.output := by lin_cert using ([] : List Term)
theorem c3992Semantic (v : Nat → R) (hr : ∀ r ∈ column3992.relations, evaluate v r = 0) : evaluate v (decodedBasisVector c3992Basis (fun i => matrix25_150 i ⟨0, by decide⟩)) = evaluate v factor * evaluate v [[559]] := by
  rw [equalModulo_evaluate v [] _ _ c3992Decode (by simp)]
  have hp := equalModulo_evaluate v _ _ _ column3992_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
def c3993Basis : Fin 3 → Polynomial := fun i => ([[[8,808]],[[8,8,8,8,8,13,13,51]],[[8,8,8,8,8,8,127]]] : List Polynomial)[i.val]!
theorem c3993Decode : EqualModuloRelations [] (decodedBasisVector c3993Basis (fun i => matrix25_150 i ⟨1, by decide⟩)) column3993.output := by lin_cert using ([] : List Term)
theorem c3993Semantic (v : Nat → R) (hr : ∀ r ∈ column3993.relations, evaluate v r = 0) : evaluate v (decodedBasisVector c3993Basis (fun i => matrix25_150 i ⟨1, by decide⟩)) = evaluate v factor * evaluate v [[558]] := by
  rw [equalModulo_evaluate v [] _ _ c3993Decode (by simp)]
  have hp := equalModulo_evaluate v _ _ _ column3993_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
def c3994Basis : Fin 3 → Polynomial := fun i => ([[[8,808]],[[8,8,8,8,8,13,13,51]],[[8,8,8,8,8,8,127]]] : List Polynomial)[i.val]!
theorem c3994Decode : EqualModuloRelations [] (decodedBasisVector c3994Basis (fun i => matrix25_150 i ⟨2, by decide⟩)) column3994.output := by lin_cert using ([] : List Term)
theorem c3994Semantic (v : Nat → R) (hr : ∀ r ∈ column3994.relations, evaluate v r = 0) : evaluate v (decodedBasisVector c3994Basis (fun i => matrix25_150 i ⟨2, by decide⟩)) = evaluate v factor * evaluate v [[13,13,13,13,51]] := by
  rw [equalModulo_evaluate v [] _ _ c3994Decode (by simp)]
  have hp := equalModulo_evaluate v _ _ _ column3994_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
def c3995Basis : Fin 3 → Polynomial := fun i => ([[[8,808]],[[8,8,8,8,8,13,13,51]],[[8,8,8,8,8,8,127]]] : List Polynomial)[i.val]!
theorem c3995Decode : EqualModuloRelations [] (decodedBasisVector c3995Basis (fun i => matrix25_150 i ⟨3, by decide⟩)) column3995.output := by lin_cert using ([] : List Term)
theorem c3995Semantic (v : Nat → R) (hr : ∀ r ∈ column3995.relations, evaluate v r = 0) : evaluate v (decodedBasisVector c3995Basis (fun i => matrix25_150 i ⟨3, by decide⟩)) = evaluate v factor * evaluate v [[8,8,9,13,80]] := by
  rw [equalModulo_evaluate v [] _ _ c3995Decode (by simp)]
  have hp := equalModulo_evaluate v _ _ _ column3995_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
end BranchReplayCertificates.ProductBasisSemantics
