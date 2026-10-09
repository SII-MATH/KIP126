import Row2576Detector.Quotient
import BranchReplayCertificates.BasisSemantics
namespace Row2576Detector.ProductSemantics
open LinearCertificates NamedElementCertificates BranchReplayCertificates.BasisSemantics h2
variable {R : Type*} [CommRing R] [CharP R 2]
def source4_132 : Fin 1 → Polynomial := fun i => ([[[1,1,69,69]]] : List Polynomial)[i.val]!
def target4_132 : Fin 0 → Polynomial := fun i => ([] : List Polynomial)[i.val]!
theorem decode2576 : EqualModuloRelations []
    (decodedBasisVector target4_132 (fun i => matrix4_132 i ⟨0,by decide⟩)) column2576.output := by
  lin_cert using ([] : List Term)
theorem semantic2576 (v : Nat → R)
    (hr : ∀ r ∈ column2576.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (target4_132 i)) (fun i => matrix4_132 i ⟨0,by decide⟩) =
      evaluate v factor * evaluate v (source4_132 ⟨0,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ decode2576 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ column2576_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem all_vectors4_132 (v : Nat → R)
    (hr2576 : ∀ r ∈ column2576.relations, evaluate v r = 0)
    (x : Vec 1) :
    interpret (fun i => evaluate v (target4_132 i)) (eval matrix4_132 x) =
      evaluate v factor * interpret (fun j => evaluate v (source4_132 j)) x := by
  apply all_products v source4_132 target4_132 matrix4_132 factor _ x
  intro j
  obtain ⟨j,hj⟩ := j
  have casesJ : j = 0 := by omega
  rcases casesJ with h0
  · subst j
    exact semantic2576 v hr2576
#print axioms all_vectors4_132
def source7_134 : Fin 5 → Polynomial := fun i => ([[[397]],[[396]],[[1,368]],[[0,377]],[[0,0,0,0,0,0,324]]] : List Polynomial)[i.val]!
def target7_134 : Fin 2 → Polynomial := fun i => ([[[445]],[[2,396]]] : List Polynomial)[i.val]!
theorem decode2706 : EqualModuloRelations []
    (decodedBasisVector target7_134 (fun i => matrix7_134 i ⟨0,by decide⟩)) column2706.output := by
  lin_cert using ([] : List Term)
theorem semantic2706 (v : Nat → R)
    (hr : ∀ r ∈ column2706.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (target7_134 i)) (fun i => matrix7_134 i ⟨0,by decide⟩) =
      evaluate v factor * evaluate v (source7_134 ⟨0,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ decode2706 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ column2706_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem decode2707 : EqualModuloRelations []
    (decodedBasisVector target7_134 (fun i => matrix7_134 i ⟨1,by decide⟩)) column2707.output := by
  lin_cert using ([] : List Term)
theorem semantic2707 (v : Nat → R)
    (hr : ∀ r ∈ column2707.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (target7_134 i)) (fun i => matrix7_134 i ⟨1,by decide⟩) =
      evaluate v factor * evaluate v (source7_134 ⟨1,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ decode2707 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ column2707_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem decode2708 : EqualModuloRelations []
    (decodedBasisVector target7_134 (fun i => matrix7_134 i ⟨2,by decide⟩)) column2708.output := by
  lin_cert using ([] : List Term)
theorem semantic2708 (v : Nat → R)
    (hr : ∀ r ∈ column2708.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (target7_134 i)) (fun i => matrix7_134 i ⟨2,by decide⟩) =
      evaluate v factor * evaluate v (source7_134 ⟨2,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ decode2708 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ column2708_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem decode2709 : EqualModuloRelations []
    (decodedBasisVector target7_134 (fun i => matrix7_134 i ⟨3,by decide⟩)) column2709.output := by
  lin_cert using ([] : List Term)
theorem semantic2709 (v : Nat → R)
    (hr : ∀ r ∈ column2709.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (target7_134 i)) (fun i => matrix7_134 i ⟨3,by decide⟩) =
      evaluate v factor * evaluate v (source7_134 ⟨3,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ decode2709 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ column2709_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem decode2710 : EqualModuloRelations []
    (decodedBasisVector target7_134 (fun i => matrix7_134 i ⟨4,by decide⟩)) column2710.output := by
  lin_cert using ([] : List Term)
theorem semantic2710 (v : Nat → R)
    (hr : ∀ r ∈ column2710.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (target7_134 i)) (fun i => matrix7_134 i ⟨4,by decide⟩) =
      evaluate v factor * evaluate v (source7_134 ⟨4,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ decode2710 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ column2710_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem all_vectors7_134 (v : Nat → R)
    (hr2706 : ∀ r ∈ column2706.relations, evaluate v r = 0)
    (hr2707 : ∀ r ∈ column2707.relations, evaluate v r = 0)
    (hr2708 : ∀ r ∈ column2708.relations, evaluate v r = 0)
    (hr2709 : ∀ r ∈ column2709.relations, evaluate v r = 0)
    (hr2710 : ∀ r ∈ column2710.relations, evaluate v r = 0)
    (x : Vec 5) :
    interpret (fun i => evaluate v (target7_134 i)) (eval matrix7_134 x) =
      evaluate v factor * interpret (fun j => evaluate v (source7_134 j)) x := by
  apply all_products v source7_134 target7_134 matrix7_134 factor _ x
  intro j
  obtain ⟨j,hj⟩ := j
  have casesJ : j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 ∨ j = 4 := by omega
  rcases casesJ with h0 | h1 | h2 | h3 | h4
  · subst j
    exact semantic2706 v hr2706
  · subst j
    exact semantic2707 v hr2707
  · subst j
    exact semantic2708 v hr2708
  · subst j
    exact semantic2709 v hr2709
  · subst j
    exact semantic2710 v hr2710
#print axioms all_vectors7_134
end Row2576Detector.ProductSemantics
