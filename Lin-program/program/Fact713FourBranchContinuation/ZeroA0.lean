import Row3136FamilyBranches.ZeroA0Cross
import Fact713Row3143Continuation.ZeroCoherence
namespace Fact713FourBranchContinuation.ZeroA0
open IndexedFamilyCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

theorem cross_checked : Fact713RefinedComparisonFamily.checkCross
    Row3136FamilyBranches.ZeroA0.family Fact713Row3143Continuation.Zero.extra = true := by decide
def family : Family := Row3136FamilyBranches.ZeroA0.family ++ Fact713Row3143Continuation.Zero.extra
theorem family_count : family.length = 1355 := by
  simp only [family,List.length_append,Row3136FamilyBranches.ZeroA0.family_count,Fact713Row3143Continuation.Zero.extra_count]
theorem family_coherent : Coherent family :=
  Fact713RefinedComparisonFamily.coherent_append _ _ Row3136FamilyBranches.ZeroA0.family_coherent
    Fact713Row3143Continuation.Zero.extra_coherent cross_checked
theorem row3136_preserved (entry : Entry) (h : entry ∈ Row3136FamilyBranches.ZeroA0.family) : entry ∈ family :=
  List.mem_append_left _ h
theorem row3143_preserved (entry : Entry) (h : entry ∈ Fact713Row3143Continuation.Zero.family) : entry ∈ family := by
  change entry ∈ Fact713Row2431Continuation.Zero.family ++ Fact713Row3143Continuation.Zero.extra at h
  rcases List.mem_append.mp h with h | h
  · exact row3136_preserved entry (Row3136FamilyBranches.ZeroA0.previous_preserved entry h)
  · exact List.mem_append_right _ h

#print axioms cross_checked
#print axioms family_count
#print axioms family_coherent
#print axioms row3136_preserved
#print axioms row3143_preserved
end Fact713FourBranchContinuation.ZeroA0
