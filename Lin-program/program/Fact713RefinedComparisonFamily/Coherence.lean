import Fact713RefinedComparisonFamily.Cross
import Fact713ComparisonBatches.Coherence

namespace Fact713RefinedComparisonFamily
open IndexedFamilyCertificates

theorem family_coherent : Coherent family :=
  coherent_append _ _ Fact713ComparisonBatches.family_coherent extra_coherent cross_checked

#print axioms family_coherent
end Fact713RefinedComparisonFamily
