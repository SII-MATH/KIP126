import Lean
/-! Dependency inventories distinguish accepted explicit A/C axioms from
unfinished proof debt. This is a development check, not final certification. -/
namespace KIP126.Checks.AxiomInputs
open Lean Elab Command
def direct (input : Name) : List Name :=
  if input == `KIP126.Classical.Adams.standardFoundation ||
      input == `KIP126.Classical.Adams.standardMilnorCooperations then [``sorryAx]
  else if input == `KIP126.Classical.Adams.linE2Presentation ||
      input == `KIP126.Computation.LinProofs.sphereTable_sound then []
  else [input]
def allows (inputs : List Name) (actual : Name) : Bool :=
  inputs.any fun input => (direct input).contains actual
def uses (actual : Array Name) (input : Name) : Bool :=
  (direct input).all actual.contains
def checkStageConsumer (inputs : List Name) (declaration : Name)
    (context : String) : CommandElabM (Array Name) := do
  let axioms ← liftCoreM (collectAxioms declaration)
  for a in axioms do
    unless allows inputs a do
      if a == ``sorryAx then
        logWarning m!"{context}: {declaration} has unfinished structural or proof debt"
      else
        throwError "{context}: {declaration}: {a}"
  return axioms
end KIP126.Checks.AxiomInputs
