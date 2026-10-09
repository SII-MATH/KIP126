import Fact713Row2431Continuation.ZeroCoherence
import Fact713Row2431Continuation.ResidualCoherence

namespace Fact713Row2431Continuation
open IndexedFamilyCertificates IndexedFamilyNeighborCheck PageTransitionCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

/-- Whole row2431 d3 vanishing extends both old families. All earlier
conditional named rules and the row3136 gap remain unchanged. -/
def family (residual : Bool) : Family := if residual then Residual.family else Zero.family
def stages (residual : Bool) : List Stage := Fact713NextD3Continuation.stages residual
def namedPrefix : List Key := (List.range 7).map (fun i => ⟨"S0",i+2,9,132⟩)

theorem family_coherent (residual : Bool) : Coherent (family residual) := by
  cases residual
  · exact Zero.family_coherent
  · exact Residual.family_coherent

theorem previous_preserved (residual : Bool) (entry : Entry)
    (member : entry ∈ Fact713NextD3Continuation.family residual) : entry ∈ family residual := by
  cases residual
  · exact Zero.previous_preserved entry member
  · exact Residual.previous_preserved entry member

theorem named_prefix_covered (residual : Bool) : CoversKeys (family residual) namedPrefix := by
  cases residual <;> exact checkCoverage_sound _ _ (by decide)

theorem both_finite_E9 (residual : Bool) : TrajectoryValid (stages residual) :=
  Fact713NextD3Continuation.both_finite_E9 residual

theorem named_d9_missing (residual : Bool) : lookup (family residual) ⟨"S0",9,9,132⟩ = none := by
  cases residual <;> decide

theorem row2431_d3_present (residual : Bool) : lookup (family residual) ⟨"S0",3,9,130⟩ =
    some Data.b_S0_9_130_d3 := by cases residual <;> decide

theorem row2431_whole_zero :
    ∀ v : LinearCertificates.Vec 1, LinearCertificates.eval (matrixOf 3 1 Data.b_S0_9_130_d3.outgoing) v = LinearCertificates.zero := by decide

theorem row3143_d4_missing (residual : Bool) : lookup (family residual) ⟨"S0",4,17,140⟩ = none := by
  cases residual <;> decide

theorem row3136_whole_d3_missing (residual : Bool) : lookup (family residual) ⟨"S0",3,20,140⟩ = none := by
  cases residual <;> decide

theorem family_counts : (family false).length = 1333 ∧ (family true).length = 1341 :=
  ⟨Zero.family_count,Residual.family_count⟩

#print axioms family_coherent
#print axioms previous_preserved
#print axioms named_prefix_covered
#print axioms both_finite_E9
#print axioms named_d9_missing
#print axioms row2431_d3_present
#print axioms row2431_whole_zero
#print axioms row3143_d4_missing
#print axioms row3136_whole_d3_missing
#print axioms family_counts
end Fact713Row2431Continuation
