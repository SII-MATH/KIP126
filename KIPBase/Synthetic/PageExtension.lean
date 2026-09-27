/-
  KIPBase.Synthetic.PageExtension
  Extensions on a classical Adams page, expressed through synthetic ESSs.
-/
import KIPBase.Synthetic.Lift
import KIPBase.Synthetic.ExtensionSS
import KIPBase.SpectralSequence.Crossing

namespace KIPBase.Synthetic

open CategoryTheory CategoryTheory.Limits KIPBase.SpectralSequence
  KIPBase.StableHomotopy

universe u u' v'

noncomputable section

variable (𝒮 : Type u) [StableHomotopyCategory.{u, 0} 𝒮]
variable (Syn : Type u') [Category.{v'} Syn] [Preadditive Syn]
    [HasZeroObject Syn] [HasShift Syn ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor Syn n)]
    [MonoidalCategory Syn]
    [Pretriangulated Syn] [SyntheticCategory Syn]

/-! ### Finite-page normalized maps -/

/-- Blueprint `def:hat-map-page-reduction`: reduction of the normalized map
`f̂` modulo `λ^(r-1)`, for a finite page `2 ≤ r`.

The source of `f̂` is already `Σ^{0,eHat(f)} νX`; quotienting both source and
target and applying `XModLambdaN.map` gives the required finite-page map. -/
noncomputable def fHatFinitePage {X Y : 𝒮} (f : X ⟶ Y)
    (r : ℕ) (_hr : 2 ≤ r) :
    XModLambdaN
        ((SyntheticCategory.biShift (Syn := Syn) (0, eHat 𝒮 f)).obj
          ((nu 𝒮 Syn).obj X)) (r - 1) ⟶
      XModLambdaN ((nu 𝒮 Syn).obj Y) (r - 1) :=
  XModLambdaN.map (fHat 𝒮 Syn f) (r - 1)

/-- The `E∞` normalized map is the original untruncated `f̂`; no arithmetic
with an infinity symbol is involved. -/
noncomputable def fHatInfinitePage {X Y : 𝒮} (f : X ⟶ Y) :
    (SyntheticCategory.biShift (Syn := Syn) (0, eHat 𝒮 f)).obj
        ((nu 𝒮 Syn).obj X) ⟶ (nu 𝒮 Syn).obj Y :=
  fHat 𝒮 Syn f

/-- A coherent action of all nonnegative powers of `λ` on an ESS object. -/
structure LambdaPowerAction (A : AddCommGrpCat.{0}) where
  pow : ℕ → (A ⟶ A)
  pow_zero : pow 0 = 𝟙 A
  pow_add : ∀ i j, pow (i + j) = pow i ≫ pow j

/-- One fixed family of convergence data for all finite reductions and the
untruncated normalized map.  Page extensions and their crossings are required
to use this same family, rather than choosing unrelated convergence witnesses
at each page. -/
structure NormalizedPageESSFamily {X Y : 𝒮} (f : X ⟶ Y) where
  finite : ∀ (r : ℕ) (hr : 2 ≤ r),
    SyntheticExtensionData (fHatFinitePage 𝒮 Syn f r hr)
  infinite : SyntheticExtensionData (fHatInfinitePage 𝒮 Syn f)
  finiteLambdaAction : ∀ (r : ℕ) (hr : 2 ≤ r)
      (degree index : ℤ × ℤ),
    LambdaPowerAction (((finite r hr).ess degree).ssData index).V
  infiniteLambdaAction : ∀ (degree index : ℤ × ℤ),
    LambdaPowerAction ((infinite.ess degree).ssData index).V

/-- The exponent of `λ` on the target of an extension of length `n`. -/
noncomputable def pageLambdaExponent {X Y : 𝒮} (f : X ⟶ Y) (n : ℤ) : ℕ :=
  (n - eHat 𝒮 f).toNat

@[simp] theorem pageLambdaExponent_coe {X Y : 𝒮} (f : X ⟶ Y)
    (n : ℤ) (h : eHat 𝒮 f ≤ n) :
    (pageLambdaExponent 𝒮 f n : ℤ) = n - eHat 𝒮 f := by
  simp [pageLambdaExponent, Int.toNat_of_nonneg (sub_nonneg.mpr h)]

/-! ### Relations and complete target cosets -/

variable {Syn}

/-- A representative-level page extension in a synthetic ESS.

`target` is the unscaled classical target representative after transport to
the synthetic ESS ambient object.  `lambdaPowerAction` is the action of the
specific power `λ^(n-eHat(f))` on that ambient object.  Consequently
`scaledTarget` is the target appearing in the synthetic differential
relation.  Keeping the action as a morphism makes the compatibility typed and
allows the later rigidity/comparison layer to provide its concrete formula. -/
structure PageExtensionRelation {A B : Syn} {g : A ⟶ B}
    (data : SyntheticExtensionData g) (degree : ℤ × ℤ)
    (lambdaExponent : ℕ) (n s : ℤ) where
  T : AddCommGrpCat.{0}
  [projective : Projective T]
  source : T ⟶ (data.ess degree).ssData (s, 1) |>.V
  target : T ⟶
    (data.ess degree).ssData
      ((s, 1) + (data.ess degree).diffDeg n) |>.V
  lambdaAction : LambdaPowerAction
    ((data.ess degree).ssData
      ((s, 1) + (data.ess degree).diffDeg n)).V
  relation : DifferentialRelation (data.ess degree) n (s, 1) source
    (target ≫ lambdaAction.pow lambdaExponent)

namespace PageExtensionRelation

variable {A B : Syn} {g : A ⟶ B} {data : SyntheticExtensionData g}
    {degree : ℤ × ℤ} {lambdaExponent : ℕ} {n s : ℤ}

/-- The `λ`-scaled target used by the synthetic ESS relation. -/
def scaledTarget (P : PageExtensionRelation data degree lambdaExponent n s) :
    P.T ⟶ (data.ess degree).ssData
      ((s, 1) + (data.ess degree).diffDeg n) |>.V :=
  P.target ≫ P.lambdaAction.pow lambdaExponent

/-- The complete target coset is the affine coset of the ESS boundary
subobject through the scaled target.  The boundary tower `B_n` contains the
ordinary page boundary and the images accumulated from shorter ESS
differentials. -/
def targetCoset (P : PageExtensionRelation data degree lambdaExponent n s) :
    Set (P.T ⟶ (data.ess degree).ssData
      ((s, 1) + (data.ess degree).diffDeg n) |>.V) :=
  { z | Subobject.Factors
      (((data.ess degree).ssData
        ((s, 1) + (data.ess degree).diffDeg n)).B
          (↑(n - (data.ess degree).r₀).toNat : WithTop ℕ))
      (P.scaledTarget - z) }

@[simp] theorem scaledTarget_mem_targetCoset
    (P : PageExtensionRelation data degree lambdaExponent n s) :
    P.scaledTarget ∈ P.targetCoset :=
  by
    simp only [targetCoset, Set.mem_setOf_eq, sub_self]
    exact Subobject.factors_zero

/-- Every target related to the same source belongs to the complete target
coset. -/
theorem related_target_mem_targetCoset
    (P : PageExtensionRelation data degree lambdaExponent n s)
    {z : P.T ⟶ (data.ess degree).ssData
      ((s, 1) + (data.ess degree).diffDeg n) |>.V}
    (hz : DifferentialRelation (data.ess degree) n (s, 1) P.source z) :
    z ∈ P.targetCoset :=
  DifferentialRelation.targets_sub_factors_boundary
    (data.ess degree) n (s, 1) P.relation hz

/-- Essentiality is exactly essentiality of the underlying synthetic
extension relation: the scaled target is not a page boundary. -/
def Essential (P : PageExtensionRelation data degree lambdaExponent n s) : Prop :=
  EssentialDifferentialRelation (data.ess degree) n (s, 1)
    P.source P.scaledTarget

/-- Essentiality is equivalent to zero being absent from the complete target
coset. -/
theorem essential_iff_zero_not_mem_targetCoset
    (P : PageExtensionRelation data degree lambdaExponent n s) :
    P.Essential ↔
      (0 : P.T ⟶ (data.ess degree).ssData
        ((s, 1) + (data.ess degree).diffDeg n) |>.V) ∉ P.targetCoset := by
  constructor
  · intro h
    simpa only [targetCoset, Set.mem_setOf_eq, sub_zero] using h.2
  · intro h
    refine ⟨P.relation, ?_⟩
    simpa only [targetCoset, Set.mem_setOf_eq, sub_zero] using h

/-- An essential page-extension relation is supported by a nonzero ESS
differential. -/
theorem essDiff_ne_zero
    (P : PageExtensionRelation data degree lambdaExponent n s)
    (hP : P.Essential) :
    (data.ess degree).d n (s, 1) ≠ 0 :=
  hP.d_ne_zero (data.ess degree) n (s, 1)

/-- The page-extension target has the expected internal bidegree
`(s+n,0)`. -/
theorem target_index
    (_P : PageExtensionRelation data degree lambdaExponent n s) :
    (s, 1) + (data.ess degree).diffDeg n = (s + n, 0) := by
  rw [data.ess_diffDeg degree n]
  ext <;> simp

end PageExtensionRelation

/-! ### Finite and infinite page extensions -/

variable (Syn)

/-- Blueprint `def:page-extension`, finite clause.

This packages the actual ESS of `f̂_(r-1)`, the range
`eHat(f) ≤ n ≤ r-2+eHat(f)`, and a relation
`d_n(x) = λ^(n-eHat(f)) y`. -/
structure FinitePageExtension {X Y : 𝒮} (f : X ⟶ Y)
    (family : NormalizedPageESSFamily 𝒮 Syn f)
    (r : ℕ) (n s t : ℤ) where
  page_ge_two : 2 ≤ r
  exponent_le_length : eHat 𝒮 f ≤ n
  length_le_page : n ≤ (r : ℤ) - 2 + eHat 𝒮 f
  extension : PageExtensionRelation (family.finite r page_ge_two)
    (t - s, t + eHat 𝒮 f) (pageLambdaExponent 𝒮 f n) n s
  lambdaAction_eq : extension.lambdaAction =
    family.finiteLambdaAction r page_ge_two
      (t - s, t + eHat 𝒮 f)
      ((s, 1) + ((family.finite r page_ge_two).ess
        (t - s, t + eHat 𝒮 f)).diffDeg n)
  classicalSource : extension.T ⟶
    ((AdamsSS 𝒮 X).ssData (s, t)).V
  classicalTarget : extension.T ⟶
    ((AdamsSS 𝒮 Y).ssData (s + n, t + n)).V
  source_isCycle : Subobject.Factors
    (((AdamsSS 𝒮 X).ssData (s, t)).Z (r - 1)) classicalSource
  target_isCycle : Subobject.Factors
    (((AdamsSS 𝒮 Y).ssData (s + n, t + n)).Z
      (↑(((r : ℤ) - 1 - n + eHat 𝒮 f).toNat) : WithTop ℕ)) classicalTarget
  sourceComparison : ((AdamsSS 𝒮 X).ssData (s, t)).V ⟶
    ((family.finite r page_ge_two).ess
      (t - s, t + eHat 𝒮 f)).ssData (s, 1) |>.V
  targetComparison : ((AdamsSS 𝒮 Y).ssData (s + n, t + n)).V ⟶
    ((family.finite r page_ge_two).ess
      (t - s, t + eHat 𝒮 f)).ssData
      ((s, 1) + ((family.finite r page_ge_two).ess
        (t - s, t + eHat 𝒮 f)).diffDeg n) |>.V
  source_transport : classicalSource ≫ sourceComparison = extension.source
  target_transport : classicalTarget ≫ targetComparison = extension.target
  classicalBoundary : Subobject ((AdamsSS 𝒮 Y).ssData (s + n, t + n)).V
  shorterExtensionImages :
    Subobject ((AdamsSS 𝒮 Y).ssData (s + n, t + n)).V
  ambiguity_compat : ∀ z : extension.T ⟶
      ((AdamsSS 𝒮 Y).ssData (s + n, t + n)).V,
    Subobject.Factors (classicalBoundary ⊔ shorterExtensionImages) z ↔
      Subobject.Factors
        ((((family.finite r page_ge_two).ess
          (t - s, t + eHat 𝒮 f)).ssData
          ((s, 1) + ((family.finite r page_ge_two).ess
            (t - s, t + eHat 𝒮 f)).diffDeg n)).B
          (↑(n - ((family.finite r page_ge_two).ess
            (t - s, t + eHat 𝒮 f)).r₀).toNat : WithTop ℕ))
        (z ≫ targetComparison ≫
          extension.lambdaAction.pow (pageLambdaExponent 𝒮 f n))

/-- Blueprint `def:page-extension`, infinite clause.  Permanent-class
comparison data is supplied through the untruncated `f̂`-ESS, and there is no
finite upper bound on the extension length. -/
structure InfinitePageExtension {X Y : 𝒮}
    (f : X ⟶ Y) (family : NormalizedPageESSFamily 𝒮 Syn f)
    (n s t : ℤ) where
  exponent_le_length : eHat 𝒮 f ≤ n
  extension : PageExtensionRelation family.infinite
    (t - s, t + eHat 𝒮 f) (pageLambdaExponent 𝒮 f n) n s
  lambdaAction_eq : extension.lambdaAction =
    family.infiniteLambdaAction (t - s, t + eHat 𝒮 f)
      ((s, 1) + (family.infinite.ess
        (t - s, t + eHat 𝒮 f)).diffDeg n)
  classicalSource : extension.T ⟶
    ((AdamsSS 𝒮 X).ssData (s, t)).V
  classicalTarget : extension.T ⟶
    ((AdamsSS 𝒮 Y).ssData (s + n, t + n)).V
  source_isPermanent : Subobject.Factors
    (((AdamsSS 𝒮 X).ssData (s, t)).Z ⊤) classicalSource
  target_isPermanent : Subobject.Factors
    (((AdamsSS 𝒮 Y).ssData (s + n, t + n)).Z ⊤) classicalTarget
  sourceComparison : ((AdamsSS 𝒮 X).ssData (s, t)).V ⟶
    (family.infinite.ess (t - s, t + eHat 𝒮 f)).ssData (s, 1) |>.V
  targetComparison : ((AdamsSS 𝒮 Y).ssData (s + n, t + n)).V ⟶
    (family.infinite.ess (t - s, t + eHat 𝒮 f)).ssData
      ((s, 1) + (family.infinite.ess
        (t - s, t + eHat 𝒮 f)).diffDeg n) |>.V
  source_transport : classicalSource ≫ sourceComparison = extension.source
  target_transport : classicalTarget ≫ targetComparison = extension.target
  classicalBoundary : Subobject ((AdamsSS 𝒮 Y).ssData (s + n, t + n)).V
  shorterExtensionImages :
    Subobject ((AdamsSS 𝒮 Y).ssData (s + n, t + n)).V
  ambiguity_compat : ∀ z : extension.T ⟶
      ((AdamsSS 𝒮 Y).ssData (s + n, t + n)).V,
    Subobject.Factors (classicalBoundary ⊔ shorterExtensionImages) z ↔
      Subobject.Factors
        (((family.infinite.ess (t - s, t + eHat 𝒮 f)).ssData
          ((s, 1) + (family.infinite.ess
            (t - s, t + eHat 𝒮 f)).diffDeg n)).B
          (↑(n - (family.infinite.ess
            (t - s, t + eHat 𝒮 f)).r₀).toNat : WithTop ℕ))
        (z ≫ targetComparison ≫
          extension.lambdaAction.pow (pageLambdaExponent 𝒮 f n))

namespace FinitePageExtension

variable {𝒮 Syn} {X Y : 𝒮} {f : X ⟶ Y}
    {family : NormalizedPageESSFamily 𝒮 Syn f}
    {r : ℕ} {n s t : ℤ}

/-- The classical target cycle level `r-1-n+eHat(f)`. -/
def targetCycleLevel (_P : FinitePageExtension 𝒮 Syn f family r n s t) : ℤ :=
  (r : ℤ) - 1 - n + eHat 𝒮 f

theorem targetCycleLevel_nonneg
    (P : FinitePageExtension 𝒮 Syn f family r n s t) :
    0 ≤ P.targetCycleLevel := by
  unfold targetCycleLevel
  have hr := P.page_ge_two
  have hn := P.length_le_page
  omega

/-- A finite page extension is essential exactly when its underlying
synthetic relation is essential. -/
abbrev Essential (P : FinitePageExtension 𝒮 Syn f family r n s t) : Prop :=
  P.extension.Essential

/-- Its complete target coset is the complete target coset in the finite
`f̂_(r-1)`-ESS. -/
def targetCoset (P : FinitePageExtension 𝒮 Syn f family r n s t) :=
  P.extension.targetCoset

/-- The Blueprint target coset in the classical target ambient object. -/
def classicalTargetCoset (P : FinitePageExtension 𝒮 Syn f family r n s t) :
    Set (P.extension.T ⟶ ((AdamsSS 𝒮 Y).ssData (s + n, t + n)).V) :=
  { z | Subobject.Factors (P.classicalBoundary ⊔ P.shorterExtensionImages)
      (P.classicalTarget - z) }

/-- Essentiality is equivalent to zero being absent from the complete
classical target coset. -/
theorem essential_iff_zero_not_mem_classicalTargetCoset
    (P : FinitePageExtension 𝒮 Syn f family r n s t) :
    P.Essential ↔
      (0 : P.extension.T ⟶ ((AdamsSS 𝒮 Y).ssData (s + n, t + n)).V) ∉
        P.classicalTargetCoset := by
  change P.extension.Essential ↔ _
  rw [PageExtensionRelation.essential_iff_zero_not_mem_targetCoset]
  simp only [PageExtensionRelation.targetCoset, Set.mem_setOf_eq, sub_zero,
    classicalTargetCoset, PageExtensionRelation.scaledTarget]
  rw [P.ambiguity_compat P.classicalTarget, ← Category.assoc,
    P.target_transport]

end FinitePageExtension

namespace InfinitePageExtension

variable {𝒮 Syn} {X Y : 𝒮} {f : X ⟶ Y}
    {family : NormalizedPageESSFamily 𝒮 Syn f}
    {n s t : ℤ}

abbrev Essential (P : InfinitePageExtension 𝒮 Syn f family n s t) : Prop :=
  P.extension.Essential

def targetCoset (P : InfinitePageExtension 𝒮 Syn f family n s t) :=
  P.extension.targetCoset

def classicalTargetCoset (P : InfinitePageExtension 𝒮 Syn f family n s t) :
    Set (P.extension.T ⟶ ((AdamsSS 𝒮 Y).ssData (s + n, t + n)).V) :=
  { z | Subobject.Factors (P.classicalBoundary ⊔ P.shorterExtensionImages)
      (P.classicalTarget - z) }

theorem essential_iff_zero_not_mem_classicalTargetCoset
    (P : InfinitePageExtension 𝒮 Syn f family n s t) :
    P.Essential ↔
      (0 : P.extension.T ⟶ ((AdamsSS 𝒮 Y).ssData (s + n, t + n)).V) ∉
        P.classicalTargetCoset := by
  change P.extension.Essential ↔ _
  rw [PageExtensionRelation.essential_iff_zero_not_mem_targetCoset]
  simp only [PageExtensionRelation.targetCoset, Set.mem_setOf_eq, sub_zero,
    classicalTargetCoset, PageExtensionRelation.scaledTarget]
  rw [P.ambiguity_compat P.classicalTarget, ← Category.assoc,
    P.target_transport]

end InfinitePageExtension

/-! ### Crossings -/

/-- A crossing of a finite `(f,E_r)`-extension.  The crossing is itself an
actual essential extension on page `E_(r-a)` with length `n-a-b`; its target
therefore has the Blueprint bidegree `(s+n-b,t+n-b)`. -/
structure FinitePageExtension.Crossing {X Y : 𝒮} {f : X ⟶ Y}
    {family : NormalizedPageESSFamily 𝒮 Syn f}
    {r : ℕ} {n s t : ℤ}
    (P : FinitePageExtension 𝒮 Syn f family r n s t) where
  a : ℕ
  b : ℕ
  a_pos : 0 < a
  a_le : a ≤ r - 2
  b_le : (b : ℤ) ≤ n - a - eHat 𝒮 f
  crossing : FinitePageExtension 𝒮 Syn f family (r - a)
    (n - a - b) (s + a) (t + a)
  essential : crossing.Essential

/-- A crossing at `E∞` must be one actual essential untruncated extension;
unrelated finite-page candidates do not constitute an infinite crossing. -/
structure InfinitePageExtension.Crossing {X Y : 𝒮} {f : X ⟶ Y}
    {family : NormalizedPageESSFamily 𝒮 Syn f}
    {n s t : ℤ}
    (P : InfinitePageExtension 𝒮 Syn f family n s t) where
  a : ℕ
  b : ℕ
  a_pos : 0 < a
  a_le : (a : ℤ) ≤ n - eHat 𝒮 f
  b_le : (b : ℤ) ≤ n - a - eHat 𝒮 f
  crossing : InfinitePageExtension 𝒮 Syn f family
    (n - a - b) (s + a) (t + a)
  essential : crossing.Essential

/-- Existence of a finite page-extension crossing. -/
def FinitePageExtension.HasCrossing {X Y : 𝒮} {f : X ⟶ Y}
    {family : NormalizedPageESSFamily 𝒮 Syn f}
    {r : ℕ} {n s t : ℤ}
    (P : FinitePageExtension 𝒮 Syn f family r n s t) : Prop :=
  Nonempty P.Crossing

/-- Existence of an actual infinite page-extension crossing. -/
def InfinitePageExtension.HasCrossing {X Y : 𝒮} {f : X ⟶ Y}
    {family : NormalizedPageESSFamily 𝒮 Syn f}
    {n s t : ℤ}
    (P : InfinitePageExtension 𝒮 Syn f family n s t) : Prop :=
  Nonempty P.Crossing

def FinitePageExtension.NoCrossing {X Y : 𝒮} {f : X ⟶ Y}
    {family : NormalizedPageESSFamily 𝒮 Syn f}
    {r : ℕ} {n s t : ℤ}
    (P : FinitePageExtension 𝒮 Syn f family r n s t) : Prop :=
  ¬ P.HasCrossing

def InfinitePageExtension.NoCrossing {X Y : 𝒮} {f : X ⟶ Y}
    {family : NormalizedPageESSFamily 𝒮 Syn f}
    {n s t : ℤ}
    (P : InfinitePageExtension 𝒮 Syn f family n s t) : Prop :=
  ¬ P.HasCrossing

end

end KIPBase.Synthetic
