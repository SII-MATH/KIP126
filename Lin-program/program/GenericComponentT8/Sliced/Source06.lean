import GenericComponentT8.Sliced.DataOnly
namespace GenericComponentT8.Sliced
open ExtComplexCertificates.GenericFreeComplex
set_option maxRecDepth 100000
set_option maxHeartbeats 0
theorem products6 : SourceProducts bundle.data bundle.certificate ⟨6, by decide⟩ := by
  unfold SourceProducts
  decide
theorem cancellation6 : SourceCancellation bundle.certificate ⟨6, by decide⟩ := by
  unfold SourceCancellation
  decide
end GenericComponentT8.Sliced
