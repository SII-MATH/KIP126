import AdvancedRuleCertificates.Examples
import AdvancedRuleCertificates.Tactic

namespace AdvancedRuleCertificates
example : ∃ w : ConnectingCertificate (Int × Int) Int,
    ConnectingWitness testSequence 7 w ∧ w.value = 7 ∧ Cycle zeroDifferential 7 := by
  connecting_cert using (7, 42)
#print axioms checkConnecting_sound
#print axioms connecting_independent
#print axioms connecting_natural
end AdvancedRuleCertificates
