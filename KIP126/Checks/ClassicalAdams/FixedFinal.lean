import KIP126.Challenge.Final.h6_sq_permanent
import KIP126.Challenge.Final.h6_sq_permanent_computational
import KIP126.Solution.Final.h6_sq_permanent
import Lean.Elab.Command

/-! Guard the public signatures and disclose, rather than erase, proof debt. -/
open Lean Elab Command in
run_cmd do
  let env ← getEnv
  let formal := ``KIP126.Solution.Final.H6SquarePermanent.h6_sq_permanent
  let computational :=
    ``KIP126.Solution.Final.H6SquarePermanent.h6_sq_permanent_computational
  let some (.thmInfo formalInfo) := env.find? formal
    | throwError "missing standard theorem"
  if formalInfo.value.getUsedConstants.contains ``sorryAx then
    throwError "standard theorem has a direct sorry placeholder"
  for (challenge, solution) in [
      (``KIP126.Challenge.Final.H6SquarePermanent.h6_sq_permanent, formal),
      (``KIP126.Challenge.Final.H6SquarePermanent.h6_sq_permanent_computational,
        computational)] do
    let some ci := env.find? challenge | throwError "missing {challenge}"
    let some si := env.find? solution | throwError "missing {solution}"
    unless ci.type == si.type do
      throwError "Challenge/Solution statement mismatch: {challenge}"
    unless si.levelParams.isEmpty do
      throwError "unexpected universe parameters: {solution}"
    if si.type.isForall then
      throwError "unexpected public parameter: {solution}"
  let axioms ← liftCoreM (collectAxioms formal)
  let expected := [``propext, ``Classical.choice, ``Quot.sound, ``sorryAx,
    ``KIP126.Classical.Adams.standardFoundation,
    ``KIP126.Classical.Adams.standardMilnorCooperations,
    ``KIP126.Classical.Adams.linE2Presentation]
  for a in axioms do
    unless expected.contains a do throwError "unexpected final dependency: {a}"
  for a in expected.drop 3 do
    unless axioms.contains a do throwError "missing disclosed dependency: {a}"

#print axioms KIP126.Solution.Final.H6SquarePermanent.h6_sq_permanent
#print axioms KIP126.Solution.Final.H6SquarePermanent.h6_sq_permanent_computational
