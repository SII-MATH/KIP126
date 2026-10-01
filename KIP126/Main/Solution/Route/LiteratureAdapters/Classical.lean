import KIP126.Def.Kervaire.Inputs.Literature.ClassicalSource

namespace KIP126.Main.Solution.Route.LiteratureAdapters
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology KIP126.Classical.Adams
open KIP126.Synthetic.Context KIP126.Kervaire.Route KIP126.Literature.Route
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}
  (D : Model H M Syn) (η : BiHom 1 2 (S00 : Syn))

/-- A classical source theorem can be used on D only after the actual
maps/convergence are identified. Synthetic eta detection is a separate
BHS/model premise, never a consequence of the classical source existence. -/
theorem classical_route_inputs (S : ClassicalSourceData H)
    (hS : ClassicalSourceResults M S) (B : ClassicalSourceBinding D η S)
    (hη : EtaChoice M D.toModelData η) : ClassicalInputs D η :=
  classicalInputsOfSource D η S hS B hη
end KIP126.Main.Solution.Route.LiteratureAdapters
