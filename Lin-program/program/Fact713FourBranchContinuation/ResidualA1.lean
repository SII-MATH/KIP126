import Row3136FamilyBranches.ResidualA1Cross
import Fact713Row3143Continuation.ResidualCoherence
namespace Fact713FourBranchContinuation.ResidualA1
open IndexedFamilyCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

theorem cross_checked : Fact713RefinedComparisonFamily.checkCross
    Row3136FamilyBranches.ResidualA1.family Fact713Row3143Continuation.Residual.extra = true := by decide
def family : Family := Row3136FamilyBranches.ResidualA1.family ++ Fact713Row3143Continuation.Residual.extra
theorem family_count : family.length = 1367 := by
  simp only [family,List.length_append,Row3136FamilyBranches.ResidualA1.family_count,Fact713Row3143Continuation.Residual.extra_count]
theorem family_coherent : Coherent family :=
  Fact713RefinedComparisonFamily.coherent_append _ _ Row3136FamilyBranches.ResidualA1.family_coherent
    Fact713Row3143Continuation.Residual.extra_coherent cross_checked
theorem row3136_preserved (entry : Entry) (h : entry ∈ Row3136FamilyBranches.ResidualA1.family) : entry ∈ family :=
  List.mem_append_left _ h
theorem row3143_preserved (entry : Entry) (h : entry ∈ Fact713Row3143Continuation.Residual.family) : entry ∈ family := by
  change entry ∈ Fact713Row2431Continuation.Residual.family ++ Fact713Row3143Continuation.Residual.extra at h
  rcases List.mem_append.mp h with h | h
  · exact row3136_preserved entry (Row3136FamilyBranches.ResidualA1.previous_preserved entry h)
  · exact List.mem_append_right _ h

#print axioms cross_checked
#print axioms family_count
#print axioms family_coherent
#print axioms row3136_preserved
#print axioms row3143_preserved
end Fact713FourBranchContinuation.ResidualA1
