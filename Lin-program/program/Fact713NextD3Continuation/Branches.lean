import Fact713NextD3Continuation.ZeroCoherence
import Fact713NextD3Continuation.ResidualCoherence

namespace Fact713NextD3Continuation
open IndexedFamilyCertificates IndexedFamilyNeighborCheck PageTransitionCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

/-- Named row2916 d3 vanishing extends both old families. The separate
row3135 rule does not fill the still unknown row3136 column. -/
def family (residual : Bool) : Family := if residual then Residual.family else Zero.family
def stages (residual : Bool) : List Stage := Fact721FirstD4Continuation.stages residual
def namedPrefix : List Key := (List.range 7).map (fun i => ⟨"S0",i+2,9,132⟩)

theorem family_coherent (residual : Bool) : Coherent (family residual) := by
  cases residual
  · exact Zero.family_coherent
  · exact Residual.family_coherent

theorem previous_preserved (residual : Bool) (entry : Entry)
    (member : entry ∈ Fact721FirstD4Continuation.family residual) : entry ∈ family residual := by
  cases residual
  · exact Zero.previous_preserved entry member
  · exact Residual.previous_preserved entry member

theorem named_prefix_covered (residual : Bool) : CoversKeys (family residual) namedPrefix := by
  cases residual <;> exact checkCoverage_sound _ _ (by decide)

theorem both_finite_E9 (residual : Bool) : TrajectoryValid (stages residual) :=
  Fact721FirstD4Continuation.both_finite_E9 residual

theorem named_d9_missing (residual : Bool) : lookup (family residual) ⟨"S0",9,9,132⟩ = none := by
  cases residual <;> decide

theorem row2916_d3_present (residual : Bool) : lookup (family residual) ⟨"S0",3,13,137⟩ =
    some Data.b_S0_13_137_d3 := by cases residual <;> decide

theorem row2916_named_column_zero :
    (fun i : Fin 1 => matrixOf 1 3 Data.b_S0_13_137_d3.outgoing i 1) = LinearCertificates.zero := by decide

theorem row3143_d4_missing (residual : Bool) : lookup (family residual) ⟨"S0",4,17,140⟩ = none := by
  cases residual <;> decide

theorem row3136_whole_d3_missing (residual : Bool) : lookup (family residual) ⟨"S0",3,20,140⟩ = none := by
  cases residual <;> decide

theorem family_counts : (family false).length = 1327 ∧ (family true).length = 1335 :=
  ⟨Zero.family_count,Residual.family_count⟩

#print axioms family_coherent
#print axioms previous_preserved
#print axioms named_prefix_covered
#print axioms both_finite_E9
#print axioms named_d9_missing
#print axioms row2916_d3_present
#print axioms row2916_named_column_zero
#print axioms row3143_d4_missing
#print axioms row3136_whole_d3_missing
#print axioms family_counts
end Fact713NextD3Continuation
