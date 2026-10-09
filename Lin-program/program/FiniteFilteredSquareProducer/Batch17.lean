import FiniteFilteredSquareCertificates.Import

namespace FiniteFilteredSquareProducer
open FiniteFilteredSquareCertificates
set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

def batch17 : List WireCertificate :=
  finite_filtered_square_batch% "FiniteFilteredSquareProducer/batch17.jsonl"
theorem batch17_valid : ∀ w ∈ batch17, WireValid w :=
  checkBatch_sound batch17 (by decide)
#print axioms batch17_valid
end FiniteFilteredSquareProducer
