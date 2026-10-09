import Fact713ComparisonBatches.Imported
import IndexedFamilyNeighborCheck.Basic
namespace Fact713ComparisonBatches
open IndexedFamilyCertificates IndexedFamilyNeighborCheck
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000
theorem neighbors15 : batch15.all (checkOne family) = true := by decide
#print axioms neighbors15
end Fact713ComparisonBatches
