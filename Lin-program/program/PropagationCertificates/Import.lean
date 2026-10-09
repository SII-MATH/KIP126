import PropagationCertificates.Rules

namespace PropagationCertificates
open Lean

structure Bundle where
  schema : String
  externalFacts : List Fact
  steps : List Step
  result : Fact
  deriving ToJson, FromJson

def encode (b : Bundle) : String := (toJson b).compress

def decode (text : String) : Except String Bundle := do
  let j ← Json.parse text
  let b : Bundle ← fromJson? j
  if encode b != text then throw "noncanonical JSON or duplicate/unknown field"
  if b.schema != "lin-propagation/v1" then throw "unsupported schema"
  return b

def importLine (line : Nat) (text : String) : Except String Bundle :=
  match decode text with
  | .error e => .error s!"line {line}: {e}"
  | .ok b =>
    if check b.externalFacts b.steps b.result then .ok b
    else match firstFailure b.externalFacts 0 [] b.steps with
      | some row => .error s!"line {line}, step {row}: missing premise or external fact"
      | none => .error s!"line {line}, result: result was not derived"

theorem importLine_checked (line : Nat) (text : String) (b : Bundle)
    (h : importLine line text = .ok b) : check b.externalFacts b.steps b.result = true := by
  unfold importLine at h
  split at h
  · contradiction
  · split at h
    next hc => cases h; exact hc
    next => split at h <;> contradiction

theorem importLine_sound {A : Type} [Semiring A] (m : Model A)
    (line : Nat) (text : String) (b : Bundle)
    (he : ∀ f ∈ b.externalFacts, Valid m f)
    (h : importLine line text = .ok b) : Valid m b.result :=
  check_sound m b.externalFacts he b.steps b.result (importLine_checked line text b h)

end PropagationCertificates
