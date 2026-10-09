import Fact713D4ComparisonBranches.ResidualExtra
namespace Fact713D4ComparisonBranches.Residual
open IndexedFamilyCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000
theorem cross_checked : Fact713RefinedComparisonFamily.checkCross Fact713Row2994Branches.family extra = true := by decide
def family : Family := Fact713Row2994Branches.family ++ extra
theorem family_count : family.length = 1292 := by
  simp only [family,List.length_append,Fact713Row2994Branches.family_count,extra_count]
theorem family_unique : UniqueKeys family :=
  Fact713RefinedComparisonFamily.unique_append _ _ Fact713Row2994Branches.family_unique extra_coherent.unique
    (fun a ha b hb => (Fact713RefinedComparisonFamily.checkCross_sound _ _ cross_checked a ha b hb).1)
theorem previous_preserved (entry : Entry) (member : entry ∈ Fact713Row2994Branches.family) : entry ∈ family :=
  List.mem_append_left extra member
#print axioms cross_checked
#print axioms family_unique
#print axioms previous_preserved
end Fact713D4ComparisonBranches.Residual
