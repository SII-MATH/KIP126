import LinProgramCertificates.Tactic

namespace DiagnosticTacticReview
open Lean Elab Tactic LinProgramCertificates

def Accepted (n : Nat) : Prop := n = 5

instance (n : Nat) : DiagnosticCertificateVerifier (Accepted n) where
  Cert := Nat
  check c := decide (c = 5 ∧ n = 5)
  sound := by intro c h; exact (of_decide_eq_true h).2
  diagnose c := if c = 5 then none else some ⟨"fixture", "witness[0]", "expected 5"⟩

elab "expect_cert_error " message:str " using " cert:term : tactic => do
  let saved ← saveState
  let mut failure : Option String := none
  try
    evalTactic (← `(tactic| lin_cert_diagnose using $cert))
  catch e => failure := some (← e.toMessageData.toString)
  saved.restore
  match failure with
  | some actual => unless actual = message.getString do
      throwError "unexpected diagnostic: {actual}"
  | none => throwError "expected certificate rejection"

theorem accepted : Accepted 5 := by lin_cert_diagnose using (5 : Nat)

theorem coordinate_diagnostic : Accepted 5 := by
  expect_cert_error "fixture: witness[0]: expected 5" using (4 : Nat)
  exact rfl

-- A diagnostic returning none never replaces the proof checker.
theorem diagnostic_cannot_accept_false_result : ¬ Accepted 6 := by
  intro h
  have impossible : Accepted 6 := by
    fail_if_success lin_cert_diagnose using (5 : Nat)
    exact h
  exact (by decide : 6 ≠ 5) impossible

def PlainAccepted : Prop := 5 = 5
instance : CertificateVerifier PlainAccepted where
  Cert := Unit
  check _ := true
  sound _ _ := rfl

theorem no_diagnostic_instance : PlainAccepted := by lin_cert_diagnose using ()

/-- Open certificates skip runtime diagnostics and retain the same proof path. -/
theorem open_certificate (c : Nat) : Accepted 5 := by
  fail_if_success lin_cert_diagnose using c
  exact rfl

#print axioms accepted
#print axioms coordinate_diagnostic
#print axioms diagnostic_cannot_accept_false_result
#print axioms no_diagnostic_instance
#print axioms open_certificate
end DiagnosticTacticReview
