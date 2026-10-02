import KIP126.Interface.Challenge.Literature.Route.Adapters
import KIP126.Interface.Solution.Literature.Route.Adapters
import KIP126.Interface.Challenge.LinProgram.Route.Certification
import KIP126.Interface.Solution.LinProgram.Route.Certification
import KIP126.Def.Comparison.ClassicalSynthetic.RealizationTower.FirstQuotient.Proofs
import KIP126.Def.Comparison.ClassicalSynthetic.RealizationWeights.Proofs
import KIP126.Def.ClassicalAdams.Detection.Convergence.Uniqueness
import KIP126.Def.ClassicalAdams.Detection.Convergence.Proofs
import KIP126.Def.Synthetic.AdamsFiltration.Convergence.Proofs
import KIP126.Def.Synthetic.Detection.Proofs
import Lean.Elab.Command
import Lean.Meta.Basic

/-! Mechanical boundary checks. These do not certify the remaining sorry proofs. -/
noncomputable section
open Lean Elab Command in
run_cmd do
  let env ← getEnv
  for (solution, challenge) in [
      (``KIP126.Interface.Solution.Literature.Route.nuCofiber_of_source,
       ``KIP126.Interface.Challenge.Literature.Route.nuCofiber_of_source),
      (``KIP126.Interface.Solution.Literature.Route.tmf_of_source,
       ``KIP126.Interface.Challenge.Literature.Route.tmf_of_source),
      (``KIP126.Interface.Solution.Literature.Route.application_of_parts,
       ``KIP126.Interface.Challenge.Literature.Route.application_of_parts),
      (``KIP126.Interface.Solution.LinProgram.Route.certify_of_parts,
       ``KIP126.Interface.Challenge.LinProgram.Route.certify_of_parts),
      (``KIP126.Interface.Solution.LinProgram.Route.certification,
       ``KIP126.Interface.Challenge.LinProgram.Route.certification)] do
    let some si := env.find? solution | throwError "missing solution {solution}"
    let some (.thmInfo ci) := env.find? challenge | throwError "missing challenge {challenge}"
    unless si.levelParams.length == ci.levelParams.length do
      throwError "universe mismatch {solution}"
    let ct := ci.type.instantiateLevelParams ci.levelParams (si.levelParams.map Level.param)
    unless ← liftTermElabM (Lean.Meta.isDefEq si.type ct) do
      throwError "signature mismatch {solution}"
    unless ci.value.getUsedConstants.contains ``sorryAx do
      throwError "Challenge must stay open {challenge}"

open KIP126 KIP126.Classical.Adams KIP126.Computation.Route in
example (I : KIP126.Challenge2) :
    I.computation.route.toCertifiedRealization.toInputs = I.computation.route := rfl

open KIP126 KIP126.Classical.Adams in
example (I : KIP126.Challenge2) :
    Literature.Route.Inputs standardRouteModel I.modelBindings.routeEta I.modelBindings.tmfLabels :=
  Literature.Route.Statements.toInputs standardRouteModel I.modelBindings.routeEta
    I.modelBindings.tmfLabels I.literature.route I.routeApplication
