import Fact713Row2773ComparisonFamily.Cross
import Fact713RefinedComparisonFamily.Coherence

namespace Fact713Row2773ComparisonFamily
open IndexedFamilyCertificates

theorem family_coherent : Coherent family :=
  Fact713RefinedComparisonFamily.coherent_append _ _
    Fact713RefinedComparisonFamily.family_coherent extra_coherent cross_checked

#print axioms family_coherent
end Fact713Row2773ComparisonFamily
