/-
  KIPBase.Synthetic.Rigidity
  §3.5 Synthetic rigidity — E₂ computation of νX (§3.6),
  Adams vs λ-Bockstein (§3.8, cofiber sequence Σ^{0,-r}νX →[λʳ] νX → νX/λʳ),
  E∞ comparison between synthetic and classical Adams (§3.12)
-/
import KIPBase.Mathlib
import KIPBase.Synthetic.Adams
import KIPBase.Synthetic.AdamsVanishing
import KIPBase.Synthetic.LambdaE2
import KIPBase.Synthetic.Nu
import KIPBase.StableHomotopy.Adams

namespace KIPBase.Synthetic

open CategoryTheory CategoryTheory.Limits KIPBase.SpectralSequence

universe u v u' v'

variable (𝒮 : Type u) [StableHomotopy.StableHomotopyCategory.{u, v} 𝒮]
variable (Syn : Type u') [Category.{v'} Syn] [Preadditive Syn]
    [HasZeroObject Syn] [HasShift Syn ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor Syn n)]
    [MonoidalCategory Syn]
    [Pretriangulated Syn] [SyntheticCategory Syn]

/-! ### E∞-page of the synthetic Adams SS -/

/-- KIP Corollary A.9, Proposition 3.12: The E∞-data for the synthetic Adams
    spectral sequence of ν(X). -/
axiom SynAdamsEInfty (𝒮 : Type u) [StableHomotopy.StableHomotopyCategory.{u, v} 𝒮]
    (Syn : Type u') [Category.{v'} Syn] [Preadditive Syn]
    [HasZeroObject Syn] [HasShift Syn ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor Syn n)]
    [MonoidalCategory Syn]
    [Pretriangulated Syn] [SyntheticCategory Syn]
    (X : 𝒮) : EInftyData AddCommGrpCat.{0} (ℤ × ℤ × ℤ)

/-- Formalization bridge: The E∞-data is associated with the synthetic Adams
    SS for ν(X). Links `SynAdamsEInfty` to `SynAdamsSS`. -/
axiom synAdamsEInfty_ss (X : 𝒮) :
    (SynAdamsEInfty 𝒮 Syn X).ss = SynAdamsSS Syn ((nu 𝒮 Syn).obj X)

/-! ### Rigidity theorem

The rigidity theorem (KIP Theorem A.8) states:
  E₂^{s,t,w}(SynAdamsSS(νX)) ≅ E₂^{s,t}(AdamsSS(X)) ⊗ F₂[λ]_w
with differential correspondence d_r^syn(x) = λ^{r-1} · d_r^cl(x).

The free λ-page data below records the part of this description needed to
transport essential differentials. -/

/-- KIP Theorem A.8 (rigidity — degeneration transfer): If the classical
    Adams SS degenerates at page N, then the synthetic Adams SS for ν(X)
    also degenerates at page N. -/
axiom rigidity_degeneration (X : 𝒮) (N : ℤ) :
    (StableHomotopy.AdamsSS 𝒮 X).DegeneratesAt N →
    (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).DegeneratesAt N

/-- In the range `r-2 ≤ t-w`, the `r`-page of the synthetic Adams sequence
of `νX` is still on the free part of its λ-tower.  All weights in this range
identify with one generator object, and the actual λ map is the identity
under those identifications. -/
structure NuAdamsFreeLambdaPages (X : 𝒮) where
  generator : (r s t : ℤ) → AddCommGrpCat.{0}
  componentIso : ∀ (r : ℤ) (_hr : 2 ≤ r) (s t w : ℤ)
      (_h : r - 2 ≤ t - w),
    (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page r (s, t, w) ≅
      generator r s t
  lambda_compat : ∀ (r : ℤ) (hr : 2 ≤ r) (s t w : ℤ)
      (h : r - 2 ≤ t - w),
    let E := SynAdamsSS Syn ((nu 𝒮 Syn).obj X)
    let L := synAdamsSS_zlambda_module Syn ((nu 𝒮 Syn).obj X)
    L.lambda r (s, t, w) ≫
        eqToHom (congrArg (fun j => E.Page r j) (by
          change (s, t, w) + (0, 0, -1) = (s, t, w - 1)
          ext <;> simp [sub_eq_add_neg])) ≫
        (componentIso r hr s t (w - 1) (by omega)).hom =
      (componentIso r hr s t w h).hom

/-- KIP Theorem A.8, free λ-page form.  This replaces the former
`w < 0` vanishing axiom, which had the wrong grading: λ lowers weight, so a
free λ-tower is not generally zero in negative weights. -/
axiom rigidity_free_lambda_pages (X : 𝒮) :
  NuAdamsFreeLambdaPages 𝒮 Syn X

namespace NuAdamsFreeLambdaPages

/-- The actual λ action is an isomorphism between adjacent components in
the free range. -/
noncomputable def freeStep (X : 𝒮) (R : NuAdamsFreeLambdaPages 𝒮 Syn X)
    (r : ℤ) (hr : 2 ≤ r) (s t w : ℤ) (h : r - 2 ≤ t - w) :
    FreeLambdaPageStep
      (synAdamsSS_zlambda_module Syn ((nu 𝒮 Syn).obj X)) r (s, t, w) := by
  let E := SynAdamsSS Syn ((nu 𝒮 Syn).obj X)
  let L := synAdamsSS_zlambda_module Syn ((nu 𝒮 Syn).obj X)
  let es := R.componentIso r hr s t w h
  let shiftEq : (s, t, w) + (0, 0, -1) = (s, t, w - 1) := by
    ext <;> simp [sub_eq_add_neg]
  let et : E.Page r ((s, t, w) + (0, 0, -1)) ≅ R.generator r s t :=
    eqToIso (congrArg (fun j => E.Page r j) shiftEq) ≪≫
      R.componentIso r hr s t (w - 1) (by omega)
  refine { iso := es ≪≫ et.symm, lambda_eq := ?_ }
  apply (cancel_mono et.hom).mp
  change L.lambda r (s, t, w) ≫ et.hom =
    (es.hom ≫ et.inv) ≫ et.hom
  rw [Category.assoc, et.inv_hom_id, Category.comp_id]
  simpa only [E, L, es, et, shiftEq, Iso.trans_hom, eqToIso,
    Category.assoc] using R.lambda_compat r hr s t w h

end NuAdamsFreeLambdaPages

/-- KIP Theorem A.8 (rigidity — above-diagonal vanishing): For w > t,
    E_r^{s,t,w}(SynAdamsSS(νX)) = 0 for all r ≥ 2. This reflects the
    F₂[λ]-module structure: the polynomial degree w is bounded by t. -/
axiom rigidity_above_diag_vanishing (X : 𝒮) (r : ℤ) (hr : 2 ≤ r)
    (s t w : ℤ) (htw : t < w) :
    IsZero ((SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page r (s, t, w))

/-- In the synthetic Adams spectral sequence of `νX`, an essential
`d_r(x)=y` remains essential after multiplication by λ, and conversely.

The proof has two inputs. Adams naturality gives
`d_r(λx)=λd_r(x)`. If the source can be nonzero then `w≤t`; hence the
target has λ-exponent `(t+r-1)-w ≥ r-1`, which lies in the free range of
the `r`-page. Multiplication by λ is therefore injective on the target. -/
theorem synAdams_pageDifferentialEssential_lambda_iff (X : 𝒮)
    (r : ℤ) (hr : 2 ≤ r) (s t w : ℤ)
    (x : (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page r (s, t, w))
    (y : (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page r
      ((s, t, w) + (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).diffDeg r)) :
    let E := SynAdamsSS Syn ((nu 𝒮 Syn).obj X)
    let L := synAdamsSS_zlambda_module Syn ((nu 𝒮 Syn).obj X)
    PageDifferentialEssential E r (s, t, w) x y ↔
      ((L.lambdaShiftedDifferential r (s, t, w)).hom
          ((L.lambda r (s, t, w)).hom x) =
        (L.lambda r ((s, t, w) + E.diffDeg r)).hom y ∧
      (L.lambda r ((s, t, w) + E.diffDeg r)).hom y ≠ 0) := by
  dsimp only
  let E := SynAdamsSS Syn ((nu 𝒮 Syn).obj X)
  let L := synAdamsSS_zlambda_module Syn ((nu 𝒮 Syn).obj X)
  change PageDifferentialEssential E r (s, t, w) x y ↔
    ((L.lambdaShiftedDifferential r (s, t, w)).hom
        ((L.lambda r (s, t, w)).hom x) =
      (L.lambda r ((s, t, w) + E.diffDeg r)).hom y ∧
    (L.lambda r ((s, t, w) + E.diffDeg r)).hom y ≠ 0)
  by_cases hw : w ≤ t
  · let R := rigidity_free_lambda_pages 𝒮 Syn X
    have htarget : r - 2 ≤ (t + r - 1) - w := by omega
    let F₀ := R.freeStep 𝒮 Syn X r hr (s + r) (t + r - 1) w htarget
    have hdeg : (s, t, w) + E.diffDeg r =
        (s + r, t + r - 1, w) := by
      dsimp only [E]
      rw [synAdamsSS_diffDeg]
      ext <;> dsimp <;> omega
    let F : FreeLambdaPageStep L r ((s, t, w) + E.diffDeg r) := by
      rw [hdeg]
      exact F₀
    exact L.pageDifferentialEssential_lambda_iff r (s, t, w) x y F
  · have hzero : IsZero (E.Page r (s, t, w)) := by
      dsimp only [E]
      exact rigidity_above_diag_vanishing 𝒮 Syn X r hr s t w (by omega)
    letI := addCommGrpCatSubsingletonOfIsZero (E.Page r (s, t, w)) hzero
    have hx : x = 0 := Subsingleton.elim _ _
    constructor
    · rintro ⟨hxy, hy⟩
      exfalso
      apply hy
      calc
        y = (E.d r (s, t, w)).hom x := hxy.symm
        _ = 0 := by simp [hx]
    · rintro ⟨hxy, hly⟩
      exfalso
      apply hly
      calc
        (L.lambda r ((s, t, w) + E.diffDeg r)).hom y =
            (L.lambdaShiftedDifferential r (s, t, w)).hom
              ((L.lambda r (s, t, w)).hom x) := hxy.symm
        _ = 0 := by simp [hx]

/-! ### λ-Bockstein spectral sequence

The comparison uses the ESS of the boundary morphism
  νX/λ → Σ^{1,-1}νX
in the cofiber sequence of `λ : Σ^{0,-1}νX → νX`.
Its construction is in `Synthetic.ExtensionSS`.

The theorem below records only the synthetic Adams starting page. The
comparison of pages and differentials remains a separate proof obligation. -/

/-- The synthetic Adams sequence of `νX` starts at page two. -/
theorem synAdamsNu_r₀ (X : 𝒮) :
    (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).r₀ = 2 :=
  synAdamsSS_r0 Syn ((nu 𝒮 Syn).obj X)

/-- Compatibility name for the former starting-page axiom.
Despite its historical name, this statement does not assert an isomorphism. -/
theorem lambda_bockstein_iso (X : 𝒮) :
    (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).r₀ = 2 :=
  synAdamsNu_r₀ 𝒮 Syn X

/-! ### E∞ computations -/

/-- E∞ vanishing for ν(X) (KIP Prop 3.12):
    For t < w, E∞^{s,t,w}(νX) = 0.
    The permanent cycles in weight w cannot contribute below the
    diagonal t = w. -/
theorem einfty_nuX (X : 𝒮) (s t w : ℤ) (htw : t < w) :
    IsZero ((SynAdamsEInfty 𝒮 Syn X).EInfty (s, t, w)) := by
  -- Strategy: use rigidity_above_diag_vanishing to show all pages vanish,
  -- then propagate to E∞ via EInftyData.eInfty_isZero_of_page_isZero.
  apply EInftyData.eInfty_isZero_of_page_isZero
  intro r hr
  -- Rewrite the SS to use SynAdamsSS via synAdamsEInfty_ss
  rw [synAdamsEInfty_ss 𝒮 Syn X]
  -- The starting page is r₀ = 2 (from synAdamsSS_r0)
  -- We need 2 ≤ r, which follows from r₀ = 2 and hr : r₀ ≤ r
  have hr₀ : (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).r₀ = 2 :=
    synAdamsSS_r0 Syn ((nu 𝒮 Syn).obj X)
  have h2r : 2 ≤ r := by
    have := synAdamsEInfty_ss (𝒮 := 𝒮) (Syn := Syn) X
    rw [this] at hr
    rw [hr₀] at hr
    exact hr
  exact rigidity_above_diag_vanishing 𝒮 Syn X r h2r s t w htw

/-- KIP Corollary A.9, Proposition 3.12: E∞ weight monotonicity for ν(X).
    For w₁ ≤ w₂ ≤ t, there is a natural surjection
    E∞^{s,t,w₁}(νX) ↠ E∞^{s,t,w₂}(νX).
    This reflects the quotient map Z∞/B_{1+t-w₁} → Z∞/B_{1+t-w₂}
    arising from B_{1+t-w₁} ⊆ B_{1+t-w₂}. -/
axiom einfty_nuX_weight_map (X : 𝒮) (s t w₁ w₂ : ℤ)
    (hw : w₁ ≤ w₂) (hw₂ : w₂ ≤ t) :
    (SynAdamsEInfty 𝒮 Syn X).EInfty (s, t, w₁) ⟶
      (SynAdamsEInfty 𝒮 Syn X).EInfty (s, t, w₂)

/-- KIP Corollary A.9, Proposition 3.12: The weight maps are
    epimorphisms (surjections). -/
axiom einfty_nuX_weight_map_epi (X : 𝒮) (s t w₁ w₂ : ℤ)
    (hw : w₁ ≤ w₂) (hw₂ : w₂ ≤ t) :
    Epi (einfty_nuX_weight_map 𝒮 Syn X s t w₁ w₂ hw hw₂)

/-- KIP Corollary A.11, Proposition 3.13, at the initial Adams page.
Applying the synthetic Adams construction to the cofiber of `λ^n`, and
using that the E₂-page of `νX` is free over λ, identifies the quotient E₂
with the truncated free λ-module computed in `LambdaE2`.

This is the full finite-quotient input.  The previous declaration under this
name only stated vanishing outside the strip and therefore lost the actual
E₂ group on the strip. -/
axiom einfty_nuX_mod_lambda (X : 𝒮) (r : ℕ) (hr : 0 < r)
    (s t w : ℤ) :
    ↑((SynAdamsSS Syn (XModLambdaN ((nu 𝒮 Syn).obj X) r)).Page 2
      (s, t, w)) ≃+
      ↑(nuModLambdaE2Component 𝒮 X r s t w)

/-- The E₂-page of `νX/λ^n` is supported in the strip
`0 ≤ t-w < n`.  This is now a consequence of the full E₂ computation. -/
theorem synAdams_nu_mod_lambda_e2_isZero_of_outside (X : 𝒮)
    (n : ℕ) (hn : 0 < n) (s t w : ℤ)
    (h : t - w < 0 ∨ (n : ℤ) ≤ t - w) :
    IsZero ((SynAdamsSS Syn (XModLambdaN ((nu 𝒮 Syn).obj X) n)).Page 2
      (s, t, w)) := by
  rw [IsZero.iff_id_eq_zero]
  apply AddCommGrpCat.hom_ext
  apply AddMonoidHom.ext
  intro a
  change a = 0
  let e := einfty_nuX_mod_lambda 𝒮 Syn X n hn s t w
  have hmodel : IsZero (nuModLambdaE2Component 𝒮 X n s t w) := by
    rw [nuModLambdaE2Component,
      TruncatedLambdaE2.component_eq_zero_of_outside]
    · exact IsInitial.isZero initialIsInitial
    · exact h
  letI := addCommGrpCatSubsingletonOfIsZero
    (nuModLambdaE2Component 𝒮 X n s t w) hmodel
  apply e.injective
  have he : e a = e 0 := Subsingleton.elim _ _
  simpa using he

/-- Inside the strip `0 ≤ t-w < n`, every weight component of the
synthetic Adams E₂-page of `νX/λ^n` is the classical Adams E₂ group of `X`.
Together with `synAdams_nu_mod_lambda_e2_isZero_of_outside`, this is the
complete componentwise description of the finite quotient E₂-page. -/
noncomputable def synAdams_nu_mod_lambda_e2_equiv_of_mem_strip (X : 𝒮)
    (n : ℕ) (s t w : ℤ) (h : 0 ≤ t - w ∧ t - w < n) :
    ↑((SynAdamsSS Syn (XModLambdaN ((nu 𝒮 Syn).obj X) n)).Page 2
      (s, t, w)) ≃+
      ↑((StableHomotopy.AdamsSS 𝒮 X).Page 2 (s, t)) :=
  (einfty_nuX_mod_lambda 𝒮 Syn X n (by omega) s t w).trans
    (addEquivOfAddCommGrpCatIso
      (nuModLambdaE2InStripIso 𝒮 X n s t w h))

/-- On its surviving diagonal, the E₂-page of `νX/λ` is the classical
Adams E₂-page of `X`. -/
noncomputable def synAdams_nu_mod_lambda_one_e2_diagonal_equiv (X : 𝒮)
    (s t w : ℤ) (h : w = t) :
    ↑((SynAdamsSS Syn (XModLambdaN ((nu 𝒮 Syn).obj X) 1)).Page 2
      (s, t, w)) ≃+
      ↑((StableHomotopy.AdamsSS 𝒮 X).Page 2 (s, t)) :=
  synAdams_nu_mod_lambda_e2_equiv_of_mem_strip 𝒮 Syn X 1 s t w (by omega)

/-- The existing quotient support theorem forces degeneration by page
`max 2 (n+1)`, without a bound on Adams filtration. -/
theorem synAdams_mod_lambda_degenerates (X : 𝒮) (n : ℕ) (hn : 0 < n) :
    (SynAdamsSS Syn (XModLambdaN ((nu 𝒮 Syn).obj X) n)).DegeneratesAt
      (max 2 ((n : ℤ) + 1)) :=
  synAdams_degenerates_of_e2_strip _ n
    (synAdams_nu_mod_lambda_e2_isZero_of_outside 𝒮 Syn X n hn)

/-- For the first λ-quotient, the second Adams page is supported on `t=w`.
The support condition is proved from the existing finite-quotient theorem. -/
theorem synAdams_mod_lambda_one_e2_diagonal (X : 𝒮)
    (s t w : ℤ) (h : t ≠ w) :
    IsZero ((SynAdamsSS Syn (XModLambdaN ((nu 𝒮 Syn).obj X) 1)).Page 2
      (s, t, w)) := by
  apply synAdams_nu_mod_lambda_e2_isZero_of_outside 𝒮 Syn X 1 (by decide) s t w
  omega

/-- The synthetic Adams spectral sequence of `νX/λ` collapses at E₂. -/
theorem synAdams_mod_lambda_one_degenerates (X : 𝒮) :
    (SynAdamsSS Syn (XModLambdaN ((nu 𝒮 Syn).obj X) 1)).DegeneratesAt 2 :=
  synAdams_degenerates_of_e2_diagonal _
    (synAdams_mod_lambda_one_e2_diagonal 𝒮 Syn X)

/-- All meaningful finite Adams pages of `νX/λ` identify with E₂. -/
noncomputable def synAdams_mod_lambda_one_pageIso (X : 𝒮)
    (r : ℤ) (hr : 2 ≤ r) (k : ℤ × ℤ × ℤ) :
    (SynAdamsSS Syn (XModLambdaN ((nu 𝒮 Syn).obj X) 1)).Page r k ≅
      (SynAdamsSS Syn (XModLambdaN ((nu 𝒮 Syn).obj X) 1)).Page 2 k :=
  synAdams_pageIso_e2_of_diagonal _
    (synAdams_mod_lambda_one_e2_diagonal 𝒮 Syn X) r hr k

/-- The limiting Adams page of `νX/λ` is its second page. This is the
source-side input to the λ-boundary ESS, not the full ESS comparison. -/
noncomputable def synAdams_mod_lambda_one_eInftyIso (X : 𝒮)
    (k : ℤ × ℤ × ℤ) :
    ((SynAdamsSS Syn (XModLambdaN ((nu 𝒮 Syn).obj X) 1)).ssData k).eInfty ≅
      (SynAdamsSS Syn (XModLambdaN ((nu 𝒮 Syn).obj X) 1)).Page 2 k :=
  synAdams_eInftyIso_e2_of_diagonal _
    (synAdams_mod_lambda_one_e2_diagonal 𝒮 Syn X) k

/-- Any given convergence witness for `νX/λ` identifies its associated
graded with E₂; no additional degeneration hypothesis is needed. -/
noncomputable def synAdams_mod_lambda_one_associatedGradedIso (X : 𝒮)
    {A : ℤ × ℤ → AddCommGrpCat.{0}} {F : Filtration A}
    (conv : Convergence
      (SynAdamsSS Syn (XModLambdaN ((nu 𝒮 Syn).obj X) 1)) A F)
    (k : ℤ × ℤ × ℤ) :
    F.associatedGraded (conv.reindex k).1 (conv.reindex k).2 ≅
      (SynAdamsSS Syn (XModLambdaN ((nu 𝒮 Syn).obj X) 1)).Page 2 k :=
  (conv.iso k).symm ≪≫ synAdams_mod_lambda_one_eInftyIso 𝒮 Syn X k

end KIPBase.Synthetic
