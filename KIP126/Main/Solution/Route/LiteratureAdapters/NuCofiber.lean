import KIP126.Def.Kervaire.Inputs.Literature.Data

namespace KIP126.Main.Solution.Route.LiteratureAdapters
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Synthetic.Context KIP126.Kervaire.Route
open KIP126.Literature.Route
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}
  (D : Model H M Syn) (η : BiHom 1 2 (S00 : Syn)) (G : TmfLabels H)

/-- The source construction provides one compatible triple; the three map
identities transport it to the particular normalized maps used everywhere
in D. No claim is made about all alternative normalized lift choices. -/
theorem nu_cofiber_applicability (A : Inputs D η G) : NuCofiberApplicability D := by
  sorry

/-- The exact triangle premise consumed by generalized Mahowald, on the
same nu, same cofiber arrows and same selected normalized maps. -/
theorem nu_triangle (A : Inputs D η G) :
    NormalizedTriangleCompatible D.toModelData D.auxiliary.nuRouteTriangle
      (A.nuSourceResults.exponent_sum D) :=
  (nu_cofiber_applicability D η G A).triangle _
end KIP126.Main.Solution.Route.LiteratureAdapters
