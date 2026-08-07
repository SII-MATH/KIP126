import KIP126.Core.SpectralSequence.Basic
import KIP126.Core.Algebra.Completion
import KIP126.External.Claims
import Mathlib.Algebra.Category.ModuleCat.Abelian
import Mathlib.Algebra.Field.ZMod

/-!
# The first classical Adams slice

This file keeps the generic spectral-sequence object at Mathlib's
`CategoryTheory.SpectralSequence`.  The additional structures are only the
small amount of typed Adams data needed by the first `d₂` regression.
-/

namespace KIP126.Classical.Adams

open CategoryTheory
open KIP126.External

abbrev Bidegree := ℤ × ℤ

/-- The AIM classical Adams differential degree. -/
def classicalAdamsShift (r : ℕ) : Bidegree := (r, (r : ℤ) - 1)

/-- The target bidegree of a page-`r` classical Adams differential. -/
def classicalAdamsTarget (r : ℕ) (b : Bidegree) : Bidegree :=
  b + classicalAdamsShift r

@[simp] theorem classicalAdamsShift_two :
    classicalAdamsShift 2 = (2, 1) := by
  norm_num [classicalAdamsShift]

@[simp] theorem classicalAdamsTarget_two (b : Bidegree) :
    classicalAdamsTarget 2 b = (b.1 + 2, b.2 + 1) := by
  apply Prod.ext <;> simp [classicalAdamsTarget, classicalAdamsShift]

/-- The pagewise complex shape used by the classical Adams sequence. -/
def classicalAdamsShape (r : ℤ) : ComplexShape Bidegree :=
  ComplexShape.up' (r, r - 1)

@[simp] theorem classicalAdamsShape_two_rel (b : Bidegree) :
    (classicalAdamsShape 2).Rel b (classicalAdamsTarget 2 b) := by
  simp [classicalAdamsShape, classicalAdamsTarget, classicalAdamsShift]

/-- A mod-2 classical Adams spectral sequence, with the differential shape
fixed to `(r,r-1)` and displayed from `E₂`. -/
abbrev ClassicalAdamsSpectralSequence :=
  CategoryTheory.SpectralSequence (ModuleCat (ZMod 2)) classicalAdamsShape 2

/-! ### Stable-homotopy and page interfaces -/

/-- The stable-homotopy operations used by the domain layer.  No homotopy
groups or multiplication are assumed here. -/
structure StableHomotopyContext where
  Spectrum : Type
  sphere : Spectrum
  smash : Spectrum → Spectrum → Spectrum

/-- Explicit convergence data for a chosen Adams sequence. The propositions
are witnesses supplied by a concrete construction, not global assumptions. -/
structure ClassicalAdamsConvergence (E : ClassicalAdamsSpectralSequence) where
  abutment : CategoryTheory.GradedObject Bidegree (ModuleCat (ZMod 2))
  filtration : KIP126.Core.Algebra.Filtration abutment
  filtrationDegree : Bidegree → ℤ
  comparisonPage : Bidegree → ℤ
  comparisonPage_ge_two : ∀ b, 2 ≤ comparisonPage b
  pageComparison : ∀ b,
    (E.page (comparisonPage b) (comparisonPage_ge_two b)).X b ≅
      filtration.associatedGraded (filtrationDegree b) b
  complete : ∀ b, KIP126.Core.Algebra.Filtration.CompletionWitness filtration b
  exhaustive : filtration.IsExhaustive
  eventuallyZero : filtration.IsEventuallyZero

/-- A chosen classical Adams sequence for one spectrum. -/
structure ClassicalAdamsSS (stable : StableHomotopyContext)
    (X : stable.Spectrum) where
  sequence : ClassicalAdamsSpectralSequence
  convergence : ClassicalAdamsConvergence sequence

namespace ClassicalAdamsSS

variable {stable : StableHomotopyContext} {X : stable.Spectrum}

/-- The first two displayed pages of a chosen Adams sequence. -/
def E₂ (A : ClassicalAdamsSS stable X) := A.sequence.page 2
def E₃ (A : ClassicalAdamsSS stable X) := A.sequence.page 3

/-- Mathlib's page-passage isomorphism for the `E₂ → E₃` slice. -/
def e₂ToE₃ (A : ClassicalAdamsSS stable X) (b : Bidegree) :
    (A.E₂).homology b ≅ (A.E₃).X b :=
  A.sequence.iso 2 3 b rfl (by norm_num)

/-- The actual page-2 differential component at the Adams target degree. -/
def d₂ (A : ClassicalAdamsSS stable X) (b : Bidegree) :
    (A.E₂).X b ⟶ (A.E₂).X (classicalAdamsTarget 2 b) :=
  (A.E₂).d b (classicalAdamsTarget 2 b)

theorem d₂_shape (_A : ClassicalAdamsSS stable X) (b : Bidegree) :
    (classicalAdamsShape 2).Rel b (classicalAdamsTarget 2 b) :=
  classicalAdamsShape_two_rel b

end ClassicalAdamsSS

/-- A named page-2 class, retaining its representative in the Mathlib page. -/
structure AdamsClass {stable : StableHomotopyContext} {X : stable.Spectrum}
    (A : ClassicalAdamsSS stable X) where
  name : String
  degree : Bidegree
  representative : (A.E₂).X degree

def transportRepresentative {stable : StableHomotopyContext}
    {X : stable.Spectrum} {A : ClassicalAdamsSS stable X}
    (x : AdamsClass A) {degree : Bidegree} (h : x.degree = degree) :
    (A.E₂).X degree :=
  (eqToHom (congrArg (fun b => (A.E₂).X b) h)).hom x.representative

/-! ### Sphere multiplication versus general external pairings -/

/-- Explicit internal product data for the sphere Adams page only. -/
structure SphereAdamsMultiplication {stable : StableHomotopyContext}
    (A : ClassicalAdamsSS stable stable.sphere) where
  product : AdamsClass A → AdamsClass A → AdamsClass A
  product_degree : ∀ x y, (product x y).degree = x.degree + y.degree

/-- The standard named sphere classes, supplied together with their page
representatives by the caller. -/
structure SphereAdamsPresentation {stable : StableHomotopyContext}
    (A : ClassicalAdamsSS stable stable.sphere) where
  h : ℕ → AdamsClass A
  h_degree : ∀ j, (h j).degree = (1, (2 : ℤ) ^ j)
  multiplication : SphereAdamsMultiplication A

def sphereProduct {stable : StableHomotopyContext}
    {A : ClassicalAdamsSS stable stable.sphere}
    (P : SphereAdamsPresentation A) (x y : AdamsClass A) : AdamsClass A :=
  P.multiplication.product x y

/-- An external page pairing for arbitrary spectra.  Its target is the chosen
smash spectrum, not either input, so it does not assert an internal product. -/
structure ExternalAdamsPairing {stable : StableHomotopyContext}
    {X Y : stable.Spectrum} (AX : ClassicalAdamsSS stable X)
    (AY : ClassicalAdamsSS stable Y)
    (AZ : ClassicalAdamsSS stable (stable.smash X Y)) where
  pair : AdamsClass AX → AdamsClass AY → AdamsClass AZ
  pair_degree : ∀ x y, (pair x y).degree = x.degree + y.degree

/-- The sphere page acts on the page of an arbitrary spectrum.  This is kept
separate from `SphereAdamsMultiplication`, so a general Adams sequence gains no
internal multiplication by mere parametrisation. -/
structure SphereAdamsModule {stable : StableHomotopyContext}
    {X : stable.Spectrum} (sphere : ClassicalAdamsSS stable stable.sphere)
    (target : ClassicalAdamsSS stable X) where
  action : AdamsClass sphere → AdamsClass target → AdamsClass target
  action_degree : ∀ x y, (action x y).degree = x.degree + y.degree

/-! ### The h₄ regression relation -/

/-- A page-2 differential relation whose map is the actual Mathlib page
differential component. -/
structure AdamsD₂Statement {stable : StableHomotopyContext}
    {X : stable.Spectrum} (A : ClassicalAdamsSS stable X) where
  source : AdamsClass A
  target : AdamsClass A
  target_degree : target.degree = classicalAdamsTarget 2 source.degree
  representative_relation :
    (A.d₂ source.degree).hom source.representative =
      transportRepresentative target
        (degree := classicalAdamsTarget 2 source.degree) target_degree

variable {stable : StableHomotopyContext}
  {A : ClassicalAdamsSS stable stable.sphere}

def h₄D₂ (P : SphereAdamsPresentation A) : Prop :=
  ∃ statement : AdamsD₂Statement A,
    statement.source = P.h 4 ∧
      statement.target = sphereProduct P (P.h 0)
        (sphereProduct P (P.h 3) (P.h 3))

end KIP126.Classical.Adams

namespace KIP126.Classical

/-- The source-backed one-line input used by this slice. Its h₄ instance is
the `j=4` specialization of the located classical one-line calculation. -/
def adamsOneLineDifferentials {stable : Adams.StableHomotopyContext}
    {A : Adams.ClassicalAdamsSS stable stable.sphere}
    (P : Adams.SphereAdamsPresentation A) : Prop :=
  Adams.h₄D₂ P

theorem adamsOneLineDifferentials_h₄ {stable : Adams.StableHomotopyContext}
    {A : Adams.ClassicalAdamsSS stable stable.sphere}
    (P : Adams.SphereAdamsPresentation A) :
    adamsOneLineDifferentials P ↔ Adams.h₄D₂ P := Iff.rfl

theorem adamsOneLineDifferentials_h₄_degrees
    {stable : Adams.StableHomotopyContext}
    {A : Adams.ClassicalAdamsSS stable stable.sphere}
    (P : Adams.SphereAdamsPresentation A)
    (proof : adamsOneLineDifferentials P) :
    ∃ statement : Adams.AdamsD₂Statement A,
      statement.source = P.h 4 ∧
        statement.target = Adams.sphereProduct P (P.h 0)
          (Adams.sphereProduct P (P.h 3) (P.h 3)) ∧
        statement.source.degree = (1, 16) ∧
        statement.target.degree = (3, 17) := by
  obtain ⟨statement, hSource, hTarget⟩ := proof
  refine ⟨statement, hSource, hTarget, ?_, ?_⟩
  · rw [hSource, P.h_degree]
    norm_num
  · rw [statement.target_degree, hSource, P.h_degree]
    norm_num [Adams.classicalAdamsTarget, Adams.classicalAdamsShift]

end KIP126.Classical

namespace KIP126.Classical.Adams

private def adamsOneLineResult {stable : StableHomotopyContext}
    {A : ClassicalAdamsSS stable stable.sphere}
    (P : SphereAdamsPresentation A)
    (proof : KIP126.Classical.adamsOneLineDifferentials P) :
  KIP126.External.ExternalResult (KIP126.Classical.adamsOneLineDifferentials P) :=
  { proof := proof
    ref := (KIP126.External.externalClaimLedger.lookup
      .adamsOneLine).ref }

def cataloguedAdamsOneLine (P : SphereAdamsPresentation A)
    (proof : KIP126.Classical.adamsOneLineDifferentials P) :
    KIP126.External.CataloguedExternalResult
      (KIP126.Classical.adamsOneLineDifferentials P) :=
  { root := .adamsOneLine
    value := adamsOneLineResult P proof
    ref_eq := by rfl
    class_supported := by trivial }

end KIP126.Classical.Adams
