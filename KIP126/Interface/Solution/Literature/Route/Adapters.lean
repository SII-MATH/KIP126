import KIP126.Interface.Solution.Literature.Route.BHS
import KIP126.Interface.Solution.Literature.Route.Moss
import KIP126.Interface.Solution.Literature.Route.RealizationKernel
import KIP126.Interface.Solution.Literature.Route.Toda
import KIP126.Interface.Solution.Literature.Route.May
import KIP126.Interface.Challenge.Challenge2

namespace KIP126.Interface.Solution.Literature.Route
open CategoryTheory CategoryTheory.Pretriangulated
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Core.SpectralSequence
open KIP126.Classical.Adams KIP126.Synthetic.Context KIP126.Kervaire.Route
open KIP126.Literature.Route
universe u v w
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}
  (D : Model H M Syn)

set_option backward.isDefEq.respectTransparency false in
/-- Transport a compatible source triple along the three ACTUAL map equalities.
No statement is made about arbitrary normalized lifts. -/
theorem nuCofiber_of_source (S : NuCofiberSourceData D)
    (hS : NuCofiberSourceResults D S) (B : NuCofiberLiftBinding D S) :
    NuCofiberApplicability D := by
  refine ⟨hS.nu_exponent, hS.bottom_exponent, hS.top_exponent, ?_, ?_⟩
  · simpa [sourceNormalizedNu, normalizedNu, B.nu] using hS.normalized_label
  · intro he
    change normalizedTriangle D.toModelData D.auxiliary.nuRouteTriangle he ∈ distTriang Syn
    have h := hS.triangle he
    convert h using 1
    simp [normalizedTriangle, sourceNormalizedTriangle, normalizedConnecting,
        sourceNormalizedConnecting, AuxiliaryData.nuRouteTriangle,
        B.nu, B.bottom, B.top]

/-- Assemble source transports on the SAME bindings. The secondary Toda
comparison, completed-source comparisons and compatible lift triple remain explicit
producer premises; source names alone do not establish those comparisons.
The tmf leading-grade survival deduction is not an Interface delivery. -/
theorem application_of_parts (η : BiHom 1 2 (S_0_0 : Syn)) (G : TmfLabels H)
    (B : Bindings D η G) (A : Statements D η G B)
    (hBHS : BHSCompletionApplicability D B.bhsCompletion)
    (cBHS : BHSCompletionComparison D B.bhsCompletion)
    (rBHS : BHSRealizationComparison D B.realization B.bhsCompletion)
    (secondary : TodaSecondaryComparison η B.todaSource)
    (hnu : NuCofiberSourceResults D B.nuSource) : Application D η G B := by
  exact ⟨hBHS, cBHS,
    realization_detection_of_completed_sources D B.realization B.bhsCompletion
      A.realization hBHS cBHS rBHS,
    may_signed_boundary_of_source B.may A.may,
    todaApplication_of_secondary η B.todaSource secondary,
    realizationKernel_of_source D B.kernelSource A.realizationKernel B.kernelBinding,
    mossInputOfClassicalSource D η B.classicalSource B.classicalBinding A.moss,
    hnu, nuCofiber_of_source D B.nuSource hnu B.nuBinding⟩

end
end KIP126.Interface.Solution.Literature.Route
