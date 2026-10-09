import IndexedFamilyCertificates.Results
import Step4ContractAudit.SemanticBridge

namespace IndexedFamilyCertificates
open LinearCertificates PageTransitionCertificates

/-- The interpretation is a proved all-source mathematical condition, not a
Boolean supplied by the producer. Finite family binding alone cannot fill it. -/
theorem interpreted_result (family : Family) (key : Key) (input output : List Bool)
    (certificate : BoundWire)
    (checked : checkResult family key input output certificate = true)
    {S T : Type} (d : S → T)
    (sc : S → Vec certificate.event.finite.event.m)
    (tc : T → Vec certificate.event.finite.event.k)
    (meaning : Step4ContractAudit.DifferentialInterpretation certificate.event.finite d sc tc)
    (source : S) (target zeroTarget : T)
    (hs : sc source = certificate.event.finite.sourceVector)
    (ht : tc target = certificate.event.finite.targetVector)
    (hz : tc zeroTarget = zero) :
    DifferentialAt family key input output ∧ d source = target ∧ target ≠ zeroTarget := by
  have h := checked
  simp only [checkResult, Bool.and_eq_true, decide_eq_true_eq] at h
  have hf := (checkBound_sound family certificate h.1).2.1.2
  exact ⟨checkResult_sound family key input output certificate checked,
    Step4ContractAudit.interpreted_event certificate.event.finite hf d sc tc meaning
      source target zeroTarget hs ht hz⟩

#print axioms interpreted_result
end IndexedFamilyCertificates
