import Lean

/-!
# Stage-boundary inputs used by dependency regressions

The old public compatibility names are definitions projected from one of the
two shared Challenge witnesses.  Dependency checks therefore allow the one
boundary axiom that actually supplies each witness.
-/
namespace KIP126.Checks.AxiomInputs
open Lean

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

end KIP126.Checks.AxiomInputs
