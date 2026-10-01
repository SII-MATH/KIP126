import KIP126.Def.Kervaire.Route.Extensions.Data
import KIP126.Def.Kervaire.Route.Hopf.Data
import KIP126.Def.Kervaire.Route.Conditions.Predicates
import KIP126.Def.Kervaire.Route.Massey.Predicates
import KIP126.Def.Kervaire.Route.Toda.Predicates
import KIP126.Def.Synthetic.Computation.Predicates
import KIP126.Def.Foundation.Interfaces
import KIP126.Def.Synthetic.EInfty.Presentation.Predicates

/-! Typed input language for the selected Section 7 route.
These definitions assert nothing and are not a frozen A(M)/C(M) checklist.
They show where the original source results and their precise local
specializations can be stated on the same model. In particular the paper's
new theorems remain in Main/Solution, not fields of Model. -/
namespace KIP126.Main.Solution.Route
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Core.SpectralSequence
open KIP126.Synthetic.Context KIP126.Synthetic.SpectralSequence
open KIP126.Kervaire KIP126.Kervaire.Route
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H} (D : Model H M Syn)

/-- Pstrągowski/BHS lifting and triangle conditions use this very ν.
This is the existing precise source interface, not a new assumed theorem. -/
abbrev SyntheticLiftInput := KIP126.Synthetic.SyntheticInterface H D.nu

/-- BHS A.9/A.11 formula data, with actual classical cycle/boundary quotients.
Their λ/ρ compatibility must accompany any supplied presentation. -/
abbrev EInftyFormulaInput := KIP126.Synthetic.SpectralSequence.SyntheticEInftyPresentation H D.nu D.family
abbrev EInftyCompatibilityInput (P : EInftyFormulaInput D)
    (S : EInftyWeightShift D.family) :=
  KIP126.Synthetic.SpectralSequence.SyntheticEInftyMapCompatibility H D.nu D.family P S
    (fun X => D.quotientTower (D.nu.functor.obj X))

/-- An E∞ formula must preserve the actual E₂ labels, in addition to
commuting with λ/ρ. This prevents supplying unrelated quotient isomorphisms.
Both finite and infinite formulas retain all classical boundary ambiguity. -/
def EInftyLabelAgreement (P : EInftyFormulaInput D) : Prop :=
  (∀ (X : ClassicalObject) (q : ℕ) (hq : 0 < q) (p : ℤ × ℤ)
      (k : ℕ) (hk : k < q)
      (x : PageRepresentatives.cycles H (X.obj D.auxiliary)
        ((q : ℤ) - p.2 + (p.2 - k)) p)
      (e : ((D.family.nuQuotient D.nu (X.obj D.auxiliary) q).sequence.ssData
        (p.1,p.2,p.2-k)).eInfty),
    HasInfinityRepresentative _ 2 _ (finiteTargetLabel D X q p.1 p.2 k x.val) e ↔
      P.finiteWindow (X.obj D.auxiliary) q hq p (p.2-k) (by constructor <;> omega) e =
        KIP126.Algebra.NestedQuotient.projection _ _ x) ∧
  (∀ (X : ClassicalObject) (p : ℤ × ℤ) (k : ℕ)
      (x : PageRepresentatives.permanentCycles H (X.obj D.auxiliary) p)
      (e : ((D.family.nu D.nu (X.obj D.auxiliary)).sequence.ssData
        (p.1,p.2,p.2-k)).eInfty),
    HasInfinityRepresentative _ 2 _ (targetNuLabel D X p.1 p.2 k x.val) e ↔
      P.nuWindow (X.obj D.auxiliary) p (p.2-k) (by omega) e =
        KIP126.Algebra.NestedQuotient.projection _ _ x)

/-- BHS A.8 / LWX Theorem 3.6: the source λᵏx and target
λ^(k+r-1)y have the same weight. This is a law to supply from A(M), not a
map from the entire classical sequence to every synthetic weight. -/
def DifferentialLiftInput : Prop :=
  ∀ (X : ClassicalObject) (a s t : ℤ) (r k : ℕ), 2 ≤ r →
    ∀ (x : E2 H (X.obj D.auxiliary) s t)
      (y : E2 H (X.obj D.auxiliary) (s + r) (t + r - 1)),
    KIP126.Core.SpectralSequence.HasDifferential
      (adamsTowerInternalSpectralSequence H.unit (X.obj D.auxiliary)) r
      (s,t) (s+r,t+r-1) x y →
    KIP126.Synthetic.SpectralSequence.HasDifferential
      (D.family.obj ((SyntheticCategory.biShift (0,a)).obj
        (D.nu.functor.obj (X.obj D.auxiliary)))) r
      (s,t,t+a-k) (s+r,t+r-1,(t+r-1)+a-(k+(r-1) : ℕ))
      (D.nuE2 X a s t k x) (D.nuE2 X a (s+r) (t+r-1) (k+(r-1)) y)

/-- Bind the geometric Hopf maps used by the tools to standard classes
and to the actual synthetic η used in C₅. These are explicit literature
identifications, not consequences inferred merely from the maps' names. -/
def HopfBindings (η : BiHom 1 2 (S00 : Syn)) : Prop :=
  TowerDetection.Detects (D.classicalConvergence .sphere) (1,2)
    (Sphere.Internal.hi H M 1) D.auxiliary.etaMap ∧
  TowerDetection.Detects (D.classicalConvergence .sphere) (1,4)
    (Sphere.Internal.hi H M 2) D.auxiliary.nuMap ∧
  ∃ he : normalizedExponent H D.auxiliary.etaMap = 1,
    η = (etaSourceIso D he).hom ≫
      (D.normalizedMap (.shift 1 .sphere) .sphere D.auxiliary.etaMap).map ≫ D.nu.unitIso.hom

/-- The original distinguished-choice BX condition, before the LWX
normalization and arbitrary-choice deductions. BX Proposition 7.19. -/
abbrev BXInput (η : BiHom 1 2 (S00 : Syn)) (θ : BiHom 62 64 (S00 : Syn)) :=
  BJMOriginalCriterion H M D.sphereFirstQuotient η θ

/-- The actual Hurewicz map for the selected detector. In the chosen route
A(M) identifies its object/unit with tmf and supplies the required results. -/
noncomputable def detectorMap : (S00 : Syn) ⟶ D.nu.functor.obj D.auxiliary.detector :=
  D.nu.unitIso.inv ≫ D.nu.functor.map D.auxiliary.detectorUnit

/-- A precise detection/injectivity input at a specified degree and AF bound.
No values of m,w,s are asserted here. LWX Prop. 7.8 uses m=125,w=130,s=15. -/
def DetectorInjectiveAt (m w s : ℤ) : Prop :=
  ∀ α : BiHom m w (S00 : Syn),
    FiltrationAtLeast (nuCoefficientUnit H.unit D.nu) s α →
    α ≫ detectorMap D = 0 → α = 0

/-- Actual order-two statement used before Moss; no presentation of π₆₂
as an unrelated abstract group is substituted. Xu/IWX, cited by LWX 7.16. -/
def OrderTwo62 : Prop :=
  ∀ α : HomotopyGroup (C := C) 62 SphereSpectrum, α + α = 0

/-- The local sphere form of the Moss implication needed in LWX Lemma 7.16.
Source: Moss Theorem 1.2; crossing convention also IWX Definition 2.15 and
Theorem 2.16. No claim of zero indeterminacy is hidden in the conclusion:
there exists a permanent defining-system value detecting a bracket member.
The three detection and two null-composition hypotheses are explicit. -/
def ThetaBMossInput : Prop :=
  ∀ (B : E2 H SphereSpectrum 8 70)
    (θ β : HomotopyGroup (C := C) 62 SphereSpectrum)
    (two : HomotopyGroup (C := C) 0 SphereSpectrum),
    two = (shiftFunctorZero C ℤ).hom.app SphereSpectrum ≫ (2 • 𝟙 _) →
    TowerDetection.Detects (D.classicalConvergence .sphere) (2,64)
      (Sphere.Internal.hiSquare H M 5) θ →
    TowerDetection.Detects (D.classicalConvergence .sphere) (1,1)
      (Sphere.Internal.hi H M 0) two →
    TowerDetection.Detects (D.classicalConvergence .sphere) (8,70) B β →
    θ + θ = 0 → β + β = 0 →
    (ThetaBMassey M B).Nonempty →
    ¬ SphereMossCrossing (H := H) 3 (3,65) →
    ¬ SphereMossCrossing (H := H) 3 (9,71) →
    TowerDetection.ResidualInjectivity H.unit (SphereSpectrum (C := C)) →
    ∃ (z : E2 H SphereSpectrum 9 134)
      (ξ : HomotopyGroup (C := C) 125 SphereSpectrum),
      ThetaBMasseyDefiningSystem M B z ∧
      TowerDetection.Detects (D.classicalConvergence .sphere) (9,134) z ξ ∧
      ThetaBToda θ β ξ
end KIP126.Main.Solution.Route
