import FiniteFilteredSquareCertificates.Import

namespace FiniteFilteredSquareProducer
open FiniteFilteredSquareCertificates
set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def batch15 : List WireCertificate :=
  finite_filtered_square_batch% "FiniteFilteredSquareProducer/batch15.jsonl"
theorem batch15_valid : ∀ w ∈ batch15, WireValid w :=
  checkBatch_sound batch15 (by decide)
#print axioms batch15_valid
end FiniteFilteredSquareProducer
