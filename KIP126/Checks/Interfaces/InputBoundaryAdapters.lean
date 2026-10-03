import KIP126.Main.Solution.Literature.Synthetic
import KIP126.Main.Solution.Literature.InternalGeometry
import KIP126.Main.Solution.Literature.May
import KIP126.Main.Solution.Literature.SyntheticBockstein
import KIP126.Main.Solution.Literature.SyntheticEInfty
import Lean.Elab.Command

/-! Explicit evidence extraction belongs to Solution and introduces no new
assumption beyond the input type. These proofs have no Challenge mirror. -/

open Lean Elab Command in
run_cmd do
  let env ← getEnv
  for m in env.allImportedModuleNames do
    if (`KIP126.Main.Challenge).isPrefixOf m ||
        (`KIP126.Interface.Challenge).isPrefixOf m ||
        (`KIP126.Def.Challenge).isPrefixOf m then
      throwError "Solution imports a Challenge placeholder module: {m}"
  for solution in [
      ``KIP126.Synthetic.SyntheticLiteratureInput.interface,
      ``KIP126.Kervaire.GeometryLiteratureInput.interface,
      ``KIP126.Kervaire.InternalBrowderLiteratureInput.interface,
      ``KIP126.Stable.MayLiteratureInput.interface] do
    let some (.thmInfo _) := env.find? solution | throwError "missing Solution theorem {solution}"
    let some moduleIdx := env.getModuleIdxFor? solution
      | throwError "missing Solution module: {solution}"
    let owner := env.header.moduleNames[moduleIdx]!
    unless (`KIP126.Main.Solution).isPrefixOf owner do
      throwError "evidence extraction moved outside Solution: {solution}: {owner}"
    let logical := [``propext, ``Classical.choice, ``Quot.sound]
    let projectAxioms := (← liftCoreM (collectAxioms solution)).filter
      (fun name => !logical.contains name)
    -- Browder's existing conclusion uses the fixed internal sphere, whose
    -- type already depends on Challenge 1. The projection adds no assumption.
    -- The other three interfaces are generic and have no stage dependency.
    if solution == ``KIP126.Kervaire.InternalBrowderLiteratureInput.interface then
      let typeAxioms := (← liftCoreM (collectAxioms ``KIP126.Challenge2.BrowderInterface)).filter
        (fun name => !logical.contains name)
      let expected := [``KIP126.Interface.Axiom.challenge1]
      unless typeAxioms.toList.all expected.contains && expected.all typeAxioms.contains do
        throwError "Browder input type changed its stage dependencies: {typeAxioms}"
      unless projectAxioms.toList.all typeAxioms.contains &&
          typeAxioms.toList.all projectAxioms.contains do
        throwError "Browder extraction differs from its input type dependencies: {projectAxioms}"
    else
      unless projectAxioms.isEmpty do
        throwError "generic evidence extraction gained assumptions: {solution}: {projectAxioms}"
