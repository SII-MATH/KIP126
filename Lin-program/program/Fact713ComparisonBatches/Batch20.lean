import IndexedFamilyCertificates.Import
import IndexedFamilyCertificates.Coherence
namespace Fact713ComparisonBatches
open PageTransitionCertificates IndexedFamilyCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
def batch20 : Family := family_input% "Fact713ComparisonBatches/Batch20.json"
theorem batch20_valid :
    ∀ entry ∈ batch20, KeyValid entry.key ∧ entry.wire.Valid := by
  have checks : batch20.all (fun e => decide (KeyValid e.key) && checkWire e.wire) = true := by decide
  intro entry member
  have accepted := List.all_eq_true.mp checks entry member
  simp only [Bool.and_eq_true,decide_eq_true_eq] at accepted
  exact ⟨accepted.1,checkWire_sound entry.wire accepted.2⟩
#print axioms batch20_valid
end Fact713ComparisonBatches
