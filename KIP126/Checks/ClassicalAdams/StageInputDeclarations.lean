import KIP126.Interface.Challenge.LinProgram.BasisTable
import KIP126.Main.Solution.StageInput
import Lean
open Lean Elab Command in
run_cmd do
  let env ← getEnv
  let some ci := env.find? ``KIP126.Interface.Challenge.LinE2.basisTable_correct
    | throwError "missing C certification goal"
  let some ai := env.find? ``KIP126.Main.StageInput.basisTable_correct
    | throwError "missing C projection from the unified stage input"
  unless ci.type == ai.type do
    throwError "C certification and consumer types differ"
  unless (← liftCoreM (collectAxioms ``KIP126.Interface.Challenge.LinE2.basisTable_correct)).contains ``sorryAx do
    throwError "Challenge target must remain a placeholder"
  let consumerAxioms ← liftCoreM (collectAxioms ``KIP126.Main.StageInput.basisTable_correct)
  unless consumerAxioms.contains ``KIP126.Main.Axiom.challenge2 do
    throwError "C consumer no longer projects from the unified stage assumption"
