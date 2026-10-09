import Fact713NextComparisonFamily.Cross
import Fact713Row2773ComparisonFamily.Coherence

namespace Fact713NextComparisonFamily
open IndexedFamilyCertificates

theorem family_coherent : Coherent family :=
  Fact713RefinedComparisonFamily.coherent_append _ _
    Fact713Row2773ComparisonFamily.family_coherent extra_coherent cross_checked

#print axioms family_coherent
end Fact713NextComparisonFamily
