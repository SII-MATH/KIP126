import KIP126.Def.Kervaire.Inputs.Literature.StandardClassicalSource
import KIP126.Def.Kervaire.Inputs.Literature.StandardTmfSource
import KIP126.Def.ClassicalAdams.StandardSphere.Classes.Data

/-! Explicit acceptance of precisely stated prior classical results on
the ONE standard topological sphere/HF2/Milnor background. These are
existence results about source objects, not axioms for arbitrary route
models. No ModelBindings, synthetic strengthening, C result or final
permanence statement is accepted by this module.

The standardFoundation source realization fixes the topological spectrum
category and completed sphere. Transport of BMQ's 2-local result to this
completed background is the usual completion of the same connective tmf,
unit and finite positive-stem classes, not a claim about every unbounded
spectrum. The exact source existence targets below retain all data needed
by the local route; every selected route still requires its explicit
ClassicalSourceBinding/TmfBinding and internal adaptation theorems.
-/
namespace KIP126.Main.Axiom.Literature
open KIP126.Classical.Adams KIP126.Literature.Route

/-- Xu v1 Cor.1.3; IWX v3 classical 62-stem and low-stem Hopf detections.
This chooses no global witness and says nothing about arbitrary D/eta. -/
axiom classical_source :
  StandardClassicalSourceExistence

/-- BMQ v4 Fig1.1, §2, §7 and IWX 2022 chart labels, in the fixed completed
sphere background. An arbitrary preselected detector is not quantified. -/
axiom tmf_source : StandardTmfSourceExistence
end KIP126.Main.Axiom.Literature
