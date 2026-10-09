import Row2925EtaD4.H05
import BranchReplayCertificates.BasisSemantics
namespace Row2925EtaD4.H05Semantics
open LinearCertificates NamedElementCertificates BranchReplayCertificates.BasisSemantics
variable {R : Type*} [CommRing R] [CharP R 2]
def H05.source11_137 : Fin 6 → Polynomial := fun i => ([[[427]],[[1,413]],[[1,412]],[[0,419]],[[0,0,414]],[[0,0,0,0,0,0,0,0,0,69,69]]] : List Polynomial)[i.val]!
def H05.target11_137 : Fin 3 → Polynomial := fun i => ([[[1,1,439]],[[0,0,68,107]],[[0,0,0,0,0,0,0,0,0,0,0,0,0,0,69,69]]] : List Polynomial)[i.val]!
theorem H05.decode2923 : EqualModuloRelations []
    (decodedBasisVector H05.target11_137 (fun i => H05.matrix11_137 i ⟨0,by decide⟩)) H05.column2923.output := by
  lin_cert using ([] : List Term)
theorem H05.semantic2923 (v : Nat → R)
    (hr : ∀ r ∈ H05.column2923.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (H05.target11_137 i)) (fun i => H05.matrix11_137 i ⟨0,by decide⟩) =
      evaluate v H05.factor * evaluate v (H05.source11_137 ⟨0,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ H05.decode2923 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ H05.column2923_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem H05.decode2924 : EqualModuloRelations []
    (decodedBasisVector H05.target11_137 (fun i => H05.matrix11_137 i ⟨1,by decide⟩)) H05.column2924.output := by
  lin_cert using ([] : List Term)
theorem H05.semantic2924 (v : Nat → R)
    (hr : ∀ r ∈ H05.column2924.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (H05.target11_137 i)) (fun i => H05.matrix11_137 i ⟨1,by decide⟩) =
      evaluate v H05.factor * evaluate v (H05.source11_137 ⟨1,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ H05.decode2924 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ H05.column2924_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem H05.decode2925 : EqualModuloRelations []
    (decodedBasisVector H05.target11_137 (fun i => H05.matrix11_137 i ⟨2,by decide⟩)) H05.column2925.output := by
  lin_cert using ([] : List Term)
theorem H05.semantic2925 (v : Nat → R)
    (hr : ∀ r ∈ H05.column2925.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (H05.target11_137 i)) (fun i => H05.matrix11_137 i ⟨2,by decide⟩) =
      evaluate v H05.factor * evaluate v (H05.source11_137 ⟨2,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ H05.decode2925 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ H05.column2925_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem H05.decode2926 : EqualModuloRelations []
    (decodedBasisVector H05.target11_137 (fun i => H05.matrix11_137 i ⟨3,by decide⟩)) H05.column2926.output := by
  lin_cert using ([] : List Term)
theorem H05.semantic2926 (v : Nat → R)
    (hr : ∀ r ∈ H05.column2926.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (H05.target11_137 i)) (fun i => H05.matrix11_137 i ⟨3,by decide⟩) =
      evaluate v H05.factor * evaluate v (H05.source11_137 ⟨3,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ H05.decode2926 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ H05.column2926_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem H05.decode2927 : EqualModuloRelations []
    (decodedBasisVector H05.target11_137 (fun i => H05.matrix11_137 i ⟨4,by decide⟩)) H05.column2927.output := by
  lin_cert using ([] : List Term)
theorem H05.semantic2927 (v : Nat → R)
    (hr : ∀ r ∈ H05.column2927.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (H05.target11_137 i)) (fun i => H05.matrix11_137 i ⟨4,by decide⟩) =
      evaluate v H05.factor * evaluate v (H05.source11_137 ⟨4,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ H05.decode2927 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ H05.column2927_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem H05.decode2928 : EqualModuloRelations []
    (decodedBasisVector H05.target11_137 (fun i => H05.matrix11_137 i ⟨5,by decide⟩)) H05.column2928.output := by
  lin_cert using ([] : List Term)
theorem H05.semantic2928 (v : Nat → R)
    (hr : ∀ r ∈ H05.column2928.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (H05.target11_137 i)) (fun i => H05.matrix11_137 i ⟨5,by decide⟩) =
      evaluate v H05.factor * evaluate v (H05.source11_137 ⟨5,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ H05.decode2928 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ H05.column2928_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem H05.all_vectors11_137 (v : Nat → R)
    (hr2923 : ∀ r ∈ H05.column2923.relations, evaluate v r = 0)
    (hr2924 : ∀ r ∈ H05.column2924.relations, evaluate v r = 0)
    (hr2925 : ∀ r ∈ H05.column2925.relations, evaluate v r = 0)
    (hr2926 : ∀ r ∈ H05.column2926.relations, evaluate v r = 0)
    (hr2927 : ∀ r ∈ H05.column2927.relations, evaluate v r = 0)
    (hr2928 : ∀ r ∈ H05.column2928.relations, evaluate v r = 0)
    (x : Vec 6) :
    interpret (fun i => evaluate v (H05.target11_137 i)) (eval H05.matrix11_137 x) =
      evaluate v H05.factor * interpret (fun j => evaluate v (H05.source11_137 j)) x := by
  apply all_products v H05.source11_137 H05.target11_137 H05.matrix11_137 H05.factor _ x
  intro j
  obtain ⟨j,hj⟩ := j
  have casesJ : j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 ∨ j = 4 ∨ j = 5 := by omega
  rcases casesJ with h0 | h1 | h2 | h3 | h4 | h5
  · subst j
    exact H05.semantic2923 v hr2923
  · subst j
    exact H05.semantic2924 v hr2924
  · subst j
    exact H05.semantic2925 v hr2925
  · subst j
    exact H05.semantic2926 v hr2926
  · subst j
    exact H05.semantic2927 v hr2927
  · subst j
    exact H05.semantic2928 v hr2928
#print axioms H05.all_vectors11_137
end Row2925EtaD4.H05Semantics
