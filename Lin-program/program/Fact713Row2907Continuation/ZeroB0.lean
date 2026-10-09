import Fact713Row2907Continuation.ZeroB0Data
namespace Fact713Row2907Continuation.ZeroB0
open IndexedFamilyCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000
theorem cross_checked : Fact713RefinedComparisonFamily.checkCross
    Fact713Row2916Continuation.ZeroA0.family extra = true := by decide
def family : Family := Fact713Row2916Continuation.ZeroA0.family ++ extra
theorem family_count : family.length = 1365 := by
  simp only [family,List.length_append,Fact713Row2916Continuation.ZeroA0.family_count,extra_count]
theorem family_coherent : Coherent family :=
  Fact713RefinedComparisonFamily.coherent_append _ _ Fact713Row2916Continuation.ZeroA0.family_coherent extra_coherent cross_checked
theorem previous_preserved (entry : Entry) (h : entry ∈ Fact713Row2916Continuation.ZeroA0.family) : entry ∈ family :=
  List.mem_append_left _ h
#print axioms cross_checked
#print axioms family_count
#print axioms family_coherent
#print axioms previous_preserved
end Fact713Row2907Continuation.ZeroB0
