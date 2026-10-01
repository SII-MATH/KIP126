import KIP126.Def.ClassicalAdams.StandardSphere.Classes.Data
import KIP126.Def.ClassicalAdams.StandardCooperations
import KIP126.Def.Kervaire.Route.Model.Coherent.Data

/-! A type alias, not a new axiom or a second foundation witness. Any future
synthetic realization used by the fixed final proof must have this type. -/
namespace KIP126.Classical.Adams
open KIP126.StableHomotopy KIP126.Synthetic.Context
universe w
abbrev StandardRouteModel (Syn : Type w) [SyntheticCategory.{w, 0} Syn]
    [HasFunctorialCofiber (C := Syn)] :=
  KIP126.Kervaire.Route.Model standardFoundation.hf2 standardMilnorCooperations Syn
end KIP126.Classical.Adams
