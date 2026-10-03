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
    if (`KIP126.Main.Challenge).isPrefixOf m || (`KIP126.Def.Challenge).isPrefixOf m then
      throwError "Solution imports a Challenge placeholder module: {m}"
    if (`KIP126.Main.Axiom.Literature).isPrefixOf m then
      throwError "obsolete parallel literature boundary imported: {m}"
  for name in [``KIP126.Main.StageInput.literature,
      ``KIP126.Main.StageInput.routeLiterature,
      ``KIP126.Main.StageInput.geometryLiterature] do
    let some (.defnInfo _) := env.find? name
      | throwError "missing Challenge2 literature projection: {name}"
    let axioms ← liftCoreM (collectAxioms name)
    let allowed := [``propext, ``Classical.choice, ``Quot.sound, ``sorryAx,
      ``KIP126.Main.Axiom.challenge2]
    for axiomName in axioms do
      unless allowed.contains axiomName do
        throwError "literature projection gained an independent axiom: {name}: {axiomName}"

  for root in [``KIP126.Main.StageInput.literature,
      ``KIP126.Main.StageInput.routeLiterature,
      ``KIP126.Main.StageInput.geometryLiterature] do
    let mut pending := #[root]
    let mut seen : NameSet := {}
    while !pending.isEmpty do
      let name := pending.back!
      pending := pending.pop
      if seen.contains name then continue
      seen := seen.insert name
      if name == `KIP126.Interface.Challenge.challenge2 then
        throwError "literature projection uses the Challenge2 placeholder"
      let some info := env.find? name | continue
      if let some idx := env.getModuleIdxFor? name then
        unless (`KIP126).isPrefixOf env.header.moduleNames[idx]! do continue
      pending := pending ++ info.type.getUsedConstants
      if let some value := info.value? then
        pending := pending ++ value.getUsedConstants
