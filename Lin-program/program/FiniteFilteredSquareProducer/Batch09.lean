import FiniteFilteredSquareCertificates.Import

namespace FiniteFilteredSquareProducer
open FiniteFilteredSquareCertificates
set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def batch09 : List WireCertificate :=
  finite_filtered_square_batch% "FiniteFilteredSquareProducer/batch09.jsonl"
theorem batch09_valid : ∀ w ∈ batch09, WireValid w :=
  checkBatch_sound batch09 (by decide)
#print axioms batch09_valid
end FiniteFilteredSquareProducer
