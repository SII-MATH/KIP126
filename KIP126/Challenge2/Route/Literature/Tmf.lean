import KIP126.Def.Kervaire.Route.Labels.Tmf.Data
import KIP126.Challenge2.Route.Literature.Classical

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

/-- The classical θ₅ Hurewicz vanishing used in LWX Prop. 7.8.
The map is the unit of D's selected detector, interpreted as 2-completed
connective tmf. Source: BMQ Figure 1.1 and Theorem 1.2 in degree 62.
This does NOT assert synthetic θ₅ vanishing: that still needs the
synthetic/classical comparison and the relevant λ-torsion analysis. -/
def TmfTheta5Vanishing : Prop :=
  ∀ θ : HomotopyGroup (C := C) 62 SphereSpectrum,
    ClassicalTheta D θ → θ ≫ D.auxiliary.detectorUnit = 0

/-- The local classical Adams detection consequence of BMQ §7: κ̄⁴w
is nonzero, and its sphere detection is g⁴Δh₁g. The existential clause supplies ONE detected class with nonzero image.
Independence of the detected representative is a Main deduction, requiring
higher-filtration vanishing; it is not a further external input.
Identification of the selected detector/unit and these two labels with
the source is part of supplying this explicit external input. -/
def TmfHigh125Detection : Prop :=
  NonzeroSurvival (adamsTowerInternalSpectralSequence H.unit SphereSpectrum)
    (25,150) (L.high125 M) ∧
  ∃ α : HomotopyGroup (C := C) 125 SphereSpectrum,
    TowerDetection.Detects (D.classicalConvergence .sphere) (25,150)
      (L.high125 M) α ∧ α ≫ D.auxiliary.detectorUnit ≠ 0

/-- The small part of the classical tmf E₂ calculation needed to transport
the 62-stem vanishing through λ-localization. Source: BMQ §2,
H_*tmf = (A//A(2))_* and its change-of-rings E₂. There is no nonpositive-AF
class in positive stem 63. This is prior tmf input, not a Lin sphere CSV row. -/
def TmfLowFiltration63 : Prop :=
  ∀ s : ℤ, s ≤ 0 → Subsingleton (E2 H D.auxiliary.detector s (63+s))

/-- These are the primitive tmf inputs on classical homotopy.
`DetectorInjectiveAt D 125 130 15` is intentionally NOT a field: LWX
derives that useful local conclusion using its own tables and BHS. -/
structure TmfInputs : Prop where
  theta5_vanishes : TmfTheta5Vanishing D
  high125_detected : TmfHigh125Detection D L
  low_filtration_63 : TmfLowFiltration63 D
end
end KIP126.Literature.Route
