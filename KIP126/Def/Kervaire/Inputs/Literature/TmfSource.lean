import KIP126.Def.Kervaire.Inputs.Literature.Tmf
import KIP126.Def.ClassicalAdams.TowerNaturality.Page.Data
import KIP126.Def.StableHomotopy.FiniteType.Predicates
import Mathlib.CategoryTheory.Monoidal.Mon

/-! Source data are chosen once. They contain actual spectra, unit maps,
classes and convergence data, not an uninterpreted `isTmf` predicate.
The BMQ results on these data and their identification with the route model
are separate records. No local route conclusion is assumed here. -/
namespace KIP126.Literature.Route
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Core.SpectralSequence
open KIP126.Synthetic.Context KIP126.Kervaire.Route
universe u v w
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}

/-- The ordinary sphere product is the actual shifted composite. -/
def classicalSphereProduct {m n : ℤ}
    (x : HomotopyGroup (C := C) m SphereSpectrum)
    (y : HomotopyGroup (C := C) n SphereSpectrum) :
    HomotopyGroup (C := C) (m+n) SphereSpectrum :=
  (shiftFunctorAdd C m n).hom.app SphereSpectrum ≫ (shiftFunctor C n).map x ≫ y

/-- The portion of the completed BMQ source model used by the proof. The
source existence theorem supplies these actual objects and maps together;
its interpretation is 2-completed connective tmf and its ring unit. The
completion/source identification is a separate model-construction theorem,
not an untyped `isTmf` field and not an arbitrary local-result assumption. -/
structure TmfSourceData (H : Mod2EilenbergMacLane (C := C)) where
  spectrum : C
  algebra : MonObj spectrum
  labels : TmfLabels H
  sphereConvergence : TowerDetection.Convergence H.unit SphereSpectrum
  convergence : TowerDetection.Convergence H.unit spectrum
  kappaBar : HomotopyGroup (C := C) 20 SphereSpectrum
  wClass : HomotopyGroup (C := C) 45 SphereSpectrum

def TmfSourceData.unit (S : TmfSourceData H) : SphereSpectrum ⟶ S.spectrum :=
  S.algebra.one

def TmfSourceData.high125 (S : TmfSourceData H) :
    HomotopyGroup (C := C) 125 SphereSpectrum :=
  classicalSphereProduct
    (classicalSphereProduct (classicalSphereProduct S.kappaBar S.kappaBar)
      (classicalSphereProduct S.kappaBar S.kappaBar)) S.wClass

/-- Explicit identities with the ONE route detector, its unit, its G labels
and its convergence. The page map is the map of the actual Adams tower,
so no unrelated linear equivalence is introduced. -/
structure TmfBinding (D : Model H M Syn) (G : TmfLabels H) (S : TmfSourceData H) where
  detectorIso : D.auxiliary.detector ≅ S.spectrum
  unit : D.auxiliary.detectorUnit ≫ detectorIso.hom = S.unit
  g : G.g = S.labels.g
  deltaH1g : G.deltaH1g = S.labels.deltaH1g
  sphereConvergence : D.classicalConvergence .sphere = S.sphereConvergence

/-- Intrinsic identities of the two source labels, without choosing an
arbitrary nonzero class or relying on its name. The classical E2 groups
(4,24) and (9,54) each have exactly one nonzero element. Source: IWX v3,
`cor:main-Adams`, and the cited 2022 Zenodo v1 classical E2 chart CSV,
rows 59 (`g`, stem 20, AF 4) and 275 (`D h1 g`, stem 45, AF 9).
The chart's `D` denotes Delta. These finite prior calculations make the
source labels unique even when the source result is supplied existentially. -/
def TmfLabels.Standard (G : TmfLabels H) : Prop :=
  G.g ≠ 0 ∧ (∀ x : E2 H SphereSpectrum 4 24, x ≠ 0 → x = G.g) ∧
  G.deltaH1g ≠ 0 ∧
    (∀ x : E2 H SphereSpectrum 9 54, x ≠ 0 → x = G.deltaH1g)

/-- BMQ v4 (2021), Figure 1.1, §2 and §7, after the explicitly separate
2-local-to-2-complete transport. In §7 the nonzero class is the image of
the actual product kappaBar^4*w. The stronger universal statement about
ALL classes detected by g^4 Delta h1 g is deliberately absent. -/
structure TmfSourceResults (S : TmfSourceData H) : Prop where
  /-- The source is connective tmf with degreewise finite mod-2 homology.
  These are the scope facts needed for BHS completion/convergence after
  transport; local values in stems 62/125 alone would not imply them. -/
  connective : ∀ n : ℤ, n < 0 → Subsingleton (HomotopyGroup n S.spectrum)
  finiteMod2Type : FiniteMod2Type H S.spectrum
  standard_labels : S.labels.Standard
  vanishing62 : ∀ x : HomotopyGroup (C := C) 62 S.spectrum, x = 0
  low_filtration63 : ∀ s : ℤ, s ≤ 0 → Subsingleton (E2 H S.spectrum s (63+s))
  kappaBar_detection : TowerDetection.Detects S.sphereConvergence (4,24)
    S.labels.g S.kappaBar
  w_detection : TowerDetection.Detects S.sphereConvergence (9,54)
    S.labels.deltaH1g S.wClass
  high125_nonzero : S.high125 ≫ S.unit ≠ 0

/-- Exact existence form of the accepted local BMQ/IWX source result in
an identified completed classical sphere model. It does not assert the
results for every detector, every label or every preselected route D.
A consumer supplies `TmfBinding` before applying the source result to D.
The standard-model source/2-completion adapter must construct this witness
from BMQ v4 and the finite IWX label computations; no global choice is
performed in this definition. -/
def TmfSourceExistence (H : Mod2EilenbergMacLane (C := C)) : Prop :=
  ∃ S : TmfSourceData H, TmfSourceResults S

/-- The classical multiplicative comparison required by the tmf adapter.
It relates the actual shifted homotopy product to the fixed cobar product;
it is a general comparison theorem to prove, not a BMQ result. -/
def ClassicalProductDetection (D : Model H M Syn) : Prop :=
  ∀ (s t s' t' : ℕ) (x : E2 H SphereSpectrum s t) (y : E2 H SphereSpectrum s' t')
    (a : HomotopyGroup (C := C) ((t : ℤ)-s) SphereSpectrum)
    (b : HomotopyGroup (C := C) ((t' : ℤ)-s') SphereSpectrum),
    TowerDetection.Detects (D.classicalConvergence .sphere) (s,t) x a →
    TowerDetection.Detects (D.classicalConvergence .sphere) (s',t') y b →
    TowerDetection.Detects (D.classicalConvergence .sphere) ((s+s' : ℕ),(t+t' : ℕ))
      (Sphere.Internal.product H M x y)
      (eqToHom (congrArg (fun n : ℤ => Sphere (C := C) n)
        (by simp only [Nat.cast_add]; omega : ((t+t' : ℕ) : ℤ)-(s+s') = ((t : ℤ)-s)+((t' : ℤ)-s'))) ≫ classicalSphereProduct a b)

/-- This is the CLASSICAL tail obligation used to remove the ambiguity of a
125-stem representative. It is a consequence of the C(M) E5-exhaustion,
Ravenel's vanishing line and the same tower's separated filtration. It is
not a tmf source theorem and says nothing about synthetic lambda torsion. -/
def ClassicalHigh125Tail (D : Model H M Syn) : Prop :=
  ∀ a : HomotopyGroup (C := C) 125 SphereSpectrum,
    a ∈ TowerDetection.filtrationSubmodule H.unit SphereSpectrum 26 125 → a = 0
end
end KIP126.Literature.Route
