import Fact713Row3143Continuation.ZeroCoherence
import Fact713Row3143Continuation.ResidualCoherence

namespace Fact713Row3143Continuation
open LinearCertificates IndexedFamilyCertificates IndexedFamilyNeighborCheck PageTransitionCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

def family (residual : Bool) : Family := if residual then Residual.family else Zero.family
def stages (residual : Bool) : List Stage := Fact713Row2431Continuation.stages residual ++
  [⟨Data.b_S0_9_132_d9,[true]⟩]
def namedPrefix : List Key := (List.range 8).map (fun i => ⟨"S0",i+2,9,132⟩)

theorem family_coherent (residual : Bool) : Coherent (family residual) := by
  cases residual
  · exact Zero.family_coherent
  · exact Residual.family_coherent
theorem previous_preserved (residual : Bool) (entry : Entry)
    (member : entry ∈ Fact713Row2431Continuation.family residual) : entry ∈ family residual := by
  cases residual
  · exact Zero.previous_preserved entry member
  · exact Residual.previous_preserved entry member
theorem named_prefix_covered (residual : Bool) : CoversKeys (family residual) namedPrefix := by
  cases residual <;> exact checkCoverage_sound _ _ (by decide)
theorem both_finite_E10 (residual : Bool) : TrajectoryValid (stages residual) := by
  cases residual <;> exact checkTrajectory_sound _ (by decide)
theorem named_d9_present (residual : Bool) : lookup (family residual) ⟨"S0",9,9,132⟩ =
    some Data.b_S0_9_132_d9 := by cases residual <;> decide
theorem named_d9_shape : Data.b_S0_9_132_d9 =
    { version := 1, k := 0, m := 1, n := 0, h := 1,
      outgoing := [], incoming := [], inclusion := [true], projection := [true], up := [], down := [] } := by decide
theorem named_d10_missing (residual : Bool) : lookup (family residual) ⟨"S0",10,9,132⟩ = none := by
  cases residual <;> decide
theorem source_d4_comparison_missing (residual : Bool) : lookup (family residual) ⟨"S0",4,17,140⟩ = none := by
  cases residual <;> decide
theorem row3136_whole_d3_missing (residual : Bool) : lookup (family residual) ⟨"S0",3,20,140⟩ = none := by
  cases residual <;> decide
theorem family_counts : (family false).length = 1350 ∧ (family true).length = 1359 :=
  ⟨Zero.family_count,Residual.family_count⟩

#print axioms family_coherent
#print axioms previous_preserved
#print axioms named_prefix_covered
#print axioms both_finite_E10
#print axioms named_d9_present
#print axioms named_d9_shape
#print axioms named_d10_missing
#print axioms source_d4_comparison_missing
#print axioms row3136_whole_d3_missing
#print axioms family_counts
end Fact713Row3143Continuation
