import ManualInputObligations.Reference.Foundations
import ManualInputObligations.Reference.AlgebraTopology
import ManualInputObligations.Reference.CohomologySteenrod
import ManualInputObligations.Reference.SteenrodAdams
import ManualInputObligations.Reference.AdamsHomology
import ManualInputObligations.Reference.AdamsRules
import ManualInputObligations.Typed
import Lean.Util.CollectAxioms
open Lean Elab Command
private def auditedModules : List Name := [`ManualInputObligations.Reference.Foundations, `ManualInputObligations.Reference.AlgebraTopology, `ManualInputObligations.Reference.CohomologySteenrod, `ManualInputObligations.Reference.SteenrodAdams, `ManualInputObligations.Reference.AdamsHomology, `ManualInputObligations.Reference.AdamsRules, `ManualInputObligations.Typed]
set_option maxHeartbeats 0 in
run_cmd do
  let env := (← getEnv).setExporting false
  let names := env.constants.toList.filterMap fun (name, _) => do
    let index ← env.getModuleIdxFor? name
    let owner := env.header.moduleNames[index.toNat]!
    if auditedModules.contains owner then some name else none
  let mut reports : Array Json := #[]
  for name in names do
    let axioms ← collectAxioms name
    for axiomName in axioms do
      unless [``propext, ``Classical.choice, ``Quot.sound].contains axiomName do
        throwError "undeclared axiom {axiomName} used by {name}"
    reports := reports.push <| Json.mkObj [
      ("declaration", toJson name.toString),
      ("axioms", toJson (axioms.map Name.toString))]
  unless reports.size > 0 do
    throwError "no local declarations audited"
  liftIO <| IO.FS.writeFile "ManualInputObligations/declaration-axioms.json" <|
    (Json.mkObj [("modules", toJson (auditedModules.map Name.toString)),
      ("declarations", Json.arr reports)]).pretty
  logInfo m!"PASS: {reports.size} declarations in {auditedModules.length} modules; standard axioms only"
