import NamedPageComparison.Row2858.Products_g
import BranchReplayCertificates.BasisSemantics
namespace NamedPageComparison.Row2858.Semantics_g
open LinearCertificates NamedElementCertificates BranchReplayCertificates.BasisSemantics NamedPageComparison.Row2858.g
variable {R : Type*} [CommRing R] [CharP R 2]
def c2855Basis : Fin 2 → Polynomial := fun i => ([[[651]],[[9,450]]] : List Polynomial)[i.val]!
theorem c2855Decode : EqualModuloRelations [] (decodedBasisVector c2855Basis (fun i => matrix10_136 i ⟨0, by decide⟩)) column2855.output := by lin_cert using ([] : List Term)
theorem c2855Semantic (v : Nat → R) (hr : ∀ r ∈ column2855.relations, evaluate v r = 0) : evaluate v (decodedBasisVector c2855Basis (fun i => matrix10_136 i ⟨0, by decide⟩)) = evaluate v factor * evaluate v [[419]] := by
  rw [equalModulo_evaluate v [] _ _ c2855Decode (by simp)]
  have hp := equalModulo_evaluate v _ _ _ column2855_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
def c2856Basis : Fin 2 → Polynomial := fun i => ([[[651]],[[9,450]]] : List Polynomial)[i.val]!
theorem c2856Decode : EqualModuloRelations [] (decodedBasisVector c2856Basis (fun i => matrix10_136 i ⟨1, by decide⟩)) column2856.output := by lin_cert using ([] : List Term)
theorem c2856Semantic (v : Nat → R) (hr : ∀ r ∈ column2856.relations, evaluate v r = 0) : evaluate v (decodedBasisVector c2856Basis (fun i => matrix10_136 i ⟨1, by decide⟩)) = evaluate v factor * evaluate v [[0,414]] := by
  rw [equalModulo_evaluate v [] _ _ c2856Decode (by simp)]
  have hp := equalModulo_evaluate v _ _ _ column2856_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
def c2857Basis : Fin 2 → Polynomial := fun i => ([[[651]],[[9,450]]] : List Polynomial)[i.val]!
theorem c2857Decode : EqualModuloRelations [] (decodedBasisVector c2857Basis (fun i => matrix10_136 i ⟨2, by decide⟩)) column2857.output := by lin_cert using ([] : List Term)
theorem c2857Semantic (v : Nat → R) (hr : ∀ r ∈ column2857.relations, evaluate v r = 0) : evaluate v (decodedBasisVector c2857Basis (fun i => matrix10_136 i ⟨2, by decide⟩)) = evaluate v factor * evaluate v [[0,0,394]] := by
  rw [equalModulo_evaluate v [] _ _ c2857Decode (by simp)]
  have hp := equalModulo_evaluate v _ _ _ column2857_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
def c2858Basis : Fin 2 → Polynomial := fun i => ([[[651]],[[9,450]]] : List Polynomial)[i.val]!
theorem c2858Decode : EqualModuloRelations [] (decodedBasisVector c2858Basis (fun i => matrix10_136 i ⟨3, by decide⟩)) column2858.output := by lin_cert using ([] : List Term)
theorem c2858Semantic (v : Nat → R) (hr : ∀ r ∈ column2858.relations, evaluate v r = 0) : evaluate v (decodedBasisVector c2858Basis (fun i => matrix10_136 i ⟨3, by decide⟩)) = evaluate v factor * evaluate v [[0,0,392]] := by
  rw [equalModulo_evaluate v [] _ _ c2858Decode (by simp)]
  have hp := equalModulo_evaluate v _ _ _ column2858_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
def c2859Basis : Fin 2 → Polynomial := fun i => ([[[651]],[[9,450]]] : List Polynomial)[i.val]!
theorem c2859Decode : EqualModuloRelations [] (decodedBasisVector c2859Basis (fun i => matrix10_136 i ⟨4, by decide⟩)) column2859.output := by lin_cert using ([] : List Term)
theorem c2859Semantic (v : Nat → R) (hr : ∀ r ∈ column2859.relations, evaluate v r = 0) : evaluate v (decodedBasisVector c2859Basis (fun i => matrix10_136 i ⟨4, by decide⟩)) = evaluate v factor * evaluate v [[0,0,0,0,0,0,0,0,69,69]] := by
  rw [equalModulo_evaluate v [] _ _ c2859Decode (by simp)]
  have hp := equalModulo_evaluate v _ _ _ column2859_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
def c3008Basis : Fin 3 → Polynomial := fun i => ([[[9,474]],[[8,502]],[[0,0,650]]] : List Polynomial)[i.val]!
theorem c3008Decode : EqualModuloRelations [] (decodedBasisVector c3008Basis (fun i => matrix13_138 i ⟨0, by decide⟩)) column3008.output := by lin_cert using ([] : List Term)
theorem c3008Semantic (v : Nat → R) (hr : ∀ r ∈ column3008.relations, evaluate v r = 0) : evaluate v (decodedBasisVector c3008Basis (fun i => matrix13_138 i ⟨0, by decide⟩)) = evaluate v factor * evaluate v [[24,190]] := by
  rw [equalModulo_evaluate v [] _ _ c3008Decode (by simp)]
  have hp := equalModulo_evaluate v _ _ _ column3008_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
def c3009Basis : Fin 3 → Polynomial := fun i => ([[[9,474]],[[8,502]],[[0,0,650]]] : List Polynomial)[i.val]!
theorem c3009Decode : EqualModuloRelations [] (decodedBasisVector c3009Basis (fun i => matrix13_138 i ⟨1, by decide⟩)) column3009.output := by lin_cert using ([] : List Term)
theorem c3009Semantic (v : Nat → R) (hr : ∀ r ∈ column3009.relations, evaluate v r = 0) : evaluate v (decodedBasisVector c3009Basis (fun i => matrix13_138 i ⟨1, by decide⟩)) = evaluate v factor * evaluate v [[3,335]] := by
  rw [equalModulo_evaluate v [] _ _ c3009Decode (by simp)]
  have hp := equalModulo_evaluate v _ _ _ column3009_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
def c3010Basis : Fin 3 → Polynomial := fun i => ([[[9,474]],[[8,502]],[[0,0,650]]] : List Polynomial)[i.val]!
theorem c3010Decode : EqualModuloRelations [] (decodedBasisVector c3010Basis (fun i => matrix13_138 i ⟨2, by decide⟩)) column3010.output := by lin_cert using ([] : List Term)
theorem c3010Semantic (v : Nat → R) (hr : ∀ r ∈ column3010.relations, evaluate v r = 0) : evaluate v (decodedBasisVector c3010Basis (fun i => matrix13_138 i ⟨2, by decide⟩)) = evaluate v factor * evaluate v [[0,425]] := by
  rw [equalModulo_evaluate v [] _ _ c3010Decode (by simp)]
  have hp := equalModulo_evaluate v _ _ _ column3010_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
def c3011Basis : Fin 3 → Polynomial := fun i => ([[[9,474]],[[8,502]],[[0,0,650]]] : List Polynomial)[i.val]!
theorem c3011Decode : EqualModuloRelations [] (decodedBasisVector c3011Basis (fun i => matrix13_138 i ⟨3, by decide⟩)) column3011.output := by lin_cert using ([] : List Term)
theorem c3011Semantic (v : Nat → R) (hr : ∀ r ∈ column3011.relations, evaluate v r = 0) : evaluate v (decodedBasisVector c3011Basis (fun i => matrix13_138 i ⟨3, by decide⟩)) = evaluate v factor * evaluate v [[0,0,0,0,391]] := by
  rw [equalModulo_evaluate v [] _ _ c3011Decode (by simp)]
  have hp := equalModulo_evaluate v _ _ _ column3011_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
def c3012Basis : Fin 3 → Polynomial := fun i => ([[[9,474]],[[8,502]],[[0,0,650]]] : List Polynomial)[i.val]!
theorem c3012Decode : EqualModuloRelations [] (decodedBasisVector c3012Basis (fun i => matrix13_138 i ⟨4, by decide⟩)) column3012.output := by lin_cert using ([] : List Term)
theorem c3012Semantic (v : Nat → R) (hr : ∀ r ∈ column3012.relations, evaluate v r = 0) : evaluate v (decodedBasisVector c3012Basis (fun i => matrix13_138 i ⟨4, by decide⟩)) = evaluate v factor * evaluate v [[0,0,0,0,0,375]] := by
  rw [equalModulo_evaluate v [] _ _ c3012Decode (by simp)]
  have hp := equalModulo_evaluate v _ _ _ column3012_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
def source10 : Fin 5 → Polynomial := fun j => ([[[419]],[[0,414]],[[0,0,394]],[[0,0,392]],[[0,0,0,0,0,0,0,0,69,69]]] : List Polynomial)[j.val]!
theorem allCoefficients10 (v : Nat → R)
    (hr2855 : ∀ r ∈ column2855.relations, evaluate v r = 0)
    (hr2856 : ∀ r ∈ column2856.relations, evaluate v r = 0)
    (hr2857 : ∀ r ∈ column2857.relations, evaluate v r = 0)
    (hr2858 : ∀ r ∈ column2858.relations, evaluate v r = 0)
    (hr2859 : ∀ r ∈ column2859.relations, evaluate v r = 0)
    (x : Vec 5) : interpret (fun i => evaluate v (c2855Basis i)) (eval matrix10_136 x) = evaluate v factor * interpret (fun j => evaluate v (source10 j)) x := by
  apply all_products v source10 c2855Basis matrix10_136 factor _ x
  intro j
  obtain ⟨j,hj⟩ := j
  have hh : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 := by omega
  rcases hh with h0 | h1 | h2 | h3 | h4
  · subst j
    exact (decoded_evaluate v c2855Basis _).symm.trans (c2855Semantic v hr2855)
  · subst j
    exact (decoded_evaluate v c2855Basis _).symm.trans (c2856Semantic v hr2856)
  · subst j
    exact (decoded_evaluate v c2855Basis _).symm.trans (c2857Semantic v hr2857)
  · subst j
    exact (decoded_evaluate v c2855Basis _).symm.trans (c2858Semantic v hr2858)
  · subst j
    exact (decoded_evaluate v c2855Basis _).symm.trans (c2859Semantic v hr2859)
def source13 : Fin 5 → Polynomial := fun j => ([[[24,190]],[[3,335]],[[0,425]],[[0,0,0,0,391]],[[0,0,0,0,0,375]]] : List Polynomial)[j.val]!
theorem allCoefficients13 (v : Nat → R)
    (hr3008 : ∀ r ∈ column3008.relations, evaluate v r = 0)
    (hr3009 : ∀ r ∈ column3009.relations, evaluate v r = 0)
    (hr3010 : ∀ r ∈ column3010.relations, evaluate v r = 0)
    (hr3011 : ∀ r ∈ column3011.relations, evaluate v r = 0)
    (hr3012 : ∀ r ∈ column3012.relations, evaluate v r = 0)
    (x : Vec 5) : interpret (fun i => evaluate v (c3008Basis i)) (eval matrix13_138 x) = evaluate v factor * interpret (fun j => evaluate v (source13 j)) x := by
  apply all_products v source13 c3008Basis matrix13_138 factor _ x
  intro j
  obtain ⟨j,hj⟩ := j
  have hh : j=0 ∨ j=1 ∨ j=2 ∨ j=3 ∨ j=4 := by omega
  rcases hh with h0 | h1 | h2 | h3 | h4
  · subst j
    exact (decoded_evaluate v c3008Basis _).symm.trans (c3008Semantic v hr3008)
  · subst j
    exact (decoded_evaluate v c3008Basis _).symm.trans (c3009Semantic v hr3009)
  · subst j
    exact (decoded_evaluate v c3008Basis _).symm.trans (c3010Semantic v hr3010)
  · subst j
    exact (decoded_evaluate v c3008Basis _).symm.trans (c3011Semantic v hr3011)
  · subst j
    exact (decoded_evaluate v c3008Basis _).symm.trans (c3012Semantic v hr3012)
end NamedPageComparison.Row2858.Semantics_g
