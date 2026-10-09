import FiniteFilteredSquareCertificates.Import

namespace FiniteFilteredSquareProducer
open FiniteFilteredSquareCertificates
set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def batch07 : List WireCertificate :=
  finite_filtered_square_batch% "FiniteFilteredSquareProducer/batch07.jsonl"
theorem batch07_valid : ∀ w ∈ batch07, WireValid w :=
  checkBatch_sound batch07 (by decide)
#print axioms batch07_valid
end FiniteFilteredSquareProducer
