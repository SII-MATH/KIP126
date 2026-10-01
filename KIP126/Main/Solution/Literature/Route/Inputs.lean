import KIP126.Def.Kervaire.Inputs.Literature.Data
import KIP126.Main.Solution.Route.LiteratureAdapters.NuCofiber

namespace KIP126.Literature.Route
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology KIP126.Classical.Adams
open KIP126.Synthetic.Context KIP126.Kervaire.Route
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}
  (D : Model H M Syn) (η : BiHom 1 2 (S00 : Syn)) (L : TmfLabels H)

/-- The actual Cν triangle required by the Mahowald tool is available
without assuming the tool's conclusion or a computed ν-extension. -/
theorem Inputs.nuTriangle (I : Inputs D η L) :
    NormalizedTriangleCompatible D.toModelData D.auxiliary.nuRouteTriangle
      (I.nuSourceResults.exponent_sum D) :=
  KIP126.Main.Solution.Route.LiteratureAdapters.nu_triangle D η L I
end KIP126.Literature.Route
