import LinProgramCertificates.Tactic
import Lean

namespace ActualTraceRequests
open LinProgramCertificates

/-- This record contains data only. Actual Adams interpretations are separate. -/
structure Request where
  version : Nat
  claim : String
  source : List Bool
  output : List Bool
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr, DecidableEq

structure Specification where
  claim : String
  source : List Bool
  output : List Bool

def check (spec : Specification) (request : Request) : Bool :=
  decide (request.version = 1) && decide (request.claim = spec.claim) &&
    decide (request.source = spec.source) && decide (request.output = spec.output)

theorem check_sound (spec : Specification) (request : Request)
    (accepted : check spec request = true) :
    request.version = 1 ∧ request.claim = spec.claim ∧
      request.source = spec.source ∧ request.output = spec.output := by
  simpa only [check, Bool.and_eq_true, decide_eq_true_eq, and_assoc] using accepted

def diagnose (spec : Specification) (request : Request) : Option VerificationFailure :=
  if request.version != 1 then some ⟨"actual_trace", "version", "expected version 1"⟩
  else if request.claim != spec.claim then some ⟨"actual_trace", "claim", "claim differs from goal"⟩
  else if request.source.length != spec.source.length then
    some ⟨"actual_trace", "source.length", "input coordinate count differs from goal"⟩
  else if request.source != spec.source then
    some ⟨"actual_trace", "source", "input coordinates differ from goal"⟩
  else if request.output.length != spec.output.length then
    some ⟨"actual_trace", "output.length", "output coordinate count differs from goal"⟩
  else if request.output != spec.output then
    some ⟨"actual_trace", "output", "output coordinates differ from goal"⟩
  else none

theorem diagnose_none_iff (spec : Specification) (request : Request) :
    diagnose spec request = none ↔ check spec request = true := by
  unfold diagnose check
  by_cases hv : request.version = 1
  · by_cases hc : request.claim = spec.claim
    · by_cases hs : request.source = spec.source
      · by_cases ho : request.output = spec.output
        · simp_all
        · by_cases hl : request.output.length = spec.output.length <;> simp_all
      · by_cases hl : request.source.length = spec.source.length <;> simp_all
    · simp_all
  · simp_all

def checkBatch (spec : Specification) (requests : List Request) : Bool :=
  requests.all (check spec)

def diagnoseBatch (spec : Specification) : List Request → Nat → Option (Nat × VerificationFailure)
  | [], _ => none
  | request :: rest, index =>
    match diagnose spec request with
    | some failure => some (index, failure)
    | none => diagnoseBatch spec rest (index + 1)

theorem diagnoseBatch_none_iff (spec : Specification) (requests : List Request) (index : Nat) :
    diagnoseBatch spec requests index = none ↔ checkBatch spec requests = true := by
  induction requests generalizing index with
  | nil => simp [diagnoseBatch, checkBatch]
  | cons request rest ih =>
    simp only [diagnoseBatch, checkBatch, List.all_cons, Bool.and_eq_true]
    cases h : diagnose spec request with
    | none => simp only [ih, (diagnose_none_iff spec request).mp h, true_and, checkBatch]
    | some failure =>
      have rejected : check spec request ≠ true := by
        intro accepted
        have := (diagnose_none_iff spec request).mpr accepted
        simp_all
      simp [rejected]

#print axioms check_sound
#print axioms diagnose_none_iff
#print axioms diagnoseBatch_none_iff
end ActualTraceRequests
