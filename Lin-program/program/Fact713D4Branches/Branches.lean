import Fact713D4Branches.ZeroCoherence
import Fact713Row2994Branches.Coverage

namespace Fact713D4Branches
open IndexedFamilyCertificates IndexedFamilyNeighborCheck PageTransitionCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

/-- The Boolean selects a finite candidate family; it does not assert d3 zero. -/
def family (residual : Bool) : Family :=
  if residual then Fact713Row2994Branches.family else Zero.family
def stages (residual : Bool) : List Stage :=
  if residual then Fact713Row2994Branches.Data.residualStages else ZeroData.stages
def namedPrefix : List Key := (List.range 6).map (fun i => ⟨"S0",i+2,9,132⟩)

theorem family_coherent (residual : Bool) : Coherent (family residual) := by
  cases residual
  · exact Zero.family_coherent
  · exact Fact713Row2994Branches.family_coherent

theorem named_prefix_covered (residual : Bool) : CoversKeys (family residual) namedPrefix := by
  cases residual
  · exact checkCoverage_sound _ _ (by decide)
  · exact Fact713Row2994Branches.named_prefix_covered

theorem both_finite_E8 (residual : Bool) : TrajectoryValid (stages residual) := by
  cases residual
  · exact ZeroData.finite_E8
  · exact Fact713Row2994Branches.Data.residual_finite_E8

theorem stages_common (residual : Bool) : stages residual = Fact713Row2994Branches.Data.residualStages := by
  cases residual
  · exact ZeroData.common_stages
  · rfl

theorem named_d7_same (residual : Bool) : lookup (family residual) ⟨"S0",7,9,132⟩ =
    some Fact713Row2994Branches.Data.b_S0_9_132_d7 := by
  cases residual <;> decide

theorem named_d8_missing (residual : Bool) : lookup (family residual) ⟨"S0",8,9,132⟩ = none := by
  cases residual <;> decide

theorem family_counts : (family false).length = 1283 ∧ (family true).length = 1284 :=
  ⟨Zero.family_count,Fact713Row2994Branches.family_count⟩

theorem baseline_preserved (residual : Bool) (entry : Entry)
    (member : entry ∈ Fact713DC2h6ComparisonFamily.family) : entry ∈ family residual := by
  cases residual
  · exact Zero.baseline_preserved entry member
  · exact Fact713Row2994Branches.baseline_preserved entry member

#print axioms family_coherent
#print axioms named_prefix_covered
#print axioms both_finite_E8
#print axioms stages_common
#print axioms named_d7_same
#print axioms named_d8_missing
#print axioms baseline_preserved
end Fact713D4Branches
