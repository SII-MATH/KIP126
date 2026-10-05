import KIP126.Def.StageInput.StandardSphere.Background.Data

/-! Literature source statements and their explicit bindings to a supplied route background.
Main assembles the internal applications; no model is selected here. -/

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
are in `docs/STAGE0_INTERFACES.md` and `docs/external-inputs.json`.
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
structure Bindings (background : Background D) where
  todaSource : TodaSourceData (Syn := Syn)
  kernelSource : RealizationKernelSourceData Syn
  kernelBinding : RealizationKernelBinding D kernelSource
  classicalSource : ClassicalSourceData H
  classicalBinding : ClassicalSourceBinding D η classicalSource
  synthetic_eta : EtaChoice M D.toModelData η
  tmfSource : TmfSourceData H
  tmfBinding : TmfBinding D L tmfSource
  bhsCompletion : BHSCompletionData D
  /-- Truth of the source hypotheses and of the transport along this same completion. -/
  completionApplicability : BHSCompletionApplicability D bhsCompletion
  completionComparison : BHSCompletionComparison D bhsCompletion
  realizationComparison : BHSRealizationComparison D background.realization bhsCompletion
  /-- The completion source for the detector is the SAME completed tmf,
  and its comparison carries the SAME actual ring unit. -/
  bhsDetectorIso : bhsCompletion.completed .detector ≅ tmfSource.spectrum
  bhsDetectorUnit : D.auxiliary.detectorUnit ≫ bhsCompletion.map .detector ≫
    bhsDetectorIso.hom = tmfSource.unit
  nuSource : NuCofiberSourceData D
  nuBinding : NuCofiberLiftBinding D nuSource
  moss : MossTowerApplicability (H := H)

namespace Bindings
variable {D η L} {background : Background D}
abbrev realization (_B : Bindings D η L background) := background.realization
abbrev algebra (_B : Bindings D η L background) := background.algebra
abbrev quotientBinding (_B : Bindings D η L background) := background.quotientBinding
abbrev algebraBinding (_B : Bindings D η L background) := background.algebraBinding
abbrev may (_B : Bindings D η L background) := background.may
abbrev realizationAdditive (_B : Bindings D η L background) := background.realizationAdditive
abbrev weights (_B : Bindings D η L background) := background.weights
abbrev nuE2 (_B : Bindings D η L background) := background.nuE2
end Bindings

/-- External results on the source objects fixed in B. Classical and tmf
results are not asserted for arbitrary preselected route objects or lifts. -/
structure Statements {background : Background D} (B : Bindings D η L background) where
  classical : ClassicalSourceResults M B.classicalSource
  bx : BXDistinguishedInput D η
  synthetic : SyntheticSourceInputs D
  realizationKernel : RealizationKernelSourceResults D B.kernelSource
  realization : BHSRealizationSourceResults D B.realization
  may : MaySourceResults Syn B.may
  toda : TodaSourceResults D η B.todaSource
  tmf : TmfSourceResults B.tmfSource
  moss : MossSourceInput M B.classicalSource.convergence

/-- Internal source-application target, separate from A(M).
May retains its sign; Toda uses actual secondary-operation evidence; the
kernel and Moss statements use the fixed source/model comparisons. The
compatible normalized triple likewise requires
internal construction and multiplicative comparison. These fields are not
new independent external theorems or separately chosen stage witnesses. -/
structure Application {background : Background D} (B : Bindings D η L background) : Prop where
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
def Statements.toInputs {background : Background D} {B : Bindings D η L background} (A : Statements D η L B)
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
