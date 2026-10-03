import KIP126.Main.Challenge.Literature.Synthetic
import KIP126.Main.Solution.Literature.Synthetic
import KIP126.Main.Challenge.Literature.InternalGeometry
import KIP126.Main.Solution.Literature.InternalGeometry
import KIP126.Main.Challenge.Literature.May
import KIP126.Main.Solution.Literature.May
import KIP126.Main.Solution.Literature.SyntheticBockstein
import KIP126.Main.Solution.Literature.SyntheticEInfty
import Lean.Elab.Command
import Lean.Meta.Basic

/-! Moving explicit evidence extraction out of Axiom preserves its proof and
type. Its statement track remains open and cannot supply the Solution proof. -/

open Lean Elab Command in
run_cmd do
  let env ← getEnv
  for (solution, challenge) in [
      (``KIP126.Synthetic.SyntheticLiteratureInput.interface,
       ``KIP126.Synthetic.Challenge.SyntheticLiteratureInput.interface),
      (``KIP126.Kervaire.GeometryLiteratureInput.interface,
       ``KIP126.Kervaire.Challenge.GeometryLiteratureInput.interface),
      (``KIP126.Kervaire.InternalBrowderLiteratureInput.interface,
       ``KIP126.Kervaire.Challenge.InternalBrowderLiteratureInput.interface),
      (``KIP126.Stable.MayLiteratureInput.interface,
       ``KIP126.Stable.Challenge.MayLiteratureInput.interface)] do
    let some (.thmInfo si) := env.find? solution | throwError "missing solution {solution}"
    let some (.thmInfo ci) := env.find? challenge | throwError "missing challenge {challenge}"
    unless si.levelParams.length == ci.levelParams.length do
      throwError "universe mismatch {solution}"
    let ct := ci.type.instantiateLevelParams ci.levelParams (si.levelParams.map Level.param)
    unless ← liftTermElabM (Lean.Meta.isDefEq si.type ct) do
      throwError "signature mismatch {solution}"
    unless ci.value.getUsedConstants.contains ``sorryAx do
      throwError "Challenge must remain open {challenge}"
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
