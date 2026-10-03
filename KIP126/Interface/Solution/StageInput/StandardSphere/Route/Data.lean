import KIP126.Interface.Solution.StageInput.StandardSphere.Classes.Data
import KIP126.Def.Kervaire.Route.Model.Coherent.Data

/-! The route type and its selected witness are projections of Challenge1.
There is no new axiom or second foundation witness. Construction remains
the Def stage producer obligation. -/
namespace KIP126.Classical.Adams
open KIP126.StableHomotopy KIP126.Synthetic.Context
universe w
abbrev StandardRouteModel (Syn : Type w) [SyntheticCategory.{w, 0} Syn]
    [HasFunctorialCofiber (C := Syn)] :=
  KIP126.Kervaire.Route.Model standardFoundation.hf2 standardMilnorCooperations Syn
/-- The synthetic category selected in the same Challenge1 witness as the
fixed sphere and Milnor coordinates. No additional existence axiom. -/
abbrev StandardSynthetic := KIP126.Interface.StageInput.witness.routeInput.Syn

/-- The one selected Section 7 model, before A(M) or C(M). -/
noncomputable def standardRouteModel : StandardRouteModel StandardSynthetic :=
  KIP126.Interface.StageInput.witness.routeInput.model

end KIP126.Classical.Adams
