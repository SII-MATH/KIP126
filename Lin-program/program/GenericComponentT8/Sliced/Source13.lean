import GenericComponentT8.Sliced.DataOnly
namespace GenericComponentT8.Sliced
open ExtComplexCertificates.GenericFreeComplex
set_option maxRecDepth 100000
set_option maxHeartbeats 0
theorem products13 : SourceProducts bundle.data bundle.certificate ⟨13, by decide⟩ := by
  unfold SourceProducts
  decide
theorem cancellation13 : SourceCancellation bundle.certificate ⟨13, by decide⟩ := by
  unfold SourceCancellation
  decide
end GenericComponentT8.Sliced
