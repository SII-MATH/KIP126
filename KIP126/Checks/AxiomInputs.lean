import Lean

/-!
# Explicit review units for stage-input dependency regressions

The three former bundle axioms are now definitions. Their reviewed leaf inputs
are enumerated here: this does not allow arbitrary axioms from a namespace or
module. Where an existing regression requires a whole input, require every
reviewed field of that input, not merely an inherited foundation dependency.
The declaration inventory is checked in `ClassicalAdams.StageInputDeclarations`.
-/
namespace KIP126.Checks.AxiomInputs
open Lean

def direct (input : Name) : List Name :=
  if input == `KIP126.Classical.Adams.standardFoundation then
    [`KIP126.Classical.Adams.StandardFoundationInputs.Spectrum,
     `KIP126.Classical.Adams.StandardFoundationInputs.category,
     `KIP126.Classical.Adams.StandardFoundationInputs.preadditive,
     `KIP126.Classical.Adams.StandardFoundationInputs.shift,
     `KIP126.Classical.Adams.StandardFoundationInputs.monoidal,
     `KIP126.Classical.Adams.StandardFoundationInputs.shiftAdditive,
     `KIP126.Classical.Adams.StandardFoundationInputs.hasZeroObject,
     `KIP126.Classical.Adams.StandardFoundationInputs.pretriangulated,
     `KIP126.Classical.Adams.StandardFoundationInputs.cofib,
     `KIP126.Classical.Adams.StandardFoundationInputs.cofibι,
     `KIP126.Classical.Adams.StandardFoundationInputs.cofibδ,
     `KIP126.Classical.Adams.StandardFoundationInputs.cofib_distinguished,
     `KIP126.Classical.Adams.StandardFoundationInputs.cofibMap,
     `KIP126.Classical.Adams.StandardFoundationInputs.cofibMap_ι,
     `KIP126.Classical.Adams.StandardFoundationInputs.cofibMap_δ,
     `KIP126.Classical.Adams.StandardFoundationInputs.HF2,
     `KIP126.Classical.Adams.StandardFoundationInputs.pi0Equiv,
     `KIP126.Classical.Adams.StandardFoundationInputs.homotopy_vanishes]
  else if input == `KIP126.Classical.Adams.standardMilnorCooperations then
    [`KIP126.Classical.Adams.StandardMilnorInputs.coordinates,
     `KIP126.Classical.Adams.StandardMilnorInputs.differential_coordinates]
  else if input == `KIP126.Classical.Adams.linE2Presentation then
    [`KIP126.Classical.Adams.LinE2PresentationInputs.comparison,
     `KIP126.Classical.Adams.LinE2PresentationInputs.product,
     `KIP126.Classical.Adams.LinE2PresentationInputs.comparison_mul]
  else [input]

/-- Exact leaf allowlist, retaining the caller's existing logical/sorry policy. -/
def allows (inputs : List Name) (actual : Name) : Bool :=
  inputs.any fun input => (direct input).contains actual

/-- Preserve required input disclosure for every reviewed field. -/
def uses (actual : Array Name) (input : Name) : Bool :=
  (direct input).all actual.contains

end KIP126.Checks.AxiomInputs
