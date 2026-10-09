import AdvancedRuleCertificates.Connecting
import LinProgramCertificates.Tactic

namespace AdvancedRuleCertificates
variable {A B C : Type} [AddCommGroup A] [AddCommGroup B] [AddCommGroup C]
variable [DecidableEq A] [DecidableEq B] [DecidableEq C]
variable {DA : Differential A} {DB : Differential B} {DC : Differential C}

instance (S : ExactSequence A B C DA DB DC) (c : C) (a : A) :
    LinProgramCertificates.CertificateVerifier
      (∃ w : ConnectingCertificate B A, ConnectingWitness S c w ∧ w.value = a ∧ Cycle DA a) where
  Cert := B
  check := fun lift => checkConnecting S c ⟨lift, a⟩
  sound := by
    intro lift h
    have hw := checkConnecting_sound S c ⟨lift, a⟩ h
    exact ⟨⟨lift, a⟩, hw.1, rfl, hw.2⟩

syntax "connecting_cert" " using " term : tactic
macro_rules
  | `(tactic| connecting_cert using $c:term) => `(tactic| lin_cert using $c)
end AdvancedRuleCertificates
