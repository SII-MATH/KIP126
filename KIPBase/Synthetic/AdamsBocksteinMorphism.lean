import KIPBase.SpectralSequence.Blueprint
import KIPBase.SpectralSequence.PageComparison
import KIPBase.Synthetic.PageTail
import KIPBase.Synthetic.GeometricAdamsLegacy
import KIPBase.Synthetic.ErPageExtension
import KIPBase.Synthetic.GeometricAdamsShift
import KIPBase.Synthetic.LambdaBoundaryNaturality

/-!
# Reindexed Adams--lambda-Bockstein comparison

The lambda-Bockstein ESS is bigraded, whereas the synthetic Adams spectral
sequence is trigraded. At a fixed homotopy bidegree, the change of grading
goes from a Bockstein index to an Adams index. It is affine rather than a
homomorphism of grading groups.

This file records that reindexing and the resulting notion of comparison
from the Adams starting page onward. It never chooses an arbitrary map
between unrelated page objects.

## Mandatory construction route

The active task in this file is to construct
`CanonicalAdamsToLambdaBocksteinMorphism`.  The construction begins with
the E₂ comparison.  At page `i`, the already established compatibility of
the Adams differential with the boundary-ESS differential is used to carry
cycles `Zᵢ` to cycles and boundaries `Bᵢ` to boundaries.  Passing to the
corresponding quotient gives the map on page `i + 1`.  This induction on
`Zᵢ` and `Bᵢ` is the only route to be developed here.

Do not introduce an auxiliary comparison problem or replace this induction
with a separate lifting argument.  Every subsequent declaration in this
file must serve the construction of this morphism.
-/

namespace KIPBase.Synthetic

open CategoryTheory CategoryTheory.Limits KIPBase.SpectralSequence ErPageExtension

universe u

variable {Syn : Type u} [Category.{0} Syn] [Preadditive Syn]
    [HasZeroObject Syn] [HasShift Syn ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor Syn n)]
    [MonoidalCategory Syn] [Pretriangulated Syn] [SyntheticCategory Syn]

/-- A later page maps to an earlier page when the boundary subobject has
not changed. This is the cycle inclusion modulo that common boundary. -/
noncomputable def pageToEarlierOfBoundariesEq
    {C : Type*} [Category C] [Abelian C]
    (D : SSData C) (m n : WithTop ℕ) (hmn : m ≤ n)
    (hB : D.B n = D.B m) : D.page n ⟶ D.page m :=
  cokernel.map
    (Subobject.ofLE (D.B n) (D.Z n) (D.B_le_Z n))
    (Subobject.ofLE (D.B m) (D.Z m) (D.B_le_Z m))
    (Subobject.isoOfEq (D.B n) (D.B m) hB).hom
    (Subobject.ofLE (D.Z n) (D.Z m) (D.Z_anti hmn)) (by
      apply (cancel_mono (D.Z m).arrow).mp
      simp only [Category.assoc, Subobject.ofLE_arrow,
        Subobject.isoOfEq_hom])

theorem pageπ_pageToEarlierOfBoundariesEq
    {C : Type*} [Category C] [Abelian C]
    (D : SSData C) (m n : WithTop ℕ) (hmn : m ≤ n)
    (hB : D.B n = D.B m) :
    D.pageπ n ≫ pageToEarlierOfBoundariesEq D m n hmn hB =
      Subobject.ofLE (D.Z n) (D.Z m) (D.Z_anti hmn) ≫ D.pageπ m := by
  unfold pageToEarlierOfBoundariesEq
  simp [SSData.pageπ, cokernel.map]

/-- The canonical backward page map preserves the actual ambient class
represented by a surviving cycle. -/
theorem pageToEarlierOfBoundariesEq_represents
    {C : Type*} [Category C] [Abelian C]
    (D : SSData C) (m n : WithTop ℕ) (hmn : m ≤ n)
    (hB : D.B n = D.B m) {T : C}
    (x : T ⟶ D.V) (a : T ⟶ D.page n)
    (h : ∃ xZ : T ⟶ Subobject.underlying.obj (D.Z n),
      xZ ≫ (D.Z n).arrow = x ∧ xZ ≫ D.pageπ n = a) :
    ∃ xZm : T ⟶ Subobject.underlying.obj (D.Z m),
      xZm ≫ (D.Z m).arrow = x ∧
      xZm ≫ D.pageπ m = a ≫ pageToEarlierOfBoundariesEq D m n hmn hB := by
  obtain ⟨xZn, hx, ha⟩ := h
  refine ⟨xZn ≫ Subobject.ofLE (D.Z n) (D.Z m) (D.Z_anti hmn), ?_, ?_⟩
  · simpa only [Category.assoc, Subobject.ofLE_arrow] using hx
  · calc
      (xZn ≫ Subobject.ofLE (D.Z n) (D.Z m) (D.Z_anti hmn)) ≫
          D.pageπ m =
          xZn ≫ (Subobject.ofLE (D.Z n) (D.Z m) (D.Z_anti hmn) ≫
            D.pageπ m) := by rw [Category.assoc]
      _ = xZn ≫ (D.pageπ n ≫
            pageToEarlierOfBoundariesEq D m n hmn hB) := by
          rw [pageπ_pageToEarlierOfBoundariesEq]
      _ = a ≫ pageToEarlierOfBoundariesEq D m n hmn hB := by
          rw [← Category.assoc, ha]

/-- In the λ-Bockstein source column, every displayed page from page two
onward has a canonical map back to the second data page. -/
noncomputable def canonicalLambdaBocksteinSourceToE2Data
    (Y : Syn) (degree : ℤ × ℤ) (s : ℤ) (n : ℕ) :
    ((canonicalLambdaPowerBocksteinESS Y 1 degree).ssData (s, 1)).page
        ((n + 2 : ℕ) : WithTop ℕ) ⟶
      ((canonicalLambdaPowerBocksteinESS Y 1 degree).ssData (s, 1)).page 2 := by
  let D := (canonicalLambdaPowerBocksteinESS Y 1 degree).ssData (s, 1)
  have hle : (2 : WithTop ℕ) ≤ ((n + 2 : ℕ) : WithTop ℕ) := by
    exact_mod_cast (show 2 ≤ n + 2 by omega)
  have hBn : D.B (((n + 2 : ℕ) : WithTop ℕ)) = D.B 0 :=
    lambdaBocksteinSource_boundaries_eq_initial (Syn := Syn) degree s (n + 2)
  have hB2 : D.B (2 : WithTop ℕ) = D.B 0 :=
    lambdaBocksteinSource_boundaries_eq_initial (Syn := Syn) degree s 2
  exact pageToEarlierOfBoundariesEq D 2 _ hle (hBn.trans hB2.symm)

/-! ## The affine change of grading -/

/-- At fixed homotopy bidegree `degree`, send the Bockstein bidegree
`(s,k)` to the synthetic Adams tridegree
`(s, degree.1 + s + k - 1, degree.2)`.

The second Bockstein coordinate distinguishes the source column `k = 1`
from the target column `k = 0`. -/
def lambdaBocksteinToAdamsReindex (degree : ℤ × ℤ) :
    ℤ × ℤ → ℤ × ℤ × ℤ :=
  lambdaBocksteinAdamsIndex degree

@[simp] theorem lambdaBocksteinToAdamsReindex_apply
    (degree : ℤ × ℤ) (sk : ℤ × ℤ) :
    lambdaBocksteinToAdamsReindex degree sk =
      (sk.1, degree.1 + sk.1 + sk.2 - 1, degree.2) :=
  rfl

/-- The affine reindexing carries a Bockstein differential of degree
`(r,-1)` to an Adams differential of degree `(r,r-1,0)`. -/
theorem lambdaBocksteinToAdamsReindex_add_diff
    (degree sk : ℤ × ℤ) (r : ℤ) :
    lambdaBocksteinToAdamsReindex degree (sk + (r, -1)) =
      lambdaBocksteinToAdamsReindex degree sk + (r, r - 1, 0) :=
  lambdaBocksteinAdamsIndex_add_diff degree sk r

/-- Degree compatibility for the actual synthetic Adams and canonical
lambda-Bockstein spectral sequences. -/
theorem lambdaBocksteinToAdamsReindex_degree_compat
    (X : Syn) (degree sk : ℤ × ℤ) (r : ℤ) :
    lambdaBocksteinToAdamsReindex degree
        (sk + (canonicalLambdaBocksteinESS X degree).diffDeg r) =
      lambdaBocksteinToAdamsReindex degree sk +
        (SynAdamsSS Syn X).diffDeg r := by
  rw [canonicalLambdaBocksteinESS, lambdaBocksteinESS_diffDeg,
    synAdamsSS_diffDeg]
  exact lambdaBocksteinToAdamsReindex_add_diff degree sk r

/-- The affine reindexing also identifies the incoming differential degree.
This is the index equality needed for the left term of the three-term page
complex used in the successor-page construction. -/
theorem lambdaBocksteinToAdamsReindex_sub_diff
    (X : Syn) (degree sk : ℤ × ℤ) (r : ℤ) :
    lambdaBocksteinToAdamsReindex degree
        (sk - (canonicalLambdaBocksteinESS X degree).diffDeg r) =
      lambdaBocksteinToAdamsReindex degree sk -
        (SynAdamsSS Syn X).diffDeg r := by
  have h := lambdaBocksteinToAdamsReindex_degree_compat
    (Syn := Syn) X degree
      (sk - (canonicalLambdaBocksteinESS X degree).diffDeg r) r
  have h' := congrArg
    (fun k => k - (SynAdamsSS Syn X).diffDeg r) h
  simpa using h'.symm

@[simp] theorem lambdaBocksteinToAdamsReindex_source
    (s t : ℤ) :
    lambdaBocksteinToAdamsReindex
        (lambdaBocksteinGeneratorDegree s t) (s, 1) = (s, t, t) :=
  lambdaBocksteinAdamsIndex_generator s t

/-- On the source column, the affine Adams index is the ordinary Adams
index of the fixed Bockstein abutment degree. -/
@[simp] theorem lambdaBocksteinToAdamsReindex_source_general
    (degree : ℤ × ℤ) (s : ℤ) :
    lambdaBocksteinToAdamsReindex degree (s, 1) =
      syntheticAdamsIndex s degree := by
  ext <;> simp [lambdaBocksteinToAdamsReindex,
    lambdaBocksteinAdamsIndex, syntheticAdamsIndex]

@[simp] theorem lambdaBocksteinToAdamsReindex_target
    (s t r : ℤ) :
    lambdaBocksteinToAdamsReindex
        (lambdaBocksteinGeneratorDegree s t) ((s, 1) + (r, -1)) =
      (s + r, t + r - 1, t) :=
  lambdaBocksteinAdamsIndex_differentialTarget s t r

/-- The affine Adams target of a length-`r` Bockstein differential lies in
the free λ-range. Its λ-exponent is `r - 1`, so the required inequality
follows directly from `r ≥ 2`. -/
theorem lambdaBocksteinAdamsTarget_freeRange
    (s t r : ℤ) (hr : 2 ≤ r) :
    r - 2 ≤ (t + r - 1) - t := by
  omega

/-- The affine Adams target has the canonical classical Adams description
provided by the free λ-page theorem. This is the target component used in
the boundary-ESS differential comparison. -/
noncomputable def lambdaBocksteinAdamsTargetClassicalIso
    (𝒮 : Type*) [StableHomotopy.StableHomotopyCategory 𝒮]
    (X : 𝒮) (s t r : ℤ) (hr : 2 ≤ r) :
    (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page r
      (lambdaBocksteinToAdamsReindex
        (lambdaBocksteinGeneratorDegree s t) ((s, 1) + (r, -1))) ≅
      classicalAdamsPage 𝒮 X r (s + r) (t + r - 1) := by
  simpa only [lambdaBocksteinToAdamsReindex_target] using
    syntheticClassicalPageIso 𝒮 Syn X r hr
      (s + r) (t + r - 1) t
      (lambdaBocksteinAdamsTarget_freeRange s t r hr)

/-- Clearing a finite λ-power preserves and reflects the cycle condition for
the synthetic Adams differential.  Naturality identifies the shifted
differential with λ-power multiplication on the original target, and the
free λ description makes that target multiplication injective.  This is the
cycle half of the `Zᵢ` induction. -/
theorem synAdams_differential_eq_zero_iff_lambdaPow
    (𝒮 : Type*) [StableHomotopy.StableHomotopyCategory 𝒮]
    (X : 𝒮) (r : ℤ) (hr : 2 ≤ r) (s t w : ℤ)
    (hlower : 0 ≤ t - w) (m : ℕ)
    (x : (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page r (s, t, w)) :
    let E := SynAdamsSS Syn ((nu 𝒮 Syn).obj X)
    let L := synAdamsSS_zlambda_module Syn ((nu 𝒮 Syn).obj X)
    (E.d r (s, t, w)).hom x = 0 ↔
      (L.lambdaPowShiftedDifferential m r (s, t, w)).hom
        ((L.lambdaPow m r (s, t, w)).hom x) = 0 := by
  dsimp only
  let E := SynAdamsSS Syn ((nu 𝒮 Syn).obj X)
  let L := synAdamsSS_zlambda_module Syn ((nu 𝒮 Syn).obj X)
  have hinj := synAdams_lambdaPowTarget_injective
    𝒮 Syn X r hr s t w hlower m
  have hcomm := ConcreteCategory.congr_hom
    (L.lambdaPow_naturality m r (s, t, w)) x
  change (L.lambdaPowShiftedDifferential m r (s, t, w)).hom
      ((L.lambdaPow m r (s, t, w)).hom x) =
    (L.lambdaPowTarget m r (s, t, w)).hom
      ((E.d r (s, t, w)).hom x) at hcomm
  constructor
  · intro hx
    rw [hcomm, hx, map_zero]
  · intro hx
    apply hinj
    rw [← hcomm, hx, map_zero]

/-- The actual λ-boundary target tower carries exactly the transported
Adams filtration.  This is the filtration-level target comparison needed
before passing from boundary representatives to the Bockstein target page. -/
theorem lambdaBocksteinBoundaryTarget_AFGe_iff
    {X : Syn} (G : GeometricAdams.Input X) (n : ℕ)
    {T : Syn} (f : T ⟶ X) (q : ℕ) :
    (G.boundaryTarget n).AFGe
      ((lambdaBoundaryShiftFunctor (Syn := Syn) n).map f) q ↔
      G.AFGe f q := by
  change (G.map (lambdaBoundaryShiftFunctor (Syn := Syn) n)).AFGe
      ((lambdaBoundaryShiftFunctor (Syn := Syn) n).map f) q ↔ _
  exact G.lambdaBoundaryShift_AFGe_iff n f q

/-- An actual filtered homotopy representative of a target-column
λ-Bockstein page class.  Unlike the source-column presentation, incoming
boundaries may occur here; the page relation retains exactly that quotient. -/
def LambdaBocksteinTargetPageRep
    (Y : Syn) (degree : ℤ × ℤ) (r s : ℤ)
    (b : Smn (Syn := Syn) degree.1 degree.2 ⟶
      (shiftFunctor Syn (1 : ℤ)).obj
        ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj Y))
    (xPage : AddCommGrpCat.of ℤ ⟶
      (canonicalLambdaPowerBocksteinESS Y 1 degree).Page r (s, 0)) : Prop :=
  let f := lambdaPowerBocksteinCSSMap Y 1
  let E := ExtensionSpectralSequence.{1, 0, 0, 0} f degree
  let T := AddCommGrpCat.of ℤ
  ∃ (x : T ⟶ (E.ssData (s, 0)).V)
    (xl : T ⟶ Subobject.underlying.obj
      ((lambdaPowerBocksteinTargetCSS Y 1).F.F s degree)),
    (unboundedUnderlyingComplex f degree).IsLift s 0 xl
      (x ≫ (unboundedExtensionVComplexIso f degree s 0).hom) ∧
    (synAdamsConvergence Syn
      ((shiftFunctor Syn (1 : ℤ)).obj
        ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj Y))).abutmentEquiv degree
      (((lambdaPowerBocksteinTargetCSS Y 1).F.F s degree).arrow.hom
        (xl.hom 1)) = b ∧
    ElementPageRel E r (s, 0) x xPage

/-- A fixed actual target homotopy class determines a unique target-column
page class.  Thus target maps defined on filtered representatives descend
to the λ-Bockstein page quotient. -/
theorem LambdaBocksteinTargetPageRep.unique
    {Y : Syn} {degree : ℤ × ℤ} {r s : ℤ}
    {b : Smn (Syn := Syn) degree.1 degree.2 ⟶
      (shiftFunctor Syn (1 : ℤ)).obj
        ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj Y)}
    {xPage₁ xPage₂ : AddCommGrpCat.of ℤ ⟶
      (canonicalLambdaPowerBocksteinESS Y 1 degree).Page r (s, 0)}
    (h₁ : LambdaBocksteinTargetPageRep (Syn := Syn)
      Y degree r s b xPage₁)
    (h₂ : LambdaBocksteinTargetPageRep (Syn := Syn)
      Y degree r s b xPage₂) :
    xPage₁ = xPage₂ := by
  let f := lambdaPowerBocksteinCSSMap Y 1
  let E := ExtensionSpectralSequence.{1, 0, 0, 0} f degree
  let A := synAdamsConvergence Syn
    ((shiftFunctor Syn (1 : ℤ)).obj
      ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj Y))
  rcases h₁ with ⟨x₁, xl₁, hx₁, hb₁, hp₁⟩
  rcases h₂ with ⟨x₂, xl₂, hx₂, hb₂, hp₂⟩
  have hbaseOne :
      ((lambdaPowerBocksteinTargetCSS Y 1).F.F s degree).arrow.hom
          (xl₁.hom 1) =
        ((lambdaPowerBocksteinTargetCSS Y 1).F.F s degree).arrow.hom
          (xl₂.hom 1) := by
    apply (A.abutmentEquiv degree).injective
    exact hb₁.trans hb₂.symm
  have hxl : xl₁ = xl₂ := by
    apply (cancel_mono
      ((lambdaPowerBocksteinTargetCSS Y 1).F.F s degree).arrow).mp
    apply AddCommGrpCat.hom_ext
    apply AddMonoidHom.ext
    intro z
    change ℤ at z
    change
      ((lambdaPowerBocksteinTargetCSS Y 1).F.F s degree).arrow.hom
          (xl₁.hom z) =
        ((lambdaPowerBocksteinTargetCSS Y 1).F.F s degree).arrow.hom
          (xl₂.hom z)
    calc
      _ = z • ((lambdaPowerBocksteinTargetCSS Y 1).F.F s degree).arrow.hom
          (xl₁.hom 1) := by rw [← map_zsmul, ← map_zsmul]; simp
      _ = z • ((lambdaPowerBocksteinTargetCSS Y 1).F.F s degree).arrow.hom
          (xl₂.hom 1) := congrArg (fun q => z • q) hbaseOne
      _ = _ := by rw [← map_zsmul, ← map_zsmul]; simp
  have hx : x₁ = x₂ := by
    apply (cancel_mono
      (unboundedExtensionVComplexIso f degree s 0).hom).mp
    dsimp only [FilteredComplex.IsLift] at hx₁ hx₂
    rw [hxl] at hx₁
    exact hx₁.symm.trans hx₂
  rcases hp₁ with ⟨xZ₁, hxZ₁, hxClass₁⟩
  rcases hp₂ with ⟨xZ₂, hxZ₂, hxClass₂⟩
  have hxZ : xZ₁ = xZ₂ := by
    apply (cancel_mono ((E.ssData (s, 0)).Z
      (↑(r - E.r₀).toNat : WithTop ℕ)).arrow).mp
    rw [hxZ₁, hxZ₂, hx]
  rw [← hxClass₁, ← hxClass₂, hxZ]

/-- Target representatives are closed under subtraction.  This permits a
next-filtration statement for the difference of two actual λ-boundaries to
be read as equality of their current Bockstein target-page classes. -/
theorem LambdaBocksteinTargetPageRep.sub
    {Y : Syn} {degree : ℤ × ℤ} {r s : ℤ}
    {b₁ b₂ : Smn (Syn := Syn) degree.1 degree.2 ⟶
      (shiftFunctor Syn (1 : ℤ)).obj
        ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj Y)}
    {xPage₁ xPage₂ : AddCommGrpCat.of ℤ ⟶
      (canonicalLambdaPowerBocksteinESS Y 1 degree).Page r (s, 0)}
    (h₁ : LambdaBocksteinTargetPageRep (Syn := Syn)
      Y degree r s b₁ xPage₁)
    (h₂ : LambdaBocksteinTargetPageRep (Syn := Syn)
      Y degree r s b₂ xPage₂) :
    LambdaBocksteinTargetPageRep (Syn := Syn)
      Y degree r s (b₁ - b₂) (xPage₁ - xPage₂) := by
  let f := lambdaPowerBocksteinCSSMap Y 1
  let E := ExtensionSpectralSequence.{1, 0, 0, 0} f degree
  rcases h₁ with ⟨x₁, xl₁, hx₁, hb₁, ⟨xZ₁, hxZ₁, hp₁⟩⟩
  rcases h₂ with ⟨x₂, xl₂, hx₂, hb₂, ⟨xZ₂, hxZ₂, hp₂⟩⟩
  refine ⟨x₁ - x₂, xl₁ - xl₂, ?_, ?_, ⟨xZ₁ - xZ₂, ?_, ?_⟩⟩
  · dsimp only [FilteredComplex.IsLift] at hx₁ hx₂ ⊢
    exact (Preadditive.sub_comp xl₁ xl₂ _).trans
      ((congrArg₂ (fun p q => p - q) hx₁ hx₂).trans
        (Preadditive.sub_comp x₁ x₂ _).symm)
  · change (synAdamsConvergence Syn
        ((shiftFunctor Syn (1 : ℤ)).obj
          ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj Y))).abutmentEquiv degree
        (((lambdaPowerBocksteinTargetCSS Y 1).F.F s degree).arrow.hom
          (xl₁.hom 1 - xl₂.hom 1)) = b₁ - b₂
    calc
      _ = (synAdamsConvergence Syn
          ((shiftFunctor Syn (1 : ℤ)).obj
            ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj Y))).abutmentEquiv degree
          (((lambdaPowerBocksteinTargetCSS Y 1).F.F s degree).arrow.hom
              (xl₁.hom 1) -
            ((lambdaPowerBocksteinTargetCSS Y 1).F.F s degree).arrow.hom
              (xl₂.hom 1)) := by rw [map_sub]
      _ = _ := by
        exact (((synAdamsConvergence Syn
          ((shiftFunctor Syn (1 : ℤ)).obj
            ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj Y))).abutmentEquiv degree).map_sub
              _ _).trans (congrArg₂ (fun p q => p - q) hb₁ hb₂)
  · simpa only [Preadditive.sub_comp] using
      congrArg₂ (fun p q => p - q) hxZ₁ hxZ₂
  · exact (Preadditive.sub_comp xZ₁ xZ₂ _).trans
      (congrArg₂ (fun p q => p - q) hp₁ hp₂)

/-- A target representative whose actual λ-boundary lies one filtration
step deeper is zero on the current Bockstein page. -/
theorem LambdaBocksteinTargetPageRep.eq_zero_of_mem_next
    {Y : Syn} {degree : ℤ × ℤ} {r s : ℤ}
    {b : Smn (Syn := Syn) degree.1 degree.2 ⟶
      (shiftFunctor Syn (1 : ℤ)).obj
        ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj Y)}
    {xPage : AddCommGrpCat.of ℤ ⟶
      (canonicalLambdaPowerBocksteinESS Y 1 degree).Page r (s, 0)}
    (h : LambdaBocksteinTargetPageRep (Syn := Syn)
      Y degree r s b xPage)
    (hbNext : b ∈ synAdamsFiltration Syn
      ((shiftFunctor Syn (1 : ℤ)).obj
        ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj Y))
      degree.1 degree.2 (s + 1)) :
    xPage = 0 := by
  rcases h with ⟨x, xl, hx, hb, hxPage⟩
  let f := lambdaPowerBocksteinCSSMap Y 1
  let E := ExtensionSpectralSequence.{1, 0, 0, 0} f degree
  let A := synAdamsConvergence Syn
    ((shiftFunctor Syn (1 : ℤ)).obj
      ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj Y))
  have hbCurrent : b ∈ synAdamsFiltration Syn
      ((shiftFunctor Syn (1 : ℤ)).obj
        ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj Y))
      degree.1 degree.2 s :=
    synAdamsFiltration_mono Syn
      ((shiftFunctor Syn (1 : ℤ)).obj
        ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj Y))
      degree.1 degree.2 s hbNext
  let bFiltered : synAdamsFiltration Syn
      ((shiftFunctor Syn (1 : ℤ)).obj
        ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj Y))
      degree.1 degree.2 s := ⟨b, hbCurrent⟩
  have hfil : A.filtrationEquiv s degree (xl.hom 1) = bFiltered := by
    apply Subtype.ext
    exact (A.filtrationEquiv_comm s degree (xl.hom 1)).symm.trans hb
  have hxlOne : xl.hom 1 =
      (A.filtrationEquiv s degree).symm bFiltered := by
    apply (A.filtrationEquiv s degree).injective
    rw [hfil, AddEquiv.apply_symm_apply]
  have hproj : A.homotopyGradedProjection s degree bFiltered = 0 :=
    (A.homotopyGradedProjection_eq_zero_iff s degree bFiltered).mpr hbNext
  have hxlZero : xl ≫
      (unboundedUnderlyingComplex (lambdaPowerBocksteinCSSMap Y 1) degree).filToAssocGraded
        s 0 = 0 := by
    apply AddCommGrpCat.hom_ext
    apply AddMonoidHom.ext
    intro z
    change ((unboundedUnderlyingComplex (lambdaPowerBocksteinCSSMap Y 1) degree).filToAssocGraded
      s 0).hom (xl.hom z) = 0
    have hzx : xl.hom z = z • xl.hom 1 := by
      change ℤ at z
      calc
        xl.hom z = xl.hom (z • (1 : ℤ)) := by simp
        _ = z • xl.hom 1 := map_zsmul _ _ _
    calc
      _ = ((unboundedUnderlyingComplex (lambdaPowerBocksteinCSSMap Y 1) degree).filToAssocGraded
          s 0).hom (z • xl.hom 1) := congrArg _ hzx
      _ = z • ((unboundedUnderlyingComplex (lambdaPowerBocksteinCSSMap Y 1) degree).filToAssocGraded
          s 0).hom (xl.hom 1) := map_zsmul _ _ _
      _ = z • A.homotopyGradedProjection s degree bFiltered := by rw [hxlOne]; rfl
      _ = 0 := by rw [hproj, smul_zero]
  have hxZero : x = 0 := by
    apply (cancel_mono
      (unboundedExtensionVComplexIso (lambdaPowerBocksteinCSSMap Y 1) degree s 0).hom).mp
    dsimp only [FilteredComplex.IsLift] at hx
    exact hx.symm.trans (hxlZero.trans zero_comp.symm)
  rcases hxPage with ⟨xZ, hxZ, hxClass⟩
  have hxZZero : xZ = 0 := by
    apply (cancel_mono ((E.ssData (s, 0)).Z
      (↑(r - E.r₀).toNat : WithTop ℕ)).arrow).mp
    rw [hxZ, hxZero, zero_comp]
  rw [← hxClass, hxZZero, zero_comp]


/-- Two target representatives define the same current page class whenever
their actual λ-boundaries differ by one higher filtration step. -/
theorem LambdaBocksteinTargetPageRep.eq_of_sub_mem_next
    {Y : Syn} {degree : ℤ × ℤ} {r s : ℤ}
    {b₁ b₂ : Smn (Syn := Syn) degree.1 degree.2 ⟶
      (shiftFunctor Syn (1 : ℤ)).obj
        ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj Y)}
    {xPage₁ xPage₂ : AddCommGrpCat.of ℤ ⟶
      (canonicalLambdaPowerBocksteinESS Y 1 degree).Page r (s, 0)}
    (h₁ : LambdaBocksteinTargetPageRep (Syn := Syn)
      Y degree r s b₁ xPage₁)
    (h₂ : LambdaBocksteinTargetPageRep (Syn := Syn)
      Y degree r s b₂ xPage₂)
    (hnext : b₁ - b₂ ∈ synAdamsFiltration Syn
      ((shiftFunctor Syn (1 : ℤ)).obj
        ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj Y))
      degree.1 degree.2 (s + 1)) :
    xPage₁ = xPage₂ := by
  have hzero : xPage₁ - xPage₂ = 0 :=
    LambdaBocksteinTargetPageRep.eq_zero_of_mem_next (Syn := Syn)
      (LambdaBocksteinTargetPageRep.sub (Syn := Syn) h₁ h₂) hnext
  exact sub_eq_zero.mp hzero

/-- A target representative already lying in the finite boundary subobject
is zero on that page.  This is the boundary form of the target zero test
used when a zero Adams target is divided by the free λ-action. -/
theorem lambdaBocksteinTarget_page_eq_zero_of_boundary
    {Y : Syn} {degree : ℤ × ℤ} {r s : ℤ}
    {x : AddCommGrpCat.of ℤ ⟶
      ((canonicalLambdaPowerBocksteinESS Y 1 degree).ssData (s, 0)).V}
    {xPage : AddCommGrpCat.of ℤ ⟶
      (canonicalLambdaPowerBocksteinESS Y 1 degree).Page r (s, 0)}
    (hpage : ElementPageRel (canonicalLambdaPowerBocksteinESS Y 1 degree)
      r (s, 0) x xPage)
    (hboundary : Subobject.Factors
      (((canonicalLambdaPowerBocksteinESS Y 1 degree).ssData (s, 0)).B
        (↑(r - (canonicalLambdaPowerBocksteinESS Y 1 degree).r₀).toNat :
          WithTop ℕ)) x) :
    xPage = 0 := by
  let E := canonicalLambdaPowerBocksteinESS Y 1 degree
  let pageIndex : WithTop ℕ := ↑(r - E.r₀).toNat
  let D := E.ssData (s, 0)
  let i := Subobject.ofLE (D.B pageIndex) (D.Z pageIndex) (D.B_le_Z pageIndex)
  have hboundary' : Subobject.Factors (D.B pageIndex) x := by
    simpa only [E, D, pageIndex] using hboundary
  let xB := Subobject.factorThru (D.B pageIndex) x hboundary'
  rcases hpage with ⟨xZ, hxZ, hxClass⟩
  change xZ ≫ (D.Z pageIndex).arrow = x at hxZ
  change xZ ≫ D.pageπ pageIndex = xPage at hxClass
  have hxZ : xZ = xB ≫ i := by
    apply (cancel_mono ((D.Z pageIndex).arrow)).mp
    rw [hxZ, Category.assoc, Subobject.ofLE_arrow,
      (Subobject.factorThru_arrow (D.B pageIndex) x hboundary')]
  rw [← hxClass, hxZ, Category.assoc, cokernel.condition, comp_zero]

/-- A differential relation with zero source makes its target vanish on the
corresponding page.  This is the `Bᵢ` step in element form: compare the
given relation with the zero relation, obtain that the target belongs to the
boundary subobject, and then pass to the page quotient. -/
theorem ElementPageRel.eq_zero_of_zero_source_relation
    (E : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ)) (r : ℤ) (k : ℤ × ℤ)
    {T : AddCommGrpCat.{0}}
    {y : T ⟶ (E.ssData (k + E.diffDeg r)).V}
    {yPage : T ⟶ E.Page r (k + E.diffDeg r)}
    (hpage : ElementPageRel E r (k + E.diffDeg r) y yPage)
    (hrel : DifferentialRelation E r k 0 y) :
    yPage = 0 := by
  let q : WithTop ℕ := ↑(r - E.r₀).toNat
  have hzero : DifferentialRelation E r k (0 : T ⟶ (E.ssData k).V) 0 := by
    exact ⟨0, zero_comp, 0, zero_comp, by simp only [zero_comp]⟩
  have hboundary : Subobject.Factors ((E.ssData (k + E.diffDeg r)).B q) y := by
    simpa only [sub_zero] using
      hrel.targets_sub_factors_boundary E r k hzero
  let D := E.ssData (k + E.diffDeg r)
  let i := Subobject.ofLE (D.B q) (D.Z q) (D.B_le_Z q)
  let yB := Subobject.factorThru (D.B q) y hboundary
  rcases hpage with ⟨yZ, hyZ, hyClass⟩
  have hyZ : yZ = yB ≫ i := by
    apply (cancel_mono (D.Z q).arrow).mp
    rw [hyZ, Category.assoc, Subobject.ofLE_arrow,
      (Subobject.factorThru_arrow (D.B q) y hboundary)]
  rw [← hyClass, hyZ, Category.assoc, cokernel.condition, comp_zero]

/-- A declared λ-Bockstein occurrence supplies a target-column page class
representing its specified actual boundary target. -/
theorem LambdaBocksteinOccursOn.exists_targetPageRep
    {Y : Syn} {degree : ℤ × ℤ} {r s : ℤ}
    {a : Smn (Syn := Syn) degree.1 degree.2 ⟶ XModLambdaN Y 1}
    {b : Smn (Syn := Syn) degree.1 degree.2 ⟶
      (shiftFunctor Syn (1 : ℤ)).obj
        ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj Y)}
    (h : LambdaBocksteinOccursOn (Syn := Syn) Y degree r s a b) :
    ∃ yPage : AddCommGrpCat.of ℤ ⟶
        (canonicalLambdaPowerBocksteinESS Y 1 degree).Page r (s + r, 0),
      LambdaBocksteinTargetPageRep (Syn := Syn)
        Y degree r (s + r) b yPage := by
  rcases h with ⟨x, y, xl, yl, hx, hy, ha, hb, hrel⟩
  let f := lambdaPowerBocksteinCSSMap Y 1
  let E := ExtensionSpectralSequence.{1, 0, 0, 0} f degree
  let y' : AddCommGrpCat.of ℤ ⟶
      (E.ssData ((s, 1) + E.diffDeg r)).V :=
    Eq.mpr (congrArg (fun A : AddCommGrpCat.{0} => AddCommGrpCat.of ℤ ⟶ A)
      (show
        (E.ssData ((s, 1) + E.diffDeg r)).V =
          (unboundedExtensionSSData.{1, 0, 0, 0}
            f degree (s + r, 0)).V by
          change
            (unboundedExtensionSSData.{1, 0, 0, 0}
              f degree (s + r, 0)).V =
              (unboundedExtensionSSData.{1, 0, 0, 0}
                f degree (s + r, 0)).V
          rfl)) y
  change DifferentialRelation E r (s, 1) x y' at hrel
  obtain ⟨xPage, yPage, hd, hxPage, hyPage⟩ :=
    (dr_apply_iff_rel E r (s, 1) x y').mpr hrel
  have hindex : (s, 1) + E.diffDeg r = (s + r, 0) := by
    simp [E, ExtensionSpectralSequence_diffDeg, Prod.mk_add_mk]
  change AddCommGrpCat.of ℤ ⟶
    (canonicalLambdaPowerBocksteinESS Y 1 degree).Page r (s + r, 0) at yPage
  refine ⟨?_, y', yl, hy, hb, ?_⟩
  · exact yPage
  · simpa [E, f, ExtensionSpectralSequence_diffDeg] using hyPage

/-- A λ-Bockstein occurrence gives its source and target page representatives
at the same time as the induced page differential.  Keeping these three
pieces together is what makes the differential comparison independent of
all choices of filtered representatives. -/
theorem LambdaBocksteinOccursOn.exists_page_differential_reps
    {Y : Syn} {degree : ℤ × ℤ} {r s : ℤ}
    {a : Smn (Syn := Syn) degree.1 degree.2 ⟶ XModLambdaN Y 1}
    {b : Smn (Syn := Syn) degree.1 degree.2 ⟶
      (shiftFunctor Syn (1 : ℤ)).obj
        ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj Y)}
    (h : LambdaBocksteinOccursOn (Syn := Syn) Y degree r s a b) :
    ∃ (xPage : AddCommGrpCat.of ℤ ⟶
          (canonicalLambdaPowerBocksteinESS Y 1 degree).Page r (s, 1))
      (yPage : AddCommGrpCat.of ℤ ⟶
          (canonicalLambdaPowerBocksteinESS Y 1 degree).Page r (s + r, 0)),
      xPage ≫ (canonicalLambdaPowerBocksteinESS Y 1 degree).d r (s, 1) =
        yPage ∧
      LambdaBocksteinSourcePageRep (Syn := Syn) Y degree r s a xPage ∧
      LambdaBocksteinTargetPageRep (Syn := Syn) Y degree r (s + r) b yPage := by
  rcases h with ⟨x, y, xl, yl, hx, hy, ha, hb, hrel⟩
  let f := lambdaPowerBocksteinCSSMap Y 1
  let E := ExtensionSpectralSequence.{1, 0, 0, 0} f degree
  let y' : AddCommGrpCat.of ℤ ⟶
      (E.ssData ((s, 1) + E.diffDeg r)).V :=
    Eq.mpr (congrArg (fun A : AddCommGrpCat.{0} => AddCommGrpCat.of ℤ ⟶ A)
      (show
        (E.ssData ((s, 1) + E.diffDeg r)).V =
          (unboundedExtensionSSData.{1, 0, 0, 0}
            f degree (s + r, 0)).V by
          change
            (unboundedExtensionSSData.{1, 0, 0, 0}
              f degree (s + r, 0)).V =
              (unboundedExtensionSSData.{1, 0, 0, 0}
                f degree (s + r, 0)).V
          rfl)) y
  change DifferentialRelation E r (s, 1) x y' at hrel
  obtain ⟨xPage, yPage, hd, hxPage, hyPage⟩ :=
    (dr_apply_iff_rel E r (s, 1) x y').mpr hrel
  have hindex : (s, 1) + E.diffDeg r = (s + r, 0) := by
    simp [E, ExtensionSpectralSequence_diffDeg, Prod.mk_add_mk]
  change AddCommGrpCat.of ℤ ⟶
    (canonicalLambdaPowerBocksteinESS Y 1 degree).Page r (s + r, 0) at yPage
  refine ⟨xPage, ?_, ?_, ⟨x, xl, hx, ha, hxPage⟩, ?_⟩
  · exact yPage
  · change xPage ≫ (canonicalLambdaPowerBocksteinESS Y 1 degree).d r (s, 1) =
      yPage at hd
    exact hd
  · refine ⟨y', yl, hy, hb, ?_⟩
    simpa [E, f, ExtensionSpectralSequence_diffDeg] using hyPage

/-- An Adams differential supplies a specified actual λ-boundary target and
therefore a target-column Bockstein page class representing it.  This is the
target half of the pagewise differential comparison. -/
theorem NuSynAdamsGeometricComparison.exists_targetPageRep_of_adams_differential
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s n : ℕ) (t : ℤ)
    (x : (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page
      ((n + 2 : ℕ) : ℤ) ((s : ℤ), t, t))
    (b : (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page
      ((n + 2 : ℕ) : ℤ)
        ((s : ℤ) + ((n + 2 : ℕ) : ℤ),
          t + ((n + 2 : ℕ) : ℤ) - 1, t))
    (hdb : (synAdamsDifferentialNormalized Syn ((nu 𝒮 Syn).obj X)
      ((n + 2 : ℕ) : ℤ) (s : ℤ) t t).hom x = b) :
    let degree : ℤ × ℤ := (t - (s : ℤ), t - (s : ℤ) + (s : ℤ))
    ∃ (aOne : NuSynAdamsGeometricModel.SourceSphere (Syn := Syn) s t ⟶
          XModLambdaN ((nu 𝒮 Syn).obj X) 1)
      (bOne : NuSynAdamsGeometricModel.SourceSphere (Syn := Syn) s t ⟶
        (shiftFunctor Syn (1 : ℤ)).obj
          ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj
            ((nu 𝒮 Syn).obj X)))
      (yPage : AddCommGrpCat.of ℤ ⟶
        (canonicalLambdaPowerBocksteinESS ((nu 𝒮 Syn).obj X) 1 degree).Page
          ((n + 2 : ℕ) : ℤ)
          ((s : ℤ) + ((n + 2 : ℕ) : ℤ), 0)),
      aOne ≫ lambdaBocksteinConnecting ((nu 𝒮 Syn).obj X) = bOne ∧
      LambdaBocksteinTargetPageRep (Syn := Syn)
        ((nu 𝒮 Syn).obj X) degree ((n + 2 : ℕ) : ℤ)
        ((s : ℤ) + ((n + 2 : ℕ) : ℤ)) bOne yPage := by
  dsimp only
  obtain ⟨z, y, aOne, bOne, hsource, htarget, hboundary, hoccurs⟩ :=
    C.lambdaBocksteinOccursOn_of_adams_differential s n t x b hdb
  obtain ⟨yPage, hyPage⟩ := hoccurs.exists_targetPageRep
  exact ⟨aOne, bOne, yPage, hboundary, hyPage⟩

/-- The geometric Adams differential comparison produces one Bockstein page
differential whose two endpoints retain their actual filtered meanings. -/
theorem NuSynAdamsGeometricComparison.exists_page_differential_reps_of_adams_differential
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s n : ℕ) (t : ℤ)
    (x : (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page
      ((n + 2 : ℕ) : ℤ) ((s : ℤ), t, t))
    (b : (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page
      ((n + 2 : ℕ) : ℤ)
        ((s : ℤ) + ((n + 2 : ℕ) : ℤ),
          t + ((n + 2 : ℕ) : ℤ) - 1, t))
    (hdb : (synAdamsDifferentialNormalized Syn ((nu 𝒮 Syn).obj X)
      ((n + 2 : ℕ) : ℤ) (s : ℤ) t t).hom x = b) :
    let degree : ℤ × ℤ := (t - (s : ℤ), t - (s : ℤ) + (s : ℤ))
    ∃ (aOne : NuSynAdamsGeometricModel.SourceSphere (Syn := Syn) s t ⟶
          XModLambdaN ((nu 𝒮 Syn).obj X) 1)
      (bOne : NuSynAdamsGeometricModel.SourceSphere (Syn := Syn) s t ⟶
        (shiftFunctor Syn (1 : ℤ)).obj
          ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj
            ((nu 𝒮 Syn).obj X)))
      (xPage : AddCommGrpCat.of ℤ ⟶
        (canonicalLambdaPowerBocksteinESS ((nu 𝒮 Syn).obj X) 1 degree).Page
          ((n + 2 : ℕ) : ℤ) ((s : ℤ), 1))
      (yPage : AddCommGrpCat.of ℤ ⟶
        (canonicalLambdaPowerBocksteinESS ((nu 𝒮 Syn).obj X) 1 degree).Page
          ((n + 2 : ℕ) : ℤ) ((s : ℤ) + ((n + 2 : ℕ) : ℤ), 0)),
      aOne ≫ lambdaBocksteinConnecting ((nu 𝒮 Syn).obj X) = bOne ∧
      xPage ≫ (canonicalLambdaPowerBocksteinESS ((nu 𝒮 Syn).obj X) 1 degree).d
        ((n + 2 : ℕ) : ℤ) ((s : ℤ), 1) = yPage ∧
      LambdaBocksteinSourcePageRep (Syn := Syn)
        ((nu 𝒮 Syn).obj X) degree ((n + 2 : ℕ) : ℤ) (s : ℤ) aOne xPage ∧
      LambdaBocksteinTargetPageRep (Syn := Syn)
        ((nu 𝒮 Syn).obj X) degree ((n + 2 : ℕ) : ℤ)
        ((s : ℤ) + ((n + 2 : ℕ) : ℤ)) bOne yPage := by
  dsimp only
  obtain ⟨z, y, aOne, bOne, hsource, htarget, hboundary, hoccurs⟩ :=
    C.lambdaBocksteinOccursOn_of_adams_differential s n t x b hdb
  obtain ⟨xPage, yPage, hd, hxPage, hyPage⟩ :=
    hoccurs.exists_page_differential_reps
  exact ⟨aOne, bOne, xPage, yPage, hboundary, hd, hxPage, hyPage⟩

/-- The established Adams-to-Bockstein source map is represented by the
source endpoint of a single geometric cap.  The target endpoint of that
same cap is an actual λ-boundary target page representative. -/
theorem NuSynAdamsGeometricComparison.exists_bockstein_differential_targetRep
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s n : ℕ) (t : ℤ)
    (x : (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page
      ((n + 2 : ℕ) : ℤ) ((s : ℤ), t, t)) :
    let degree : ℤ × ℤ := (t - (s : ℤ), t)
    ∃ (aOne : Smn (Syn := Syn) (t - (s : ℤ)) t ⟶
          XModLambdaN ((nu 𝒮 Syn).obj X) 1)
      (bOne : Smn (Syn := Syn) (t - (s : ℤ)) t ⟶
        (shiftFunctor Syn (1 : ℤ)).obj
          ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj
            ((nu 𝒮 Syn).obj X)))
      (yPage : AddCommGrpCat.of ℤ ⟶
        (canonicalLambdaPowerBocksteinESS ((nu 𝒮 Syn).obj X) 1 degree).Page
          ((n + 2 : ℕ) : ℤ) ((s : ℤ) + ((n + 2 : ℕ) : ℤ), 0)),
      aOne ≫ lambdaBocksteinConnecting ((nu 𝒮 Syn).obj X) = bOne ∧
      ((canonicalLambdaPowerBocksteinESS ((nu 𝒮 Syn).obj X) 1 degree).d
          ((n + 2 : ℕ) : ℤ) ((s : ℤ), 1)).hom
          (C.synAdamsToLambdaBocksteinPageHom s n t x) = yPage.hom 1 ∧
      LambdaBocksteinTargetPageRep (Syn := Syn)
        ((nu 𝒮 Syn).obj X) degree ((n + 2 : ℕ) : ℤ)
        ((s : ℤ) + ((n + 2 : ℕ) : ℤ)) bOne yPage := by
  dsimp only
  obtain ⟨c, hc⟩ := C.exists_cap_detecting_synAdamsClass s n t x
  let qPower :=
    (NuSynAdamsGeometricModel.sourceSphereIso (Syn := Syn) s t).inv ≫
      M.input.capQuotientClass
        (NuSynAdamsGeometricModel.SourceSphere (Syn := Syn) s t)
        s (n + 2) (n + 1) c
  let aOne := qPower ≫ XModLambdaN.toOne ((nu 𝒮 Syn).obj X) n
  let bOne := aOne ≫ lambdaBocksteinConnecting ((nu 𝒮 Syn).obj X)
  have hoccurs : LambdaBocksteinOccursOn (Syn := Syn) ((nu 𝒮 Syn).obj X)
      (t - (s : ℤ), t) ((n + 2 : ℕ) : ℤ) (s : ℤ) aOne bOne := by
    simpa only [qPower, aOne, bOne] using
      M.canonicalLambdaBocksteinOccursOn_of_cap s n t c
  obtain ⟨xPage, yPage, hd, hxPage, hyPage⟩ :=
    hoccurs.exists_page_differential_reps
  have hsourcePage : xPage = C.capBocksteinSourcePage s n t c :=
    LambdaBocksteinSourcePageRep.unique (Syn := Syn) hxPage
      (by
        simpa only [qPower, aOne] using C.capBocksteinSourcePage_spec s n t c)
  have hsourceOne : xPage.hom 1 =
      C.synAdamsToLambdaBocksteinPageHom s n t x := by
    rw [hsourcePage]
    calc
      (C.capBocksteinSourcePage s n t c).hom 1 =
          C.capToBocksteinSourcePageHom s n t c := rfl
      _ = C.synAdamsToLambdaBocksteinPageHom s n t
          (M.capQuotientDetectedClass s (n + 2) (by omega) t c) :=
        (C.synAdamsToLambdaBocksteinPageHom_cap s n t c).symm
      _ = C.synAdamsToLambdaBocksteinPageHom s n t x := by rw [hc]
  have hpageDifferential :
      ((canonicalLambdaPowerBocksteinESS ((nu 𝒮 Syn).obj X) 1
        (t - (s : ℤ), t)).d ((n + 2 : ℕ) : ℤ) ((s : ℤ), 1)).hom
          (C.synAdamsToLambdaBocksteinPageHom s n t x) = yPage.hom 1 := by
    have h := congrArg (fun q => q.hom 1) hd
    change ((canonicalLambdaPowerBocksteinESS ((nu 𝒮 Syn).obj X) 1
      (t - (s : ℤ), t)).d ((n + 2 : ℕ) : ℤ) ((s : ℤ), 1)).hom
        (xPage.hom 1) = yPage.hom 1 at h
    rw [hsourceOne] at h
    exact h
  exact ⟨aOne, bOne, yPage, rfl, hpageDifferential, hyPage⟩

/-- The cap comparison carries an Adams cycle to a λ-Bockstein cycle.
For a zero Adams differential, the geometric cap relation has the same
divided boundary as the cap detecting the source. Their actual single-λ
boundaries differ by a next-filtration class, so their target-page classes
agree. The cap relation has zero source-page class, hence zero target-page
class by its differential equation. -/
theorem NuSynAdamsGeometricComparison.adams_cycle_maps_to_bockstein_cycle
    [SyntheticShiftCofiberCompatibility (Syn := Syn)]
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s n : ℕ) (t : ℤ)
    (x : (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page
      ((n + 2 : ℕ) : ℤ) ((s : ℤ), t, t))
    (hzero : (synAdamsDifferentialNormalized Syn ((nu 𝒮 Syn).obj X)
      ((n + 2 : ℕ) : ℤ) (s : ℤ) t t).hom x = 0) :
    ((canonicalLambdaBocksteinESS ((nu 𝒮 Syn).obj X)
      (lambdaBocksteinGeneratorDegree (s : ℤ) t)).d
        ((n + 2 : ℕ) : ℤ) ((s : ℤ), 1)).hom
          (C.synAdamsToLambdaBocksteinPageHom s n t x) = 0 := by
  obtain ⟨c, d, hc, hd, hdivided⟩ :=
    C.exists_capRelation_same_dividedTarget_of_adams_differential_eq_zero
      s n t x hzero
  let Y := (nu 𝒮 Syn).obj X
  let degree : ℤ × ℤ := lambdaBocksteinGeneratorDegree (s : ℤ) t
  let sphere := NuSynAdamsGeometricModel.SourceSphere (Syn := Syn) s t
  let e := NuSynAdamsGeometricModel.sourceSphereIso (Syn := Syn) s t
  let aC := (e.inv ≫ M.input.capQuotientClass sphere s (n + 2) (n + 1) c) ≫
    XModLambdaN.toOne Y n
  let aD := (e.inv ≫ M.input.capQuotientClass sphere s (n + 2) (n + 1) d) ≫
    XModLambdaN.toOne Y n
  let bC := aC ≫ lambdaBocksteinConnecting Y
  let bD := aD ≫ lambdaBocksteinConnecting Y
  have hoccC : LambdaBocksteinOccursOn (Syn := Syn) Y degree
      ((n + 2 : ℕ) : ℤ) (s : ℤ) aC bC := by
    simpa only [Y, degree, lambdaBocksteinGeneratorDegree,
      aC, bC, e, sphere] using
      M.canonicalLambdaBocksteinOccursOn_of_cap s n t c
  have hoccD : LambdaBocksteinOccursOn (Syn := Syn) Y degree
      ((n + 2 : ℕ) : ℤ) (s : ℤ) aD bD := by
    simpa only [Y, degree, lambdaBocksteinGeneratorDegree,
      aD, bD, e, sphere] using
      M.canonicalLambdaBocksteinOccursOn_of_cap s n t d
  obtain ⟨xc, yc, hdc, hxc, hyc⟩ := hoccC.exists_page_differential_reps
  obtain ⟨xd, yd, hdd, hxd, hyd⟩ := hoccD.exists_page_differential_reps
  have hxcCap : xc = C.capBocksteinSourcePage s n t c :=
    LambdaBocksteinSourcePageRep.unique (Syn := Syn) hxc
      (by simpa only [Y, degree, lambdaBocksteinGeneratorDegree,
        aC, e, sphere] using
        C.capBocksteinSourcePage_spec s n t c)
  have hxdCap : xd = C.capBocksteinSourcePage s n t d :=
    LambdaBocksteinSourcePageRep.unique (Syn := Syn) hxd
      (by simpa only [Y, degree, lambdaBocksteinGeneratorDegree,
        aD, e, sphere] using
        C.capBocksteinSourcePage_spec s n t d)
  have hxdZero : xd = 0 := by
    rw [hxdCap]
    apply LambdaBocksteinSourcePageRep.eq_zero_of_mem_next (Syn := Syn)
      (C.capBocksteinSourcePage_spec s n t d)
    simpa only [Y, degree, lambdaBocksteinGeneratorDegree,
      aD, e, sphere, Nat.cast_add, Nat.cast_one] using
      C.capToOne_mem_next_filtration_of_relation s n t d hd
  have hnext : bC - bD ∈ synAdamsFiltration Syn
      ((shiftFunctor Syn (1 : ℤ)).obj
      ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj Y))
      degree.1 degree.2 ((s : ℤ) + ((n + 2 : ℕ) : ℤ) + 1) := by
    have hh :=
      NuSynAdamsGeometricComparison.canonicalCapSingleLambdaBoundary_sub_mem_next_of_same_dividedTarget
        M s n t c d hdivided.symm
    have hC : bC =
        (e.inv ≫ M.input.capQuotientClass sphere s (n + 2) (n + 1) c ≫
          XModLambdaN.toOne Y n) ≫ lambdaBocksteinConnecting Y := by
      simp only [bC, aC, Category.assoc]
    have hD : bD =
        (e.inv ≫ M.input.capQuotientClass sphere s (n + 2) (n + 1) d ≫
          XModLambdaN.toOne Y n) ≫ lambdaBocksteinConnecting Y := by
      simp only [bD, aD, Category.assoc]
    rw [hC, hD]
    exact hh
  have htargetEq : yc = yd :=
    LambdaBocksteinTargetPageRep.eq_of_sub_mem_next (Syn := Syn)
      hyc hyd hnext
  have hydZero : yd = 0 := by
    rw [hxdZero, zero_comp] at hdd
    exact hdd.symm
  have hsourceOne : xc.hom 1 =
      C.synAdamsToLambdaBocksteinPageHom s n t x := by
    rw [hxcCap]
    calc
      (C.capBocksteinSourcePage s n t c).hom 1 =
          C.capToBocksteinSourcePageHom s n t c := rfl
      _ = C.synAdamsToLambdaBocksteinPageHom s n t
            (M.capQuotientDetectedClass s (n + 2) (by omega) t c) :=
        (C.synAdamsToLambdaBocksteinPageHom_cap s n t c).symm
      _ = C.synAdamsToLambdaBocksteinPageHom s n t x := by rw [hc]
  have hdcOne := congrArg (fun q => q.hom 1) hdc
  change ((canonicalLambdaPowerBocksteinESS Y 1 degree).d
    ((n + 2 : ℕ) : ℤ) ((s : ℤ), 1)).hom (xc.hom 1) = yc.hom 1 at hdcOne
  rw [hsourceOne, htargetEq, hydZero] at hdcOne
  change ((canonicalLambdaBocksteinESS Y degree).d
    ((n + 2 : ℕ) : ℤ) ((s : ℤ), 1)).hom
      (C.synAdamsToLambdaBocksteinPageHom s n t x) = 0 at hdcOne
  exact hdcOne

/-- The actual additive map on cycles at the generator degree. Its target
cycle condition is proved by the cap comparison above, rather than entered
as part of the data of a page morphism. -/
noncomputable def NuSynAdamsGeometricComparison.adamsCyclesToBocksteinCycles
    [SyntheticShiftCofiberCompatibility (Syn := Syn)]
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s n : ℕ) (t : ℤ) :
    (synAdamsDifferentialNormalized Syn ((nu 𝒮 Syn).obj X)
      ((n + 2 : ℕ) : ℤ) (s : ℤ) t t).hom.ker →+
      ((canonicalLambdaBocksteinESS ((nu 𝒮 Syn).obj X)
        (lambdaBocksteinGeneratorDegree (s : ℤ) t)).d
          ((n + 2 : ℕ) : ℤ) ((s : ℤ), 1)).hom.ker where
  toFun x := ⟨C.synAdamsToLambdaBocksteinPageHom s n t x.1,
    C.adams_cycle_maps_to_bockstein_cycle s n t x.1 x.2⟩
  map_zero' := Subtype.ext (map_zero _)
  map_add' x y := Subtype.ext (map_add _ x.1 y.1)

/-- The induced additive map on the boundary classes produced by the
outgoing Adams differential. The cycle theorem proves that the Bockstein
boundary attached to a source representative depends only on its Adams
boundary class. -/
noncomputable def NuSynAdamsGeometricComparison.adamsDifferentialImageToBocksteinImage
    [SyntheticShiftCofiberCompatibility (Syn := Syn)]
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s n : ℕ) (t : ℤ) :
    (synAdamsDifferentialNormalized Syn ((nu 𝒮 Syn).obj X)
      ((n + 2 : ℕ) : ℤ) (s : ℤ) t t).hom.range →+
      ((canonicalLambdaBocksteinESS ((nu 𝒮 Syn).obj X)
        (lambdaBocksteinGeneratorDegree (s : ℤ) t)).d
          ((n + 2 : ℕ) : ℤ) ((s : ℤ), 1)).hom.range := by
  let E := SynAdamsSS Syn ((nu 𝒮 Syn).obj X)
  let A := E.Page ((n + 2 : ℕ) : ℤ) ((s : ℤ), t, t)
  let dA := (synAdamsDifferentialNormalized Syn ((nu 𝒮 Syn).obj X)
    ((n + 2 : ℕ) : ℤ) (s : ℤ) t t).hom
  let f := C.synAdamsToLambdaBocksteinPageHom s n t
  let dB := ((canonicalLambdaBocksteinESS ((nu 𝒮 Syn).obj X)
    (lambdaBocksteinGeneratorDegree (s : ℤ) t)).d
      ((n + 2 : ℕ) : ℤ) ((s : ℤ), 1)).hom
  let gRange : A →+ dB.range := {
    toFun a := ⟨dB (f a), ⟨f a, rfl⟩⟩
    map_zero' := Subtype.ext ((dB.comp f).map_zero)
    map_add' a b := Subtype.ext ((dB.comp f).map_add a b) }
  have hker : ∀ a ∈ dA.ker, gRange a = 0 := by
    intro a ha
    apply Subtype.ext
    exact C.adams_cycle_maps_to_bockstein_cycle s n t a ha
  exact (QuotientAddGroup.lift dA.ker gRange hker).comp
    (QuotientAddGroup.quotientKerEquivRange dA).symm.toAddMonoidHom

/-- On a represented Adams differential image, the induced image map is
exactly the Bockstein differential of the source comparison class. -/
theorem NuSynAdamsGeometricComparison.adamsDifferentialImageToBocksteinImage_apply
    [SyntheticShiftCofiberCompatibility (Syn := Syn)]
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s n : ℕ) (t : ℤ)
    (x : (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page
      ((n + 2 : ℕ) : ℤ) ((s : ℤ), t, t)) :
    let dA := (synAdamsDifferentialNormalized Syn ((nu 𝒮 Syn).obj X)
      ((n + 2 : ℕ) : ℤ) (s : ℤ) t t).hom
    let dB := ((canonicalLambdaBocksteinESS ((nu 𝒮 Syn).obj X)
      (lambdaBocksteinGeneratorDegree (s : ℤ) t)).d
        ((n + 2 : ℕ) : ℤ) ((s : ℤ), 1)).hom
    C.adamsDifferentialImageToBocksteinImage s n t
      ⟨dA x, ⟨x, rfl⟩⟩ =
        ⟨dB (C.synAdamsToLambdaBocksteinPageHom s n t x),
          ⟨C.synAdamsToLambdaBocksteinPageHom s n t x, rfl⟩⟩ := by
  dsimp only
  let dA := (synAdamsDifferentialNormalized Syn ((nu 𝒮 Syn).obj X)
    ((n + 2 : ℕ) : ℤ) (s : ℤ) t t).hom
  let dB := ((canonicalLambdaBocksteinESS ((nu 𝒮 Syn).obj X)
    (lambdaBocksteinGeneratorDegree (s : ℤ) t)).d
      ((n + 2 : ℕ) : ℤ) ((s : ℤ), 1)).hom
  let f := C.synAdamsToLambdaBocksteinPageHom s n t
  let gRange : (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page
      ((n + 2 : ℕ) : ℤ) ((s : ℤ), t, t) →+ dB.range := {
    toFun a := ⟨dB (f a), ⟨f a, rfl⟩⟩
    map_zero' := Subtype.ext ((dB.comp f).map_zero)
    map_add' a b := Subtype.ext ((dB.comp f).map_add a b) }
  have hker : ∀ a ∈ dA.ker, gRange a = 0 := by
    intro a ha
    apply Subtype.ext
    exact C.adams_cycle_maps_to_bockstein_cycle s n t a ha
  let gQuot := QuotientAddGroup.lift dA.ker gRange hker
  let e := QuotientAddGroup.quotientKerEquivRange dA
  have he : e (QuotientAddGroup.mk x) = ⟨dA x, ⟨x, rfl⟩⟩ := rfl
  have hinv := e.symm_apply_apply (QuotientAddGroup.mk x)
  rw [he] at hinv
  change gQuot (e.symm ⟨dA x, ⟨x, rfl⟩⟩) = gRange x
  calc
    gQuot (e.symm ⟨dA x, ⟨x, rfl⟩⟩) =
        gQuot (QuotientAddGroup.mk x) := congrArg gQuot hinv
    _ = gRange x := rfl

/-- The target descent needed for the Adams--Bockstein comparison.

For an Adams differential, one cap represents both ends.  Its divided
boundary gives the stated representative of the Adams target (after
multiplication by the forced power `λ^(n+1)`), while its single-`λ`
boundary gives the target of the Bockstein differential.  Consequently the
already constructed map on the source column commutes with the two
differentials on every actual Adams differential.

The statement is deliberately about target classes in the image of the
differential.  An arbitrary element of `M.TargetPage` need not be the
boundary of a relative disk, so the geometric-origin data do not supply a
map on all of that quotient. -/
theorem NuSynAdamsGeometricComparison.exists_reindexedBocksteinTarget_of_adams_differential
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s n : ℕ) (t : ℤ)
    (x : (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page
      ((n + 2 : ℕ) : ℤ) ((s : ℤ), t, t))
    (b : (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page
      ((n + 2 : ℕ) : ℤ)
        ((s : ℤ) + ((n + 2 : ℕ) : ℤ),
          t + ((n + 2 : ℕ) : ℤ) - 1, t))
    (hdb : (synAdamsDifferentialNormalized Syn ((nu 𝒮 Syn).obj X)
      ((n + 2 : ℕ) : ℤ) (s : ℤ) t t).hom x = b) :
    let degree := lambdaBocksteinGeneratorDegree (s : ℤ) t
    let E := canonicalLambdaBocksteinESS ((nu 𝒮 Syn).obj X) degree
    let T := NuSynAdamsGeometricModel.SourceSphere (Syn := Syn) s t
    ∃ (c : M.input.CapRepresentatives T s (n + 2) (n + 1))
      (y : T ⟶ (shiftFunctor Syn (1 : ℤ)).obj
        ((SyntheticCategory.biShift (0, -((n + 1 : ℕ) : ℤ))).obj
          (M.input.layer (s + (n + 2)))))
      (yAmbient : AddCommGrpCat.of ℤ ⟶
        (E.ssData (((s : ℤ), 1) + E.diffDeg ((n + 2 : ℕ) : ℤ))).V)
      (yPage : AddCommGrpCat.of ℤ ⟶ E.Page ((n + 2 : ℕ) : ℤ)
        (((s : ℤ), 1) + E.diffDeg ((n + 2 : ℕ) : ℤ))),
      M.capQuotientDetectedClass s (n + 2) (by omega) t c = x ∧
      C.targetEquiv s (n + 2) (by omega) t b =
        QuotientAddGroup.mk
          (y ≫ (shiftFunctor Syn (1 : ℤ)).map
            (lambdaPow (n + 1) (M.input.layer (s + (n + 2))))) ∧
      (E.d ((n + 2 : ℕ) : ℤ) ((s : ℤ), 1)).hom
          (C.synAdamsToLambdaBocksteinPageHom s n t x) = yPage.hom 1 ∧
      ElementPageRel E ((n + 2 : ℕ) : ℤ)
        (((s : ℤ), 1) + E.diffDeg ((n + 2 : ℕ) : ℤ)) yAmbient yPage := by
  dsimp only
  obtain ⟨z, yStage, y, c, qPower, aOne, bOne,
      hsource, htarget, hyStage, hc, hqPower, haOne,
      hboundary, hbOne, hAFa, hAFb⟩ :=
    C.exists_lambdaCofiber_restriction_boundary_of_differential
      s n t x b hdb
  have hcapSource : M.input.capSourceClass
      (NuSynAdamsGeometricModel.SourceSphere (Syn := Syn) s t)
      s (n + 2) (by omega) (n + 1) c =
      C.sourceEquiv s (n + 2) (by omega) t x := by
    change QuotientAddGroup.mk
        (⟨M.input.source
            (NuSynAdamsGeometricModel.SourceSphere (Syn := Syn) s t)
            s (n + 2) (by omega)
            (c ≫ LambdaCofiberGeometry.toRelative
              (M.input.transition s (s + (n + 2))
                (Nat.le_add_right s (n + 2))) (n + 1)),
          ⟨_, rfl⟩⟩ : M.input.sourceCycles
            (NuSynAdamsGeometricModel.SourceSphere (Syn := Syn) s t)
            s (n + 2) (by omega)) = _
    rw [hc]
    exact hsource
  have hdetected : M.capQuotientDetectedClass s (n + 2) (by omega) t c = x := by
    rw [C.source_detects_cap s (n + 2) (by omega) t c]
    apply (C.sourceEquiv s (n + 2) (by omega) t).injective
    have hsource' : M.input.capSourceClass
        (NuSynAdamsGeometricModel.SourceSphere (Syn := Syn) s t)
        s (n + 2) (by omega) (n + 2 - 1) c =
        C.sourceEquiv s (n + 2) (by omega) t x := by
      convert hcapSource using 1 <;> rfl
    simpa only [AddEquiv.apply_symm_apply] using hsource'
  obtain ⟨yAmbient, yPage, hcapd, hyPage⟩ :=
    C.capBocksteinSourcePage_differential s n t c
  have hsourcePage : C.synAdamsToLambdaBocksteinPageHom s n t x =
      (C.capBocksteinSourcePage s n t c).hom 1 := by
    rw [← hdetected]
    exact C.synAdamsToLambdaBocksteinPageHom_cap s n t c
  have hpageDifferential :
      ((canonicalLambdaBocksteinESS ((nu 𝒮 Syn).obj X)
        (lambdaBocksteinGeneratorDegree (s : ℤ) t)).d
          ((n + 2 : ℕ) : ℤ) ((s : ℤ), 1)).hom
          (C.synAdamsToLambdaBocksteinPageHom s n t x) = yPage.hom 1 := by
    have h := congrArg (fun f => f.hom 1) hcapd
    change ((canonicalLambdaPowerBocksteinESS ((nu 𝒮 Syn).obj X) 1
      (t - (s : ℤ), t)).d ((n + 2 : ℕ) : ℤ) ((s : ℤ), 1)).hom
        ((C.capBocksteinSourcePage s n t c).hom 1) = yPage.hom 1 at h
    rw [← hsourcePage] at h
    exact h
  exact ⟨c, y, yAmbient, yPage, hdetected, htarget,
    hpageDifferential, hyPage⟩

/-- For a specified Adams differential, the Bockstein target page class is
the actual λ-boundary class of the same cap.  The first equality keeps track
of the specified Adams target, while the last equality is the strict page
differential equation from the established source comparison map. -/
theorem NuSynAdamsGeometricComparison.exists_targetRep_comm_of_adams_differential
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s n : ℕ) (t : ℤ)
    (x : (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page
      ((n + 2 : ℕ) : ℤ) ((s : ℤ), t, t))
    (b : (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page
      ((n + 2 : ℕ) : ℤ)
        ((s : ℤ) + ((n + 2 : ℕ) : ℤ),
          t + ((n + 2 : ℕ) : ℤ) - 1, t))
    (hdb : (synAdamsDifferentialNormalized Syn ((nu 𝒮 Syn).obj X)
      ((n + 2 : ℕ) : ℤ) (s : ℤ) t t).hom x = b) :
    let degree : ℤ × ℤ := lambdaBocksteinGeneratorDegree (s : ℤ) t
    ∃ (c : M.input.CapRepresentatives
        (NuSynAdamsGeometricModel.SourceSphere (Syn := Syn) s t)
        s (n + 2) (n + 1))
      (bOne : Smn (Syn := Syn) degree.1 degree.2 ⟶
          (shiftFunctor Syn (1 : ℤ)).obj
            ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj
              ((nu 𝒮 Syn).obj X)))
      (dividedTarget : NuSynAdamsGeometricModel.SourceSphere
          (Syn := Syn) s t ⟶
        (shiftFunctor Syn (1 : ℤ)).obj
          ((SyntheticCategory.biShift (0, -((n + 1 : ℕ) : ℤ))).obj
            (M.input.layer (s + (n + 2)))))
      (yPage : AddCommGrpCat.of ℤ ⟶
        (canonicalLambdaPowerBocksteinESS ((nu 𝒮 Syn).obj X) 1 degree).Page
          ((n + 2 : ℕ) : ℤ) ((s : ℤ) + ((n + 2 : ℕ) : ℤ), 0)),
      M.capQuotientDetectedClass s (n + 2) (by omega) t c = x ∧
      bOne =
        (((NuSynAdamsGeometricModel.sourceSphereIso (Syn := Syn) s t).inv ≫
            M.input.capQuotientClass
              (NuSynAdamsGeometricModel.SourceSphere (Syn := Syn) s t)
              s (n + 2) (n + 1) c) ≫
          XModLambdaN.toOne ((nu 𝒮 Syn).obj X) n) ≫
            lambdaBocksteinConnecting ((nu 𝒮 Syn).obj X) ∧
      C.targetEquiv s (n + 2) (by omega) t b =
        QuotientAddGroup.mk
          (dividedTarget ≫ (shiftFunctor Syn (1 : ℤ)).map
            (lambdaPow (n + 1) (M.input.layer (s + (n + 2))))) ∧
      LambdaBocksteinTargetPageRep (Syn := Syn)
        ((nu 𝒮 Syn).obj X) degree ((n + 2 : ℕ) : ℤ)
        ((s : ℤ) + ((n + 2 : ℕ) : ℤ)) bOne yPage ∧
      ((canonicalLambdaPowerBocksteinESS ((nu 𝒮 Syn).obj X) 1 degree).d
          ((n + 2 : ℕ) : ℤ) ((s : ℤ), 1)).hom
          (C.synAdamsToLambdaBocksteinPageHom s n t x) = yPage.hom 1 := by
  dsimp only
  obtain ⟨c, dividedTarget, yAmbient, oldPage, hdetected,
      hgeometric, hOldDifferential, hOldPage⟩ :=
    C.exists_reindexedBocksteinTarget_of_adams_differential s n t x b hdb
  let qPower :=
    (NuSynAdamsGeometricModel.sourceSphereIso (Syn := Syn) s t).inv ≫
      M.input.capQuotientClass
        (NuSynAdamsGeometricModel.SourceSphere (Syn := Syn) s t)
        s (n + 2) (n + 1) c
  let aOne := qPower ≫ XModLambdaN.toOne ((nu 𝒮 Syn).obj X) n
  let bOne := aOne ≫ lambdaBocksteinConnecting ((nu 𝒮 Syn).obj X)
  have hoccurs : LambdaBocksteinOccursOn (Syn := Syn) ((nu 𝒮 Syn).obj X)
      (t - (s : ℤ), t) ((n + 2 : ℕ) : ℤ) (s : ℤ) aOne bOne := by
    simpa only [qPower, aOne, bOne] using
      M.canonicalLambdaBocksteinOccursOn_of_cap s n t c
  obtain ⟨xPage, yPage, hpage, hxPage, hyPage⟩ :=
    hoccurs.exists_page_differential_reps
  have hxCap : xPage = C.capBocksteinSourcePage s n t c :=
    LambdaBocksteinSourcePageRep.unique (Syn := Syn) hxPage
      (by
        simpa only [qPower, aOne] using C.capBocksteinSourcePage_spec s n t c)
  have hxSource : xPage.hom 1 =
      C.synAdamsToLambdaBocksteinPageHom s n t x := by
    rw [hxCap]
    calc
      (C.capBocksteinSourcePage s n t c).hom 1 =
          C.capToBocksteinSourcePageHom s n t c := rfl
      _ = C.synAdamsToLambdaBocksteinPageHom s n t
          (M.capQuotientDetectedClass s (n + 2) (by omega) t c) :=
        (C.synAdamsToLambdaBocksteinPageHom_cap s n t c).symm
      _ = C.synAdamsToLambdaBocksteinPageHom s n t x := by rw [hdetected]
  have hpageDifferential :
      ((canonicalLambdaPowerBocksteinESS ((nu 𝒮 Syn).obj X) 1
        (lambdaBocksteinGeneratorDegree (s : ℤ) t)).d
          ((n + 2 : ℕ) : ℤ) ((s : ℤ), 1)).hom
          (C.synAdamsToLambdaBocksteinPageHom s n t x) = yPage.hom 1 := by
    have h := congrArg (fun q => q.hom 1) hpage
    change ((canonicalLambdaPowerBocksteinESS ((nu 𝒮 Syn).obj X) 1
      (t - (s : ℤ), t)).d ((n + 2 : ℕ) : ℤ) ((s : ℤ), 1)).hom
        (xPage.hom 1) = yPage.hom 1 at h
    rw [hxSource] at h
    exact h
  exact ⟨c, bOne, dividedTarget, yPage, hdetected, rfl, hgeometric,
    hyPage, hpageDifferential⟩

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- The actual connecting map on cap quotients gives the divided target
of the specified Adams differential. Division is justified by the free
λ-module comparison on the layer quotient, not by a new target axiom. -/
theorem NuSynAdamsGeometricComparison.adams_differential_eq_divided_cap_boundary
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s n : ℕ) (t : ℤ)
    (x : (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page
      ((n + 2 : ℕ) : ℤ) ((s : ℤ), t, t))
    (b : (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page
      ((n + 2 : ℕ) : ℤ)
      ((s : ℤ) + ((n + 2 : ℕ) : ℤ), t + ((n + 2 : ℕ) : ℤ) - 1, t))
    (hdb : (synAdamsDifferentialNormalized Syn ((nu 𝒮 Syn).obj X)
      ((n + 2 : ℕ) : ℤ) (s : ℤ) t t).hom x = b) :
    M.input.capDifferential
        (NuSynAdamsGeometricModel.SourceSphere (Syn := Syn) s t)
        s (n + 2) (by omega) (n + 1)
        ((C.capPageEquivSynAdams s n t).symm x) =
      (M.input.dividedTargetEquiv M.freeLayers s (n + 2) (by omega)
        (t - (s : ℤ))).symm (C.targetEquiv s (n + 2) (by omega) t b) := by
  apply (M.input.dividedTargetEquiv M.freeLayers s (n + 2)
    (by omega) (t - (s : ℤ))).injective
  rw [AddEquiv.apply_symm_apply]
  have hsource :
      M.input.capPageEquiv M.freeLayers M.realization s (n + 2)
        (by omega) (t - (s : ℤ))
        ((C.capPageEquivSynAdams s n t).symm x) =
      C.sourceEquiv s (n + 2) (by omega) t x := by
    exact AddEquiv.apply_symm_apply _ _
  have hd := M.input.capPageEquiv_comm_d M.freeLayers M.realization
    s (n + 2) (by omega) (t - (s : ℤ))
    ((C.capPageEquivSynAdams s n t).symm x)
  rw [hsource, ← C.differential s (n + 2) (by omega) t x, hdb] at hd
  exact hd.symm

/-- Every cap detecting the specified source has the same divided boundary
class. This retains the very cap used to produce the boundary-ESS
representatives, so the target is independent of that choice. -/
theorem NuSynAdamsGeometricComparison.cap_boundary_eq_prescribed_adams_target
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s n : ℕ) (t : ℤ)
    (x : (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page
      ((n + 2 : ℕ) : ℤ) ((s : ℤ), t, t))
    (b : (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page
      ((n + 2 : ℕ) : ℤ)
      ((s : ℤ) + ((n + 2 : ℕ) : ℤ), t + ((n + 2 : ℕ) : ℤ) - 1, t))
    (hdb : (synAdamsDifferentialNormalized Syn ((nu 𝒮 Syn).obj X)
      ((n + 2 : ℕ) : ℤ) (s : ℤ) t t).hom x = b)
    (c : M.input.CapRepresentatives
      (NuSynAdamsGeometricModel.SourceSphere (Syn := Syn) s t)
      s (n + 2) (n + 1))
    (hc : M.capQuotientDetectedClass s (n + 2) (by omega) t c = x) :
    M.input.capDifferential
        (NuSynAdamsGeometricModel.SourceSphere (Syn := Syn) s t)
        s (n + 2) (by omega) (n + 1) (QuotientAddGroup.mk c) =
      (M.input.dividedTargetEquiv M.freeLayers s (n + 2) (by omega)
        (t - (s : ℤ))).symm (C.targetEquiv s (n + 2) (by omega) t b) := by
  have hcap : (C.capPageEquivSynAdams s n t).symm x =
      QuotientAddGroup.mk c := by
    rw [← hc, ← C.capPageEquivSynAdams_mk s n t c]
    exact AddEquiv.symm_apply_apply _ _
  rw [← hcap]
  exact C.adams_differential_eq_divided_cap_boundary s n t x b hdb

/-- The target page class attached to an actual boundary target, once a
filtered page representative is available.  Uniqueness above makes this
choice independent of the representative used to establish existence. -/
noncomputable def LambdaBocksteinTargetPageRep.pageClass
    {Y : Syn} {degree : ℤ × ℤ} {r s : ℤ}
    (b : Smn (Syn := Syn) degree.1 degree.2 ⟶
      (shiftFunctor Syn (1 : ℤ)).obj
        ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj Y))
    (h : ∃ xPage : AddCommGrpCat.of ℤ ⟶
      (canonicalLambdaPowerBocksteinESS Y 1 degree).Page r (s, 0),
      LambdaBocksteinTargetPageRep (Syn := Syn) Y degree r s b xPage) :
    AddCommGrpCat.of ℤ ⟶
      (canonicalLambdaPowerBocksteinESS Y 1 degree).Page r (s, 0) :=
  Classical.choose h

/-- The selected target class represents the prescribed actual boundary
target. -/
theorem LambdaBocksteinTargetPageRep.pageClass_spec
    {Y : Syn} {degree : ℤ × ℤ} {r s : ℤ}
    (b : Smn (Syn := Syn) degree.1 degree.2 ⟶
      (shiftFunctor Syn (1 : ℤ)).obj
        ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj Y))
    (h : ∃ xPage : AddCommGrpCat.of ℤ ⟶
      (canonicalLambdaPowerBocksteinESS Y 1 degree).Page r (s, 0),
      LambdaBocksteinTargetPageRep (Syn := Syn) Y degree r s b xPage) :
    LambdaBocksteinTargetPageRep (Syn := Syn) Y degree r s b
      (LambdaBocksteinTargetPageRep.pageClass b h) :=
  Classical.choose_spec h

/-- Any target page class representing the prescribed boundary target is
the canonical selected class. -/
theorem LambdaBocksteinTargetPageRep.eq_pageClass
    {Y : Syn} {degree : ℤ × ℤ} {r s : ℤ}
    {b : Smn (Syn := Syn) degree.1 degree.2 ⟶
      (shiftFunctor Syn (1 : ℤ)).obj
        ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj Y)}
    {xPage : AddCommGrpCat.of ℤ ⟶
      (canonicalLambdaPowerBocksteinESS Y 1 degree).Page r (s, 0)}
    (hx : LambdaBocksteinTargetPageRep (Syn := Syn) Y degree r s b xPage)
    (h : ∃ yPage : AddCommGrpCat.of ℤ ⟶
      (canonicalLambdaPowerBocksteinESS Y 1 degree).Page r (s, 0),
      LambdaBocksteinTargetPageRep (Syn := Syn) Y degree r s b yPage) :
    xPage = LambdaBocksteinTargetPageRep.pageClass b h :=
  LambdaBocksteinTargetPageRep.unique hx
    (LambdaBocksteinTargetPageRep.pageClass_spec b h)

/-- Every generalized element of a target λ-Bockstein page has an actual
filtered representative.  This is the target-column analogue of the
existing source-page representative theorem. -/
theorem LambdaBocksteinTargetPageRep.exists_of_page
    {Y : Syn} {degree : ℤ × ℤ} {r s : ℤ}
    (xPage : AddCommGrpCat.of ℤ ⟶
      (canonicalLambdaPowerBocksteinESS Y 1 degree).Page r (s, 0)) :
    ∃ b : Smn (Syn := Syn) degree.1 degree.2 ⟶
        (shiftFunctor Syn (1 : ℤ)).obj
          ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj Y),
      LambdaBocksteinTargetPageRep (Syn := Syn) Y degree r s b xPage := by
  let f := lambdaPowerBocksteinCSSMap Y 1
  let E := ExtensionSpectralSequence.{1, 0, 0, 0} f degree
  let FC := unboundedUnderlyingComplex f degree
  let T := AddCommGrpCat.of ℤ
  let pageIndex : WithTop ℕ := ↑(r - E.r₀).toNat
  have hPageSurj : Function.Surjective
      ((E.ssData (s, 0)).pageπ pageIndex).hom :=
    (AddCommGrpCat.epi_iff_surjective _).mp inferInstance
  obtain ⟨xOne, hxOne⟩ := hPageSurj (xPage.hom 1)
  let xZ : T ⟶ Subobject.underlying.obj
      ((E.ssData (s, 0)).Z pageIndex) := AddCommGrpCat.ofHom
    { toFun := fun z => z • xOne
      map_zero' := zero_zsmul xOne
      map_add' := fun p q => add_zsmul xOne p q }
  have hxZPage : xZ ≫ (E.ssData (s, 0)).pageπ pageIndex = xPage := by
    apply AddCommGrpCat.hom_ext
    apply AddMonoidHom.ext
    intro z
    change ℤ at z
    change ((E.ssData (s, 0)).pageπ pageIndex).hom (z • xOne) = xPage.hom z
    rw [map_zsmul, hxOne]
    calc
      z • xPage.hom 1 = xPage.hom (z • (1 : ℤ)) := (map_zsmul _ _ _).symm
      _ = xPage.hom z := by simp
  let x : T ⟶ (E.ssData (s, 0)).V :=
    xZ ≫ ((E.ssData (s, 0)).Z pageIndex).arrow
  let xGraded := x ≫ (unboundedExtensionVComplexIso f degree s 0).hom
  letI : Epi (FC.filToAssocGraded s 0) := by
    dsimp only [FilteredComplex.filToAssocGraded]
    exact coequalizer.π_epi
  have hGradedSurj : Function.Surjective (FC.filToAssocGraded s 0).hom :=
    (AddCommGrpCat.epi_iff_surjective _).mp inferInstance
  obtain ⟨xlOne, hxlOne⟩ := hGradedSurj (xGraded.hom 1)
  let xl : T ⟶ Subobject.underlying.obj (FC.fil s 0) := AddCommGrpCat.ofHom
    { toFun := fun z => z • xlOne
      map_zero' := zero_zsmul xlOne
      map_add' := fun p q => add_zsmul xlOne p q }
  have hxl : xl ≫ FC.filToAssocGraded s 0 = xGraded := by
    apply AddCommGrpCat.hom_ext
    apply AddMonoidHom.ext
    intro z
    change ℤ at z
    change (FC.filToAssocGraded s 0).hom (z • xlOne) = xGraded.hom z
    rw [map_zsmul, hxlOne]
    calc
      z • xGraded.hom 1 = xGraded.hom (z • (1 : ℤ)) :=
        (map_zsmul _ _ _).symm
      _ = xGraded.hom z := by simp
  let b := (synAdamsConvergence Syn
      ((shiftFunctor Syn (1 : ℤ)).obj
        ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj Y))).abutmentEquiv degree
      (((lambdaPowerBocksteinTargetCSS Y 1).F.F s degree).arrow.hom (xl.hom 1))
  refine ⟨b, x, xl, ?_, rfl, ?_⟩
  · dsimp only [FilteredComplex.IsLift]
    exact hxl
  · exact ⟨xZ, rfl, hxZPage⟩

/-! ## Comparison after the Adams starting page -/

/-- The affine analogue of `UnderlyingMorphism` after starting both
sequences at page two. Its components map the new ambient objects
`V = E₂` in the Adams-to-Bockstein direction. No compatibility with
differentials or with the `Z` and `B` filtrations is assumed here. -/
structure AffineReindexedUnderlyingMorphism
    (E : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ × ℤ))
    (B : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ))
    (reindex : ℤ × ℤ → ℤ × ℤ × ℤ) where
  φ : ∀ sk : ℤ × ℤ,
    (E.pageTailData 2 (reindex sk)).V ⟶
      (B.pageTailData 2 sk).V

namespace AffineReindexedUnderlyingMorphism

/-- The E₂ identifications give the underlying morphism by taking their
forward maps between the new ambient objects. -/
def ofVIsos
    {E : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ × ℤ)}
    {B : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ)}
    {reindex : ℤ × ℤ → ℤ × ℤ × ℤ}
    (e : ∀ sk : ℤ × ℤ,
      (E.pageTailData 2 (reindex sk)).V ≅
        (B.pageTailData 2 sk).V) :
    AffineReindexedUnderlyingMorphism E B reindex where
  φ sk := (e sk).hom

/-- A family of maps on the actual E₂ pages is the underlying morphism
of the page-two-rebased data. -/
noncomputable def ofE2PageMaps
    {E : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ × ℤ)}
    {B : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ)}
    {reindex : ℤ × ℤ → ℤ × ℤ × ℤ}
    (e2 : ∀ sk : ℤ × ℤ, E.Page 2 (reindex sk) ⟶ B.Page 2 sk) :
    AffineReindexedUnderlyingMorphism E B reindex where
  φ sk := e2 sk

end AffineReindexedUnderlyingMorphism

/-- Comparison with both columns of one fixed boundary ESS. This is
separate from the initial-page Adams--Bockstein comparison below. -/
abbrev AdamsToBoundaryESSUnderlyingMorphism
    (X : Syn) (degree : ℤ × ℤ) :=
  AffineReindexedUnderlyingMorphism
    (SynAdamsSS Syn X) (canonicalLambdaBocksteinESS X degree)
    (lambdaBocksteinToAdamsReindex degree)

/-- Assemble the Adams-to-Bockstein underlying morphism from its E₂
comparison maps at every Bockstein bidegree. The components have the
correct `Z₂/B₂` target by the page-tail definition. -/
noncomputable def AdamsToBoundaryESSUnderlyingMorphism.ofE2PageMaps
    (X : Syn) (degree : ℤ × ℤ)
    (e2 : ∀ sk : ℤ × ℤ,
      (SynAdamsSS Syn X).Page 2
          (lambdaBocksteinToAdamsReindex degree sk) ⟶
        (canonicalLambdaBocksteinESS X degree).Page 2 sk) :
    AdamsToBoundaryESSUnderlyingMorphism X degree :=
  AffineReindexedUnderlyingMorphism.ofE2PageMaps e2

@[simp] theorem AdamsToBoundaryESSUnderlyingMorphism.ofE2PageMaps_φ
    (X : Syn) (degree : ℤ × ℤ)
    (e2 : ∀ sk : ℤ × ℤ,
      (SynAdamsSS Syn X).Page 2
          (lambdaBocksteinToAdamsReindex degree sk) ⟶
        (canonicalLambdaBocksteinESS X degree).Page 2 sk)
    (sk : ℤ × ℤ) :
    (AdamsToBoundaryESSUnderlyingMorphism.ofE2PageMaps
      X degree e2).φ sk = e2 sk := rfl

/-- Preservation of the cycle subobjects after both ambient objects have
been rebased at E₂. This is a condition on the actual underlying maps,
not on arbitrary maps between the unrebased `SSData.V` objects. -/
def AdamsToBoundaryESSUnderlyingMorphism.PreservesZ
    {X : Syn} {degree : ℤ × ℤ}
    (Φ : AdamsToBoundaryESSUnderlyingMorphism X degree) : Prop :=
  ∀ (sk : ℤ × ℤ) (n : WithTop ℕ),
    ∃ lift : Subobject.underlying.obj
        (((SynAdamsSS Syn X).pageTailData 2
          (lambdaBocksteinToAdamsReindex degree sk)).Z n) ⟶
        Subobject.underlying.obj
          (((canonicalLambdaBocksteinESS X degree).pageTailData 2 sk).Z n),
      lift ≫ (((canonicalLambdaBocksteinESS X degree).pageTailData 2 sk).Z n).arrow =
        (((SynAdamsSS Syn X).pageTailData 2
          (lambdaBocksteinToAdamsReindex degree sk)).Z n).arrow ≫ Φ.φ sk

/-- Preservation of the boundary subobjects on the E₂-rebased data. -/
def AdamsToBoundaryESSUnderlyingMorphism.PreservesB
    {X : Syn} {degree : ℤ × ℤ}
    (Φ : AdamsToBoundaryESSUnderlyingMorphism X degree) : Prop :=
  ∀ (sk : ℤ × ℤ) (n : WithTop ℕ),
    ∃ lift : Subobject.underlying.obj
        (((SynAdamsSS Syn X).pageTailData 2
          (lambdaBocksteinToAdamsReindex degree sk)).B n) ⟶
        Subobject.underlying.obj
          (((canonicalLambdaBocksteinESS X degree).pageTailData 2 sk).B n),
      lift ≫ (((canonicalLambdaBocksteinESS X degree).pageTailData 2 sk).B n).arrow =
        (((SynAdamsSS Syn X).pageTailData 2
          (lambdaBocksteinToAdamsReindex degree sk)).B n).arrow ≫ Φ.φ sk

/-- The first differential square for the E₂ underlying maps. The affine
degree equality used here is the already proved
`lambdaBocksteinToAdamsReindex_degree_compat`. -/
def AdamsToBoundaryESSUnderlyingMorphism.CommutesD2
    {X : Syn} {degree : ℤ × ℤ}
    (Φ : AdamsToBoundaryESSUnderlyingMorphism X degree) : Prop :=
  ∀ sk : ℤ × ℤ,
    Φ.φ sk ≫ (canonicalLambdaBocksteinESS X degree).d 2 sk =
      (SynAdamsSS Syn X).d 2
          (lambdaBocksteinToAdamsReindex degree sk) ≫
        eqToHom (congrArg ((SynAdamsSS Syn X).Page 2)
          (lambdaBocksteinToAdamsReindex_degree_compat
            (Syn := Syn) X degree sk 2).symm) ≫
          Φ.φ (sk + (canonicalLambdaBocksteinESS X degree).diffDeg 2)

/-- A pagewise isomorphism after an affine reindexing. The comparison starts
at `firstPage`, and compatibility with every differential is part of the
structure.

The raw boundary ESS starts at page zero. For `r ≥ 2`, the geometric cap
construction compares its actual page `r` with Adams page `r`; therefore
this structure keeps the actual integer page number and only reindexes the
grading. -/
structure AffineReindexedSpectralSequenceEquivalence
    (E : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ × ℤ))
    (B : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ))
    (reindex : ℤ × ℤ → ℤ × ℤ × ℤ)
    (firstPage : ℤ := 2) where
  degree_compat : ∀ (r : ℤ) (sk : ℤ × ℤ),
    reindex (sk + B.diffDeg r) = reindex sk + E.diffDeg r
  pageEquiv : ∀ (r : ℤ), firstPage ≤ r → ∀ sk : ℤ × ℤ,
    ↑(B.Page r sk) ≃+ ↑(E.Page r (reindex sk))
  differential_comm : ∀ (r : ℤ) (hr : firstPage ≤ r)
      (sk : ℤ × ℤ) (x : B.Page r sk),
    pageEquiv r hr (sk + B.diffDeg r) ((B.d r sk).hom x) =
      (eqToHom (congrArg (E.Page r) (degree_compat r sk).symm)).hom
        ((E.d r (reindex sk)).hom (pageEquiv r hr sk x))

namespace AffineReindexedSpectralSequenceEquivalence

/-- The inverse page equivalences give the Adams-to-Bockstein page maps. -/
noncomputable def adamsToBocksteinPageMap
    {E : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ × ℤ)}
    {B : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ)}
    {reindex : ℤ × ℤ → ℤ × ℤ × ℤ} {firstPage : ℤ}
    (C : AffineReindexedSpectralSequenceEquivalence E B reindex firstPage)
    (r : ℤ) (hr : firstPage ≤ r) (sk : ℤ × ℤ) :
    E.Page r (reindex sk) ⟶ B.Page r sk :=
  AddCommGrpCat.ofHom (C.pageEquiv r hr sk).symm.toAddMonoidHom

/-- The inverse page maps commute with the differentials. -/
theorem adamsToBocksteinPageMap_comm
    {E : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ × ℤ)}
    {B : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ)}
    {reindex : ℤ × ℤ → ℤ × ℤ × ℤ} {firstPage : ℤ}
    (C : AffineReindexedSpectralSequenceEquivalence E B reindex firstPage)
    (r : ℤ) (hr : firstPage ≤ r) (sk : ℤ × ℤ)
    (x : E.Page r (reindex sk)) :
    (B.d r sk).hom ((C.adamsToBocksteinPageMap r hr sk).hom x) =
      (C.adamsToBocksteinPageMap r hr (sk + B.diffDeg r)).hom
        ((eqToHom (congrArg (E.Page r) (C.degree_compat r sk).symm)).hom
          ((E.d r (reindex sk)).hom x)) := by
  let φ := C.pageEquiv r hr sk
  let ψ := C.pageEquiv r hr (sk + B.diffDeg r)
  let y := (eqToHom (congrArg (E.Page r) (C.degree_compat r sk).symm)).hom
    ((E.d r (reindex sk)).hom x)
  have h : ψ ((B.d r sk).hom (φ.symm x)) = y := by
    have h₀ := C.differential_comm r hr sk (φ.symm x)
    simpa only [φ, ψ, y, AddEquiv.apply_symm_apply] using h₀
  have h' : (B.d r sk).hom (φ.symm x) = ψ.symm y := by
    apply ψ.injective
    simpa only [AddEquiv.apply_symm_apply] using h
  exact h'

end AffineReindexedSpectralSequenceEquivalence

/-- A pagewise Adams-to-Bockstein morphism after the affine change of
grading.  The source of each component is the Adams page at the affine
image of the Bockstein bidegree.  Thus the displayed equation is the
literal equation saying that this family preserves the page differential.

This structure records exactly the object to be constructed by the
E₂--`Zᵢ`--`Bᵢ` induction above. -/
structure AffineReindexedSpectralSequenceMorphism
    (E : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ × ℤ))
    (B : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ))
    (reindex : ℤ × ℤ → ℤ × ℤ × ℤ)
    (firstPage : ℤ := 2) where
  degree_compat : ∀ (r : ℤ) (sk : ℤ × ℤ),
    reindex (sk + B.diffDeg r) = reindex sk + E.diffDeg r
  pageMap : ∀ (r : ℤ), firstPage ≤ r → ∀ sk : ℤ × ℤ,
    E.Page r (reindex sk) ⟶ B.Page r sk
  differential_comm : ∀ (r : ℤ) (hr : firstPage ≤ r)
      (sk : ℤ × ℤ),
    pageMap r hr sk ≫ B.d r sk =
      E.d r (reindex sk) ≫
        eqToHom (congrArg (E.Page r) (degree_compat r sk).symm) ≫
          pageMap r hr (sk + B.diffDeg r)

namespace AffineReindexedSpectralSequenceMorphism

/-- A pagewise equivalence supplies its inverse Adams-to-Bockstein
morphism. -/
noncomputable def ofEquivalence
    {E : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ × ℤ)}
    {B : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ)}
    {reindex : ℤ × ℤ → ℤ × ℤ × ℤ} {firstPage : ℤ}
    (C : AffineReindexedSpectralSequenceEquivalence E B reindex firstPage) :
    AffineReindexedSpectralSequenceMorphism E B reindex firstPage where
  degree_compat := C.degree_compat
  pageMap := C.adamsToBocksteinPageMap
  differential_comm := by
    intro r hr sk
    apply AddCommGrpCat.hom_ext
    apply AddMonoidHom.ext
    intro x
    exact C.adamsToBocksteinPageMap_comm r hr sk x

end AffineReindexedSpectralSequenceMorphism

/-! ### The `Zᵢ`--`Bᵢ` successor step

`SpectralSequence.pageHomologyIso` is the formal statement that the next
page is the quotient built from the present page's cycles and boundaries.
The following definition is therefore the induction step required for the
comparison: a map of the two three-term differential complexes induces the
map on the next page.  No choice of representatives occurs here.
-/

/-- The successor map in the affine comparison.  The supplied short-complex
isomorphism is obtained by putting the three page maps at consecutive
indices into one diagram; its two commutativity equations are precisely the
differential compatibility at those indices.  Passing through
`pageHomologyIso` carries `Zᵢ/Bᵢ` to `Zᵢ₊₁/Bᵢ₊₁`. -/
noncomputable def affineReindexedPageEquivSucc
    {E : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ × ℤ)}
    {B : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ)}
    {reindex : ℤ × ℤ → ℤ × ℤ × ℤ}
    (r : ℤ) (hE : E.r₀ ≤ r) (hB : B.r₀ ≤ r)
    (sk : ℤ × ℤ)
    (e : B.pageShortComplex r (sk - B.diffDeg r) ≅
      E.pageShortComplex r (reindex sk - E.diffDeg r)) :
    B.Page (r + 1) sk ≅ E.Page (r + 1) (reindex sk) :=
  B.pageIsoSuccOfComplexIso E r hB hE sk (reindex sk) e

/-- The morphism form of the `Zᵢ`--`Bᵢ` successor step.  A commuting map
between the three-term page complexes induces a map on their homology, hence
on the next pages.  This is the operation used in the Adams-to-Bockstein
induction; no inverse page map is involved. -/
noncomputable def affineReindexedPageHomSucc
    {E : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ × ℤ)}
    {B : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ)}
    {reindex : ℤ × ℤ → ℤ × ℤ × ℤ}
    (r : ℤ) (hE : E.r₀ ≤ r) (hB : B.r₀ ≤ r)
    (sk : ℤ × ℤ)
    (φ : E.pageShortComplex r (reindex sk - E.diffDeg r) ⟶
      B.pageShortComplex r (sk - B.diffDeg r)) :
    E.Page (r + 1) (reindex sk) ⟶ B.Page (r + 1) sk :=
  (E.pageHomologyIso r (reindex sk) hE).hom ≫
    ShortComplex.homologyMap φ ≫
      (B.pageHomologyIso r sk hB).inv

/-- The three components and two commuting squares needed to pass from the
current page to its homology quotient.  The indices are already normalized
at the incoming differential degree, so no grading choice is hidden in this
record. -/
structure AffineReindexedPageComplexMap
    {E : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ × ℤ)}
    {B : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ)}
    {reindex : ℤ × ℤ → ℤ × ℤ × ℤ}
    (r : ℤ) (sk : ℤ × ℤ) where
  left : E.Page r (reindex sk - E.diffDeg r) ⟶
    B.Page r (sk - B.diffDeg r)
  middle : E.Page r ((reindex sk - E.diffDeg r) + E.diffDeg r) ⟶
    B.Page r ((sk - B.diffDeg r) + B.diffDeg r)
  right : E.Page r ((reindex sk - E.diffDeg r) + E.diffDeg r + E.diffDeg r) ⟶
    B.Page r ((sk - B.diffDeg r) + B.diffDeg r + B.diffDeg r)
  comm_left : left ≫ B.d r (sk - B.diffDeg r) =
    E.d r (reindex sk - E.diffDeg r) ≫ middle
  comm_right : middle ≫ B.d r ((sk - B.diffDeg r) + B.diffDeg r) =
    E.d r ((reindex sk - E.diffDeg r) + E.diffDeg r) ≫ right

/-- Data on one page only. This is the induction input: its maps and
differential equation are required at every bidegree of that page, without
assuming that the later pages have already been constructed. -/
structure AffineReindexedSinglePageMap
    (E : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ × ℤ))
    (B : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ))
    (reindex : ℤ × ℤ → ℤ × ℤ × ℤ)
    (r : ℤ) where
  degree_compat : ∀ sk : ℤ × ℤ,
    reindex (sk + B.diffDeg r) = reindex sk + E.diffDeg r
  pageMap : ∀ sk : ℤ × ℤ, E.Page r (reindex sk) ⟶ B.Page r sk
  differential_comm : ∀ sk : ℤ × ℤ,
    pageMap sk ≫ B.d r sk =
      E.d r (reindex sk) ≫
        eqToHom (congrArg (E.Page r) (degree_compat sk).symm) ≫
          pageMap (sk + B.diffDeg r)

namespace AffineReindexedPageComplexMap

/-- The three components of a single-page comparison make a short-complex
map at every bidegree. The incoming index is identified using the affine
degree law; both squares are the page's differential equations. -/
noncomputable def ofSinglePageMap
    {E : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ × ℤ)}
    {B : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ)}
    {reindex : ℤ × ℤ → ℤ × ℤ × ℤ}
    {r : ℤ}
    (Φ : AffineReindexedSinglePageMap E B reindex r) (sk : ℤ × ℤ) :
    AffineReindexedPageComplexMap (E := E) (B := B) (reindex := reindex) r sk := by
  have hsub : reindex (sk - B.diffDeg r) =
      reindex sk - E.diffDeg r := by
    have h := Φ.degree_compat (sk - B.diffDeg r)
    have h' := congrArg (fun k => k - E.diffDeg r) h
    simpa using h'.symm
  have hdheq : E.d r (reindex sk - E.diffDeg r) ≍
      E.d r (reindex (sk - B.diffDeg r)) :=
    congr_arg_heq (fun k => E.d r k) hsub.symm
  have hpheq : Φ.pageMap sk ≍
      Φ.pageMap (sk - B.diffDeg r + B.diffDeg r) :=
    congr_arg_heq (fun k => Φ.pageMap k) (by simp [sub_add_cancel])
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · simpa only [hsub] using Φ.pageMap (sk - B.diffDeg r)
  · simpa only [sub_add_cancel] using Φ.pageMap sk
  · simpa only [sub_add_cancel, Φ.degree_compat sk] using
      Φ.pageMap (sk + B.diffDeg r)
  · convert Φ.differential_comm (sk - B.diffDeg r) using 1
    all_goals simp only [hsub, sub_add_cancel]
    all_goals apply CategoryTheory.heq_comp
    all_goals try simp only [hsub, sub_add_cancel, cast_heq]
    case e'_3.H1 => exact hdheq
    case e'_3.H2 =>
      simpa only [cast_heq_iff_heq, heq_eqToHom_comp_iff] using hpheq
  · convert Φ.differential_comm sk using 1
    all_goals simp only [hsub, sub_add_cancel, Φ.degree_compat sk]
    all_goals apply CategoryTheory.heq_comp
    all_goals
      first
      | exact congr_arg_heq (fun k => B.d r k) (by simp [sub_add_cancel])
      | exact congr_arg_heq (fun k => E.d r k) (by simp [sub_add_cancel])
      | simp only [hsub, sub_add_cancel, Φ.degree_compat sk, cast_heq]

/-- A full morphism restricts to the single-page data used by the induction. -/
noncomputable def ofMorphism
    {E : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ × ℤ)}
    {B : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ)}
    {reindex : ℤ × ℤ → ℤ × ℤ × ℤ}
    {firstPage : ℤ}
    (Φ : AffineReindexedSpectralSequenceMorphism E B reindex firstPage)
    (r : ℤ) (hr : firstPage ≤ r) (sk : ℤ × ℤ) :
    AffineReindexedPageComplexMap (E := E) (B := B) (reindex := reindex) r sk :=
  ofSinglePageMap
    { degree_compat := Φ.degree_compat r
      pageMap := Φ.pageMap r hr
      differential_comm := Φ.differential_comm r hr } sk

/-- The two commutative differential squares form a map of the page short
complexes. -/
noncomputable def toShortComplexHom
    {E : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ × ℤ)}
    {B : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ)}
    {reindex : ℤ × ℤ → ℤ × ℤ × ℤ}
    {r : ℤ} {sk : ℤ × ℤ}
    (φ : AffineReindexedPageComplexMap (E := E) (B := B) (reindex := reindex) r sk) :
    E.pageShortComplex r (reindex sk - E.diffDeg r) ⟶
      B.pageShortComplex r (sk - B.diffDeg r) :=
  ShortComplex.homMk φ.left φ.middle φ.right φ.comm_left φ.comm_right

/-- Applying the homology quotient to the short-complex map gives the next
page component in the Adams-to-Bockstein direction. -/
noncomputable def succ
    {E : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ × ℤ)}
    {B : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ)}
    {reindex : ℤ × ℤ → ℤ × ℤ × ℤ}
    {r : ℤ} {sk : ℤ × ℤ}
    (hE : E.r₀ ≤ r) (hB : B.r₀ ≤ r)
    (φ : AffineReindexedPageComplexMap (E := E) (B := B) (reindex := reindex) r sk) :
    E.Page (r + 1) (reindex sk) ⟶ B.Page (r + 1) sk :=
  affineReindexedPageHomSucc (E := E) (B := B) (reindex := reindex)
    r hE hB sk φ.toShortComplexHom

end AffineReindexedPageComplexMap

/-- One page of differential-compatible maps induces maps on every component
of the next page by taking homology of the page short complexes. This
construction uses only the given page, so it can serve as an induction step. -/
noncomputable def AffineReindexedSinglePageMap.succPageMap
    {E : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ × ℤ)}
    {B : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ)}
    {reindex : ℤ × ℤ → ℤ × ℤ × ℤ}
    {r : ℤ}
    (Φ : AffineReindexedSinglePageMap E B reindex r)
    (hE : E.r₀ ≤ r) (hB : B.r₀ ≤ r) (sk : ℤ × ℤ) :
    E.Page (r + 1) (reindex sk) ⟶ B.Page (r + 1) sk :=
  (AffineReindexedPageComplexMap.ofSinglePageMap Φ sk).succ hE hB

/-- The next-page component forced by an affine morphism on the current
page. It is obtained from its three differential-compatible components by
the canonical homology quotient `Zᵢ/Bᵢ`. -/
noncomputable def AffineReindexedSpectralSequenceMorphism.succPageMap
    {E : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ × ℤ)}
    {B : SpectralSequence AddCommGrpCat.{0} (ℤ × ℤ)}
    {reindex : ℤ × ℤ → ℤ × ℤ × ℤ}
    {firstPage : ℤ}
    (Φ : AffineReindexedSpectralSequenceMorphism E B reindex firstPage)
    (r : ℤ) (hr : firstPage ≤ r)
    (hE : E.r₀ ≤ r) (hB : B.r₀ ≤ r)
    (sk : ℤ × ℤ) :
    E.Page (r + 1) (reindex sk) ⟶ B.Page (r + 1) sk :=
  (AffineReindexedSinglePageMap.succPageMap
    { degree_compat := Φ.degree_compat r
      pageMap := Φ.pageMap r hr
      differential_comm := Φ.differential_comm r hr } hE hB sk)

/-- The type of the desired comparison at one fixed homotopy bidegree. -/
abbrev CanonicalAdamsLambdaBocksteinEquivalence
    (X : Syn) (degree : ℤ × ℤ) :=
  AffineReindexedSpectralSequenceEquivalence
    (SynAdamsSS Syn X) (canonicalLambdaBocksteinESS X degree)
    (lambdaBocksteinToAdamsReindex degree) 2

/-- The desired direction of comparison: Adams pages map to the
λ-Bockstein pages after affine reindexing. -/
abbrev CanonicalAdamsToLambdaBocksteinMorphism
    (X : Syn) (degree : ℤ × ℤ) :=
  AffineReindexedSpectralSequenceMorphism
    (SynAdamsSS Syn X) (canonicalLambdaBocksteinESS X degree)
    (lambdaBocksteinToAdamsReindex degree) 2

/-- Assemble the canonical comparison from page equivalences commuting with
the actual differentials. The affine degree condition is discharged by the
reindexing theorem above, so it is not an additional input. -/
noncomputable def CanonicalAdamsLambdaBocksteinEquivalence.ofPages
    (X : Syn) (degree : ℤ × ℤ)
    (pageEquiv : ∀ (r : ℤ), 2 ≤ r → ∀ sk : ℤ × ℤ,
      ↑((canonicalLambdaBocksteinESS X degree).Page r sk) ≃+
        ↑((SynAdamsSS Syn X).Page r
          (lambdaBocksteinToAdamsReindex degree sk)))
    (differential_comm : ∀ (r : ℤ) (hr : 2 ≤ r)
        (sk : ℤ × ℤ)
        (x : (canonicalLambdaBocksteinESS X degree).Page r sk),
      pageEquiv r hr
          (sk + (canonicalLambdaBocksteinESS X degree).diffDeg r)
          (((canonicalLambdaBocksteinESS X degree).d r sk).hom x) =
        (eqToHom (congrArg ((SynAdamsSS Syn X).Page r)
          (lambdaBocksteinToAdamsReindex_degree_compat
            (Syn := Syn) X degree sk r).symm)).hom
          (((SynAdamsSS Syn X).d r
            (lambdaBocksteinToAdamsReindex degree sk)).hom
              (pageEquiv r hr sk x))) :
    CanonicalAdamsLambdaBocksteinEquivalence X degree where
  degree_compat :=
    fun r sk =>
      lambdaBocksteinToAdamsReindex_degree_compat (Syn := Syn) X degree sk r
  pageEquiv := pageEquiv
  differential_comm := differential_comm

/-! ## Initial page and geometric finite pages -/

/-- The common initial ambient object at generator degree `(s,t)`.
The boundary ESS uses raw page zero for the homotopy of `X/λ`; that
object is identified with Adams page two. Each generator degree uses
its own homotopy bidegree `(t-s,t)`. The target column of that ESS is
not another component of this ambient family. -/
noncomputable abbrev lambdaBocksteinInitialV (X : Syn) (s t : ℤ) :
    AddCommGrpCat.{0} :=
  (canonicalLambdaBocksteinESS X
    (lambdaBocksteinGeneratorDegree s t)).Page 0 (s, 1)

/-- Underlying maps on the common initial page, at every generator
degree. Filtration and differential compatibility are subsequent
conditions on this family, not inputs to its construction. -/
structure CanonicalAdamsToLambdaBocksteinUnderlyingMorphism (X : Syn) where
  φ : ∀ s t : ℤ,
    (SynAdamsSS Syn X).Page 2 (s, t, t) ⟶
      lambdaBocksteinInitialV X s t

/-- The canonical underlying map is the inverse of the quotient
initial-page identification at every degree, including negative
filtration indices. No unspecified components are filled with zero. -/
noncomputable def canonicalAdamsToLambdaBocksteinUnderlyingMorphism
    (𝒮 : Type*) [StableHomotopy.StableHomotopyCategory 𝒮] (X : 𝒮) :
    CanonicalAdamsToLambdaBocksteinUnderlyingMorphism ((nu 𝒮 Syn).obj X) where
  φ s t :=
    (canonicalLambdaBocksteinE0SourceIsoSynAdamsE2Diagonal
      (Syn := Syn) 𝒮 X s t).inv

/-- Evaluation exposes the prescribed quotient identification. -/
@[simp] theorem canonicalAdamsToLambdaBocksteinUnderlyingMorphism_φ
    (𝒮 : Type*) [StableHomotopy.StableHomotopyCategory 𝒮]
    (X : 𝒮) (s t : ℤ) :
    (canonicalAdamsToLambdaBocksteinUnderlyingMorphism
      (Syn := Syn) 𝒮 X).φ s t =
      (canonicalLambdaBocksteinE0SourceIsoSynAdamsE2Diagonal
        (Syn := Syn) 𝒮 X s t).inv := rfl

/-- Every component of the constructed underlying map is an isomorphism
of the initial ambient groups. This asserts no later-page compatibility. -/
instance canonicalAdamsToLambdaBocksteinUnderlyingMorphism_component_isIso
    (𝒮 : Type*) [StableHomotopy.StableHomotopyCategory 𝒮]
    (X : 𝒮) (s t : ℤ) :
    IsIso ((canonicalAdamsToLambdaBocksteinUnderlyingMorphism
      (Syn := Syn) 𝒮 X).φ s t) := by
  change IsIso (canonicalLambdaBocksteinE0SourceIsoSynAdamsE2Diagonal
    (Syn := Syn) 𝒮 X s t).inv
  infer_instance

/-- On classical Adams generators, the same underlying map is obtained
by the existing free-λ identification and the quotient initial-page map.
The classical page is viewed as its underlying abelian group. -/
noncomputable def classicalAdamsToLambdaBocksteinUnderlyingMap
    (𝒮 : Type*) [StableHomotopy.StableHomotopyCategory 𝒮]
    (X : 𝒮) (s t : ℤ) :
    AddCommGrpCat.of ((StableHomotopy.AdamsSS 𝒮 X).Page 2 (s, t)) ⟶
      lambdaBocksteinInitialV ((nu 𝒮 Syn).obj X) s t := by
  let R := rigidity_free_lambda_pages 𝒮 Syn X
  exact AddCommGrpCat.ofHom
      (R.generatorClassicalEquiv 2 s t).symm.toAddMonoidHom ≫
    (R.componentIso 2 (by omega) s t t (by omega)).inv ≫
      (canonicalAdamsToLambdaBocksteinUnderlyingMorphism
        (Syn := Syn) 𝒮 X).φ s t

/-- The classical Adams underlying comparison, bundled over all initial
generator degrees. The pages are regarded as abelian groups, consistently
with the boundary-ESS construction. -/
structure ClassicalAdamsToLambdaBocksteinUnderlyingMorphism
    (𝒮 : Type*) [StableHomotopy.StableHomotopyCategory 𝒮] (X : 𝒮) where
  φ : ∀ s t : ℤ,
    AddCommGrpCat.of ((StableHomotopy.AdamsSS 𝒮 X).Page 2 (s, t)) ⟶
      lambdaBocksteinInitialV ((nu 𝒮 Syn).obj X) s t

/-- The full classical underlying family, with every component given by
the free-λ identification followed by the actual quotient identification. -/
noncomputable def classicalAdamsToLambdaBocksteinUnderlyingMorphism
    (𝒮 : Type*) [StableHomotopy.StableHomotopyCategory 𝒮] (X : 𝒮) :
    ClassicalAdamsToLambdaBocksteinUnderlyingMorphism (Syn := Syn) 𝒮 X where
  φ := classicalAdamsToLambdaBocksteinUnderlyingMap (Syn := Syn) 𝒮 X

/-- The inverse of the same classical initial-page component. -/
noncomputable def classicalAdamsToLambdaBocksteinUnderlyingInverse
    (𝒮 : Type*) [StableHomotopy.StableHomotopyCategory 𝒮]
    (X : 𝒮) (s t : ℤ) :
    lambdaBocksteinInitialV ((nu 𝒮 Syn).obj X) s t ⟶
      AddCommGrpCat.of ((StableHomotopy.AdamsSS 𝒮 X).Page 2 (s, t)) := by
  let R := rigidity_free_lambda_pages 𝒮 Syn X
  exact (canonicalLambdaBocksteinE0SourceIsoSynAdamsE2Diagonal
      (Syn := Syn) 𝒮 X s t).hom ≫
    (R.componentIso 2 (by omega) s t t (by omega)).hom ≫
      AddCommGrpCat.ofHom (R.generatorClassicalEquiv 2 s t).toAddMonoidHom

/-- The two underlying component maps form the initial-page isomorphism.
This packages the already specified forward map, rather than choosing
another map after imposing compatibility conditions. -/
noncomputable def classicalAdamsToLambdaBocksteinUnderlyingIso
    (𝒮 : Type*) [StableHomotopy.StableHomotopyCategory 𝒮]
    (X : 𝒮) (s t : ℤ) :
    AddCommGrpCat.of ((StableHomotopy.AdamsSS 𝒮 X).Page 2 (s, t)) ≅
      lambdaBocksteinInitialV ((nu 𝒮 Syn).obj X) s t := by
  let R := rigidity_free_lambda_pages 𝒮 Syn X
  exact (R.generatorClassicalEquiv 2 s t).symm.toAddCommGrpIso ≪≫
    (R.componentIso 2 (by omega) s t t (by omega)).symm ≪≫
    (canonicalLambdaBocksteinE0SourceIsoSynAdamsE2Diagonal
      (Syn := Syn) 𝒮 X s t).symm

@[simp] theorem classicalAdamsToLambdaBocksteinUnderlyingIso_hom
    (𝒮 : Type*) [StableHomotopy.StableHomotopyCategory 𝒮]
    (X : 𝒮) (s t : ℤ) :
    (classicalAdamsToLambdaBocksteinUnderlyingIso (Syn := Syn) 𝒮 X s t).hom =
      (classicalAdamsToLambdaBocksteinUnderlyingMorphism
        (Syn := Syn) 𝒮 X).φ s t := rfl

@[simp] theorem classicalAdamsToLambdaBocksteinUnderlyingIso_inv
    (𝒮 : Type*) [StableHomotopy.StableHomotopyCategory 𝒮]
    (X : 𝒮) (s t : ℤ) :
    (classicalAdamsToLambdaBocksteinUnderlyingIso (Syn := Syn) 𝒮 X s t).inv =
      classicalAdamsToLambdaBocksteinUnderlyingInverse
        (Syn := Syn) 𝒮 X s t := by
  simp only [classicalAdamsToLambdaBocksteinUnderlyingIso,
    classicalAdamsToLambdaBocksteinUnderlyingInverse, Iso.trans_inv,
    Iso.symm_inv, Category.assoc]
  rfl

@[reassoc (attr := simp)] theorem classicalAdamsToLambdaBocksteinUnderlying_comp_inverse
    (𝒮 : Type*) [StableHomotopy.StableHomotopyCategory 𝒮]
    (X : 𝒮) (s t : ℤ) :
    (classicalAdamsToLambdaBocksteinUnderlyingMorphism
        (Syn := Syn) 𝒮 X).φ s t ≫
      classicalAdamsToLambdaBocksteinUnderlyingInverse (Syn := Syn) 𝒮 X s t =
        𝟙 _ := by
  rw [← classicalAdamsToLambdaBocksteinUnderlyingIso_hom,
    ← classicalAdamsToLambdaBocksteinUnderlyingIso_inv]
  exact Iso.hom_inv_id _

@[reassoc (attr := simp)] theorem classicalAdamsToLambdaBocksteinUnderlying_inverse_comp
    (𝒮 : Type*) [StableHomotopy.StableHomotopyCategory 𝒮]
    (X : 𝒮) (s t : ℤ) :
    classicalAdamsToLambdaBocksteinUnderlyingInverse (Syn := Syn) 𝒮 X s t ≫
      (classicalAdamsToLambdaBocksteinUnderlyingMorphism
        (Syn := Syn) 𝒮 X).φ s t = 𝟙 _ := by
  rw [← classicalAdamsToLambdaBocksteinUnderlyingIso_hom,
    ← classicalAdamsToLambdaBocksteinUnderlyingIso_inv]
  exact Iso.inv_hom_id _

/-- All classical Adams initial ambient groups, as one graded object. -/
noncomputable def classicalAdamsInitialGradedV
    (𝒮 : Type*) [StableHomotopy.StableHomotopyCategory 𝒮] (X : 𝒮) :
    GradedObject (ℤ × ℤ) AddCommGrpCat.{0} :=
  fun st => AddCommGrpCat.of ((StableHomotopy.AdamsSS 𝒮 X).Page 2 st)

/-- All common Bockstein initial ambient groups, with the same grading. -/
noncomputable def lambdaBocksteinInitialGradedV (X : Syn) :
    GradedObject (ℤ × ℤ) AddCommGrpCat.{0} :=
  fun st => lambdaBocksteinInitialV X st.1 st.2

/-- Regard the prescribed underlying family as a morphism of graded
abelian groups. This retains exactly its existing components. -/
noncomputable def ClassicalAdamsToLambdaBocksteinUnderlyingMorphism.asGradedHom
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮] {X : 𝒮}
    (Φ : ClassicalAdamsToLambdaBocksteinUnderlyingMorphism (Syn := Syn) 𝒮 X) :
    classicalAdamsInitialGradedV 𝒮 X ⟶
      lambdaBocksteinInitialGradedV ((nu 𝒮 Syn).obj X) :=
  fun st => Φ.φ st.1 st.2

/-- The entire Adams-to-Bockstein underlying map is an isomorphism of
graded ambient groups. Its inverse is the previously constructed family. -/
noncomputable def classicalAdamsToLambdaBocksteinUnderlyingGradedIso
    (𝒮 : Type*) [StableHomotopy.StableHomotopyCategory 𝒮] (X : 𝒮) :
    classicalAdamsInitialGradedV 𝒮 X ≅
      lambdaBocksteinInitialGradedV ((nu 𝒮 Syn).obj X) :=
  GradedObject.isoMk _ _ (fun st =>
    classicalAdamsToLambdaBocksteinUnderlyingIso (Syn := Syn) 𝒮 X st.1 st.2)

/-- The graded isomorphism has precisely the requested underlying map
as its forward morphism. -/
@[simp] theorem classicalAdamsToLambdaBocksteinUnderlyingGradedIso_hom
    (𝒮 : Type*) [StableHomotopy.StableHomotopyCategory 𝒮] (X : 𝒮) :
    (classicalAdamsToLambdaBocksteinUnderlyingGradedIso (Syn := Syn) 𝒮 X).hom =
      (classicalAdamsToLambdaBocksteinUnderlyingMorphism
        (Syn := Syn) 𝒮 X).asGradedHom := rfl

/-- Invertibility of the constructed underlying morphism itself, not
merely the existence of some isomorphism between the same objects. -/
instance classicalAdamsToLambdaBocksteinUnderlyingMorphism_isIso
    (𝒮 : Type*) [StableHomotopy.StableHomotopyCategory 𝒮] (X : 𝒮) :
    IsIso (classicalAdamsToLambdaBocksteinUnderlyingMorphism
      (Syn := Syn) 𝒮 X).asGradedHom := by
  rw [← classicalAdamsToLambdaBocksteinUnderlyingGradedIso_hom]
  infer_instance

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- Finite-cofiber restriction identifies the initial source of the
boundary ESS with the image under the fixed underlying map. This square
uses the actual cofiber restriction map, not a separately chosen page map. -/
theorem canonicalUnderlying_finiteBoundarySource_square
    (𝒮 : Type*) [StableHomotopy.StableHomotopyCategory 𝒮]
    (X : 𝒮) (n : ℕ) (s t : ℤ) :
    lambdaBoundaryToOnePageMap ((nu 𝒮 Syn).obj X) n (t - s, t) 0 (s, 1) ≫
        (canonicalLambdaBocksteinE0SourceIsoSynAdamsE2Diagonal
          (Syn := Syn) 𝒮 X s t).hom =
      (canonicalLambdaPowerSuccBocksteinE0SourceIsoSynAdamsPage
        (Syn := Syn) 𝒮 X n s t).hom ≫
        synAdams_displayedPageToE2OfBoundariesEq ((nu 𝒮 Syn).obj X)
          n (s, t, t) (synAdams_nu_diagonal_boundaries 𝒮 Syn X s t n) := by
  have transport (A B : (ℤ × ℤ × ℤ) → AddCommGrpCat.{0})
      (f : ∀ i, A i ⟶ B i) {i j : ℤ × ℤ × ℤ} (h : i = j) :
      f i ≫ eqToHom (congrArg B h) =
        eqToHom (congrArg A h) ≫ f j := by
    cases h
    simp
  have ht := transport
    (fun i => ((SynAdamsSS Syn
      (XModLambdaN ((nu 𝒮 Syn).obj X) (n + 1))).ssData i).eInfty)
    (fun i => ((SynAdamsSS Syn
      (XModLambdaN ((nu 𝒮 Syn).obj X) 1)).ssData i).eInfty)
    (synAdamsSS_functorial
      (XModLambdaN.toOne ((nu 𝒮 Syn).obj X) n)).eInftyMap
    (syntheticAdamsIndex_boundaryDiagonal s t)
  simp only [canonicalLambdaBocksteinE0SourceIsoSynAdamsE2Diagonal,
    canonicalLambdaPowerSuccBocksteinE0SourceIsoSynAdamsPage,
    Iso.trans_hom, eqToIso.hom, Category.assoc]
  rw [← Category.assoc, lambdaBoundaryToOne_e0Source]
  simp only [Category.assoc]
  rw [← Category.assoc
      ((synAdamsSS_functorial
        (XModLambdaN.toOne ((nu 𝒮 Syn).obj X) n)).eInftyMap _),
    ht, Category.assoc, nuModLambdaSuccGeneratorEInftyIsoPage_toOne]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- The same square in the Adams-to-Bockstein direction: taking a finite
cofiber source, then restricting, gives exactly the prescribed underlying
image of its Adams initial class. -/
theorem canonicalUnderlying_finiteBoundarySource
    (𝒮 : Type*) [StableHomotopy.StableHomotopyCategory 𝒮]
    (X : 𝒮) (n : ℕ) (s t : ℤ) :
    (canonicalLambdaPowerSuccBocksteinE0SourceIsoSynAdamsPage
        (Syn := Syn) 𝒮 X n s t).inv ≫
      lambdaBoundaryToOnePageMap ((nu 𝒮 Syn).obj X) n (t - s, t) 0 (s, 1) =
    synAdams_displayedPageToE2OfBoundariesEq ((nu 𝒮 Syn).obj X)
        n (s, t, t) (synAdams_nu_diagonal_boundaries 𝒮 Syn X s t n) ≫
      (canonicalAdamsToLambdaBocksteinUnderlyingMorphism
        (Syn := Syn) 𝒮 X).φ s t := by
  apply (cancel_mono
    (canonicalLambdaBocksteinE0SourceIsoSynAdamsE2Diagonal
      (Syn := Syn) 𝒮 X s t).hom).mp
  simp only [canonicalAdamsToLambdaBocksteinUnderlyingMorphism_φ,
    Category.assoc, Iso.inv_hom_id, Category.comp_id]
  rw [canonicalUnderlying_finiteBoundarySource_square,
    Iso.inv_hom_id_assoc]

/-- The raw lambda-Bockstein source `E₀` is the reindexed diagonal Adams
`E₂` source. -/
noncomputable def canonicalLambdaBocksteinRawE0ReindexedE2Equiv
    (𝒮 : Type*) [StableHomotopy.StableHomotopyCategory 𝒮]
    (X : 𝒮) (s t : ℤ) :
    ↑((canonicalLambdaBocksteinESS ((nu 𝒮 Syn).obj X)
      (lambdaBocksteinGeneratorDegree s t)).Page 0 (s, 1)) ≃+
      ↑((SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page 2
        (lambdaBocksteinToAdamsReindex
          (lambdaBocksteinGeneratorDegree s t) (s, 1))) := by
  rw [lambdaBocksteinToAdamsReindex_source]
  exact addEquivOfAddCommGrpCatIso
    (canonicalLambdaBocksteinE0SourceIsoSynAdamsE2Diagonal
      (Syn := Syn) 𝒮 X s t)

/-- The canonical map supplied by the E₂ calculation, in its actual
numbering: Adams page two maps to the raw λ-Bockstein page zero source.
It is the inverse of the established finite-λ quotient identification. -/
noncomputable def canonicalAdamsE2ToLambdaBocksteinRawE0SourceMap
    (𝒮 : Type*) [StableHomotopy.StableHomotopyCategory 𝒮]
    (X : 𝒮) (s t : ℤ) :
    (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page 2 (s, t, t) ⟶
      (canonicalLambdaBocksteinESS ((nu 𝒮 Syn).obj X)
        (lambdaBocksteinGeneratorDegree s t)).Page 0 (s, 1) := by
  rw [← lambdaBocksteinToAdamsReindex_source]
  exact
    (AddCommGrpCat.ofHom
      (canonicalLambdaBocksteinRawE0ReindexedE2Equiv
        (Syn := Syn) 𝒮 X s t).symm.toAddMonoidHom)

/-- At every Adams filtration, the map to the raw Bockstein source column
is the actual quotient map `νX ⟶ νX/λ`, followed by degeneration of the
quotient Adams spectral sequence and the canonical ESS source
identification.  The quotient map automatically vanishes away from the
surviving λ-generator weight. -/
noncomputable def canonicalAdamsE2ToLambdaBocksteinRawE0SourceMapAll
    (𝒮 : Type*) [StableHomotopy.StableHomotopyCategory 𝒮]
    (X : 𝒮) (degree : ℤ × ℤ) (s : ℤ) :
    (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page 2
        (lambdaBocksteinToAdamsReindex degree (s, 1)) ⟶
      (canonicalLambdaBocksteinESS ((nu 𝒮 Syn).obj X) degree).Page 0
        (s, 1) := by
  exact eqToHom (congrArg
      (fun i => (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page 2 i)
      (lambdaBocksteinToAdamsReindex_source_general
        degree s)) ≫
    nuModLambdaAdamsPageMap 𝒮 Syn X 1 2
      (syntheticAdamsIndex s degree) ≫
    (lambdaBocksteinESSSourceE0Iso (Syn := Syn) 𝒮 X
      (canonicalLambdaBocksteinData ((nu 𝒮 Syn).obj X)) s degree).inv

/-- The source column of the raw Bockstein page is zero away from the
weight surviving the first λ-quotient. -/
theorem canonicalLambdaBocksteinRawE0Source_isZero_offDiagonal
    (𝒮 : Type*) [StableHomotopy.StableHomotopyCategory 𝒮]
    (X : 𝒮) (degree : ℤ × ℤ) (s : ℤ)
    (h : degree.1 + s ≠ degree.2) :
    IsZero ((canonicalLambdaBocksteinESS ((nu 𝒮 Syn).obj X) degree).Page 0
      (s, 1)) := by
  have hz : IsZero ((SynAdamsSS Syn
      (XModLambdaN ((nu 𝒮 Syn).obj X) 1)).Page 2
        (syntheticAdamsIndex s degree)) := by
    apply synAdams_nu_mod_lambda_e2_isZero_of_outside
      (Syn := Syn) 𝒮 X 1 (by omega)
    dsimp [syntheticAdamsIndex]
    omega
  exact hz.of_iso (lambdaBocksteinESSSourceE0Iso (Syn := Syn) 𝒮 X
    (canonicalLambdaBocksteinData ((nu 𝒮 Syn).obj X)) s degree)

/-- The off-diagonal vanishing of the first λ-Bockstein source page
persists to its actual page two. -/
theorem canonicalLambdaBocksteinE2Source_isZero_offDiagonal
    (𝒮 : Type*) [StableHomotopy.StableHomotopyCategory 𝒮]
    (X : 𝒮) (degree : ℤ × ℤ) (s : ℤ)
    (h : degree.1 + s ≠ degree.2) :
    IsZero ((canonicalLambdaBocksteinESS ((nu 𝒮 Syn).obj X) degree).Page 2
      (s, 1)) := by
  let E := canonicalLambdaBocksteinESS ((nu 𝒮 Syn).obj X) degree
  have hz : IsZero ((E.ssData (s, 1)).page (0 : WithTop ℕ)) := by
    exact canonicalLambdaBocksteinRawE0Source_isZero_offDiagonal
      (Syn := Syn) 𝒮 X degree s h
  exact page_isZero_of_le (E.ssData (s, 1))
    (i := (0 : WithTop ℕ)) (by simp) hz

/-- At the surviving degree, the all-filtration source map is an
isomorphism: the actual quotient Adams page map is an isomorphism there,
and `νX/λ` has already degenerated to its Adams `E₂` page. -/
theorem canonicalAdamsE2ToLambdaBocksteinRawE0SourceMapAll_isIso
    (𝒮 : Type*) [StableHomotopy.StableHomotopyCategory 𝒮]
    (X : 𝒮) (degree : ℤ × ℤ) (s : ℤ)
    (h : degree.1 + s = degree.2) :
    IsIso (canonicalAdamsE2ToLambdaBocksteinRawE0SourceMapAll
      (Syn := Syn) 𝒮 X degree s) := by
  have hq : IsIso (nuModLambdaAdamsPageMap 𝒮 Syn X 1 2
      (syntheticAdamsIndex s degree)) := by
    apply nuModLambdaAdamsE2PageMapIsIso (Syn := Syn) 𝒮 X 1 (by omega)
    dsimp [syntheticAdamsIndex]
    omega
  letI := hq
  unfold canonicalAdamsE2ToLambdaBocksteinRawE0SourceMapAll
  infer_instance

/-- Every diagonal Adams `E₂` class has a representative in `νX/λ`
whose actual λ-boundary starts at least two Adams-filtration steps later.
The representative comes from the cap for that very Adams class. -/
theorem NuSynAdamsGeometricComparison.exists_modLambda_representative_boundary_filtration_two
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s : ℕ) (t : ℤ)
    (x : (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page 2
      ((s : ℤ), t, t)) :
    ∃ (a : Smn (Syn := Syn) (t - (s : ℤ)) t ⟶
        XModLambdaN ((nu 𝒮 Syn).obj X) 1)
      (ha : a ∈ synAdamsFiltration Syn
        (XModLambdaN ((nu 𝒮 Syn).obj X) 1)
        (t - (s : ℤ)) t (s : ℤ)),
      a ≫ lambdaBocksteinConnecting ((nu 𝒮 Syn).obj X) ∈
        synAdamsFiltration Syn
          ((shiftFunctor Syn (1 : ℤ)).obj
            ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj
              ((nu 𝒮 Syn).obj X)))
          (t - (s : ℤ)) t ((s : ℤ) + 2) ∧
      nuModLambdaPredGeneratorDetection 𝒮 Syn X 2 (by omega)
        (s : ℤ) t ⟨a, ha⟩ = x := by
  obtain ⟨c, hc⟩ := C.exists_cap_detecting_synAdamsClass s 0 t x
  let sphere := NuSynAdamsGeometricModel.SourceSphere (Syn := Syn) s t
  let e := NuSynAdamsGeometricModel.sourceSphereIso (Syn := Syn) s t
  let a : Smn (Syn := Syn) (t - (s : ℤ)) t ⟶
      XModLambdaN ((nu 𝒮 Syn).obj X) 1 :=
    e.inv ≫ M.input.capQuotientClass sphere s 2 1 c
  have ha : a ∈ synAdamsFiltration Syn
      (XModLambdaN ((nu 𝒮 Syn).obj X) 1)
      (t - (s : ℤ)) t (s : ℤ) :=
    M.capQuotientClass_canonical_mem_filtration s 2 1 t c
  let yStage := e.inv ≫ M.input.capStageBoundary sphere s 2 1 c ≫
    (shiftFunctor Syn (1 : ℤ)).map
      (lambdaPowerToOne (M.input.stage (s + 2)) 0)
  have hboundary :
      a ≫ lambdaBocksteinConnecting ((nu 𝒮 Syn).obj X) =
        yStage ≫ (M.input.boundaryTarget 1).toBase (s + 2) := by
    have h := M.input.capQuotientClass_toOne_boundary sphere s 2 0 c
    simpa only [a, yStage, XModLambdaN.toOne_zero, Category.id_comp,
      Category.comp_id, Category.assoc] using
        congrArg (fun f => e.inv ≫ f) h
  have hb : a ≫ lambdaBocksteinConnecting ((nu 𝒮 Syn).obj X) ∈
      synAdamsFiltration Syn
        ((shiftFunctor Syn (1 : ℤ)).obj
          ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj
            ((nu 𝒮 Syn).obj X)))
        (t - (s : ℤ)) t ((s : ℤ) + 2) := by
    have hAF : (M.input.boundaryTarget 1).AFGe
        (a ≫ lambdaBocksteinConnecting ((nu 𝒮 Syn).obj X)) (s + 2) :=
      ⟨yStage, hboundary.symm⟩
    simpa [Nat.cast_add] using
      (M.boundaryTarget_afGe_iff_synAdamsFiltration 1 (s + 2)
        (t - (s : ℤ)) t
        (a ≫ lambdaBocksteinConnecting ((nu 𝒮 Syn).obj X))).mp hAF
  refine ⟨a, ha, hb, ?_⟩
  simpa only [NuSynAdamsGeometricModel.capQuotientDetectedClass, a]
    using hc

/-- At the first comparison page, the cap lifting condition follows from
the `νX/λ` Adams `E₂` identification.  A Bockstein page representative is
detected on that same quotient Adams page; the cap for its detected class
differs from it by the next filtration layer. -/
theorem NuSynAdamsGeometricComparison.capLiftsBocksteinSourceClasses_zero
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s : ℕ) (t : ℤ) :
    C.CapLiftsBocksteinSourceClasses s 0 t := by
  intro xPage a hrep
  let degree : ℤ × ℤ := (t - (s : ℤ), t)
  let A := synAdamsConvergence Syn (XModLambdaN ((nu 𝒮 Syn).obj X) 1)
  obtain ⟨xAmbient, xl, hxl, hactual, hxPage⟩ := hrep
  have ha : a ∈ synAdamsFiltration Syn
      (XModLambdaN ((nu 𝒮 Syn).obj X) 1)
      (t - (s : ℤ)) t (s : ℤ) := by
    let af := A.filtrationEquiv (s : ℤ) degree (xl.hom 1)
    have hval : af.val = a := by
      dsimp only [af]
      exact (A.filtrationEquiv_comm (s : ℤ) degree (xl.hom 1)).symm.trans hactual
    exact hval ▸ af.property
  let x := nuModLambdaPredGeneratorDetection 𝒮 Syn X 2 (by omega)
    (s : ℤ) t ⟨a, ha⟩
  obtain ⟨c, hc⟩ := C.exists_cap_detecting_synAdamsClass s 0 t x
  let q := (NuSynAdamsGeometricModel.sourceSphereIso (Syn := Syn) s t).inv ≫
    M.input.capQuotientClass
      (NuSynAdamsGeometricModel.SourceSphere (Syn := Syn) s t)
      s 2 1 c
  have hq : q ∈ synAdamsFiltration Syn
      (XModLambdaN ((nu 𝒮 Syn).obj X) 1)
      (t - (s : ℤ)) t (s : ℤ) :=
    M.capQuotientClass_canonical_mem_filtration s 2 1 t c
  have hdet : nuModLambdaPredGeneratorDetection 𝒮 Syn X 2 (by omega)
      (s : ℤ) t ⟨q, hq⟩ = x := by
    simpa only [NuSynAdamsGeometricModel.capQuotientDetectedClass, q]
      using hc
  have hnext : a - q ∈ synAdamsFiltration Syn
      (XModLambdaN ((nu 𝒮 Syn).obj X) 1)
      (t - (s : ℤ)) t ((s : ℤ) + 1) :=
    (nuModLambdaPredGeneratorDetection_eq_iff 𝒮 Syn X 2 (by omega)
      (s : ℤ) t ⟨a, ha⟩ ⟨q, hq⟩).mp (by simpa only [x] using hdet.symm)
  refine ⟨c, ?_⟩
  simpa only [XModLambdaN.toOne_zero, Category.comp_id, q] using hnext

/-- The unconditional page map supplied by the geometric construction,
written with the affine Adams index.  This is the actual map whose
bijectivity is needed below; no page isomorphism is chosen independently. -/
noncomputable def NuSynAdamsGeometricComparison.reindexedSourcePageMap
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s n : ℕ) (t : ℤ) :
    (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page
        ((n + 2 : ℕ) : ℤ)
        (lambdaBocksteinToAdamsReindex
          (lambdaBocksteinGeneratorDegree (s : ℤ) t) ((s : ℤ), 1)) ⟶
      (canonicalLambdaBocksteinESS ((nu 𝒮 Syn).obj X)
        (lambdaBocksteinGeneratorDegree (s : ℤ) t)).Page
          ((n + 2 : ℕ) : ℤ) ((s : ℤ), 1) := by
  rw [lambdaBocksteinToAdamsReindex_source]
  exact AddCommGrpCat.ofHom (C.synAdamsToLambdaBocksteinPageHom s n t)

/-- The map on the Bockstein boundary subgroup, before identifying the
source cap page with the declared Adams page.  It is obtained by applying
the actual Bockstein page differential to the cap-defined source map. -/
noncomputable def NuSynAdamsGeometricComparison.capPageToBocksteinBoundaryPageHom
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s n : ℕ) (t : ℤ) :
    M.input.CapPage
        (NuSynAdamsGeometricModel.SourceSphere (Syn := Syn) s t)
        s (n + 2) (by omega) (n + 1) →+
      (canonicalLambdaBocksteinESS ((nu 𝒮 Syn).obj X)
        (lambdaBocksteinGeneratorDegree (s : ℤ) t)).Page
          ((n + 2 : ℕ) : ℤ)
          (((s : ℤ), 1) +
            (canonicalLambdaBocksteinESS ((nu 𝒮 Syn).obj X)
              (lambdaBocksteinGeneratorDegree (s : ℤ) t)).diffDeg
                ((n + 2 : ℕ) : ℤ)) :=
  ((canonicalLambdaBocksteinESS ((nu 𝒮 Syn).obj X)
    (lambdaBocksteinGeneratorDegree (s : ℤ) t)).d
      ((n + 2 : ℕ) : ℤ) ((s : ℤ), 1)).hom.comp
    (C.capPageToBocksteinSourcePageHom s n t)

/-- On a cap-page class, the boundary map is literally the Bockstein
differential of its source comparison class. -/
theorem NuSynAdamsGeometricComparison.capPageToBocksteinBoundaryPageHom_apply
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s n : ℕ) (t : ℤ)
    (x : M.input.CapPage
      (NuSynAdamsGeometricModel.SourceSphere (Syn := Syn) s t)
      s (n + 2) (by omega) (n + 1)) :
    C.capPageToBocksteinBoundaryPageHom s n t x =
      ((canonicalLambdaBocksteinESS ((nu 𝒮 Syn).obj X)
        (lambdaBocksteinGeneratorDegree (s : ℤ) t)).d
          ((n + 2 : ℕ) : ℤ) ((s : ℤ), 1)).hom
        (C.capPageToBocksteinSourcePageHom s n t x) := rfl

/-- The boundary component in the declared Adams coordinates.  This is the
map on `Bᵢ` induced from the source comparison map. -/
noncomputable def NuSynAdamsGeometricComparison.adamsToBocksteinBoundaryPageHom
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s n : ℕ) (t : ℤ) :
    (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page
      ((n + 2 : ℕ) : ℤ) ((s : ℤ), t, t) →+
      (canonicalLambdaBocksteinESS ((nu 𝒮 Syn).obj X)
        (lambdaBocksteinGeneratorDegree (s : ℤ) t)).Page
          ((n + 2 : ℕ) : ℤ)
          (((s : ℤ), 1) +
            (canonicalLambdaBocksteinESS ((nu 𝒮 Syn).obj X)
              (lambdaBocksteinGeneratorDegree (s : ℤ) t)).diffDeg
                ((n + 2 : ℕ) : ℤ)) :=
  (C.capPageToBocksteinBoundaryPageHom s n t).comp
    (C.capPageEquivSynAdams s n t).symm.toAddMonoidHom

/-- The boundary component is the Bockstein differential after the source
comparison. This is the required compatibility on the boundary subgroup. -/
theorem NuSynAdamsGeometricComparison.adamsToBocksteinBoundaryPageHom_apply
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s n : ℕ) (t : ℤ)
    (x : (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page
      ((n + 2 : ℕ) : ℤ) ((s : ℤ), t, t)) :
    C.adamsToBocksteinBoundaryPageHom s n t x =
      ((canonicalLambdaBocksteinESS ((nu 𝒮 Syn).obj X)
        (lambdaBocksteinGeneratorDegree (s : ℤ) t)).d
          ((n + 2 : ℕ) : ℤ) ((s : ℤ), 1)).hom
        (C.synAdamsToLambdaBocksteinPageHom s n t x) := rfl

/-- The initial component of the Adams-to-Bockstein comparison.  This is the
actual homomorphism from the Adams `E₂` source term to the Bockstein source
term, defined by the same finite-λ cap construction as all later pages. -/
noncomputable def NuSynAdamsGeometricComparison.adamsE2ToBocksteinE2SourceMap
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s : ℕ) (t : ℤ) :
    (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page 2 ((s : ℤ), t, t) ⟶
      (canonicalLambdaBocksteinESS ((nu 𝒮 Syn).obj X)
        (lambdaBocksteinGeneratorDegree (s : ℤ) t)).Page 2 ((s : ℤ), 1) :=
  AddCommGrpCat.ofHom (C.synAdamsToLambdaBocksteinPageHom s 0 t)

/-- The established geometric E₂ source map, expressed between the
ambient objects of the page-two-rebased Adams and Bockstein data. -/
noncomputable def NuSynAdamsGeometricComparison.e2UnderlyingSourceMap
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s : ℕ) (t : ℤ) :
    ((SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).pageTailData 2
      (lambdaBocksteinToAdamsReindex
        (lambdaBocksteinGeneratorDegree (s : ℤ) t) ((s : ℤ), 1))).V ⟶
    ((canonicalLambdaBocksteinESS ((nu 𝒮 Syn).obj X)
      (lambdaBocksteinGeneratorDegree (s : ℤ) t)).pageTailData 2
        ((s : ℤ), 1)).V := by
  simpa only [SpectralSequence.pageTailData_V,
    lambdaBocksteinToAdamsReindex_source] using
      C.adamsE2ToBocksteinE2SourceMap s t

/-- Evaluation of the E₂ source component is the original cap map. -/
theorem NuSynAdamsGeometricComparison.adamsE2ToBocksteinE2SourceMap_apply
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s : ℕ) (t : ℤ)
    (x : (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page 2
      ((s : ℤ), t, t)) :
    (C.adamsE2ToBocksteinE2SourceMap s t).hom x =
      C.synAdamsToLambdaBocksteinPageHom s 0 t x := by
  rfl

/-- The Adams E₂ source comparison at every weight. The free-λ page
description identifies each weight at or below the generator diagonal with
that diagonal, where the geometric cap map supplies the actual map into
λ-Bockstein page two. Above the diagonal the Adams E₂ term is zero. -/
noncomputable def NuSynAdamsGeometricComparison.adamsE2ToBocksteinE2SourceMapAtWeight
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s : ℕ) (t w : ℤ) :
    (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page 2 ((s : ℤ), t, w) ⟶
      (canonicalLambdaBocksteinESS ((nu 𝒮 Syn).obj X)
        (lambdaBocksteinGeneratorDegree (s : ℤ) t)).Page 2 ((s : ℤ), 1) := by
  by_cases hw : w ≤ t
  · let R := rigidity_free_lambda_pages 𝒮 Syn X
    exact (R.componentIso 2 (by omega) (s : ℤ) t w (by omega)).hom ≫
      (R.componentIso 2 (by omega) (s : ℤ) t t (by omega)).inv ≫
        C.adamsE2ToBocksteinE2SourceMap s t
  · exact 0

/-- The initial Adams-to-Bockstein source map is injective. -/
theorem NuSynAdamsGeometricComparison.adamsE2ToBocksteinE2SourceMap_injective
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s : ℕ) (t : ℤ) :
    Function.Injective (C.adamsE2ToBocksteinE2SourceMap s t).hom := by
  exact C.synAdamsToLambdaBocksteinPageHom_injective s 0 t

/-- The cap map covers the full λ-Bockstein page-two source.  An arbitrary
source class has a quotient Adams `E₂` detection, and the cap detecting it
represents the same source class. -/
theorem NuSynAdamsGeometricComparison.adamsE2ToBocksteinE2SourceMap_surjective
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s : ℕ) (t : ℤ) :
    Function.Surjective (C.adamsE2ToBocksteinE2SourceMap s t).hom := by
  exact C.synAdamsToLambdaBocksteinPageHom_surjective s 0 t
    (C.capLiftsBocksteinSourceClasses_zero s t)

/-- The actual geometric Adams-to-Bockstein source map is an isomorphism
on page two at every diagonal generator degree. -/
theorem NuSynAdamsGeometricComparison.adamsE2ToBocksteinE2SourceMap_isIso
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s : ℕ) (t : ℤ) :
    IsIso (C.adamsE2ToBocksteinE2SourceMap s t) := by
  let f := C.adamsE2ToBocksteinE2SourceMap s t
  haveI : Mono f :=
    (AddCommGrpCat.mono_iff_injective f).mpr
      (C.adamsE2ToBocksteinE2SourceMap_injective s t)
  haveI : Epi f :=
    (AddCommGrpCat.epi_iff_surjective f).mpr
      (C.adamsE2ToBocksteinE2SourceMap_surjective s t)
  exact isIso_of_mono_of_epi f

/-- The initial-page identification with its forward map fixed to the
geometric cap comparison. This is the source component only; it makes no
identification with the target column of the boundary ESS. -/
noncomputable def NuSynAdamsGeometricComparison.adamsE2ToBocksteinE2SourceIso
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s : ℕ) (t : ℤ) :
    (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page 2 ((s : ℤ), t, t) ≅
      (canonicalLambdaBocksteinESS ((nu 𝒮 Syn).obj X)
        (lambdaBocksteinGeneratorDegree (s : ℤ) t)).Page 2 ((s : ℤ), 1) := by
  letI := C.adamsE2ToBocksteinE2SourceMap_isIso s t
  exact asIso (C.adamsE2ToBocksteinE2SourceMap s t)

@[simp] theorem NuSynAdamsGeometricComparison.adamsE2ToBocksteinE2SourceIso_hom
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s : ℕ) (t : ℤ) :
    (C.adamsE2ToBocksteinE2SourceIso s t).hom =
      C.adamsE2ToBocksteinE2SourceMap s t := rfl

/-- On each generator degree, the classical Adams initial page maps to
the boundary-ESS source by the free-λ identification followed by the
geometric cap map. The choice of this map is independent of any proposed
extension to the boundary-ESS target column. -/
noncomputable def NuSynAdamsGeometricComparison.classicalAdamsE2ToBocksteinE2SourceIso
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s : ℕ) (t : ℤ) :
    AddCommGrpCat.of ((StableHomotopy.AdamsSS 𝒮 X).Page 2 ((s : ℤ), t)) ≅
      (canonicalLambdaBocksteinESS ((nu 𝒮 Syn).obj X)
        (lambdaBocksteinGeneratorDegree (s : ℤ) t)).Page 2 ((s : ℤ), 1) := by
  let R := rigidity_free_lambda_pages 𝒮 Syn X
  exact (R.generatorClassicalEquiv 2 (s : ℤ) t).symm.toAddCommGrpIso ≪≫
    (R.componentIso 2 (by omega) (s : ℤ) t t (by omega)).symm ≪≫
      C.adamsE2ToBocksteinE2SourceIso s t

/-- The target component supplied by the geometric Adams model.  For a
length-`n+2` differential it identifies the affine Adams target with the
quotient of the actual adjacent target layer by shorter boundaries. -/
noncomputable def NuSynAdamsGeometricComparison.reindexedTargetPageEquiv
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s n : ℕ) (t : ℤ) :
    ↑((SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page ((n + 2 : ℕ) : ℤ)
      (lambdaBocksteinToAdamsReindex
        (lambdaBocksteinGeneratorDegree (s : ℤ) t)
        (((s : ℤ), 1) +
          (canonicalLambdaBocksteinESS ((nu 𝒮 Syn).obj X)
            (lambdaBocksteinGeneratorDegree (s : ℤ) t)).diffDeg
              ((n + 2 : ℕ) : ℤ)))) ≃+
      ↑(M.TargetPage s (n + 2) (by omega) t) := by
  rw [canonicalLambdaBocksteinESS, lambdaBocksteinESS_diffDeg]
  rw [lambdaBocksteinToAdamsReindex_target]
  exact C.targetEquiv s (n + 2) (by omega) t

/-! ## Legacy fixed-boundary-ESS comparison conditions

The source component below is fixed to the map constructed by the geometric
cap comparison.  The existential statements ask for extensions of that
particular map to every affine bidegree.  They do not assert these conditions
for an arbitrary family of E₂ maps.  The last theorem requires one extension
to satisfy all three conditions simultaneously.

These concern `AdamsToBoundaryESSUnderlyingMorphism`, not the common-initial-
page `CanonicalAdamsToLambdaBocksteinUnderlyingMorphism`. The latter has
already been constructed above from the quotient initial-page identification
and does not use any of the deferred statements in this section.
-/

/-- The type of an E₂ underlying comparison at the generator degree. -/
abbrev NuSynAdamsGeometricComparison.BoundaryESSUnderlyingCandidate
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s : ℕ) (t : ℤ) :=
  AdamsToBoundaryESSUnderlyingMorphism
    ((nu 𝒮 Syn).obj X) (lambdaBocksteinGeneratorDegree (s : ℤ) t)

/-- The extension must agree with the existing geometric E₂ source map,
so the zero family cannot satisfy the comparison merely by being zero. -/
def NuSynAdamsGeometricComparison.E2UnderlyingAgreesAtSource
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s : ℕ) (t : ℤ) (Φ : C.BoundaryESSUnderlyingCandidate s t) : Prop :=
  Φ.φ ((s : ℤ), 1) = C.e2UnderlyingSourceMap s t

/-- A legacy zero extension on the fixed boundary-ESS page-two objects, whose
generator source component is the geometric Adams-to-Bockstein map.
The other components are zero maps; the later differential-compatibility
obligations concern an extension of this specified source component.
This is not the common-initial-page underlying comparison. -/
noncomputable def NuSynAdamsGeometricComparison.e2UnderlyingFromSource
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s : ℕ) (t : ℤ) : C.BoundaryESSUnderlyingCandidate s t := by
  classical
  refine AdamsToBoundaryESSUnderlyingMorphism.ofE2PageMaps
    ((nu 𝒮 Syn).obj X) (lambdaBocksteinGeneratorDegree (s : ℤ) t)
    (fun sk => ?_)
  by_cases h : sk = ((s : ℤ), 1)
  · subst sk
    exact C.e2UnderlyingSourceMap s t
  · exact 0

theorem NuSynAdamsGeometricComparison.e2UnderlyingFromSource_agrees
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s : ℕ) (t : ℤ) :
    C.E2UnderlyingAgreesAtSource s t (C.e2UnderlyingFromSource s t) := by
  classical
  simp [NuSynAdamsGeometricComparison.E2UnderlyingAgreesAtSource,
    NuSynAdamsGeometricComparison.e2UnderlyingFromSource]

/-- At the first common page, the `V` component is the same geometric
source comparison used in the pagewise differential theorem. -/
theorem NuSynAdamsGeometricComparison.e2UnderlyingFromSource_eq_pageMap
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s : ℕ) (t : ℤ) :
    (C.e2UnderlyingFromSource s t).φ ((s : ℤ), 1) =
      C.reindexedSourcePageMap s 0 t := by
  calc
    (C.e2UnderlyingFromSource s t).φ ((s : ℤ), 1) =
        C.e2UnderlyingSourceMap s t :=
      C.e2UnderlyingFromSource_agrees s t
    _ = C.reindexedSourcePageMap s 0 t := by
      rfl

/-- A specified Adams differential gives a class on the actual Bockstein
`r`-page. Its Bockstein differential is represented by the same cap
boundary, and the divided geometric target is the specified Adams target.
For `r = 2`, the source comparison is the component prescribed by
`e2UnderlyingFromSource`. -/
theorem NuSynAdamsGeometricComparison.adamsDifferential_to_bocksteinPage
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s n : ℕ) (t : ℤ)
    (x : (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page
      ((n + 2 : ℕ) : ℤ) ((s : ℤ), t, t))
    (y : (SynAdamsSS Syn ((nu 𝒮 Syn).obj X)).Page
      ((n + 2 : ℕ) : ℤ)
        ((s : ℤ) + ((n + 2 : ℕ) : ℤ),
          t + ((n + 2 : ℕ) : ℤ) - 1, t))
    (hxy : (synAdamsDifferentialNormalized Syn ((nu 𝒮 Syn).obj X)
      ((n + 2 : ℕ) : ℤ) (s : ℤ) t t).hom x = y) :
    let degree := lambdaBocksteinGeneratorDegree (s : ℤ) t
    let B := canonicalLambdaBocksteinESS ((nu 𝒮 Syn).obj X) degree
    ∃ (c : M.input.CapRepresentatives
        (NuSynAdamsGeometricModel.SourceSphere (Syn := Syn) s t)
        s (n + 2) (n + 1))
      (xB : B.Page ((n + 2 : ℕ) : ℤ) ((s : ℤ), 1))
      (yB : AddCommGrpCat.of ℤ ⟶
        B.Page ((n + 2 : ℕ) : ℤ)
          ((s : ℤ) + ((n + 2 : ℕ) : ℤ), 0))
      (bOne : Smn (Syn := Syn) degree.1 degree.2 ⟶
        (shiftFunctor Syn (1 : ℤ)).obj
          ((SyntheticCategory.biShift (0, (-1 : ℤ))).obj
            ((nu 𝒮 Syn).obj X)))
      (dividedTarget : NuSynAdamsGeometricModel.SourceSphere
          (Syn := Syn) s t ⟶
        (shiftFunctor Syn (1 : ℤ)).obj
          ((SyntheticCategory.biShift (0, -((n + 1 : ℕ) : ℤ))).obj
            (M.input.layer (s + (n + 2))))),
      M.capQuotientDetectedClass s (n + 2) (by omega) t c = x ∧
      bOne =
        (((NuSynAdamsGeometricModel.sourceSphereIso (Syn := Syn) s t).inv ≫
            M.input.capQuotientClass
              (NuSynAdamsGeometricModel.SourceSphere (Syn := Syn) s t)
              s (n + 2) (n + 1) c) ≫
          XModLambdaN.toOne ((nu 𝒮 Syn).obj X) n) ≫
            lambdaBocksteinConnecting ((nu 𝒮 Syn).obj X) ∧
      LambdaBocksteinSourcePageRep (Syn := Syn) ((nu 𝒮 Syn).obj X)
        degree ((n + 2 : ℕ) : ℤ) (s : ℤ)
        (((NuSynAdamsGeometricModel.sourceSphereIso (Syn := Syn) s t).inv ≫
            M.input.capQuotientClass
              (NuSynAdamsGeometricModel.SourceSphere (Syn := Syn) s t)
              s (n + 2) (n + 1) c) ≫
          XModLambdaN.toOne ((nu 𝒮 Syn).obj X) n)
        (C.capBocksteinSourcePage s n t c) ∧
      xB = C.synAdamsToLambdaBocksteinPageHom s n t x ∧
      xB = (C.capBocksteinSourcePage s n t c).hom 1 ∧
      (B.d ((n + 2 : ℕ) : ℤ) ((s : ℤ), 1)).hom xB = yB.hom 1 ∧
      C.targetEquiv s (n + 2) (by omega) t y =
        QuotientAddGroup.mk
          (dividedTarget ≫ (shiftFunctor Syn (1 : ℤ)).map
            (lambdaPow (n + 1) (M.input.layer (s + (n + 2))))) ∧
      M.input.capDifferential
          (NuSynAdamsGeometricModel.SourceSphere (Syn := Syn) s t)
          s (n + 2) (by omega) (n + 1) (QuotientAddGroup.mk c) =
        (M.input.dividedTargetEquiv M.freeLayers s (n + 2) (by omega)
          (t - (s : ℤ))).symm (C.targetEquiv s (n + 2) (by omega) t y) ∧
      LambdaBocksteinTargetPageRep (Syn := Syn)
        ((nu 𝒮 Syn).obj X) degree ((n + 2 : ℕ) : ℤ)
        ((s : ℤ) + ((n + 2 : ℕ) : ℤ)) bOne yB := by
  dsimp only
  obtain ⟨c, bOne, dividedTarget, yB, hc, hbOne, htarget, hyB, hdiff⟩ :=
    C.exists_targetRep_comm_of_adams_differential s n t x y hxy
  have hcap : C.synAdamsToLambdaBocksteinPageHom s n t x =
      (C.capBocksteinSourcePage s n t c).hom 1 := by
    have h := C.synAdamsToLambdaBocksteinPageHom_cap s n t c
    rw [hc] at h
    exact h
  exact ⟨c, C.synAdamsToLambdaBocksteinPageHom s n t x, yB, bOne,
    dividedTarget, hc, hbOne, C.capBocksteinSourcePage_spec s n t c,
    rfl, hcap, hdiff, htarget,
    C.cap_boundary_eq_prescribed_adams_target s n t x y hxy c hc, hyB⟩

/-- The geometric E₂ source comparison extends to all affine degrees while
carrying every later Adams cycle subobject into the corresponding
λ-Bockstein cycle subobject. -/
theorem NuSynAdamsGeometricComparison.exists_e2_underlying_preserves_Z
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s : ℕ) (t : ℤ) :
    ∃ Φ : C.BoundaryESSUnderlyingCandidate s t,
      C.E2UnderlyingAgreesAtSource s t Φ ∧ Φ.PreservesZ := by
  sorry

/-- The same geometric E₂ source comparison extends to a family carrying
every later Adams boundary subobject into its λ-Bockstein counterpart. -/
theorem NuSynAdamsGeometricComparison.exists_e2_underlying_preserves_B
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s : ℕ) (t : ℤ) :
    ∃ Φ : C.BoundaryESSUnderlyingCandidate s t,
      C.E2UnderlyingAgreesAtSource s t Φ ∧ Φ.PreservesB := by
  sorry

/-- The geometric E₂ source comparison extends to an affine family whose
first differential square commutes at every bidegree. The target component
must agree with the actual geometric boundary class, not an arbitrary
choice of a homomorphism on the target page. -/
theorem NuSynAdamsGeometricComparison.exists_e2_underlying_commutes_d2
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s : ℕ) (t : ℤ) :
    ∃ Φ : C.BoundaryESSUnderlyingCandidate s t,
      C.E2UnderlyingAgreesAtSource s t Φ ∧ Φ.CommutesD2 := by
  sorry

/-- One Adams-to-Bockstein E₂ underlying morphism satisfies all three
conditions above. Separate existence results do not provide this common
family, so this is the actual base-case assembly obligation. The affine
differential degree law is already proved separately. -/
theorem NuSynAdamsGeometricComparison.exists_e2_underlying_morphism_base
    {𝒮 : Type*} [StableHomotopy.StableHomotopyCategory 𝒮]
    {X : 𝒮} {M : NuSynAdamsGeometricModel 𝒮 Syn X}
    (C : NuSynAdamsGeometricComparison 𝒮 Syn X M)
    (s : ℕ) (t : ℤ) :
    ∃ Φ : C.BoundaryESSUnderlyingCandidate s t,
      C.E2UnderlyingAgreesAtSource s t Φ ∧
        Φ.PreservesZ ∧ Φ.PreservesB ∧ Φ.CommutesD2 := by
  sorry

end KIPBase.Synthetic
