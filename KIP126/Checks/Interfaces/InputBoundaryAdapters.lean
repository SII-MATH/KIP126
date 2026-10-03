import KIP126.Main.Solution.StageInput
import Lean.Elab.Command

/-! The Main input boundary has one admitted witness. A(M), including the
fixed-model May and synthetic source statements and the selected geometry,
is projected from that witness rather than imported from a parallel
`Main/Axiom/Literature` tree. -/

open Lean Elab Command in
run_cmd do
  let env ← getEnv
  for m in env.allImportedModuleNames do
    if (`KIP126.Main.Axiom.Literature).isPrefixOf m then
      throwError "obsolete parallel literature boundary imported: {m}"
  for name in [``KIP126.Main.StageInput.literature,
      ``KIP126.Main.StageInput.routeLiterature] do
    let some (.defnInfo _) := env.find? name
      | throwError "missing Challenge2 literature projection: {name}"
    let axioms ← liftCoreM (collectAxioms name)
    let allowed := [``propext, ``Classical.choice, ``Quot.sound, ``sorryAx,
      ``KIP126.Interface.Axiom.challenge1, ``KIP126.Main.Axiom.challenge2]
    for axiomName in axioms do
      unless allowed.contains axiomName do
        throwError "literature projection gained an independent axiom: {name}: {axiomName}"
