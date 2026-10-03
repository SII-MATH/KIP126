import KIP126.Def.Comparison.StageInterfaces
import KIP126.Def.ClassicalAdams.Convergence.BHS.Predicates
import KIP126.Def.ClassicalAdams.SphereVanishing.Predicates
import KIP126.Def.StageInput.StandardSphere.Route.Data
import KIP126.Def.Synthetic.EInfty.Presentation.Predicates
import KIP126.LinProgram.Generated.Differentials.Table
import KIP126.LinProgram.Generated.Staircase.Table
import KIP126.LinProgram.Interpretation.State.Data
import KIP126.Def.SpectralSequence.Computation.State.Predicates
import KIP126.Def.StageInput.StandardSphere.Sequence.Data
import KIP126.Def.StageInput.StandardSphere.Classes.Data
import KIP126.Def.AdamsE2.LinClasses.Data
import KIP126.Def.AdamsE2.LinBasisTable.Predicates
import KIP126.Def.SpectralSequence.Computation.Predicates
import KIP126.Def.Comparison.ClassicalSynthetic.Data
import KIP126.Def.Comparison.ClassicalSynthetic.FirstQuotient.Data
import KIP126.Def.ClassicalAdams.SphereClasses.Hi.Internal.Data
import KIP126.Def.ClassicalAdams.SphereClasses.Products.Data
import KIP126.Def.ClassicalAdams.MilnorCohomology.Comparison.CycleMap.Data
import KIP126.Def.ClassicalAdams.MilnorCohomology.Multiplication.Data
import KIP126.Def.StageInput.Milnor
import KIP126.Def.Kervaire.Theta5.Predicates
import KIP126.Def.ClassicalAdams.PageRepresentatives.Predicates
import KIP126.Def.ClassicalAdams.PageRepresentatives.Quotient.Window.Data
import KIP126.Def.Synthetic.EInfty.Shift.Predicates
import KIP126.Def.Synthetic.PageExtension.Ambiguity.Predicates
import KIP126.Def.ClassicalAdams.PageRepresentatives.Quotient.Top.Data
import KIP126.Def.ClassicalAdams.PageRepresentatives.Quotient.Top.Equivalence.Data
import KIP126.Def.ClassicalAdams.Suspension.Predicates
import KIP126.Def.Synthetic.PageExtension.Crossing.Predicates
import KIP126.Def.Synthetic.PageExtension.Solutions.Data
import KIP126.Def.Synthetic.PageExtension.Solutions.Permanent.Data
import KIP126.Def.Synthetic.ExtensionSS.Square.Construction.Data
import KIP126.Def.ClassicalAdams.Moss.Statement.Predicates
import KIP126.Def.ClassicalAdams.Tmf.Model.Data
import KIP126.Def.ClassicalAdams.Tmf.Model.Predicates
import KIP126.Def.ClassicalAdams.SphereMultiplication.Data
import KIP126.Def.Steenrod.MilnorExt.Resolution.Data
import KIP126.Def.Synthetic.Bockstein.Hom.Data
import KIP126.Def.Synthetic.QuotientFunctor.Data
import KIP126.Def.ClassicalAdams.Convergence.Tower.Predicates
import KIP126.Def.ClassicalAdams.Completion.Predicates
import KIP126.LinProgram.Interpretation.Branch.Predicates

import KIP126.Def.Kervaire.Route.Extensions.Data
import KIP126.Def.Kervaire.Route.Hopf.Data
import KIP126.Def.Kervaire.Route.Conditions.Predicates
import KIP126.Def.Kervaire.Route.Massey.Predicates
import KIP126.Def.Kervaire.Route.Toda.Predicates
import KIP126.Def.Synthetic.Computation.Predicates
import KIP126.Def.Challenge1
import KIP126.Def.Kervaire.Route.Labels.Tmf.Data
import Mathlib.CategoryTheory.Adjunction.Additive
import KIP126.Def.Kervaire.Route.Multiplication.Comparison
import KIP126.Def.ClassicalAdams.TowerNaturality.Page.Data
import KIP126.Def.StableHomotopy.FiniteType.Predicates
import Mathlib.CategoryTheory.Monoidal.Mon
import KIP126.Def.Kervaire.Route.Triangles.Predicates
import KIP126.Def.Comparison.ClassicalSynthetic.RealizationWeights.Data
import KIP126.Def.Comparison.ClassicalSynthetic.RealizationTower.Route.Data
import KIP126.LinProgram.Interpretation.Route.Predicates
import KIP126.Def.Kervaire.Route.SourceLanguage
import KIP126.Def.Comparison.StageInterfaces.Models
import KIP126.Def.StageInput.StandardSphere.Classes.Family

/-! Challenge 2: source-result and finite-computation delivery contracts.

All mathematical operations and generic comparison language are defined in
Def. This file assembles accepted source conclusions, the exact applications
of those sources, and the finite C(M) certification obligations on that same
model. It chooses no new model and does not prove the paper's new tools.
Source locators and outstanding production obligations are maintained in
`docs/STAGE0_INTERFACES.md` and `Interface/Challenge/sources.json`.
-/

namespace KIP126.Literature.Route
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Core.SpectralSequence
open KIP126.Synthetic.Context KIP126.Kervaire.Route
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H} (D : Model H M Syn)

/-- The finite set of classical inputs consumed by the selected §7 route.
No h₆² differential or survival conclusion is a field. -/
structure ClassicalInputs (η : BiHom 1 2 (S_0_0 : Syn)) : Prop where
  theta5_exists : Theta5Existence D
  stem62_exponent_two : Stem62ExponentTwo (C := C)
  theta5_filtration_gap : Theta5FiltrationGap D
  two_detection : TwoDetection D
  hopf : HopfInput D η
end KIP126.Literature.Route


namespace KIP126.Literature.Route
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Core.SpectralSequence
open KIP126.Synthetic.Context KIP126.Synthetic.SpectralSequence
open KIP126.Kervaire.Route
universe u v w
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H} (D : Model H M Syn)

/-- BHS A.9/A.11 with the compatible E∞ formulas on the SAME family.
All label, λ and ρ compatibility is part of the supplied source application.
No unrelated E∞ equivalences may be inserted as substitutes. -/
structure EInftyInput where
  presentation : KIP126.Literature.Route.EInftyFormulaInput D
  weightShift : EInftyWeightShift D.family
  maps : KIP126.Literature.Route.EInftyCompatibilityInput D presentation weightShift
  labels : KIP126.Literature.Route.EInftyLabelAgreement D presentation

/-- External BHS inputs excluding the internal full-to-selected-model kernel transport. -/
structure SyntheticSourceInputs where
  lifts : KIP126.Literature.Route.SyntheticLiftInput D
  finite_lift : FiniteLiftCriterion D
  bockstein : BocksteinDifferential D
  /-- BHS A.1(2), retaining the source object's actual convergence conditions. -/
  permanent_lift : ∀ (X : C) (products : CategoryTheory.Limits.HasProductsOfShape ℕ C),
    BHSObjectApplicability products H.unit X → BHSPermanentLiftAt D X
  differentials : DifferentialRigidity D
  eInfty : EInftyInput D
  /-- BHS cor:tau-surj, before transporting back from completed objects. -/
  filtration_lambda : ∀ (X : C) (products : CategoryTheory.Limits.HasProductsOfShape ℕ C),
    BHSObjectApplicability products H.unit X → BHSFiltrationLambdaAt D X
  e2_weight_vanishing : E2WeightVanishing D
  /-- BHS A.11 (1),(3): both zero regions on every finite page, including E2. -/
  finite_quotient_page_vanishing : FiniteQuotientPageVanishing D

structure SyntheticInputs where
  lifts : KIP126.Literature.Route.SyntheticLiftInput D
  finite_lift : FiniteLiftCriterion D
  bockstein : BocksteinDifferential D
  permanent_lift : PermanentLiftCriterion D
  differentials : DifferentialRigidity D
  eInfty : EInftyInput D
  realization_kernel : RealizationKernel D
  filtration_lambda : FiltrationLambda D
  e2_weight_vanishing : E2WeightVanishing D
  finite_quotient_page_vanishing : FiniteQuotientPageVanishing D

/-- Pure assembly; source-to-model localization is supplied separately. -/
def SyntheticSourceInputs.toInputs (S : SyntheticSourceInputs D)
    (Q : BHSCompletionData D) (hQ : BHSCompletionApplicability D Q)
    (B : BHSCompletionComparison D Q)
    (kernel : RealizationKernel D) : SyntheticInputs D where
  lifts := S.lifts
  finite_lift := S.finite_lift
  bockstein := S.bockstein
  permanent_lift := by
    intro X s t x
    exact (B.permanent_cycles X s t x).trans
      ((S.permanent_lift (Q.completed X) Q.products (hQ.source X) s t
        (adamsInternalE2Induced H.unit (Q.map X) (s,t) x)).trans
        (B.first_quotient_image X s t x))
  differentials := S.differentials
  eInfty := S.eInfty
  realization_kernel := kernel
  filtration_lambda := by
    intro X m w s h a
    exact (B.filtration X m w s a).trans
      ((S.filtration_lambda (Q.completed X) Q.products (hQ.source X) m w s h
        (a ≫ D.nu.functor.map (Q.map X))).trans
        (B.lambda_divisibility X m w s h a))
  e2_weight_vanishing := S.e2_weight_vanishing
  finite_quotient_page_vanishing := S.finite_quotient_page_vanishing
end
end KIP126.Literature.Route


/-! Exact classical source existence on one actual sphere background.
No arbitrary route, synthetic category, normalized lift or detector occurs
in the accepted source theorem. Identification with selected route maps is
an independently supplied model comparison. -/
namespace KIP126.Literature.Route
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Core.SpectralSequence
open KIP126.Synthetic.Context KIP126.Kervaire.Route
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}

/-- Xu Cor.1.3, the IWX 62-stem computation and the ordinary low-stem
Hopf detections, with one actual convergence and concrete homotopy maps.
No synthetic or arbitrary-choice strengthening is included. -/
structure ClassicalSourceResults (M : MilnorCooperations H) (S : ClassicalSourceData H) : Prop where
  h5Square_permanent : NonzeroSurvival
    (adamsTowerInternalSpectralSequence H.unit SphereSpectrum) (2,64)
      (Sphere.Internal.hiSquare H M 5)
  theta5_detection : TowerDetection.Detects S.convergence (2,64)
    (Sphere.Internal.hiSquare H M 5) S.theta5
  theta5_order_two : S.theta5 + S.theta5 = 0
  stem62_exponent_two : ∀ a : HomotopyGroup (C := C) 62 SphereSpectrum, a+a=0
  theta5_filtration_gap : ∀ a b : HomotopyGroup (C := C) 62 SphereSpectrum,
    TowerDetection.Detects S.convergence (2,64) (Sphere.Internal.hiSquare H M 5) a →
    TowerDetection.Detects S.convergence (2,64) (Sphere.Internal.hiSquare H M 5) b →
    a-b ∈ TowerDetection.filtrationSubmodule H.unit SphereSpectrum 6 62
  two_detection : TowerDetection.Detects S.convergence (1,1) (Sphere.Internal.hi H M 0)
    ((shiftFunctorZero C ℤ).hom.app SphereSpectrum ≫ (2 • 𝟙 _))
  eta_detection : TowerDetection.Detects S.convergence (1,2) (Sphere.Internal.hi H M 1) S.eta
  nu_detection : TowerDetection.Detects S.convergence (1,4) (Sphere.Internal.hi H M 2) S.nu
  eta_permanent : NonzeroSurvival
    (adamsTowerInternalSpectralSequence H.unit SphereSpectrum) (1,2) (Sphere.Internal.hi H M 1)
  nu_permanent : NonzeroSurvival
    (adamsTowerInternalSpectralSequence H.unit SphereSpectrum) (1,4) (Sphere.Internal.hi H M 2)

def ClassicalSourceExistence (H : Mod2EilenbergMacLane (C := C))
    (M : MilnorCooperations H) : Prop :=
  ∃ S : ClassicalSourceData H, ClassicalSourceResults M S

variable {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]

/-- Ordinary transport along the displayed source equalities. The sole
synthetic premise is supplied separately, so the classical source theorem
does not assert it or normalized-map compatibility. -/
def classicalInputsOfSource (D : Model H M Syn) (η : BiHom 1 2 (S_0_0 : Syn))
    (S : ClassicalSourceData H) (hS : ClassicalSourceResults M S)
    (B : ClassicalSourceBinding D η S) (hη : EtaChoice M D.toModelData η) :
    ClassicalInputs D η where
  theta5_exists := ⟨hS.h5Square_permanent, S.theta5,
    by simpa [ClassicalTheta, B.convergence, ClassicalObject.obj] using hS.theta5_detection,
    hS.theta5_order_two⟩
  stem62_exponent_two := hS.stem62_exponent_two
  theta5_filtration_gap := by
    intro a b ha hb
    exact hS.theta5_filtration_gap a b
      (by simpa [ClassicalTheta, B.convergence, ClassicalObject.obj] using ha)
      (by simpa [ClassicalTheta, B.convergence, ClassicalObject.obj] using hb)
  two_detection := by simpa [TwoDetection, B.convergence, ClassicalObject.obj] using hS.two_detection
  hopf := by
    refine ⟨hη, ?_, hS.eta_permanent, hS.nu_permanent⟩
    refine ⟨?_, ?_, B.normalized_eta⟩
    · simpa [B.convergence, B.eta, ClassicalObject.obj] using hS.eta_detection
    · simpa [B.convergence, B.nu, ClassicalObject.obj] using hS.nu_detection
end KIP126.Literature.Route


namespace KIP126.Literature.Route
open CategoryTheory CategoryTheory.MonoidalCategory KIP126.StableHomotopy
open KIP126.Synthetic.Context
universe u v
variable (Syn : Type u) [SyntheticCategory.{u, v} Syn]

/-- May's source result, on specified tensor suspension conventions. The
existence of this source input on the selected synthetic model remains a
production obligation; no fresh model or global witness is selected here. -/
def MaySourceResults (B : MayContext Syn) : Prop :=
  ∀ T U : HoCofiberSequence (C := Syn), Nonempty (MayPushpullData Syn B T U)

/-- Applied May input, retaining the source sign and the fixed conventions.
Consumers may remove the sign only after proving the required exponent-two
condition. Mod-two E₂ coordinates alone do not prove such a condition on
homotopy groups. -/
structure MayInput extends MayContext Syn where
  boundary : toMayContext.SignedBoundary
end KIP126.Literature.Route


/-! Low-dimensional and symmetric Toda inputs. The synthetic versions
are source-transport obligations, not verbatim classical formulas: λ²η,
rather than η, has bidegree (1,0). See the source/application distinction
in `docs/STAGE0_INTERFACES.md`. No high-stem indeterminacy is discarded. -/
namespace KIP126.Literature.Route
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Synthetic.Context KIP126.Kervaire.Route
universe u v w
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H} (D : Model H M Syn)

/-- Applied consumer package. Its BHS low-ring fields and INTERNAL secondary
operation comparison are delivered separately by `TodaSourceResults` and
`TodaApplication`. Toda 1962, Theorem 3.6 and IWX §6 motivate the latter;
IWX `cor:2-symmetric` is C-motivic and is NOT directly a synthetic theorem. The final field asserts only membership;
LWX's high-degree ZERO INDETERMINACY check remains a paper/C(M) task. -/
structure TodaInputs (η : BiHom 1 2 (S_0_0 : Syn)) where
  h0 : BiHom 0 1 (S_0_0 : Syn)
  h0_label : D.sphereFirstQuotient 1 1 (quotientClass 1 h0) = Sphere.Internal.hi H M 0
  lambda_h0 : lambdaMultiply 1 h0 = syntheticTwo
  h0_eta : sphereProduct h0 η = 0
  /-- η² belongs to <[h₀],η,[h₀]>. We do not replace a Toda set by
  a selected value; the low indeterminacy vanishing is a separate field. -/
  eta_squared : TripleToda h0 η h0
    (sphereProduct (m := 1) (n := 2) (k := 1) (l := 2) η η)
  /-- Consequence of the BHS low-stem ring: [h₀]·π_(2,3)=0.
  Together with graded commutativity it kills both indeterminacy summands
  of the preceding LOW bracket, not those of <2,θ₅,2>. -/
  low_indeterminacy : ∀ a : BiHom 2 3 (S_0_0 : Syn), sphereProduct h0 a = 0
  /-- Symmetric Toda identity at the only other degree used by this route.
  No claim that the bracket is a singleton or that θ is order two is made. -/
  symmetric_two : ∀ θ : BiHom 62 64 (S_0_0 : Syn), θ + θ = 0 →
    TripleToda syntheticTwo θ syntheticTwo (lambdaMultiply 2 (sphereProduct η θ))

/-- BHS `prop:syn-toda-range`, low-ring/label consequences on the selected
sphere. These equations do not prove a secondary Toda membership. -/
structure TodaSourceResults (η : BiHom 1 2 (S_0_0 : Syn))
    (S : TodaSourceData (Syn := Syn)) : Prop where
  h0_label : D.sphereFirstQuotient 1 1 (quotientClass 1 S.h0) = Sphere.Internal.hi H M 0
  lambda_h0 : lambdaMultiply 1 S.h0 = syntheticTwo
  h0_eta : sphereProduct S.h0 η = 0
  low_indeterminacy : ∀ a : BiHom 2 3 (S_0_0 : Syn), sphereProduct S.h0 a = 0

/-- Internal source-to-model application: actual secondary Toda relations on
the same sphere and chosen h₀,η. No high-degree indeterminacy is removed. -/
structure TodaApplication (η : BiHom 1 2 (S_0_0 : Syn))
    (S : TodaSourceData (Syn := Syn)) : Prop where
  eta_squared : TripleToda S.h0 η S.h0
    (sphereProduct (m := 1) (n := 2) (k := 1) (l := 2) η η)
  symmetric_two : ∀ θ : BiHom 62 64 (S_0_0 : Syn), θ + θ = 0 →
    TripleToda syntheticTwo θ syntheticTwo (lambdaMultiply 2 (sphereProduct η θ))

/-- Assemble the unchanged consumer API from source ring facts and separately
certified secondary operations. This introduces no choice or axiom. -/
def todaInputsOfSource (η : BiHom 1 2 (S_0_0 : Syn)) (S : TodaSourceData (Syn := Syn))
    (A : TodaSourceResults D η S) (P : TodaApplication η S) : TodaInputs D η where
  h0 := S.h0
  h0_label := A.h0_label
  lambda_h0 := A.lambda_h0
  h0_eta := A.h0_eta
  eta_squared := P.eta_squared
  low_indeterminacy := A.low_indeterminacy
  symmetric_two := P.symmetric_two

end
end KIP126.Literature.Route


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

variable (D : Model H M Syn) (L : TmfLabels H)

/-- Applied tmf facts used by Main, including the INTERNAL leading-grade
survival deduction. This package is not a Challenge2 field or part of A(M).
Main derives it from the source results, comparisons and finite C(M), with
the explicit vanishing/separation premises. -/
structure TmfInputs : Prop where
  theta5_vanishes : TmfTheta5Vanishing D
  high125_detected : TmfHigh125Detection D L
  low_filtration_63 : TmfLowFiltration63 D
end
end KIP126.Literature.Route


namespace KIP126.Literature.Route
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Core.SpectralSequence
open KIP126.Synthetic.Context KIP126.Synthetic.SpectralSequence KIP126.Kervaire.Route
universe u v w
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H} (D : Model H M Syn)

/-- BHS A.1(2b),(3b). The same standard E₂ label detects the realized
class, and every specified detected class has an appropriate lift.
Neither clause replaces an arbitrary E₂ class by a later-page element. -/
structure RealizationDetection (R : RealizationCoordinates D) : Prop where
  /-- BHS A.1(2a): nonzero survival to E_(r+1) controls the lifetime
  of EVERY lift of a permanent cycle. The exponent is r-1, not r. -/
  lifetime : ∀ (X : ClassicalObject) (s t : ℤ) (r : ℕ), 1 ≤ r →
    ∀ (x : E2 H (X.obj D.auxiliary) s t) (a : BiHom (t-s) t (nuZero D X)),
    x ∈ PageRepresentatives.permanentCycles H (X.obj D.auxiliary) (s,t) →
    SurvivesTo (adamsTowerInternalSpectralSequence H.unit (X.obj D.auxiliary))
      (r+1) (s,t) x → quotientClass 1 a = firstLabel D X s t x →
    lambdaMultiply (r-1) a ≠ 0
  detection : ∀ (X : ClassicalObject) (s t : ℤ)
    (x : E2 H (X.obj D.auxiliary) s t) (a : BiHom (t-s) t (nuZero D X)),
    NonzeroSurvival (adamsTowerInternalSpectralSequence H.unit (X.obj D.auxiliary))
      (s,t) x → quotientClass 1 a = firstLabel D X s t x →
    TowerDetection.Detects (D.classicalConvergence X) (s,t) x (realizeNuZero D R X a)
  prescribed_lift : ∀ (X : ClassicalObject) (s t : ℤ)
    (x : E2 H (X.obj D.auxiliary) s t) (α : HomotopyGroup (t-s) (X.obj D.auxiliary)),
    NonzeroSurvival (adamsTowerInternalSpectralSequence H.unit (X.obj D.auxiliary))
      (s,t) x → TowerDetection.Detects (D.classicalConvergence X) (s,t) x α →
    ∃ a : BiHom (t-s) t (nuZero D X),
      quotientClass 1 a = firstLabel D X s t x ∧ realizeNuZero D R X a = α
  /-- BHS A.1(3a): only SOME lift of a permanent boundary is torsion.
  It would be wrong to demand this of every lift. -/
  boundary_lift : ∀ (X : ClassicalObject) (s t : ℤ) (r : ℕ), 2 ≤ r →
    ∀ (y : E2 H (X.obj D.auxiliary) s t),
    y ∈ PageRepresentatives.permanentCycles H (X.obj D.auxiliary) (s,t) →
    HitOnPage (adamsTowerInternalSpectralSequence H.unit (X.obj D.auxiliary)) r (s,t) y →
    ∃ a : BiHom (t-s) t (nuZero D X),
      quotientClass 1 a = firstLabel D X s t y ∧ lambdaMultiply (r-1) a = 0

/-- BHS A.1(2a),(2b),(3a),(3b) on ONE source object and its canonical
classical convergence. Applicability is retained in BHSRealizationSourceResults. -/
structure BHSRealizationDetectionAt (R : RealizationCoordinates D) (X : C)
    (convergence : TowerDetection.Convergence H.unit X) : Prop where
  /-- BHS A.1(2a): nonzero survival to E_(r+1) controls the lifetime
  of EVERY lift of a permanent cycle. The exponent is r-1, not r. -/
  lifetime : ∀ (s t : ℤ) (r : ℕ), 1 ≤ r →
    ∀ (x : E2 H X s t) (a : BiHom (t-s) t ((SyntheticCategory.biShift (0,0)).obj (D.nu.functor.obj X))),
    x ∈ PageRepresentatives.permanentCycles H X (s,t) →
    SurvivesTo (adamsTowerInternalSpectralSequence H.unit X)
      (r+1) (s,t) x → quotientClass 1 a = bhsFirstLabel D X s t x →
    lambdaMultiply (r-1) a ≠ 0
  detection : ∀ (s t : ℤ)
    (x : E2 H X s t) (a : BiHom (t-s) t ((SyntheticCategory.biShift (0,0)).obj (D.nu.functor.obj X))),
    NonzeroSurvival (adamsTowerInternalSpectralSequence H.unit X)
      (s,t) x → quotientClass 1 a = bhsFirstLabel D X s t x →
    TowerDetection.Detects convergence (s,t) x (realizeNuZeroObject D R X a)
  prescribed_lift : ∀ (s t : ℤ)
    (x : E2 H X s t) (α : HomotopyGroup (t-s) X),
    NonzeroSurvival (adamsTowerInternalSpectralSequence H.unit X)
      (s,t) x → TowerDetection.Detects convergence (s,t) x α →
    ∃ a : BiHom (t-s) t ((SyntheticCategory.biShift (0,0)).obj (D.nu.functor.obj X)),
      quotientClass 1 a = bhsFirstLabel D X s t x ∧ realizeNuZeroObject D R X a = α
  /-- BHS A.1(3a): only SOME lift of a permanent boundary is torsion.
  It would be wrong to demand this of every lift. -/
  boundary_lift : ∀ (s t : ℤ) (r : ℕ), 2 ≤ r →
    ∀ (y : E2 H X s t),
    y ∈ PageRepresentatives.permanentCycles H X (s,t) →
    HitOnPage (adamsTowerInternalSpectralSequence H.unit X) r (s,t) y →
    ∃ a : BiHom (t-s) t ((SyntheticCategory.biShift (0,0)).obj (D.nu.functor.obj X)),
      quotientClass 1 a = bhsFirstLabel D X s t y ∧ lambdaMultiply (r-1) a = 0

/-- The completed-source BHS theorem. No assertion is made here for an
uncompleted selected X; the actual source hypotheses must be supplied. -/
def BHSRealizationSourceResults (R : RealizationCoordinates D) : Prop :=
  ∀ (X : C) (products : CategoryTheory.Limits.HasProductsOfShape ℕ C),
    BHSObjectApplicability products H.unit X →
    ∀ convergence : TowerDetection.Convergence H.unit X,
      BHSRealizationDetectionAt D R X convergence

/-- The comparison data and laws travel together in A(M). -/
structure RealizationInput where
  coordinates : RealizationCoordinates D
  detection : RealizationDetection D coordinates
end
end KIP126.Literature.Route


/-! Full-category localization and its scoped application to the route.

Pstrągowski's `prop:tau_inversion_functor_exists` constructs localization as
an actual telescope in full synthetic spectra. Its compact spheres (the remark
`rem:synthetic_spectra_compactly_generated_by_suspensions_of_synthetic_analogues_of_finite_projectives`)
give the finite-power kernel criterion. The source reflection is kept in its
full category; it is not assumed to recover the same classical category as
the selected complete model. Hypercompletion is a different step:
§4.5 identifies the complete objects and their inclusion. The data below must
come from that construction (or an equivalent comparison); an abstract
`SyntheticCategory` alone does not establish any of these facts.
-/
namespace KIP126.Literature.Route
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Synthetic.Context KIP126.Kervaire.Route
universe u v w
noncomputable section
variable (Syn : Type w) [SyntheticCategory.{w, v} Syn]

variable {Syn}

variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H} (D : Model H M Syn)

/-- Consequence of full-category telescope localization and compact source
spheres, restricted to the INCLUDED route objects. It is supplied as a source
result, never inferred from compactness of the completed sphere. -/
def RealizationKernelSourceResults (S : RealizationKernelSourceData Syn) : Prop :=
  ∀ (X : SyntheticObject) (m w : ℤ)
    (a : BiHom m w (S.inclusion.obj (X.obj D.nu D.auxiliary))),
    (S.localization.endofunctor.map a = 0 ↔ ∃ k : ℕ, lambdaMultiply k a = 0)

end
end KIP126.Literature.Route


/-! The ordinary homotopy-category consequences of the external symmetric
monoidal and λ-quotient algebra theorems. A commutative monoid object here
is NOT advertised as a construction of an E∞ algebra. These explicit
consequences are exactly the algebraic operations the selected route uses. -/
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
    S.labels.delta_h_1_mul_g S.wClass
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

end
end KIP126.Literature.Route


namespace KIP126.Literature.Route
open CategoryTheory
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology KIP126.Classical.Adams
open KIP126.Synthetic.Context KIP126.Kervaire.Route
open KIP126.Literature.Route
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H} (D : Model H M Syn)

/-- The local Moss source statement on the CLASSICAL sphere resolution.
It has no synthetic-model parameter. A source acceptance must identify the
displayed convergence with the comparison from that actual multiplicative
Adams resolution; an arbitrary associated-graded isomorphism does not
establish applicability. All defining-system, crossing and residual
hypotheses are retained. This definition does not assert the statement. -/
def MossSourceInput (M : MilnorCooperations H)
    (convergence : TowerDetection.Convergence H.unit SphereSpectrum) : Prop :=
  ∀ (B : E2 H SphereSpectrum 8 70)
    (θ β : HomotopyGroup (C := C) 62 SphereSpectrum)
    (two : HomotopyGroup (C := C) 0 SphereSpectrum),
    two = (shiftFunctorZero C ℤ).hom.app SphereSpectrum ≫ (2 • 𝟙 _) →
    TowerDetection.Detects convergence (2,64) (Sphere.Internal.hiSquare H M 5) θ →
    TowerDetection.Detects convergence (1,1) (Sphere.Internal.hi H M 0) two →
    TowerDetection.Detects convergence (8,70) B β →
    θ + θ = 0 → β + β = 0 →
    (ThetaBMassey M B).Nonempty →
    ¬ SphereMossCrossing (H := H) 3 (3,65) →
    ¬ SphereMossCrossing (H := H) 3 (9,71) →
    TowerDetection.ResidualInjectivity H.unit (SphereSpectrum (C := C)) →
    ∃ (z : E2 H SphereSpectrum 9 134)
      (ξ : HomotopyGroup (C := C) 125 SphereSpectrum),
      ThetaBMasseyDefiningSystem M B z ∧
      TowerDetection.Detects convergence (9,134) z ξ ∧ ThetaBToda θ β ξ

end KIP126.Literature.Route


/-! Model multiplication comparisons. These are structural realization
obligations, kept separate from the statement that the source quotient
algebras exist. No specified local multiplication value is a field. -/
namespace KIP126.Literature.Route
open CategoryTheory CategoryTheory.Pretriangulated KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Synthetic.Context KIP126.Kervaire.Route
universe u v w
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H} (D : Model H M Syn)

/-- These are model applicability obligations, recorded separately from
the source statements. They neither assert no-crossing computations nor
the ν-extension constructed in LWX Lemma 7.19. -/
structure Applicability : Prop where
  moss : MossTowerApplicability (H := H)
  nuCofiber : NuCofiberApplicability D
/-- Internal construction target for a compatible triple, with cofiber
maps and the h2 label. Pstragowski Lemma 4.23 and BHS Lemma 9.15 supply
the separate exactness and divisibility leaves; neither is quoted as
the full compatible-three-lifts-and-label statement below. The assembly
must also use actual Hopf detection and the first-quotient comparison.
This asserts nothing about arbitrary selected lifts. -/
structure NuCofiberSourceResults (S : NuCofiberSourceData D) : Prop where
  nu_exponent : normalizedExponent H D.auxiliary.nuMap = 1
  bottom_exponent : normalizedExponent H D.auxiliary.nuRouteTriangle.g = 0
  top_exponent : normalizedExponent H D.auxiliary.nuRouteTriangle.h = 0
  normalized_label :
    D.sphereFirstQuotient 1 4 (quotientClass 1 (sourceNormalizedNu D S nu_exponent)) =
      Sphere.Internal.hi H M 2
  triangle : ∀ he, sourceNormalizedTriangle D S he ∈ distTriang Syn

/-- Internal model-adaptation target for the identified nu background.
It is not a permissible replacement for the separate Pstragowski/BHS
source leaves in Main/Axiom. Its construction and the subsequent binding
of D's normalized maps remain separate proof responsibilities. -/
def NuCofiberSourceExistence : Prop :=
  ∃ S : NuCofiberSourceData D, NuCofiberSourceResults D S

end
end KIP126.Literature.Route


/-!
# A(M) for the frozen Section 7 route

All fields constrain the SAME `D : Kervaire.Route.Model H M Syn`.
They are explicit external assumptions / source-transport witnesses.
Declaring their types neither proves them nor constructs a witness.

Here the parameter `M : MilnorCooperations H` is an older API name;
the mathematical M of the project is the entire context together with D.
No field supplies C(M), C₃/C₄/C₅, either Proposition 7.8/7.9, generalized
Leibniz/Mahowald, or T(M). No default instance or global axiom is installed.

The closed statement inventory and exact source/application qualifications
are in `docs/STAGE0_INTERFACES.md` and the adjacent `sources.json`.
-/
namespace KIP126.Literature.Route
open CategoryTheory
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology KIP126.Classical.Adams
open KIP126.Synthetic.Context KIP126.Kervaire.Route
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}
  (D : Model H M Syn) (η : BiHom 1 2 (S_0_0 : Syn)) (L : TmfLabels H)

/-- Applied consumer facts, specialized to one model and η. This package
includes internal Main deductions and is not itself the external A(M).
The same tmf labels are used for the high class and its C(M) comparison.
`applicability` records source-to-model obligations separately so that a
source existence theorem cannot validate unrelated chosen lifts. -/
structure Inputs where
  classical : ClassicalInputs D η
  bx : BXDistinguishedInput D η
  synthetic : SyntheticInputs D
  realization : RealizationInput D
  algebra : AlgebraInput D
  may : MayInput Syn
  toda : TodaInputs D η
  tmf : TmfInputs D L
  moss : MossInput D
  applicability : Applicability D

/-- Source choices and model comparisons for ONE delivered route. These
are internal construction obligations, separate from the source results. -/
structure Bindings where
  realization : RealizationCoordinates D
  algebra : AlgebraData D
  quotientBinding : QuotientAlgebraBinding D algebra
  algebraBinding : AlgebraBinding D algebra
  may : MayContext Syn
  todaSource : TodaSourceData (Syn := Syn)
  kernelSource : RealizationKernelSourceData Syn
  kernelBinding : RealizationKernelBinding D kernelSource
  classicalSource : ClassicalSourceData H
  classicalBinding : ClassicalSourceBinding D η classicalSource
  synthetic_eta : EtaChoice M D.toModelData η
  tmfSource : TmfSourceData H
  tmfBinding : TmfBinding D L tmfSource
  bhsCompletion : BHSCompletionData D
  /-- The completion source for the detector is the SAME completed tmf,
  and its comparison carries the SAME actual ring unit. -/
  bhsDetectorIso : bhsCompletion.completed .detector ≅ tmfSource.spectrum
  bhsDetectorUnit : D.auxiliary.detectorUnit ≫ bhsCompletion.map .detector ≫
    bhsDetectorIso.hom = tmfSource.unit
  nuSource : NuCofiberSourceData D
  nuBinding : NuCofiberLiftBinding D nuSource
  moss : MossTowerApplicability (H := H)
  realizationAdditive : D.recovery.realization.Additive
  weights : KIP126.Comparison.ClassicalSynthetic.RealizationWeightComparison D.nu D.recovery
  nuE2 :
    letI := algebra.classicalSymmetric
    letI := algebra.syntheticSymmetric
    letI := algebra.realizationMonoidal.realization
    letI := realizationAdditive
    KIP126.Comparison.ClassicalSynthetic.RealizationTower.NuE2Binding D
      (fun X a w => KIP126.Comparison.ClassicalSynthetic.RealizationWeightComparison.doubleShift
        D.nu D.recovery weights (X.obj D.auxiliary) a (-w))

/-- External results on the source objects fixed in B. Classical and tmf
results are not asserted for arbitrary preselected route objects or lifts. -/
structure Statements (B : Bindings D η L) where
  classical : ClassicalSourceResults M B.classicalSource
  bx : BXDistinguishedInput D η
  synthetic : SyntheticSourceInputs D
  realizationKernel : RealizationKernelSourceResults D B.kernelSource
  realization : BHSRealizationSourceResults D B.realization
  may : MaySourceResults Syn B.may
  toda : TodaSourceResults D η B.todaSource
  tmf : TmfSourceResults B.tmfSource
  moss : MossSourceInput M B.classicalSource.convergence

/-- Interface's INTERNAL source-application delivery, separate from A(M).
May retains its sign; Toda uses actual secondary-operation evidence; the
kernel and Moss statements use the fixed source/model comparisons. The
compatible normalized triple likewise requires
internal construction and multiplicative comparison. These fields are not
new independent external theorems or separately chosen stage witnesses. -/
structure Application (B : Bindings D η L) : Prop where
  bhsApplicability : BHSCompletionApplicability D B.bhsCompletion
  bhsComparison : BHSCompletionComparison D B.bhsCompletion
  realization : RealizationDetection D B.realization
  may : B.may.SignedBoundary
  toda : TodaApplication η B.todaSource
  realizationKernel : RealizationKernel D
  moss : MossInput D
  nuSource : NuCofiberSourceResults D B.nuSource
  nuCofiber : NuCofiberApplicability D

/-- Assemble the consumer API from the SAME sources, certified comparisons,
and the tmf consequences proved internally in Main. In particular, high125
survival is not transferred as part of the Challenge2 delivery. -/
def Statements.toInputs {B : Bindings D η L} (A : Statements D η L B)
    (P : Application D η L B) (tmf : TmfInputs D L) : Inputs D η L where
  classical := classicalInputsOfSource D η B.classicalSource A.classical
    B.classicalBinding B.synthetic_eta
  bx := A.bx
  synthetic := A.synthetic.toInputs D B.bhsCompletion P.bhsApplicability
    P.bhsComparison P.realizationKernel
  realization := ⟨B.realization, P.realization⟩
  algebra := B.algebra.withBinding D B.quotientBinding
  may := { B.may with boundary := P.may }
  toda := todaInputsOfSource D η B.todaSource A.toda P.toda
  tmf := tmf
  moss := P.moss
  applicability := ⟨B.moss, P.nuCofiber⟩

end KIP126.Literature.Route


/-! Parameterized route delivery specifications. No witness is chosen here.
The root Challenge2 binds these specifications to its shared witness and requires
agreement with the original sphere presentation. Producing that witness remains
an Interface obligation; this parameterized module chooses no model. -/

namespace KIP126.Computation.Route
open CategoryTheory
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology KIP126.Classical.Adams
open KIP126.Core.SpectralSequence KIP126.Synthetic.Context KIP126.Kervaire.Route
open KIP126.LinE2
universe u v w
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}

/-- Standard Milnor classes and all public route/literature names refer to the
same comparison. These are E₂ identifications, never permanence assumptions. -/
structure LabelsCorrect {D : Model H M Syn} (R : Realization D)
    (L : Labels H) (G : KIP126.Literature.Route.TmfLabels H) : Prop where
  h0 : R.sphere 1 1 dataH0 = Sphere.Internal.hi H M 0
  h1 : R.sphere 1 2 dataH1 = Sphere.Internal.hi H M 1
  h2 : R.sphere 1 4 (Near126.atom .h2) = Sphere.Internal.hi H M 2
  h4 : R.sphere 1 16 (Near126.atom .h4) = Sphere.Internal.hi H M 4
  h5 : R.sphere 1 32 (Near126.atom .h5) = Sphere.Internal.hi H M 5
  h6 : R.sphere 1 64 dataH6 = Sphere.Internal.hi H M 6
  h0_square : R.sphere 2 2 Near126.h0Sq = Sphere.Internal.hiSquare H M 0
  h5_square : R.sphere 2 64 Near126.h5Sq = Sphere.Internal.hiSquare H M 5
  h6_square : R.sphere 2 128 dataH6Sq = Sphere.Internal.hiSquare H M 6
  x_126_8_4 : R.sphere 8 134 (Near126.atom .x_126_8_4) = L.x_126_8_4
  x_126_8 : R.sphere 8 134 (Near126.atom .x_126_8) = L.x_126_8
  x_124_8 : R.sphere 8 132 (Near126.atom .x_124_8) = L.x_124_8
  x_109_12 : R.sphere 12 121 (Near126.atom .x_109_12) = L.x_109_12
  g : R.sphere 4 24 (Near126.atom .g) = G.g
  delta_h_1_mul_g : R.sphere 9 54 (Near126.atom .delta_h_1_mul_g) = G.delta_h_1_mul_g

/-- Stage-1 delivery type. Supplying a value requires proving the selected
computation claims and their interpretation on D. Stage 2 can instead accept
this type as an explicit hypothesis, without invoking bulk/global axioms. -/
structure Inputs (D : Model H M Syn) (L : Labels H)
    (G : KIP126.Literature.Route.TmfLabels H) where
  realization : Realization D
  basis : ∀ d ∈ Raw.degrees, BasisCorrect realization d
  csv : ∀ d ∈ Raw.degrees, SphereBasisValue realization d
  products : ∀ p ∈ Raw.products, ProductCorrect realization p
  labels : LabelsCorrect realization L G
  results : ∀ c ∈ Raw.claims, Statement realization c
  bottom : ∀ p ∈ Raw.bottomMaps, BottomCorrect realization p
  top : TopCorrect realization

/-- Seven atomic certification obligations on ONE interpretation. These are
Interface proof targets; there is no extra stage axiom or fresh choice. -/
structure CertifiedRealization {D : Model H M Syn} (R : Realization D)
    (L : Labels H) (G : KIP126.Literature.Route.TmfLabels H) : Prop where
  basis : ∀ d ∈ Raw.degrees, BasisCorrect R d
  csv : ∀ d ∈ Raw.degrees, SphereBasisValue R d
  products : ∀ p ∈ Raw.products, ProductCorrect R p
  labels : LabelsCorrect R L G
  results : ∀ c ∈ Raw.claims, Statement R c
  bottom : ∀ p ∈ Raw.bottomMaps, BottomCorrect R p
  top : TopCorrect R

/-- Joint existence, not correctness for an arbitrary interpretation/label. -/
def Certification (D : Model H M Syn) (G : KIP126.Literature.Route.TmfLabels H) : Prop :=
  ∃ (R : Realization D) (L : Labels H), CertifiedRealization R L G

/-- Assemble exactly the certified realization. -/
def CertifiedRealization.toInputs {D : Model H M Syn} {R : Realization D}
    {L : Labels H} {G : KIP126.Literature.Route.TmfLabels H}
    (h : CertifiedRealization R L G) : Inputs D L G where
  realization := R
  basis := h.basis
  csv := h.csv
  products := h.products
  labels := h.labels
  results := h.results
  bottom := h.bottom
  top := h.top

/-- Recover the same seven conditions without reinterpreting the data. -/
def Inputs.toCertifiedRealization {D : Model H M Syn} {L : Labels H}
    {G : KIP126.Literature.Route.TmfLabels H} (I : Inputs D L G) :
    CertifiedRealization I.realization L G where
  basis := I.basis
  csv := I.csv
  products := I.products
  labels := I.labels
  results := I.results
  bottom := I.bottom
  top := I.top

end
end KIP126.Computation.Route



namespace KIP126.Classical.Adams

/-- Range-limited presentation of the fixed internal sphere E₂. Integer-linear
equivalences preserve the existing additive groups; the source F₂ structure
can be transported without changing them. No higher differential is supplied.
The separate `LinBasisTable` certification, not this structure, asserts that
the imported monomials form a Lean `Module.Basis`. -/
structure LinE2Presentation where
  comparison : ∀ s t : ℕ, t ≤ 261 →
    KIP126.LinE2.E2At s t ≃ₗ[ℤ] sphereAdamsData.Page 2 ((s : ℤ), (t : ℤ))
  product : ∀ s t s' t' : ℕ,
    sphereAdamsData.Page 2 ((s : ℤ), (t : ℤ)) →ₗ[ℤ]
    sphereAdamsData.Page 2 ((s' : ℤ), (t' : ℤ)) →ₗ[ℤ]
      sphereAdamsData.Page 2 (((s + s' : ℕ) : ℤ), ((t + t' : ℕ) : ℤ))
  comparison_mul : ∀ (s t s' t' : ℕ) (h : t + t' ≤ 261)
    (x : KIP126.LinE2.E2At s t) (y : KIP126.LinE2.E2At s' t')
    (z : KIP126.LinE2.E2At (s + s') (t + t')),
    x.val * y.val = z.val →
      comparison (s + s') (t + t') h z =
        product s t s' t' (comparison s t (by omega) x)
          (comparison s' t' (by omega) y)

end KIP126.Classical.Adams

namespace KIP126

namespace Challenge2

open CategoryTheory CategoryTheory.MonoidalCategory
open Classical.Adams LinE2
open Core.SpectralSequence

universe u v w

/-- cm1：同一实际球面 E₂ 的完整 CSV 坐标，范围为 t ≤ 261。
坐标逆像的每个单位向量，经同一 presentation 拉回后必须是指定 CSV 单项式。
等价同时保证线性无关与生成性，不将固定 CSV 认证放回 Challenge1，
也不为内部页面另选一个 F₂ 作用。 -/
structure SphereBasisInterface (P : LinE2Presentation) where
  coordinates : ∀ (s t : ℕ), t ≤ 261 →
    sphereAdamsData.Page 2 ((s : ℤ), (t : ℤ)) ≃ₗ[ℤ]
      (BasisIndex s t →₀ Core.Algebra.F2)
  csv_values : ∀ (s t : ℕ) (ht : t ≤ 261) (i : BasisIndex s t),
    ((P.comparison s t ht).symm
      ((coordinates s t ht).symm (Finsupp.single i 1))).val =
        basisValue (basisRowAt s t i)

section Moss

open StableHomotopy StableHomotopy.Cohomology Classical.Adams.Moss

variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)] [MonoidalClosed C] [BraidedCategory C]
  (H : Mod2EilenbergMacLane (C := C)) (R : Mod2RingStructure H)
  [∀ A : C, (tensorRight A).CommShift ℤ]
  [∀ A : C, (tensorRight A).IsTriangulated] [MonoidalPreadditive C]
  [∀ A : C, (tensorLeft A).CommShift ℤ]

/-- Compatibility package retaining its original fields and constructor.
The source-bearing Moss conclusion is separated from this context in Challenge2. -/
structure MossInterface {ι : Type w} (objects : ι → C) where
  composition : CompositionPairing H R
  coherent : composition.Coherent H R
  convergence : ∀ X Y : ι, MappingAdamsConvergence H.unit (objects X) (objects Y)
  weak_convergence : ∀ X Y : ι, MappingAdamsTower H.unit (objects X) (objects Y)
  detection : ∀ X Y Z : ι,
    composition.DetectionCompatible H R (objects X) (objects Y) (objects Z)
      (convergence X Y) (convergence Y Z) (convergence X Z)
  indeterminacy : ∀ (r : ℤ) (hr : 3 ≤ r) (W X Y Z : ι) (i j k : ℤ × ℤ)
    (a : (mappingSequence H.unit (objects W) (objects X)).Page r i)
    (b : (mappingSequence H.unit (objects X) (objects Y)).Page r j)
    (c : (mappingSequence H.unit (objects Y) (objects Z)).Page r k)
    (x₀ x : (mappingSequence H.unit (objects W) (objects Z)).Page r
      (PageMassey.degree r i j k)),
    PageMassey.Relation H R composition r hr x₀ a b c →
      (PageMassey.Relation H R composition r hr x a b c ↔
        PageMassey.Indeterminacy H R composition r (j := j) a c (x - x₀))
  moss : Classical.Adams.Moss.Statement H R composition objects convergence


/-- Forget only the external Moss conclusion, retaining every actual choice. -/
def MossInterface.toContext {ι : Type w} {objects : ι → C}
    (input : MossInterface H R objects) : MossContext H R objects where
  composition := input.composition
  coherent := input.coherent
  convergence := input.convergence
  weak_convergence := input.weak_convergence
  detection := input.detection
  indeterminacy := input.indeterminacy

/-- Reassemble the old interface on exactly the supplied context. -/
def MossContext.withStatement {ι : Type w} {objects : ι → C}
    (context : MossContext H R objects)
    (proof : Classical.Adams.Moss.Statement H R context.composition objects
      context.convergence) : MossInterface H R objects where
  composition := context.composition
  coherent := context.coherent
  convergence := context.convergence
  weak_convergence := context.weak_convergence
  detection := context.detection
  indeterminacy := context.indeterminacy
  moss := proof

end Moss

/-- am8/am15 的固定球面交付；基础、HF₂、ring 与所有 tensor 选择
均来自同一个 Challenge1 见证，没有增加另一个可独立选择的模型。
这里的球面映射谱仍需通过实际 ihom(unit,unit) 同构与 sphereAdamsData 比较。
保留原兼容接口；总包分别存放 context 与文献结论。 -/
def StandardSphereMossInterface : Type 1 :=
  let c := KIP126.Def.StageInput.witness
  letI : Challenge1.TensorInput c.foundationInput := c.tensorInput
  MossInterface c.foundationInput.hf2 c.cooperationInput.ring
    (fun _ : Unit => StableHomotopy.SphereSpectrum (C := c.foundationInput.Spectrum))

/-- The same fixed sphere context, without assuming the external Moss statement. -/
def StandardSphereMossContext : Type 1 :=
  let c := KIP126.Def.StageInput.witness
  letI : Challenge1.TensorInput c.foundationInput := c.tensorInput
  MossContext c.foundationInput.hf2 c.cooperationInput.ring
    (fun _ : Unit => StableHomotopy.SphereSpectrum (C := c.foundationInput.Spectrum))

/-- Moss's conclusion on the selected composition and convergence data. -/
def StandardSphereMossStatement (context : StandardSphereMossContext) : Prop :=
  let c := KIP126.Def.StageInput.witness
  letI : Challenge1.TensorInput c.foundationInput := c.tensorInput
  Classical.Adams.Moss.Statement c.foundationInput.hf2 c.cooperationInput.ring
    context.composition
    (fun _ : Unit => StableHomotopy.SphereSpectrum (C := c.foundationInput.Spectrum))
    context.convergence

/-- Compatibility assembly never chooses a second sphere context. -/
noncomputable def StandardSphereMossContext.withStatement (context : StandardSphereMossContext)
    (proof : StandardSphereMossStatement context) : StandardSphereMossInterface :=
  let c := KIP126.Def.StageInput.witness
  letI : Challenge1.TensorInput c.foundationInput := c.tensorInput
  MossContext.withStatement c.foundationInput.hf2 c.cooperationInput.ring context proof

/-- am14 的 BR21 微分切片。同一代数对象的单位定义实际 Hurewicz，
固定 CSV 商中的 w₂² 与 β⁵g 经同一个坐标比较进入该对象的实际 Adams 塔。
这项只交付微分等式，不从它增加非零或存活。
来源：BR21 Table 5.4 / Theorem 5.18，印刷页196 / PDF第213页。
原书写 βg⁴；`CsvE2.betaGFourValue_eq_betaFiveGValue` 从同一商环关系证明
βg⁴ = β⁵g。固定坐标源为 v126.3.cw49；到实际 tmf E₂ 的比较另列。
本组尚不包含 tmf 的几何构造、乘法比较、θ₅ 像零或 125-stem 检测。 -/
structure TmfDifferentialInterface {C : Type u}
    [StableHomotopy.StableHomotopyCategory.{u, v} C]
    [StableHomotopy.HasFunctorialCofiber (C := C)]
    (H : StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C)) where
  target : Mon C
  coordinates : Tmf.E2Presentation H target
  br21 : HasDifferential (adamsTowerInternalSpectralSequence H.unit target.X) 3
    (16, 112) (19, 114) coordinates.v2Sixteen coordinates.betaFiveG

/-- Project the same target and coordinates from the compatibility interface. -/
def TmfDifferentialInterface.toModel {C : Type u}
    [StableHomotopy.StableHomotopyCategory.{u, v} C]
    [StableHomotopy.HasFunctorialCofiber (C := C)]
    {H : StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C)}
    (input : TmfDifferentialInterface H) : TmfModel H where
  target := input.target
  coordinates := input.coordinates

/-- BR21's differential on this exact algebra object and coordinate comparison. -/
def TmfModel.Br21Statement {C : Type u}
    [StableHomotopy.StableHomotopyCategory.{u, v} C]
    [StableHomotopy.HasFunctorialCofiber (C := C)]
    {H : StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C)}
    (model : TmfModel H) : Prop :=
  HasDifferential (adamsTowerInternalSpectralSequence H.unit model.target.X) 3
    (16, 112) (19, 114) model.coordinates.v2Sixteen model.coordinates.betaFiveG

/-- Reassemble the original tmf interface without a fresh choice. -/
def TmfModel.withDifferential {C : Type u}
    [StableHomotopy.StableHomotopyCategory.{u, v} C]
    [StableHomotopy.HasFunctorialCofiber (C := C)]
    {H : StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C)}
    (model : TmfModel H) (proof : model.Br21Statement) : TmfDifferentialInterface H where
  target := model.target
  coordinates := model.coordinates
  br21 := proof

/-- am14 的单位与乘法比较义务，约束已选的同一个 target/coordinates。
乘法使用实际 Adams 层配对及 target.mul；不再容许独立选择一个页面乘法。
所有张量、HF₂ ring 和相容结构来自同一个 Challenge1 见证。 -/
def StandardTmfModelMultiplicativeInterface
    (T : TmfModel standardFoundation.hf2) : Prop :=
  let c := KIP126.Def.StageInput.witness
  letI : Challenge1.TensorInput c.foundationInput := c.tensorInput
  T.coordinates.RespectsUnit ∧
    Tmf.E2Presentation.RespectsMultiplication c.cooperationInput.ring T.coordinates

/-- Original comparison API, definitionally the property of the same tmf model. -/
def StandardTmfMultiplicativeInterface
    (T : TmfDifferentialInterface standardFoundation.hf2) : Prop :=
  StandardTmfModelMultiplicativeInterface T.toModel

/-- cm1/am4：同一 Lin presentation 的有界实际球面乘法与单位。
输出 second cycle 的底层严格等于已构造的 first-layer product；存在量词
只表达该实际乘积闭合于 cycles，不选择另一个运算。对所有输入代表元的
商类等式同时要求其值与 presentation.product 相符。范围是 t+t′≤261，
不由此宣称高页 Leibniz、全局乘法或与 cobar cup 的比较已经完成。 -/
def SphereMultiplicativeInterface (P : LinE2Presentation) : Prop :=
  let c := KIP126.Def.StageInput.witness
  letI : Challenge1.TensorInput c.foundationInput := c.tensorInput
  (∃ x : LinE2.E2At 0 0, x.val = 1 ∧
    P.comparison 0 0 (by decide) x =
      Suspension.classOfSecondCycle c.foundationInput.hf2
        StableHomotopy.SphereSpectrum 0 0
        (Sphere.Multiplication.unitSecondCycle c.foundationInput.hf2)) ∧
  ∀ (s t s' t' : ℕ), t + t' ≤ 261 →
    ∀ (a : adamsCycles c.foundationInput.hf2.unit StableHomotopy.SphereSpectrum
          2 (by decide) s t)
      (b : adamsCycles c.foundationInput.hf2.unit StableHomotopy.SphereSpectrum
          2 (by decide) s' t'),
      ∃ z : adamsCycles c.foundationInput.hf2.unit StableHomotopy.SphereSpectrum
          2 (by decide) ((s + s' : ℕ) : ℤ) ((t + t' : ℕ) : ℤ),
        z.val = Sphere.Multiplication.firstProduct c.foundationInput.hf2
          c.cooperationInput.ring s t s' t' a.val b.val ∧
        P.product s t s' t'
          (Suspension.classOfSecondCycle c.foundationInput.hf2
            StableHomotopy.SphereSpectrum s t a)
          (Suspension.classOfSecondCycle c.foundationInput.hf2
            StableHomotopy.SphereSpectrum s' t' b) =
          Suspension.classOfSecondCycle c.foundationInput.hf2
            StableHomotopy.SphereSpectrum
            ((s + s' : ℕ) : ℤ) ((t + t' : ℕ) : ℤ) z

/-- am12：Adams 一线、非零 d₂ 及 May 低维永久存活的完整交付。
所有类来自固定 Milnor cocycle 的实际 cup 与同一内部 E₂ 比较。
MainPaper 一线存活范围的 `j ≥ 3` 与下一行 d₂ 相矛盾，这里采用 j ≤ 3。
本组只陈述文献结论；证明可以暂留 sorry，不把已有 h₄ 单点包装当作全族。 -/
structure AdamsOneLineInterface : Prop where
  adamsOneLine_at_power (j : ℕ) :
      Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations j ≠ 0 ∧
        ∀ x : sphereAdamsData.Page 2 (1, ((2 ^ j : ℕ) : ℤ)),
          x = 0 ∨ x = Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations j
  adamsOneLine_other_degree (t : ℤ)
      (ht : ∀ j : ℕ, t ≠ ((2 ^ j : ℕ) : ℤ)) :
      ∀ x : sphereAdamsData.Page 2 (1, t), x = 0
  adamsHi_nonzeroSurvival_iff (j : ℕ) :
      NonzeroSurvival sphereAdamsData (1, ((2 ^ j : ℕ) : ℤ))
        (Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations j) ↔ j ≤ 3
  adamsOneLine_d2 (j : ℕ) (hj : 4 ≤ j) :
      HasNonzeroDifferential sphereAdamsData 2
        (1, ((2 ^ j : ℕ) : ℤ)) (3, ((1 + 2 ^ (j - 1 + 1) : ℕ) : ℤ))
        (Sphere.Internal.hi standardFoundation.hf2 standardMilnorCooperations j)
        (Sphere.Internal.h0HiSquare standardFoundation.hf2 standardMilnorCooperations (j - 1))
  may_lowDimensionalProducts_permanent :
      NonzeroSurvival sphereAdamsData (2, ((2 ^ 0 + 2 ^ 2 : ℕ) : ℤ))
        (Sphere.Internal.hiProduct standardFoundation.hf2 standardMilnorCooperations 0 2) ∧
      NonzeroSurvival sphereAdamsData (2, ((2 ^ 0 + 2 ^ 3 : ℕ) : ℤ))
        (Sphere.Internal.hiProduct standardFoundation.hf2 standardMilnorCooperations 0 3) ∧
      NonzeroSurvival sphereAdamsData (2, ((2 ^ 2 + 2 ^ 4 : ℕ) : ℤ))
        (Sphere.Internal.hiProduct standardFoundation.hf2 standardMilnorCooperations 2 4)
  may_lowDimensionalSquares_permanent (j : ℕ) (hj : j ≤ 3) :
      NonzeroSurvival sphereAdamsData (2, ((2 ^ (j + 1) : ℕ) : ℤ))
        (Sphere.Internal.hiSquare standardFoundation.hf2 standardMilnorCooperations j)

/-- am12 的低维永久性切片，使用实际标准类和非零永久存活。
不把结论降为自由 permanence 谓词或零类的循环性。 -/
def LowDimensionalSquarePermanence : Prop :=
  NonzeroSurvival sphereAdamsData (2, 32) (standardHiSquare 4) ∧
    NonzeroSurvival sphereAdamsData (2, 64) (standardHiSquare 5)

/-- am16：Browder 的准确内部页面端。几何解释仍由显式参数指定并需要
相应文献证明，永久性端则固定为本项目同一内部球谱上的标准 hⱼ²。 -/
def BrowderInterface {Manifold : Type} (dimension : Manifold → ℕ)
    (kervaireOne : Manifold → Prop) : Prop :=
  Kervaire.BrowderCriterionStatement dimension kervaireOne
    (fun j => NonzeroSurvival sphereAdamsData
      (2, ((2 ^ (j + 1) : ℕ) : ℤ)) (standardHiSquare j))

/-- Literal CSV coordinates, independent of any choice of comparison map. -/
def HasCoordinates {s t : Nat} (x : E2At s t) (indices : List Nat) : Prop :=
  ∃ rows : List BasisRow,
    rows.map BasisRow.index = indices ∧
    (∀ row ∈ rows, row ∈ basisRows ∧ row.s = s ∧ row.t = t) ∧
    x.val = (rows.map basisValue).sum

/-- Mathematical meaning of one exported differential row for one fixed Lin
presentation.  The same `presentation` is used for both source and target. -/
def DifferentialStatement (presentation : Classical.Adams.LinE2Presentation)
    (row : Computation.LinProofs.DifferentialRow) : Prop :=
  ∃ (hx : row.t ≤ 261) (hy : row.t + row.r - 1 ≤ 261),
    ∃ (x : E2At row.s row.t) (y : E2At (row.s + row.r) (row.t + row.r - 1)),
      HasCoordinates x row.x ∧ HasCoordinates y row.dx ∧
      ∃ (h : ((row.s : ℤ), (row.t : ℤ)) + Classical.Adams.sphereAdamsData.diffDeg row.r =
          (((row.s + row.r : Nat) : ℤ), ((row.t + row.r - 1 : Nat) : ℤ)))
        (xr : Classical.Adams.sphereAdamsData.Page row.r ((row.s : ℤ), (row.t : ℤ)))
        (yr : Classical.Adams.sphereAdamsData.Page row.r
          (((row.s + row.r : Nat) : ℤ), ((row.t + row.r - 1 : Nat) : ℤ))),
        RepresentsOnPage Classical.Adams.sphereAdamsData row.r _
          (presentation.comparison row.s row.t hx x) xr ∧
        RepresentsOnPage Classical.Adams.sphereAdamsData row.r _
          (presentation.comparison (row.s + row.r) (row.t + row.r - 1) hy y) yr ∧
        (Classical.Adams.sphereAdamsData.d row.r _ ≫
          eqToHom (congrArg (Classical.Adams.sphereAdamsData.Page row.r) h)) xr = yr

/-- cm5：固定 staircase 解码所得结论。全部坐标经同一实际球面 E₂
比较解释；unknown incoming 仅给累计边界，unknown outgoing 仅给提升。
9000 层仅记录到 E₁₀₀₀ 的提升，不能仅凭程序阈值追加非零 E∞ 存活。 -/
def StaircaseClaimStatement (presentation : Classical.Adams.LinE2Presentation) :
    Computation.LinProofs.State.Claim → Prop
  | .equation r s t indices target =>
      ∃ (hx : t ≤ 261) (hy : t + r - 1 ≤ 261)
        (x : E2At s t) (y : E2At (s + r) (t + r - 1)),
        HasCoordinates x indices ∧ HasCoordinates y target ∧
          HasDifferential sphereAdamsData r
            ((s : ℤ), (t : ℤ)) (((s + r : ℕ) : ℤ), ((t + r - 1 : ℕ) : ℤ))
            (presentation.comparison s t hx x)
            (presentation.comparison (s + r) (t + r - 1) hy y)
  | .reaches r s t indices =>
      ∃ (ht : t ≤ 261) (x : E2At s t), HasCoordinates x indices ∧
        ReachesPage sphereAdamsData r ((s : ℤ), (t : ℤ))
          (presentation.comparison s t ht x)
  | .boundaryBy r s t indices =>
      ∃ (ht : t ≤ 261) (x : E2At s t), HasCoordinates x indices ∧
        IsBoundaryBy sphereAdamsData r ((s : ℤ), (t : ℤ))
          (presentation.comparison s t ht x)

/-- cm5 固定球面 snapshot 的逐行交付，同时要求解码成功和数学真实性。
记录缺失不会推出命题；解码失败也不能使这一义务空泛成立。
不是任意同名表，更不是从数据库哈希推出内部谱序列事实。 -/
structure SphereStaircaseInterface (presentation : Classical.Adams.LinE2Presentation) : Prop where
  rows_sound : ∀ (shard offset : Nat) (row : Computation.LinProofs.Raw.StaircaseRow),
    Computation.LinProofs.StaircaseData.lookup shard offset = some row →
      ∃ claim, Computation.LinProofs.State.decode row = some claim ∧
        StaircaseClaimStatement presentation claim

/-- cm3：实际内部对象、坐标字典与原始条件日志之间的参数化交付。
每条已解释的 trial 是相对于完整祖先上下文的反驳；D/DI 才是条件结论。
这一结构没有选择项目对象或字典，也没有将未解释记录当作已覆盖。
固定全日志与各谱的实际坐标绑定是进入 Challenge2 总见证前的独立义务。 -/
structure LinBranchInterface {R : Type u} [Ring R] {ι : Type w}
    (E : ι → Core.SpectralSequence (ModuleCat.{v} R) (ℤ × ℤ))
    (lookup : String → Option ι)
    (coordinates : Computation.LinProofs.Branch.CoordinateDictionary E)
    (rows : List Computation.LinProofs.Raw.LogRow) : Prop where
  trial_refutations :
    Computation.LinProofs.Branch.RetainedTrialRefutations lookup coordinates rows
  conditional_facts :
    Computation.LinProofs.Branch.RetainedConditionalFacts lookup coordinates rows

/-- Shared project comparisons and model data. These are not external literature
claims and not extra program outputs. The classical background is fixed in Def.
The one route witness is correlated with its source results and C(M), instead
of being arbitrarily chosen from a weaker type before source conditions exist. -/
structure ModelBindings (routeInput : Classical.Adams.StandardRouteInput) where
  cobarDerivedExt : CobarDerivedExtComparison
    Classical.Adams.standardFoundation.hf2 Classical.Adams.standardMilnorCooperations
  moss : StandardSphereMossContext
  tmf : TmfModel Classical.Adams.standardFoundation.hf2
  tmfMultiplicative : StandardTmfModelMultiplicativeInterface tmf
  routeLabels : Kervaire.Route.Labels Classical.Adams.standardFoundation.hf2
  tmfLabels : Literature.Route.TmfLabels Classical.Adams.standardFoundation.hf2
  routeEta : Synthetic.Context.BiHom 1 2
    (Synthetic.Context.S_0_0 : routeInput.Syn)
  route : Literature.Route.Bindings routeInput.model routeEta tmfLabels
  detectorIso : routeInput.model.auxiliary.detector ≅ tmf.target.X
  detector_unit : routeInput.model.auxiliary.detectorUnit ≫
    detectorIso.hom = Tmf.unit tmf.target
  detector_mul :
    letI := route.algebra.classicalSymmetric
    letI := route.algebra.syntheticSymmetric
    (detectorIso.hom ⊗ₘ detectorIso.hom) ≫ (MonObj.mul (X := tmf.target.X)) =
      route.algebra.detector.classical.mul ≫ detectorIso.hom

/-- Literature conclusions on the same selected model data. Sources and exact
ranges remain those documented by AdamsOneLineInterface (Adams/May),
StandardSphereMossStatement (Moss), and TmfModel.Br21Statement (BR21).
The source-carrying external wrappers remain explicit inputs where used; this
structure does not assert that citing a source constructs any of these proofs. -/
structure LiteratureInterface (routeInput : Classical.Adams.StandardRouteInput)
    (modelBindings : ModelBindings routeInput) where
  /-- Independent Adams vanishing-line specialization on the delivered
  standard sphere tower, used to close the finite computation's tail. -/
  sphereVanishing : SphereVanishingLine Classical.Adams.standardFoundation.hf2
  /-- Separation of the same actual HF₂-local (2-completed) sphere tower. -/
  sphereSeparated : ClassicalSphereSeparated Classical.Adams.standardFoundation.hf2
  adamsOneLine : AdamsOneLineInterface
  moss : StandardSphereMossStatement modelBindings.moss
  br21 : modelBindings.tmf.Br21Statement
  route : Literature.Route.Statements routeInput.model
    modelBindings.routeEta modelBindings.tmfLabels modelBindings.route

/-- The certified square facts and its standard label on the actual sphere
page, through the specified comparison. Interface proves the identification
using the fixed-data exhaustion certificate and independent cobar nonvanishing;
Main does not reconstruct this certification from its own stage assumption.
This particular equality does not assert a general cobar/product comparison. -/
structure SphereSquareInterface (presentation : Classical.Adams.LinE2Presentation) : Prop where
  nonzero : presentation.comparison 2 128 (by decide) LinE2.dataH6Sq ≠ 0
  exhaustive : ∀ x : Classical.Adams.sphereAdamsData.Page 2 (2, 128),
    x = 0 ∨ x = presentation.comparison 2 128 (by decide) LinE2.dataH6Sq
  standard_class : presentation.comparison 2 128 (by decide) LinE2.dataH6Sq =
    Classical.Adams.standardH6Square

/-- C(M): interpreted computation conclusions, all using one fixed presentation.
The generated data and local certificates are separate from this model-bound
mathematical delivery. -/
structure ComputationInterface (routeInput : Classical.Adams.StandardRouteInput)
    (modelBindings : ModelBindings routeInput)
    (presentation : Classical.Adams.LinE2Presentation) where
  sphereBasis : SphereBasisInterface presentation
  sphereMultiplicative : SphereMultiplicativeInterface presentation
  sphereStaircase : SphereStaircaseInterface presentation
  sphereSquare : SphereSquareInterface presentation
  sphereTable_sound : ∀ (shard offset : Nat)
    (row : Computation.LinProofs.DifferentialRow),
    Computation.LinProofs.RawData.lookup shard offset = some row →
      DifferentialStatement presentation row

  route : Computation.Route.Inputs routeInput.model
    modelBindings.routeLabels modelBindings.tmfLabels
  /-- Interface identifies the route's interpretation with the existing bounded
  sphere presentation. Main must not assume or reconstruct this comparison. -/
  route_presentation : ∀ (s t : ℕ) (ht : t ≤ 261) (x : LinE2.E2At s t),
    route.realization.sphere s t x = presentation.comparison s t ht x

end Challenge2

/-- One correlated stage witness: shared project bindings, literature conclusions,
and C(M). The actual classical foundation and T(M) were fixed in Def; the
auxiliary route witness, its prior-source consequences and all internal
applications/computations are delivered together. No weaker route is chosen
in advance. Every sphere computation uses the one presentation stored here. -/
structure Challenge2 where
  routeInput : Classical.Adams.StandardRouteInput
  modelBindings : Challenge2.ModelBindings routeInput
  presentation : Classical.Adams.LinE2Presentation
  literature : Challenge2.LiteratureInterface routeInput modelBindings
  /-- Internal source-to-model application, produced by Interface. -/
  routeApplication : Literature.Route.Application routeInput.model
    modelBindings.routeEta modelBindings.tmfLabels modelBindings.route
  computation : Challenge2.ComputationInterface routeInput modelBindings presentation

namespace Challenge2

/-- The same correlated route for every A/C consumer. -/
noncomputable abbrev routeModel (input : KIP126.Challenge2) := input.routeInput.model

/-- Compatibility projection; no new model, coordinates, or evidence is chosen. -/
def sphereBasis (input : KIP126.Challenge2) : SphereBasisInterface input.presentation :=
  input.computation.sphereBasis

set_option linter.defProp false in
def sphereMultiplicative (input : KIP126.Challenge2) :
    SphereMultiplicativeInterface input.presentation :=
  input.computation.sphereMultiplicative

def cobarDerivedExt (input : KIP126.Challenge2) : CobarDerivedExtComparison
    Classical.Adams.standardFoundation.hf2 Classical.Adams.standardMilnorCooperations :=
  input.modelBindings.cobarDerivedExt

set_option linter.defProp false in
def adamsOneLine (input : KIP126.Challenge2) : AdamsOneLineInterface :=
  input.literature.adamsOneLine

/-- The previous mixed Moss interface, assembled from the same bindings and claim. -/
noncomputable def moss (input : KIP126.Challenge2) : StandardSphereMossInterface :=
  input.modelBindings.moss.withStatement input.literature.moss

/-- The previous mixed tmf interface, assembled from the same bindings and claim. -/
noncomputable def tmfDifferential (input : KIP126.Challenge2) :
    TmfDifferentialInterface Classical.Adams.standardFoundation.hf2 :=
  input.modelBindings.tmf.withDifferential input.literature.br21

set_option linter.defProp false in
def tmfMultiplicative (input : KIP126.Challenge2) :
    StandardTmfMultiplicativeInterface input.tmfDifferential :=
  input.modelBindings.tmfMultiplicative

set_option linter.defProp false in
def sphereStaircase (input : KIP126.Challenge2) :
    SphereStaircaseInterface input.presentation :=
  input.computation.sphereStaircase

set_option linter.defProp false in
def sphereTable_sound (input : KIP126.Challenge2) (shard offset : Nat)
    (row : Computation.LinProofs.DifferentialRow)
    (h : Computation.LinProofs.RawData.lookup shard offset = some row) :
    DifferentialStatement input.presentation row :=
  input.computation.sphereTable_sound shard offset row h

end Challenge2

end KIP126

/-! Interface production target; no proof of this target is consumed by Main. -/
namespace KIP126.Interface.Challenge
theorem challenge2 : Nonempty KIP126.Challenge2 := by
  sorry
end KIP126.Interface.Challenge
