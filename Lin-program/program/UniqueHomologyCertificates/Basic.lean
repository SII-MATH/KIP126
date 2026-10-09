import PageTransitionCertificates.Trajectory

namespace UniqueHomologyCertificates
open LinearCertificates PageTransitionCertificates

/-- The specified class is the unique nonzero element of the entire quotient.
The quantifier includes every cycle, not just a list of named candidates. -/
def IsUniqueNonzeroClass (outgoing : Matrix k m) (incoming : Matrix m n)
    (named : Vec m) : Prop :=
  IsComplex outgoing incoming ∧ InKernel outgoing named ∧ ¬ InImage incoming named ∧
  ∀ y, InKernel outgoing y → InImage incoming y ∨ InImage incoming (add y named)

def check (w : WireComparison) (named : List Bool) : Bool :=
  checkWire w && decide (w.h = 1) &&
    checkStage ⟨w, named⟩

theorem one_bit_dichotomy {n : Nat} (one : n = 1) (x y : Vec n) (nonzero : y ≠ zero) :
    x = zero ∨ x = y := by
  subst n
  have hy : y 0 = true := by
    cases h : y 0 with
    | true => rfl
    | false =>
      apply False.elim
      apply nonzero
      funext i
      have hi : i = 0 := Fin.ext (by omega)
      subst i
      exact h
  cases hx : x 0 with
  | false =>
    left
    funext i
    have hi : i = 0 := Fin.ext (by omega)
    subst i
    exact hx
  | true =>
    right
    funext i
    have hi : i = 0 := Fin.ext (by omega)
    subst i
    exact hx.trans hy.symm

theorem sound (w : WireComparison) (named : List Bool) (checked : check w named = true) :
    IsUniqueNonzeroClass (matrixOf w.k w.m w.outgoing)
      (matrixOf w.m w.n w.incoming) (Stage.vector ⟨w, named⟩) := by
  simp only [check, Bool.and_eq_true, decide_eq_true_eq] at checked
  have valid := checkWire_sound w checked.1.1
  have stage := checkStage_sound ⟨w, named⟩ checked.2
  refine ⟨valid.2.1, stage.2.2.1, stage.2.2.2, ?_⟩
  intro y hy
  have nonzero : eval w.comparison.projection (Stage.vector ⟨w, named⟩) ≠ zero := by
    intro hz
    exact stage.2.2.2 ((projection_zero_iff_boundary _ _ _ valid.2 _ stage.2.2.1).mp hz)
  rcases one_bit_dichotomy checked.1.2 (eval w.comparison.projection y)
      (eval w.comparison.projection (Stage.vector ⟨w, named⟩)) nonzero with hz | he
  · exact Or.inl ((projection_zero_iff_boundary _ _ _ valid.2 y hy).mp hz)
  · exact Or.inr ((valid.2.2.2.2.2 y _ hy stage.2.2.1).mp he)

/-- The goal supplies both differential matrices and the proposed class. -/
structure Certificate (outgoing : Matrix k m) (incoming : Matrix m n) (named : Vec m) where
  comparison : Comparison k m n 1

def checkCertificate (outgoing : Matrix k m) (incoming : Matrix m n) (named : Vec m)
    (c : Certificate outgoing incoming named) : Bool :=
  checkComparison outgoing incoming c.comparison && checkKernel outgoing named &&
    eval c.comparison.projection named 0

theorem certificate_sound (outgoing : Matrix k m) (incoming : Matrix m n) (named : Vec m)
    (c : Certificate outgoing incoming named)
    (checked : checkCertificate outgoing incoming named c = true) :
    IsUniqueNonzeroClass outgoing incoming named := by
  simp only [checkCertificate, Bool.and_eq_true] at checked
  have valid := checkComparison_sound _ _ _ checked.1.1
  have cycle := checkKernel_sound _ _ checked.1.2
  have nonzero : eval c.comparison.projection named ≠ zero := by
    intro hz
    have hf := congrFun hz 0
    rw [checked.2] at hf
    contradiction
  have nonboundary : ¬ InImage incoming named := by
    intro hb
    exact nonzero ((projection_zero_iff_boundary _ _ _ valid named cycle).mpr hb)
  refine ⟨valid.1, cycle, nonboundary, ?_⟩
  intro y hy
  rcases one_bit_dichotomy rfl (eval c.comparison.projection y)
      (eval c.comparison.projection named) nonzero with hz | he
  · exact Or.inl ((projection_zero_iff_boundary _ _ _ valid y hy).mp hz)
  · exact Or.inr ((valid.2.2.2.2 y named hy cycle).mp he)

instance (outgoing : Matrix k m) (incoming : Matrix m n) (named : Vec m) :
    LinProgramCertificates.CertificateVerifier (IsUniqueNonzeroClass outgoing incoming named) where
  Cert := Certificate outgoing incoming named
  check := checkCertificate outgoing incoming named
  sound := certificate_sound outgoing incoming named

syntax "unique_homology_cert" " using " term : tactic
macro_rules
  | `(tactic| unique_homology_cert using $c:term) => `(tactic| lin_cert using $c)

#print axioms sound
#print axioms certificate_sound
end UniqueHomologyCertificates
