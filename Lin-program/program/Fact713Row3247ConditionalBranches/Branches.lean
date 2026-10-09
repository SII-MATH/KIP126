import Fact713Row3247ConditionalBranches.ZeroCoherence
import Fact713Row3247ConditionalBranches.ResidualCoherence

namespace Fact713Row3247ConditionalBranches
open IndexedFamilyCertificates IndexedFamilyNeighborCheck PageTransitionCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

/-- These finite witnesses use the row-3247 conditional zero rule. Relating
them to actual pages requires its two named actual E3 cycle representatives. -/
def family (residual : Bool) : Family := if residual then Residual.family else Zero.family
def stages (residual : Bool) : List Stage := Fact713D4ComparisonBranches.stages residual ++ [Data.stage8]
def namedPrefix : List Key := (List.range 7).map (fun i => ⟨"S0",i+2,9,132⟩)

theorem family_coherent (residual : Bool) : Coherent (family residual) := by
  cases residual
  · exact Zero.family_coherent
  · exact Residual.family_coherent

theorem previous_preserved (residual : Bool) (entry : Entry)
    (member : entry ∈ Fact713D4ComparisonBranches.family residual) : entry ∈ family residual := by
  cases residual
  · exact Zero.previous_preserved entry member
  · exact Residual.previous_preserved entry member

theorem named_prefix_covered (residual : Bool) : CoversKeys (family residual) namedPrefix := by
  cases residual <;> exact checkCoverage_sound _ _ (by decide)

theorem stages_common (residual : Bool) : stages residual = Data.stages := by
  unfold stages Data.stages
  rw [Fact713D4ComparisonBranches.stages_common]

theorem both_finite_E9 (residual : Bool) : TrajectoryValid (stages residual) := by
  rw [stages_common]
  exact Data.finite_E9

theorem named_d8_present (residual : Bool) : lookup (family residual) ⟨"S0",8,9,132⟩ =
    some Data.b_S0_9_132_d8 := by cases residual <;> decide

theorem named_d8_shape : Data.b_S0_9_132_d8 =
    (⟨1,0,1,0,1,[],[],[true],[true],[],[]⟩ : WireComparison) := by decide

theorem named_d9_missing (residual : Bool) : lookup (family residual) ⟨"S0",9,9,132⟩ = none := by
  cases residual <;> decide

theorem row2622_d4_missing (residual : Bool) : lookup (family residual) ⟨"S0",4,11,133⟩ = none := by
  cases residual <;> decide

theorem row3247_d3_present (residual : Bool) : lookup (family residual) ⟨"S0",3,18,141⟩ =
    some Data.b_S0_18_141_d3 := by cases residual <;> decide

theorem row3247_d3_whole_zero :
    ∀ x : LinearCertificates.Vec Data.b_S0_18_141_d3.m,
      LinearCertificates.eval (matrixOf Data.b_S0_18_141_d3.k
        Data.b_S0_18_141_d3.m Data.b_S0_18_141_d3.outgoing) x = LinearCertificates.zero := by decide

theorem family_counts : (family false).length = 1300 ∧ (family true).length = 1302 :=
  ⟨Zero.family_count,Residual.family_count⟩

#print axioms family_coherent
#print axioms previous_preserved
#print axioms named_prefix_covered
#print axioms both_finite_E9
#print axioms stages_common
#print axioms named_d8_present
#print axioms named_d8_shape
#print axioms named_d9_missing
#print axioms row2622_d4_missing
#print axioms row3247_d3_present
#print axioms row3247_d3_whole_zero
end Fact713Row3247ConditionalBranches
