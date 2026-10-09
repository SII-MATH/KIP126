import BranchReplayCertificates.BasisSemantics
import BranchReplayCertificates.MapRefutation
namespace BranchReplayCertificates.MapBasisSemantics
open LinearCertificates NamedElementCertificates BasisSemantics MapColumns MapRefutation
variable {R : Type*} [CommRing R] [CharP R 2]
def basis21 : Fin 0 → Polynomial := fun i => ([] : List Polynomial)[i.val]!
theorem decode3748 : EqualModuloRelations [] (decodedBasisVector basis21 (fun i => sourceMap i ⟨0, by decide⟩)) column3748.output := by lin_cert using ([] : List Term)
theorem semantic3748 (v : Nat → R) : evaluate v (decodedBasisVector basis21 (fun i => sourceMap i ⟨0, by decide⟩)) = evaluate v column3748.output := equalModulo_evaluate v [] _ _ decode3748 (by simp)
theorem decode3749 : EqualModuloRelations [] (decodedBasisVector basis21 (fun i => sourceMap i ⟨1, by decide⟩)) column3749.output := by lin_cert using ([] : List Term)
theorem semantic3749 (v : Nat → R) : evaluate v (decodedBasisVector basis21 (fun i => sourceMap i ⟨1, by decide⟩)) = evaluate v column3749.output := equalModulo_evaluate v [] _ _ decode3749 (by simp)
theorem decode3750 : EqualModuloRelations [] (decodedBasisVector basis21 (fun i => sourceMap i ⟨2, by decide⟩)) column3750.output := by lin_cert using ([] : List Term)
theorem semantic3750 (v : Nat → R) : evaluate v (decodedBasisVector basis21 (fun i => sourceMap i ⟨2, by decide⟩)) = evaluate v column3750.output := equalModulo_evaluate v [] _ _ decode3750 (by simp)
def basis25 : Fin 2 → Polynomial := fun i => ([[[7,7,7,7,7,7,7,9]],[[0,0,5,8,12,12]]] : List Polynomial)[i.val]!
theorem decode3992 : EqualModuloRelations [] (decodedBasisVector basis25 (fun i => targetMap i ⟨0, by decide⟩)) column3992.output := by lin_cert using ([] : List Term)
theorem semantic3992 (v : Nat → R) : evaluate v (decodedBasisVector basis25 (fun i => targetMap i ⟨0, by decide⟩)) = evaluate v column3992.output := equalModulo_evaluate v [] _ _ decode3992 (by simp)
theorem decode3993 : EqualModuloRelations [] (decodedBasisVector basis25 (fun i => targetMap i ⟨1, by decide⟩)) column3993.output := by lin_cert using ([] : List Term)
theorem semantic3993 (v : Nat → R) : evaluate v (decodedBasisVector basis25 (fun i => targetMap i ⟨1, by decide⟩)) = evaluate v column3993.output := equalModulo_evaluate v [] _ _ decode3993 (by simp)
theorem decode3994 : EqualModuloRelations [] (decodedBasisVector basis25 (fun i => targetMap i ⟨2, by decide⟩)) column3994.output := by lin_cert using ([] : List Term)
theorem semantic3994 (v : Nat → R) : evaluate v (decodedBasisVector basis25 (fun i => targetMap i ⟨2, by decide⟩)) = evaluate v column3994.output := equalModulo_evaluate v [] _ _ decode3994 (by simp)
theorem decode3995 : EqualModuloRelations [] (decodedBasisVector basis25 (fun i => targetMap i ⟨3, by decide⟩)) column3995.output := by lin_cert using ([] : List Term)
theorem semantic3995 (v : Nat → R) : evaluate v (decodedBasisVector basis25 (fun i => targetMap i ⟨3, by decide⟩)) = evaluate v column3995.output := equalModulo_evaluate v [] _ _ decode3995 (by simp)
theorem substitutionSemantic3748 (v : Nat → R) (hr : ∀ r ∈ column3748.relations, evaluate v r = 0) : evaluate v (decodedBasisVector basis21 (fun i => sourceMap i ⟨0, by decide⟩)) = evaluateMonomial (fun g => evaluate v (images g)) [530] := by
  rw [semantic3748]
  have hp := equalModulo_evaluate v _ _ _ column3748_proved hr
  rw [RealMapCertificates.substitute_evaluate] at hp
  exact hp.symm
theorem substitutionSemantic3749 (v : Nat → R) (hr : ∀ r ∈ column3749.relations, evaluate v r = 0) : evaluate v (decodedBasisVector basis21 (fun i => sourceMap i ⟨1, by decide⟩)) = evaluateMonomial (fun g => evaluate v (images g)) [1,510] := by
  rw [semantic3749]
  have hp := equalModulo_evaluate v _ _ _ column3749_proved hr
  rw [RealMapCertificates.substitute_evaluate] at hp
  exact hp.symm
theorem substitutionSemantic3750 (v : Nat → R) (hr : ∀ r ∈ column3750.relations, evaluate v r = 0) : evaluate v (decodedBasisVector basis21 (fun i => sourceMap i ⟨2, by decide⟩)) = evaluateMonomial (fun g => evaluate v (images g)) [0,0,0,500] := by
  rw [semantic3750]
  have hp := equalModulo_evaluate v _ _ _ column3750_proved hr
  rw [RealMapCertificates.substitute_evaluate] at hp
  exact hp.symm
theorem substitutionSemantic3992 (v : Nat → R) (hr : ∀ r ∈ column3992.relations, evaluate v r = 0) : evaluate v (decodedBasisVector basis25 (fun i => targetMap i ⟨0, by decide⟩)) = evaluateMonomial (fun g => evaluate v (images g)) [559] := by
  rw [semantic3992]
  have hp := equalModulo_evaluate v _ _ _ column3992_proved hr
  rw [RealMapCertificates.substitute_evaluate] at hp
  exact hp.symm
theorem substitutionSemantic3993 (v : Nat → R) (hr : ∀ r ∈ column3993.relations, evaluate v r = 0) : evaluate v (decodedBasisVector basis25 (fun i => targetMap i ⟨1, by decide⟩)) = evaluateMonomial (fun g => evaluate v (images g)) [558] := by
  rw [semantic3993]
  have hp := equalModulo_evaluate v _ _ _ column3993_proved hr
  rw [RealMapCertificates.substitute_evaluate] at hp
  exact hp.symm
theorem substitutionSemantic3994 (v : Nat → R) (hr : ∀ r ∈ column3994.relations, evaluate v r = 0) : evaluate v (decodedBasisVector basis25 (fun i => targetMap i ⟨2, by decide⟩)) = evaluateMonomial (fun g => evaluate v (images g)) [13,13,13,13,51] := by
  rw [semantic3994]
  have hp := equalModulo_evaluate v _ _ _ column3994_proved hr
  rw [RealMapCertificates.substitute_evaluate] at hp
  exact hp.symm
theorem substitutionSemantic3995 (v : Nat → R) (hr : ∀ r ∈ column3995.relations, evaluate v r = 0) : evaluate v (decodedBasisVector basis25 (fun i => targetMap i ⟨3, by decide⟩)) = evaluateMonomial (fun g => evaluate v (images g)) [8,8,9,13,80] := by
  rw [semantic3995]
  have hp := equalModulo_evaluate v _ _ _ column3995_proved hr
  rw [RealMapCertificates.substitute_evaluate] at hp
  exact hp.symm
def monomials21 : Fin 3 → Monomial := fun j => ([[530],[1,510],[0,0,0,500]] : List Monomial)[j.val]!
theorem allCoefficients21 (v : Nat → R)
    (hr3748 : ∀ r ∈ column3748.relations, evaluate v r = 0)
    (hr3749 : ∀ r ∈ column3749.relations, evaluate v r = 0)
    (hr3750 : ∀ r ∈ column3750.relations, evaluate v r = 0)
    (x : Vec 3) : interpret (fun i => evaluate v (basis21 i)) (eval sourceMap x) = interpret (fun j => evaluateMonomial (fun g => evaluate v (images g)) (monomials21 j)) x := by
  rw [interpret_matrix]
  have columns : (fun j => interpret (fun i => evaluate v (basis21 i)) (fun i => sourceMap i j)) = (fun j => evaluateMonomial (fun g => evaluate v (images g)) (monomials21 j)) := by
    funext j
    obtain ⟨j,hj⟩ := j
    have hh : j=0 ∨ j=1 ∨ j=2 := by omega
    rcases hh with h0 | h1 | h2
    · subst j
      exact (decoded_evaluate v basis21 _).symm.trans (substitutionSemantic3748 v hr3748)
    · subst j
      exact (decoded_evaluate v basis21 _).symm.trans (substitutionSemantic3749 v hr3749)
    · subst j
      exact (decoded_evaluate v basis21 _).symm.trans (substitutionSemantic3750 v hr3750)
  rw [columns]
def monomials25 : Fin 4 → Monomial := fun j => ([[559],[558],[13,13,13,13,51],[8,8,9,13,80]] : List Monomial)[j.val]!
theorem allCoefficients25 (v : Nat → R)
    (hr3992 : ∀ r ∈ column3992.relations, evaluate v r = 0)
    (hr3993 : ∀ r ∈ column3993.relations, evaluate v r = 0)
    (hr3994 : ∀ r ∈ column3994.relations, evaluate v r = 0)
    (hr3995 : ∀ r ∈ column3995.relations, evaluate v r = 0)
    (x : Vec 4) : interpret (fun i => evaluate v (basis25 i)) (eval targetMap x) = interpret (fun j => evaluateMonomial (fun g => evaluate v (images g)) (monomials25 j)) x := by
  rw [interpret_matrix]
  have columns : (fun j => interpret (fun i => evaluate v (basis25 i)) (fun i => targetMap i j)) = (fun j => evaluateMonomial (fun g => evaluate v (images g)) (monomials25 j)) := by
    funext j
    obtain ⟨j,hj⟩ := j
    have hh : j=0 ∨ j=1 ∨ j=2 ∨ j=3 := by omega
    rcases hh with h0 | h1 | h2 | h3
    · subst j
      exact (decoded_evaluate v basis25 _).symm.trans (substitutionSemantic3992 v hr3992)
    · subst j
      exact (decoded_evaluate v basis25 _).symm.trans (substitutionSemantic3993 v hr3993)
    · subst j
      exact (decoded_evaluate v basis25 _).symm.trans (substitutionSemantic3994 v hr3994)
    · subst j
      exact (decoded_evaluate v basis25 _).symm.trans (substitutionSemantic3995 v hr3995)
  rw [columns]
end BranchReplayCertificates.MapBasisSemantics
