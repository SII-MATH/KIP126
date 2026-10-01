import KIP126.Def.Kervaire.Inputs.Literature.Classical

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

/-- The two classical literature labels used by the tmf input, in the
actual sphere E₂. Their identification with CSV expressions belongs to
C(M). No new independent label for g⁴Δh₁g or product operation is chosen.
Source convention: BMQ §7, g detects κ̄ and Δh₁g detects w. -/
structure TmfLabels (H : Mod2EilenbergMacLane (C := C)) where
  g : E2 H SphereSpectrum 4 24
  deltaH1g : E2 H SphereSpectrum 9 54

def TmfLabels.high125 (L : TmfLabels H) (M : MilnorCooperations H) :
    E2 H SphereSpectrum 25 150 :=
  let g2 : E2 H SphereSpectrum 8 48 :=
    Sphere.Internal.product H M (s := 4) (t := 24) (s' := 4) (t' := 24) L.g L.g
  let g4 : E2 H SphereSpectrum 16 96 :=
    Sphere.Internal.product H M (s := 8) (t := 48) (s' := 8) (t' := 48) g2 g2
  Sphere.Internal.product H M (s := 16) (t := 96) (s' := 9) (t' := 54) g4 L.deltaH1g

variable (D : Model H M Syn) (L : TmfLabels H)

/-- The classical θ₅ Hurewicz vanishing used in LWX Prop. 7.8.
The map is the unit of D's selected detector. Its source identity is
recorded by TmfBinding, and the conclusion is derived from BMQ degree 62.
This does NOT assert synthetic θ₅ vanishing: that still needs the
synthetic/classical comparison and the relevant λ-torsion analysis. -/
def TmfTheta5Vanishing : Prop :=
  ∀ θ : HomotopyGroup (C := C) 62 SphereSpectrum,
    ClassicalTheta D θ → θ ≫ D.auxiliary.detectorUnit = 0

/-- The local classical Adams detection consequence of BMQ §7: κ̄⁴w
is nonzero, and its sphere detection is g⁴Δh₁g. The universal clause
retains the indeterminacy of choosing a class with this leading term.
This is an INTERNAL derived consequence, not an external primitive:
TmfBinding identifies the objects/labels, and the C-derived classical
filtration-26 tail controls the difference of two detected representatives. -/
def TmfHigh125Detection : Prop :=
  NonzeroSurvival (adamsTowerInternalSpectralSequence H.unit SphereSpectrum)
    (25,150) (L.high125 M) ∧
  ∀ α : HomotopyGroup (C := C) 125 SphereSpectrum,
    TowerDetection.Detects (D.classicalConvergence .sphere) (25,150)
      (L.high125 M) α → α ≫ D.auxiliary.detectorUnit ≠ 0

/-- The small part of the classical tmf E₂ calculation needed to transport
the 62-stem vanishing through λ-localization. Source: BMQ §2,
H_*tmf = (A//A(2))_* and its change-of-rings E₂. There is no nonpositive-AF
class in positive stem 63. This is prior tmf input, not a Lin sphere CSV row. -/
def TmfLowFiltration63 : Prop :=
  ∀ s : ℤ, s ≤ 0 → Subsingleton (E2 H D.auxiliary.detector s (63+s))

/-- The local tmf consequences on classical homotopy, DERIVED internally
from TmfSourceResults, TmfBinding, multiplicativity and classical tail control.
`DetectorInjectiveAt D 125 130 15` is intentionally NOT a field: LWX
derives that useful local conclusion using its own tables and BHS. -/
structure TmfInputs : Prop where
  theta5_vanishes : TmfTheta5Vanishing D
  high125_detected : TmfHigh125Detection D L
  low_filtration_63 : TmfLowFiltration63 D
end
end KIP126.Literature.Route
