import Fact713D4Branches.ZeroCross
import Fact713DC2h6ComparisonFamily.Coherence

namespace Fact713D4Branches.Zero
open IndexedFamilyCertificates

theorem family_coherent : Coherent family :=
  Fact713RefinedComparisonFamily.coherent_append _ _
    Fact713DC2h6ComparisonFamily.family_coherent extra_coherent cross_checked

#print axioms family_coherent
end Fact713D4Branches.Zero
