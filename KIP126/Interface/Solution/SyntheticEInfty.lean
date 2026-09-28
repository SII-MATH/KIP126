import KIP126.Challenge2
import KIP126.Def.ClassicalAdams.PageRepresentatives.Quotient.Proofs

namespace KIP126.Interface.Solution

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
  intro y
  obtain ⟨z, hz⟩ := permanentQuotientMap_surjective H X
    (b := 1 + p.2 - w) (b' := 1 + p.2 - (w - k)) (by omega) p
    (P.nuWindow X p (w - k) (by omega) y)
  refine ⟨(P.nuWindow X p w hw).symm z, ?_⟩
  apply (P.nuWindow X p (w - k) (by omega)).injective
  rw [K.lambda_nu X k p w hw, LinearEquiv.apply_symm_apply]
  exact hz

/-- In the common finite window, λ preserves the cycle cutoff and enlarges
only the boundaries; its actual E∞ map is therefore surjective. -/
theorem syntheticEInfty_lambda_finite_surjective
    (X : C) (q k : ℕ) (hkq : k < q) (p : ℤ × ℤ) (w : ℤ)
    (hw : 0 ≤ p.2 - w ∧ p.2 - w < (q - k : ℕ)) :
    Function.Surjective (S.finiteLambdaMap (T X) q k hkq p w) := by
  intro y
  obtain ⟨z, hz⟩ := quotientMap_surjective_of_cycle_eq H X
    (c := ((q - k : ℕ) : ℤ) - p.2 + w)
    (c' := (q : ℤ) - p.2 + (w - k))
    (b := 1 + p.2 - w) (b' := 1 + p.2 - (w - k))
    (by omega) (by omega) (by omega) p
    (P.finiteWindow X q (by omega) p (w - k) (by constructor <;> omega) y)
  refine ⟨(P.finiteWindow X (q - k) (by omega) p w hw).symm z, ?_⟩
  apply (P.finiteWindow X q (by omega) p (w - k) (by constructor <;> omega)).injective
  rw [K.lambda_finite X q k hkq p w hw, LinearEquiv.apply_symm_apply]
  exact hz

/-- Finite reduction is injective in the target's valid window because the
boundary cutoff is unchanged and the cycle submodule is included. -/
theorem syntheticEInfty_rho_finite_injective
    (X : C) (i j : ℕ) (hi : 0 < i) (hij : i ≤ j) (p : ℤ × ℤ) (w : ℤ)
    (hw : 0 ≤ p.2 - w ∧ p.2 - w < i) :
    Function.Injective
      (((F.functor.map ((T X).rho i j hij)).eInftyMap (p.1, p.2, w)).hom) := by
  intro a b hab
  apply (P.finiteWindow X j (by omega) p w (by constructor <;> omega)).injective
  apply quotientMap_cycle_injective H X
    (c := (j : ℤ) - p.2 + w) (c' := (i : ℤ) - p.2 + w)
    (by omega) (1 + p.2 - w) p
  rw [← K.rho_finite X i j hi hij p w hw a,
    ← K.rho_finite X i j hi hij p w hw b, hab]

/-- Reduction from ν to a finite quotient includes permanent cycles and is
injective in the finite target window. -/
theorem syntheticEInfty_rho_nu_injective
    (X : C) (q : ℕ) (hq : 0 < q) (p : ℤ × ℤ) (w : ℤ)
    (hw : 0 ≤ p.2 - w ∧ p.2 - w < q) :
    Function.Injective
      (((F.quotientProjection (N.functor.obj X) q).eInftyMap (p.1, p.2, w)).hom) := by
  intro a b hab
  apply (P.nuWindow X p w (by omega)).injective
  apply permanentToFinite_injective H X (q - p.2 + w) (1 + p.2 - w) p
  rw [← K.rho_nu X q hq p w hw a, ← K.rho_nu X q hq p w hw b, hab]

omit K
include P

/-- Outside the ν window, the actual E∞ group is zero through the full-weight
presentation. No global statement about negative weights is used. -/
theorem syntheticEInfty_nu_subsingleton_of_outside
    (X : C) (p : ℤ × ℤ) (w : ℤ) (hw : ¬ w ≤ p.2) :
    Subsingleton (((F.nu N X).sequence.ssData (p.1, p.2, w)).eInfty) := by
  have hzero : Subsingleton (nuEInftyModel H X p w) := by
    simp only [nuEInftyModel, if_neg hw]
    infer_instance
  constructor
  intro a b
  exact (P.nu X p w).injective (hzero.elim _ _)

/-- The actual E∞ of every positive finite quotient is zero outside its
specified window, including the separately presented special fiber q=1. -/
theorem syntheticEInfty_finite_subsingleton_of_outside
    (X : C) (q : ℕ) (hq : 0 < q) (p : ℤ × ℤ) (w : ℤ)
    (hw : ¬ (0 ≤ p.2 - w ∧ p.2 - w < q)) :
    Subsingleton (((F.nuQuotient N X q).sequence.ssData (p.1, p.2, w)).eInfty) := by
  have hzero : Subsingleton (finiteEInftyModel H X q p w) := by
    simp only [finiteEInftyModel, if_neg hw]
    infer_instance
  constructor
  intro a b
  exact (P.finite X q hq p w).injective (hzero.elim _ _)

end KIP126.Interface.Solution
