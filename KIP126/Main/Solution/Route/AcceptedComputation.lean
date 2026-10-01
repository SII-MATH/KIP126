import KIP126.Main.Axiom.Computation.Route
import KIP126.Main.Axiom.Literature.Range
import KIP126.Main.Solution.Route.Conditional
import KIP126.Main.Solution.Route.LiteratureAdapters.ComputationPrerequisites

/-! Actual consumption wiring for the explicit C axiom. The source/model
package is a visible parameter, not an axiom for arbitrary D. In particular
the source realization is constructed separately in the definition layer.
The proof eliminates the ONE C existential locally and preserves its R/L.
No Interface Challenge placeholder is imported. -/
namespace KIP126.Main.Solution.Route
open KIP126.StableHomotopy KIP126.Synthetic.Context KIP126.Classical.Adams
open KIP126.Core.SpectralSequence KIP126.Kervaire.Route
universe w
variable {Syn : Type w} [SyntheticCategory.{w, 0} Syn]
  [HasFunctorialCofiber (C := Syn)]

theorem standard_final_of_accepted_computation
    (D : StandardRouteModel Syn) (η : BiHom 1 2 (S00 : Syn))
    (G : KIP126.Literature.Route.TmfLabels standardFoundation.hf2)
    (A : KIP126.Literature.Route.Inputs D η G)
    (hGeometry : KIP126.Literature.Route.StandardClassicalSourceGeometry A.classicalSource) :
    NonzeroSurvival sphereAdamsData (2,128) standardH6Square := by
  obtain ⟨R, L, cert⟩ := KIP126.Main.Axiom.Computation.route_certification D G
    (LiteratureAdapters.geometric_nu_source_identification D η G A hGeometry)
    (LiteratureAdapters.tmf_labels_standard D η G A)
  exact standard_final_of_inputs D η G L A cert.toInputs
    KIP126.Main.Axiom.Literature.sphere_vanishing_line
    KIP126.Main.Axiom.Literature.sphere_separated
end KIP126.Main.Solution.Route
