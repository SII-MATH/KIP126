import Row3136FamilyBranches.ZeroA1Extra
namespace Row3136FamilyBranches.ZeroA1
open IndexedFamilyCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000
theorem cross_checked : Fact713RefinedComparisonFamily.checkCross Fact713Row2431Continuation.Zero.family extra = true := by decide
def family : Family := Fact713Row2431Continuation.Zero.family ++ extra
theorem family_count : family.length = 1338 := by
  simp only [family,List.length_append,Fact713Row2431Continuation.Zero.family_count,extra_count]
theorem family_unique : UniqueKeys family :=
  Fact713RefinedComparisonFamily.unique_append _ _ Fact713Row2431Continuation.Zero.family_unique extra_coherent.unique
    (fun a ha b hb => (Fact713RefinedComparisonFamily.checkCross_sound _ _ cross_checked a ha b hb).1)
theorem previous_preserved (entry : Entry) (member : entry ∈ Fact713Row2431Continuation.Zero.family) : entry ∈ family :=
  List.mem_append_left extra member
theorem family_coherent : Coherent family :=
  Fact713RefinedComparisonFamily.coherent_append _ _ Fact713Row2431Continuation.Zero.family_coherent extra_coherent cross_checked
#print axioms cross_checked
#print axioms family_unique
#print axioms previous_preserved
#print axioms family_coherent
end Row3136FamilyBranches.ZeroA1
