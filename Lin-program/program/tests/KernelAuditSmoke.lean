import Lean.Util.CollectAxioms
import KervaireProgram.Checker
open Lean Elab Command
set_option maxHeartbeats 0 in
run_cmd do
  let env := (← getEnv).setExporting false
  let names := env.constants.toList.filterMap fun (name, _) => do
    let index ← env.getModuleIdxFor? name
    let owner := env.header.moduleNames[index.toNat]!
    if [`KervaireProgram.Checker].contains owner then some name else none
  for name in names do
    let axioms ← collectAxioms name
    for axiomName in axioms do
      unless [``propext, ``Classical.choice, ``Quot.sound].contains axiomName do
        throwError "undeclared axiom {axiomName} used by {name}"
  logInfo m!"PASS: {names.length} declarations"
