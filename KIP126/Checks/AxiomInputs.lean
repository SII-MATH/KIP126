import Lean

/-!
# Stage-boundary inputs used by dependency regressions

The old public compatibility names are definitions projected from one of the
two shared Challenge witnesses.  Dependency checks therefore allow the one
boundary axiom that actually supplies each witness.

The statement-development milestone permits unfinished property proofs in
the type of an admitted package. The scoped consumer audit below reports
that debt; it never certifies that a consumer has no direct `sorry` proof.
Pure proofs and undeclared inputs retain their strict checks. For explicit
proof-completion work, enable `kip126.checks.strictStageConsumerAudit` while
elaborating the check, or run the unchanged global `lake exe axioms` audit.
-/

register_option kip126.checks.strictStageConsumerAudit : Bool := {
  defValue := false
  descr := "reject sorryAx even in explicitly admitted Challenge2 consumers"
}

namespace KIP126.Checks.AxiomInputs
open Lean Elab Command

def direct (input : Name) : List Name :=
  if input == `KIP126.Classical.Adams.standardFoundation ||
      input == `KIP126.Classical.Adams.standardMilnorCooperations then
    [`KIP126.Interface.Axiom.challenge1]
  else if input == `KIP126.Classical.Adams.linE2Presentation ||
      input == `KIP126.Computation.LinProofs.sphereTable_sound then
    [`KIP126.Main.Axiom.challenge2]
  else
    [input]

def allows (inputs : List Name) (actual : Name) : Bool :=
  inputs.any fun input => (direct input).contains actual

def uses (actual : Array Name) (input : Name) : Bool :=
  (direct input).all actual.contains

/-- Audit one declared stage consumer, retaining the full dependency inventory.
Only an explicitly allowed and actually used Challenge2 axiom whose own type
already has `sorryAx` can receive the development warning. No other unexpected
axiom is admitted. Since `collectAxioms` returns names rather than dependency
paths, this warning cannot distinguish package-type debt from direct proof debt;
the explicit strict mode continues to reject both. -/
def checkStageConsumer (inputs : List Name) (declaration : Name)
    (context : String) : CommandElabM (Array Name) := do
  let axioms ← liftCoreM (collectAxioms declaration)
  let stage := `KIP126.Main.Axiom.challenge2
  let stageAllowed := inputs.any fun input => (direct input).contains stage
  let stageTypeHasSorry ←
    if stageAllowed && axioms.contains stage then
      match (← getEnv).find? stage with
      | some (.axiomInfo _) =>
          pure ((← liftCoreM (collectAxioms stage)).contains ``sorryAx)
      | _ => pure false
    else
      pure false
  for a in axioms do
    unless allows inputs a do
      if a == ``sorryAx && stageTypeHasSorry &&
          !kip126.checks.strictStageConsumerAudit.get (← getOptions) then
        logWarning <| m!"{context}: {declaration} depends on sorryAx; its explicitly admitted " ++
          m!"Challenge2 package type also contains unfinished proof debt. This inventory " ++
          m!"does not establish that the consumer has no direct sorry. Enable " ++
          m!"kip126.checks.strictStageConsumerAudit for the strict rejection."
      else
        throwError "{context}: {declaration}: {a}"
  return axioms

end KIP126.Checks.AxiomInputs
