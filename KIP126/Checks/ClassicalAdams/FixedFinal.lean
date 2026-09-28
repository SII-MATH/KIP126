import KIP126.Checks.AxiomInputs
import KIP126.Main.Challenge.Final.h6_sq_permanent
import KIP126.Main.Solution.Final.h6_sq_permanent
import KIP126.Main.Axiom.LinProgram.Interpretation.Classes.Comparison.Proofs
import Lean.Elab.Command

/-! Exactly one final target, paired with one proof obligation. The comparison
lemmas may use C(M), but must not introduce a second final theorem. -/
open Lean Elab Command in
run_cmd do
  let env ← getEnv
  let challenge := ``KIP126.Challenge.Final.H6SquarePermanent.h6_sq_permanent
  let solution := ``KIP126.Solution.Final.H6SquarePermanent.h6_sq_permanent
  let some (.thmInfo ci) := env.find? challenge | throwError "missing final target"
  let some (.thmInfo si) := env.find? solution | throwError "missing final proof obligation"
  unless ci.type == si.type do
    throwError "Challenge/Solution statement mismatch"
  unless si.levelParams.isEmpty do
    throwError "unexpected universe parameters"
  if si.type.isForall then throwError "unexpected public parameter"
  unless ci.value.getUsedConstants.contains ``sorryAx do
    throwError "Challenge must remain a statement placeholder"
  for (name, info) in env.constants.toList do
    if (`KIP126.Challenge.Final).isPrefixOf name ||
        (`KIP126.Solution.Final).isPrefixOf name then
      if let .thmInfo _ := info then
        unless name == challenge || name == solution do
          throwError "extra final theorem: {name}"
  let logical := [``propext, ``Classical.choice, ``Quot.sound]
  let foundation := ``KIP126.Classical.Adams.standardFoundation
  let inputs := [foundation, ``KIP126.Classical.Adams.linE2Presentation]
  -- The unfinished Solution exposes its own proof debt. Its current placeholder
  -- does not establish an actual use of C(M) in a mathematical proof.
  let axioms ← liftCoreM (collectAxioms solution)
  for a in axioms do
    unless KIP126.Checks.AxiomInputs.allows (logical ++ [``sorryAx] ++ inputs) a do
      throwError "unexpected final dependency: {a}"
  unless axioms.contains ``sorryAx do
    throwError "update the proof-status audit when the final proof is completed"
  unless KIP126.Checks.AxiomInputs.uses axioms foundation do
    throwError "missing fixed foundation dependency"
  for a in ← liftCoreM (collectAxioms
      ``KIP126.Classical.Adams.computedH6Square_eq_standardH6Square) do
    unless KIP126.Checks.AxiomInputs.allows (logical ++ inputs) a do
      throwError "unproved or unexpected CSV/standard comparison dependency: {a}"

open KIP126.Classical.Adams KIP126.Core.SpectralSequence in
example : NonzeroSurvival sphereAdamsData (2, 128) standardH6Square :=
  KIP126.Solution.Final.H6SquarePermanent.h6_sq_permanent

open KIP126.Classical.Adams KIP126.Core.SpectralSequence in
example : NonzeroSurvival sphereAdamsData (2, 128) computedH6Square ↔
    NonzeroSurvival sphereAdamsData (2, 128) standardH6Square :=
  computedH6Square_nonzeroSurvival_iff_standard

#print axioms KIP126.Solution.Final.H6SquarePermanent.h6_sq_permanent
