import Fact721FirstD4Continuation.ResidualExtra
namespace Fact721FirstD4Continuation.Residual
open IndexedFamilyCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000
theorem cross_checked : Fact713RefinedComparisonFamily.checkCross Fact713Row3247ConditionalBranches.Residual.family extra = true := by decide
def family : Family := Fact713Row3247ConditionalBranches.Residual.family ++ extra
theorem family_count : family.length = 1322 := by
  simp only [family,List.length_append,Fact713Row3247ConditionalBranches.Residual.family_count,extra_count]
theorem family_unique : UniqueKeys family :=
  Fact713RefinedComparisonFamily.unique_append _ _ Fact713Row3247ConditionalBranches.Residual.family_unique extra_coherent.unique
    (fun a ha b hb => (Fact713RefinedComparisonFamily.checkCross_sound _ _ cross_checked a ha b hb).1)
theorem previous_preserved (entry : Entry) (member : entry ∈ Fact713Row3247ConditionalBranches.Residual.family) : entry ∈ family :=
  List.mem_append_left extra member
#print axioms cross_checked
#print axioms family_unique
#print axioms previous_preserved
end Fact721FirstD4Continuation.Residual
