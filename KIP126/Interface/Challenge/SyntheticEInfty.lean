import KIP126.Challenge2

namespace KIP126.Interface.Challenge

open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
  KIP126.Synthetic.Context KIP126.Synthetic.SpectralSequence
  KIP126.Classical.Adams.PageRepresentatives KIP126.Challenge2

universe u v w

variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn]
  [HasFunctorialCofiber (C := Syn)]
  (H : Mod2EilenbergMacLane (C := C)) (N : NuFunctorData C Syn)
  (F : SyntheticAdamsFamily Syn)
  (P : KIP126.Challenge2.SyntheticEInftyPresentation H N F) (S : EInftyWeightShift F)
  (T : ∀ X : C, FiniteLambdaQuotientTower (N.functor.obj X))
  (K : KIP126.Challenge2.SyntheticEInftyMapCompatibility H N F P S T)

include K

/-- In the ν window, λ is the surjective enlargement of the boundary cutoff. -/
theorem syntheticEInfty_lambda_nu_surjective
    (X : C) (k : ℕ) (p : ℤ × ℤ) (w : ℤ) (hw : w ≤ p.2) :
    Function.Surjective (S.lambdaMap (N.functor.obj X) k p w) := by
  sorry

/-- In the common finite window, λ preserves the cycle cutoff and enlarges
only the boundaries; its actual E∞ map is therefore surjective. -/
theorem syntheticEInfty_lambda_finite_surjective
    (X : C) (q k : ℕ) (hkq : k < q) (p : ℤ × ℤ) (w : ℤ)
    (hw : 0 ≤ p.2 - w ∧ p.2 - w < (q - k : ℕ)) :
    Function.Surjective (S.finiteLambdaMap (T X) q k hkq p w) := by
  sorry

/-- Finite reduction is injective in the target's valid window because the
boundary cutoff is unchanged and the cycle submodule is included. -/
theorem syntheticEInfty_rho_finite_injective
    (X : C) (i j : ℕ) (hi : 0 < i) (hij : i ≤ j) (p : ℤ × ℤ) (w : ℤ)
    (hw : 0 ≤ p.2 - w ∧ p.2 - w < i) :
    Function.Injective
      (((F.functor.map ((T X).rho i j hij)).eInftyMap (p.1, p.2, w)).hom) := by
  sorry

/-- Reduction from ν to a finite quotient includes permanent cycles and is
injective in the finite target window. -/
theorem syntheticEInfty_rho_nu_injective
    (X : C) (q : ℕ) (hq : 0 < q) (p : ℤ × ℤ) (w : ℤ)
    (hw : 0 ≤ p.2 - w ∧ p.2 - w < q) :
    Function.Injective
      (((F.quotientProjection (N.functor.obj X) q).eInftyMap (p.1, p.2, w)).hom) := by
  sorry

omit K
include P

/-- Outside the ν window, the actual E∞ group is zero through the full-weight
presentation. No global statement about negative weights is used. -/
theorem syntheticEInfty_nu_subsingleton_of_outside
    (X : C) (p : ℤ × ℤ) (w : ℤ) (hw : ¬ w ≤ p.2) :
    Subsingleton (((F.nu N X).sequence.ssData (p.1, p.2, w)).eInfty) := by
  sorry

/-- The actual E∞ of every positive finite quotient is zero outside its
specified window, including the separately presented special fiber q=1. -/
theorem syntheticEInfty_finite_subsingleton_of_outside
    (X : C) (q : ℕ) (hq : 0 < q) (p : ℤ × ℤ) (w : ℤ)
    (hw : ¬ (0 ≤ p.2 - w ∧ p.2 - w < q)) :
    Subsingleton (((F.nuQuotient N X q).sequence.ssData (p.1, p.2, w)).eInfty) := by
  sorry

end KIP126.Interface.Challenge
