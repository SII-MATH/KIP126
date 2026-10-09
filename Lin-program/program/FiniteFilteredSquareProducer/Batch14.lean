import FiniteFilteredSquareCertificates.Import

namespace FiniteFilteredSquareProducer
open FiniteFilteredSquareCertificates
set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def batch14 : List WireCertificate :=
  finite_filtered_square_batch% "FiniteFilteredSquareProducer/batch14.jsonl"
theorem batch14_valid : ∀ w ∈ batch14, WireValid w :=
  checkBatch_sound batch14 (by decide)
#print axioms batch14_valid
end FiniteFilteredSquareProducer
