import KIP126.Def.Kervaire.Inputs.Literature.Data
import KIP126.LinProgram.Route.Certification.Standard
import KIP126.Def.Kervaire.Inputs.Literature.StandardClassicalSource

/-! Literature/source identification before computation certification.
These projections use no computed result, avoiding a cycle in the Cnu
certificate applicability and the standard g/Delta h1g label conditions. -/
namespace KIP126.Main.Solution.Route.LiteratureAdapters
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Synthetic.Context KIP126.Kervaire.Route
open KIP126.Literature.Route
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}
  (D : Model H M Syn) (η : BiHom 1 2 (S00 : Syn)) (G : TmfLabels H)

theorem tmf_labels_standard (A : Inputs D η G) : G.Standard := by
  simpa only [TmfLabels.Standard, A.tmfBinding.g, A.tmfBinding.deltaH1g] using
    A.tmf.standard_labels

theorem nu_detection_identification (A : Inputs D η G) :
    KIP126.Computation.Route.NuDetectionIdentification D :=
  ⟨A.classical.hopf.2.2.2, A.classical.hopf.2.1.2.1⟩

section Standard
variable {SynStd : Type w} [SyntheticCategory.{w, 0} SynStd]
  [HasFunctorialCofiber (C := SynStd)]

/-- Geometry is supplied for the SAME classical source already present
in A. The route/source equality and source/geometric equality compose;
Adams detection alone is never promoted to a geometric identification. -/
theorem geometric_nu_source_identification (D : StandardRouteModel SynStd)
    (η : BiHom 1 2 (S00 : SynStd)) (G : TmfLabels standardFoundation.hf2)
    (A : Inputs D η G) (hGeometry : StandardClassicalSourceGeometry A.classicalSource) :
    KIP126.Computation.Route.GeometricNuSourceIdentification D :=
  ⟨nu_detection_identification D η G A, A.bindings.classical.nu.trans hGeometry.nu⟩
end Standard
end KIP126.Main.Solution.Route.LiteratureAdapters
