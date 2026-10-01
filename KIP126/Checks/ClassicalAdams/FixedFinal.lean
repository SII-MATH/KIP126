import KIP126.Main.Challenge.Final.h6_sq_permanent
import KIP126.Main.Solution.Route.Conditional
import KIP126.Main.Solution.Final.h6_sq_permanent
import KIP126.Main.Solution.Computation.Comparisons.Classes
import Lean.Elab.Command

/-! Both the conditional route and the unified-stage A/C assembly conclude
exactly the same standard T. The latter still has explicit downstream proof
debts; this check does not assert a completed proof. -/
open Lean Elab Command in
run_cmd do
  let env ← getEnv
  let some challenge := env.find? ``KIP126.Challenge.Final.H6SquarePermanent.h6_sq_permanent
    | throwError "missing standard Challenge"
  let some conditional := env.find? ``KIP126.Main.Solution.Route.standard_final_of_inputs
    | throwError "missing same-model conditional derivation"
  let mut conclusion := conditional.type
  while let .forallE _ _ body _ := conclusion do
    conclusion := body
  unless conclusion == challenge.type do
    throwError "conditional route must conclude precisely the standard Final type"
  let some (.thmInfo final) := env.find? ``KIP126.Main.Solution.h6_sq_permanent
    | throwError "missing outer A/C assembly"
  unless final.type == challenge.type do
    throwError "outer A/C assembly changed the standard target"
  if final.value.getUsedConstants.contains ``sorryAx then
    throwError "outer assembly must use the explicit model/A/C/route chain"
  let axioms ← liftCoreM (collectAxioms ``KIP126.Main.Solution.h6_sq_permanent)
  unless axioms.contains ``KIP126.Main.Axiom.challenge2 do
    throwError "outer assembly no longer consumes the unified A(M)/C(M) stage input"
  for a in axioms do
    unless [``propext, ``Classical.choice, ``Quot.sound, ``sorryAx].contains a ||
        (`KIP126.Main.Axiom).isPrefixOf a do
      throwError "unclassified axiom in outer assembly: {a}"

  -- A18 accepts source algebra existence only. The action and the selected
  -- cofiber restriction must remain internal transport obligations.
  let some quotientSource := env.find? ``KIP126.Main.StageInput.quotient_algebras
    | throwError "missing quotient source projection"
  let sourceTypeNames := quotientSource.type.getUsedConstants
  unless sourceTypeNames.contains ``KIP126.Literature.Route.QuotientAlgebraStructures do
    throwError "quotient source no longer states the raw algebra existence"
  if sourceTypeNames.contains ``KIP126.Literature.Route.QuotientAlgebras then
    throwError "selected quotient action/restriction leaked into A18"
  for n in [``KIP126.Main.Solution.Literature.quotient_negative_window,
      ``KIP126.Main.Solution.Literature.quotient_unit_map_multiplicative,
      ``KIP126.Main.Solution.Literature.source_quotient_algebras] do
    for a in ← liftCoreM (collectAxioms n) do
      unless [``propext, ``Classical.choice, ``Quot.sound, ``sorryAx].contains a do
        throwError "quotient transport acquired an accepted result dependency: {n}: {a}"

section
variable [KIP126.Classical.Adams.LinE2Presentation]
open KIP126.Classical.Adams KIP126.Core.SpectralSequence in
example : NonzeroSurvival sphereAdamsData (2, 128) computedH6Square ↔
    NonzeroSurvival sphereAdamsData (2, 128) standardH6Square :=
  computedH6Square_nonzeroSurvival_iff_standard
end
#print axioms KIP126.Main.Solution.Route.standard_final_of_inputs

#print axioms KIP126.Main.Solution.h6_sq_permanent
