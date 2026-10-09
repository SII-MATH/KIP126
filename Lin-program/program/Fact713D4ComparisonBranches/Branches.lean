import Fact713D4ComparisonBranches.ZeroCoherence
import Fact713D4ComparisonBranches.ResidualCoherence

namespace Fact713D4ComparisonBranches
open IndexedFamilyCertificates IndexedFamilyNeighborCheck PageTransitionCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

def family (residual : Bool) : Family := if residual then Residual.family else Zero.family
abbrev stages := Fact713D4Branches.stages
abbrev namedPrefix := Fact713D4Branches.namedPrefix

theorem family_coherent (residual : Bool) : Coherent (family residual) := by
  cases residual
  · exact Zero.family_coherent
  · exact Residual.family_coherent

theorem previous_preserved (residual : Bool) (entry : Entry)
    (member : entry ∈ Fact713D4Branches.family residual) : entry ∈ family residual := by
  cases residual
  · exact Zero.previous_preserved entry member
  · exact Residual.previous_preserved entry member

theorem named_prefix_covered (residual : Bool) : CoversKeys (family residual) namedPrefix := by
  cases residual <;> exact checkCoverage_sound _ _ (by decide)

theorem both_finite_E8 (residual : Bool) : TrajectoryValid (stages residual) :=
  Fact713D4Branches.both_finite_E8 residual

theorem stages_common (residual : Bool) : stages residual = Fact713Row2994Branches.Data.residualStages :=
  Fact713D4Branches.stages_common residual

theorem named_d7_same (residual : Bool) : lookup (family residual) ⟨"S0",7,9,132⟩ =
    some Fact713Row2994Branches.Data.b_S0_9_132_d7 := by cases residual <;> decide

theorem named_d8_missing (residual : Bool) : lookup (family residual) ⟨"S0",8,9,132⟩ = none := by
  cases residual <;> decide

theorem row3247_d3_missing (residual : Bool) : lookup (family residual) ⟨"S0",3,18,141⟩ = none := by
  cases residual <;> decide

theorem row2684_d4_present (residual : Bool) : lookup (family residual) ⟨"S0",4,12,134⟩ =
    some Data.b_S0_12_134_d4 := by cases residual <;> decide

theorem row2684_d4_whole_zero :
    ∀ x : LinearCertificates.Vec Data.b_S0_12_134_d4.m,
      LinearCertificates.eval (PageTransitionCertificates.matrixOf Data.b_S0_12_134_d4.k
        Data.b_S0_12_134_d4.m Data.b_S0_12_134_d4.outgoing) x = LinearCertificates.zero := by decide

theorem family_counts : (family false).length = 1290 ∧ (family true).length = 1292 :=
  ⟨Zero.family_count,Residual.family_count⟩

#print axioms family_coherent
#print axioms previous_preserved
#print axioms named_prefix_covered
#print axioms both_finite_E8
#print axioms stages_common
#print axioms named_d8_missing
#print axioms row3247_d3_missing
#print axioms row2684_d4_present
#print axioms row2684_d4_whole_zero
end Fact713D4ComparisonBranches
