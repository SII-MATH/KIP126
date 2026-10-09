import IndexedFamilyCertificates.Import
import IndexedFamilyCertificates.Coherence
namespace Fact713ComparisonBatches
open PageTransitionCertificates IndexedFamilyCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
def batch30 : Family := family_input% "Fact713ComparisonBatches/Batch30.json"
theorem batch30_valid :
    ∀ entry ∈ batch30, KeyValid entry.key ∧ entry.wire.Valid := by
  have checks : batch30.all (fun e => decide (KeyValid e.key) && checkWire e.wire) = true := by decide
  intro entry member
  have accepted := List.all_eq_true.mp checks entry member
  simp only [Bool.and_eq_true,decide_eq_true_eq] at accepted
  exact ⟨accepted.1,checkWire_sound entry.wire accepted.2⟩
#print axioms batch30_valid
end Fact713ComparisonBatches
