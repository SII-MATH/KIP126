import KIP126.Challenge2.Route.Literature.Classical

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

structure ClassicalSourceData (H : Mod2EilenbergMacLane (C := C)) where
  convergence : TowerDetection.Convergence H.unit SphereSpectrum
  eta : HomotopyGroup (C := C) 1 SphereSpectrum
  nu : HomotopyGroup (C := C) 3 SphereSpectrum
  theta5 : HomotopyGroup (C := C) 62 SphereSpectrum

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

/-- Identity with source classical objects and with the actual selected
normalized eta. These are construction/comparison obligations, not source
facts valid for arbitrary selections in D. -/
structure ClassicalSourceBinding (D : Model H M Syn)
    (η : BiHom 1 2 (S00 : Syn)) (S : ClassicalSourceData H) : Prop where
  convergence : D.classicalConvergence .sphere = S.convergence
  eta : D.auxiliary.etaMap = S.eta
  nu : D.auxiliary.nuMap = S.nu
  normalized_eta : ∃ he : normalizedExponent H D.auxiliary.etaMap = 1,
    η = (etaSourceIso D he).hom ≫
      (D.normalizedMap (.shift 1 .sphere) .sphere D.auxiliary.etaMap).map ≫ D.nu.unitIso.hom
/-- Ordinary transport along the displayed source equalities. The sole
synthetic premise is supplied separately, so the classical source theorem
does not assert it or normalized-map compatibility. -/
def classicalInputsOfSource (D : Model H M Syn) (η : BiHom 1 2 (S00 : Syn))
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
