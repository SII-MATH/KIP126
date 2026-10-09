import Row3564LeibnizDetector.Quotient
import BranchReplayCertificates.BasisSemantics
namespace Row3564LeibnizDetector.ProductSemantics
open LinearCertificates NamedElementCertificates BranchReplayCertificates.BasisSemantics
variable {R : Type*} [CommRing R] [CharP R 2]
def h1.source17_143 : Fin 4 → Polynomial := fun i => ([[[493]],[[8,294]],[[1,1,448]],[[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,69,69]]] : List Polynomial)[i.val]!
def h1.target17_143 : Fin 5 → Polynomial := fun i => ([[[13,13,164]],[[1,493]],[[0,0,0,481]],[[0,0,0,69,112]],[[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,324]]] : List Polynomial)[i.val]!
theorem h1.decode3393 : EqualModuloRelations []
    (decodedBasisVector h1.target17_143 (fun i => h1.matrix17_143 i ⟨0,by decide⟩)) h1.column3393.output := by
  lin_cert using ([] : List Term)
theorem h1.semantic3393 (v : Nat → R)
    (hr : ∀ r ∈ h1.column3393.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (h1.target17_143 i)) (fun i => h1.matrix17_143 i ⟨0,by decide⟩) =
      evaluate v h1.factor * evaluate v (h1.source17_143 ⟨0,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ h1.decode3393 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ h1.column3393_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem h1.decode3394 : EqualModuloRelations []
    (decodedBasisVector h1.target17_143 (fun i => h1.matrix17_143 i ⟨1,by decide⟩)) h1.column3394.output := by
  lin_cert using ([] : List Term)
theorem h1.semantic3394 (v : Nat → R)
    (hr : ∀ r ∈ h1.column3394.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (h1.target17_143 i)) (fun i => h1.matrix17_143 i ⟨1,by decide⟩) =
      evaluate v h1.factor * evaluate v (h1.source17_143 ⟨1,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ h1.decode3394 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ h1.column3394_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem h1.decode3395 : EqualModuloRelations []
    (decodedBasisVector h1.target17_143 (fun i => h1.matrix17_143 i ⟨2,by decide⟩)) h1.column3395.output := by
  lin_cert using ([] : List Term)
theorem h1.semantic3395 (v : Nat → R)
    (hr : ∀ r ∈ h1.column3395.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (h1.target17_143 i)) (fun i => h1.matrix17_143 i ⟨2,by decide⟩) =
      evaluate v h1.factor * evaluate v (h1.source17_143 ⟨2,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ h1.decode3395 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ h1.column3395_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem h1.decode3396 : EqualModuloRelations []
    (decodedBasisVector h1.target17_143 (fun i => h1.matrix17_143 i ⟨3,by decide⟩)) h1.column3396.output := by
  lin_cert using ([] : List Term)
theorem h1.semantic3396 (v : Nat → R)
    (hr : ∀ r ∈ h1.column3396.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (h1.target17_143 i)) (fun i => h1.matrix17_143 i ⟨3,by decide⟩) =
      evaluate v h1.factor * evaluate v (h1.source17_143 ⟨3,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ h1.decode3396 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ h1.column3396_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem h1.all_vectors17_143 (v : Nat → R)
    (hr3393 : ∀ r ∈ h1.column3393.relations, evaluate v r = 0)
    (hr3394 : ∀ r ∈ h1.column3394.relations, evaluate v r = 0)
    (hr3395 : ∀ r ∈ h1.column3395.relations, evaluate v r = 0)
    (hr3396 : ∀ r ∈ h1.column3396.relations, evaluate v r = 0)
    (x : Vec 4) :
    interpret (fun i => evaluate v (h1.target17_143 i)) (eval h1.matrix17_143 x) =
      evaluate v h1.factor * interpret (fun j => evaluate v (h1.source17_143 j)) x := by
  apply all_products v h1.source17_143 h1.target17_143 h1.matrix17_143 h1.factor _ x
  intro j
  obtain ⟨j,hj⟩ := j
  have casesJ : j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 := by omega
  rcases casesJ with h0 | h1 | h2 | h3
  · subst j
    exact h1.semantic3393 v hr3393
  · subst j
    exact h1.semantic3394 v hr3394
  · subst j
    exact h1.semantic3395 v hr3395
  · subst j
    exact h1.semantic3396 v hr3396
#print axioms h1.all_vectors17_143
def h1.source20_145 : Fin 3 → Polynomial := fun i => ([[[510]],[[0,8,13,188]],[[0,0,0,0,0,0,449]]] : List Polynomial)[i.val]!
def h1.target20_145 : Fin 3 → Polynomial := fun i => ([[[530]],[[1,510]],[[0,0,0,500]]] : List Polynomial)[i.val]!
theorem h1.decode3556 : EqualModuloRelations []
    (decodedBasisVector h1.target20_145 (fun i => h1.matrix20_145 i ⟨0,by decide⟩)) h1.column3556.output := by
  lin_cert using ([] : List Term)
theorem h1.semantic3556 (v : Nat → R)
    (hr : ∀ r ∈ h1.column3556.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (h1.target20_145 i)) (fun i => h1.matrix20_145 i ⟨0,by decide⟩) =
      evaluate v h1.factor * evaluate v (h1.source20_145 ⟨0,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ h1.decode3556 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ h1.column3556_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem h1.decode3557 : EqualModuloRelations []
    (decodedBasisVector h1.target20_145 (fun i => h1.matrix20_145 i ⟨1,by decide⟩)) h1.column3557.output := by
  lin_cert using ([] : List Term)
theorem h1.semantic3557 (v : Nat → R)
    (hr : ∀ r ∈ h1.column3557.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (h1.target20_145 i)) (fun i => h1.matrix20_145 i ⟨1,by decide⟩) =
      evaluate v h1.factor * evaluate v (h1.source20_145 ⟨1,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ h1.decode3557 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ h1.column3557_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem h1.decode3558 : EqualModuloRelations []
    (decodedBasisVector h1.target20_145 (fun i => h1.matrix20_145 i ⟨2,by decide⟩)) h1.column3558.output := by
  lin_cert using ([] : List Term)
theorem h1.semantic3558 (v : Nat → R)
    (hr : ∀ r ∈ h1.column3558.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (h1.target20_145 i)) (fun i => h1.matrix20_145 i ⟨2,by decide⟩) =
      evaluate v h1.factor * evaluate v (h1.source20_145 ⟨2,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ h1.decode3558 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ h1.column3558_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem h1.all_vectors20_145 (v : Nat → R)
    (hr3556 : ∀ r ∈ h1.column3556.relations, evaluate v r = 0)
    (hr3557 : ∀ r ∈ h1.column3557.relations, evaluate v r = 0)
    (hr3558 : ∀ r ∈ h1.column3558.relations, evaluate v r = 0)
    (x : Vec 3) :
    interpret (fun i => evaluate v (h1.target20_145 i)) (eval h1.matrix20_145 x) =
      evaluate v h1.factor * interpret (fun j => evaluate v (h1.source20_145 j)) x := by
  apply all_products v h1.source20_145 h1.target20_145 h1.matrix20_145 h1.factor _ x
  intro j
  obtain ⟨j,hj⟩ := j
  have casesJ : j = 0 ∨ j = 1 ∨ j = 2 := by omega
  rcases casesJ with h0 | h1 | h2
  · subst j
    exact h1.semantic3556 v hr3556
  · subst j
    exact h1.semantic3557 v hr3557
  · subst j
    exact h1.semantic3558 v hr3558
#print axioms h1.all_vectors20_145
def h04.source17_143 : Fin 4 → Polynomial := fun i => ([[[493]],[[8,294]],[[1,1,448]],[[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,69,69]]] : List Polynomial)[i.val]!
def h04.target17_143 : Fin 3 → Polynomial := fun i => ([[[530]],[[1,510]],[[0,0,0,500]]] : List Polynomial)[i.val]!
theorem h04.decode3393 : EqualModuloRelations []
    (decodedBasisVector h04.target17_143 (fun i => h04.matrix17_143 i ⟨0,by decide⟩)) h04.column3393.output := by
  lin_cert using ([] : List Term)
theorem h04.semantic3393 (v : Nat → R)
    (hr : ∀ r ∈ h04.column3393.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (h04.target17_143 i)) (fun i => h04.matrix17_143 i ⟨0,by decide⟩) =
      evaluate v h04.factor * evaluate v (h04.source17_143 ⟨0,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ h04.decode3393 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ h04.column3393_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem h04.decode3394 : EqualModuloRelations []
    (decodedBasisVector h04.target17_143 (fun i => h04.matrix17_143 i ⟨1,by decide⟩)) h04.column3394.output := by
  lin_cert using ([] : List Term)
theorem h04.semantic3394 (v : Nat → R)
    (hr : ∀ r ∈ h04.column3394.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (h04.target17_143 i)) (fun i => h04.matrix17_143 i ⟨1,by decide⟩) =
      evaluate v h04.factor * evaluate v (h04.source17_143 ⟨1,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ h04.decode3394 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ h04.column3394_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem h04.decode3395 : EqualModuloRelations []
    (decodedBasisVector h04.target17_143 (fun i => h04.matrix17_143 i ⟨2,by decide⟩)) h04.column3395.output := by
  lin_cert using ([] : List Term)
theorem h04.semantic3395 (v : Nat → R)
    (hr : ∀ r ∈ h04.column3395.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (h04.target17_143 i)) (fun i => h04.matrix17_143 i ⟨2,by decide⟩) =
      evaluate v h04.factor * evaluate v (h04.source17_143 ⟨2,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ h04.decode3395 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ h04.column3395_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem h04.decode3396 : EqualModuloRelations []
    (decodedBasisVector h04.target17_143 (fun i => h04.matrix17_143 i ⟨3,by decide⟩)) h04.column3396.output := by
  lin_cert using ([] : List Term)
theorem h04.semantic3396 (v : Nat → R)
    (hr : ∀ r ∈ h04.column3396.relations, evaluate v r = 0) :
    interpret (fun i => evaluate v (h04.target17_143 i)) (fun i => h04.matrix17_143 i ⟨3,by decide⟩) =
      evaluate v h04.factor * evaluate v (h04.source17_143 ⟨3,by decide⟩) := by
  rw [← decoded_evaluate, equalModulo_evaluate v [] _ _ h04.decode3396 (by simp)]
  have hp := equalModulo_evaluate v _ _ _ h04.column3396_product hr
  rw [evaluate_multiply] at hp
  exact hp.symm
theorem h04.all_vectors17_143 (v : Nat → R)
    (hr3393 : ∀ r ∈ h04.column3393.relations, evaluate v r = 0)
    (hr3394 : ∀ r ∈ h04.column3394.relations, evaluate v r = 0)
    (hr3395 : ∀ r ∈ h04.column3395.relations, evaluate v r = 0)
    (hr3396 : ∀ r ∈ h04.column3396.relations, evaluate v r = 0)
    (x : Vec 4) :
    interpret (fun i => evaluate v (h04.target17_143 i)) (eval h04.matrix17_143 x) =
      evaluate v h04.factor * interpret (fun j => evaluate v (h04.source17_143 j)) x := by
  apply all_products v h04.source17_143 h04.target17_143 h04.matrix17_143 h04.factor _ x
  intro j
  obtain ⟨j,hj⟩ := j
  have casesJ : j = 0 ∨ j = 1 ∨ j = 2 ∨ j = 3 := by omega
  rcases casesJ with h0 | h1 | h2 | h3
  · subst j
    exact h04.semantic3393 v hr3393
  · subst j
    exact h04.semantic3394 v hr3394
  · subst j
    exact h04.semantic3395 v hr3395
  · subst j
    exact h04.semantic3396 v hr3396
#print axioms h04.all_vectors17_143
end Row3564LeibnizDetector.ProductSemantics
