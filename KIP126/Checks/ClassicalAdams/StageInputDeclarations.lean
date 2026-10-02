import KIP126.Interface.Challenge.Challenge2
import KIP126.Main.Solution.StageInput
import Lean
open Lean Elab Command in
run_cmd do
  let env ← getEnv
  let some ci := env.find? ``KIP126.Interface.Challenge.challenge2
    | throwError "missing unified Interface delivery goal"
  let some ai := env.find? ``KIP126.Main.Axiom.challenge2
    | throwError "missing unified Main stage assumption"
  unless ci.type == ai.type do
    throwError "Interface delivery and Main assumption types differ"
  unless (← liftCoreM (collectAxioms ``KIP126.Interface.Challenge.challenge2)).contains ``sorryAx do
    throwError "Interface Challenge target must remain a placeholder"
  let consumerAxioms ← liftCoreM (collectAxioms ``KIP126.Main.StageInput.witness)
  unless consumerAxioms.contains ``KIP126.Main.Axiom.challenge2 do
    throwError "Main consumer no longer selects from the unified stage assumption"
