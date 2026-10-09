import Fact713DC2h6ComparisonFamily.Cross
import Fact713NextComparisonFamily.Coherence

namespace Fact713DC2h6ComparisonFamily
open IndexedFamilyCertificates

theorem family_coherent : Coherent family :=
  Fact713RefinedComparisonFamily.coherent_append _ _
    Fact713NextComparisonFamily.family_coherent extra_coherent cross_checked

#print axioms family_coherent
end Fact713DC2h6ComparisonFamily
