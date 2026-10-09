import Fact721FirstD4Continuation.ZeroCoherence
import Fact721FirstD4Continuation.ResidualCoherence

namespace Fact721FirstD4Continuation
open IndexedFamilyCertificates IndexedFamilyNeighborCheck PageTransitionCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

/-- The whole row2622 d4 rule is added separately to both old families.
Their earlier named actual E3 cycle premises remain explicit. -/
def family (residual : Bool) : Family := if residual then Residual.family else Zero.family
def stages (residual : Bool) : List Stage := Fact713Row3247ConditionalBranches.stages residual
def namedPrefix : List Key := (List.range 7).map (fun i => ⟨"S0",i+2,9,132⟩)

theorem family_coherent (residual : Bool) : Coherent (family residual) := by
  cases residual
  · exact Zero.family_coherent
  · exact Residual.family_coherent

theorem previous_preserved (residual : Bool) (entry : Entry)
    (member : entry ∈ Fact713Row3247ConditionalBranches.family residual) : entry ∈ family residual := by
  cases residual
  · exact Zero.previous_preserved entry member
  · exact Residual.previous_preserved entry member

theorem named_prefix_covered (residual : Bool) : CoversKeys (family residual) namedPrefix := by
  cases residual <;> exact checkCoverage_sound _ _ (by decide)

theorem both_finite_E9 (residual : Bool) : TrajectoryValid (stages residual) :=
  Fact713Row3247ConditionalBranches.both_finite_E9 residual

theorem named_d9_missing (residual : Bool) : lookup (family residual) ⟨"S0",9,9,132⟩ = none := by
  cases residual <;> decide

theorem row2622_d4_present (residual : Bool) : lookup (family residual) ⟨"S0",4,11,133⟩ =
    some Data.b_S0_11_133_d4 := by cases residual <;> decide

theorem row2622_d4_whole_zero :
    ∀ x : LinearCertificates.Vec Data.b_S0_11_133_d4.m,
      LinearCertificates.eval (matrixOf Data.b_S0_11_133_d4.k
        Data.b_S0_11_133_d4.m Data.b_S0_11_133_d4.outgoing) x = LinearCertificates.zero := by decide

theorem row2916_d3_missing (residual : Bool) : lookup (family residual) ⟨"S0",3,13,137⟩ = none := by
  cases residual <;> decide

theorem family_counts : (family false).length = 1314 ∧ (family true).length = 1322 :=
  ⟨Zero.family_count,Residual.family_count⟩

#print axioms family_coherent
#print axioms previous_preserved
#print axioms named_prefix_covered
#print axioms both_finite_E9
#print axioms named_d9_missing
#print axioms row2622_d4_present
#print axioms row2622_d4_whole_zero
#print axioms row2916_d3_missing
#print axioms family_counts
end Fact721FirstD4Continuation
