import FiniteFilteredSquareCertificates.Import

namespace FiniteFilteredSquareProducer
open FiniteFilteredSquareCertificates
set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def batch01 : List WireCertificate :=
  finite_filtered_square_batch% "FiniteFilteredSquareProducer/batch01.jsonl"
theorem batch01_valid : ∀ w ∈ batch01, WireValid w :=
  checkBatch_sound batch01 (by decide)
#print axioms batch01_valid
end FiniteFilteredSquareProducer
