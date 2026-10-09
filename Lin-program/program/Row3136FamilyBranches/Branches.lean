import Row3136FamilyBranches.ZeroA0Cross
import Row3136FamilyBranches.ZeroA1Cross
import Row3136FamilyBranches.ResidualA0Cross
import Row3136FamilyBranches.ResidualA1Cross

namespace Row3136FamilyBranches
open IndexedFamilyCertificates IndexedFamilyNeighborCheck PageTransitionCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

def family (residual nonzero : Bool) : Family :=
  match residual, nonzero with
  | false, false => ZeroA0.family
  | false, true => ZeroA1.family
  | true, false => ResidualA0.family
  | true, true => ResidualA1.family
def source (residual nonzero : Bool) : WireComparison :=
  match residual, nonzero with
  | false, false => Data.ZeroA0_S0_20_140_d3
  | false, true => Data.ZeroA1_S0_20_140_d3
  | true, false => Data.ResidualA0_S0_20_140_d3
  | true, true => Data.ResidualA1_S0_20_140_d3
def target (residual nonzero : Bool) : WireComparison :=
  match residual, nonzero with
  | false, false => Data.ZeroA0_S0_23_142_d3
  | false, true => Data.ZeroA1_S0_23_142_d3
  | true, false => Data.ResidualA0_S0_23_142_d3
  | true, true => Data.ResidualA1_S0_23_142_d3

theorem family_coherent (residual nonzero : Bool) : Coherent (family residual nonzero) := by
  cases residual <;> cases nonzero
  · exact ZeroA0.family_coherent
  · exact ZeroA1.family_coherent
  · exact ResidualA0.family_coherent
  · exact ResidualA1.family_coherent
theorem previous_preserved (residual nonzero : Bool) (entry : Entry)
    (h : entry ∈ Fact713Row2431Continuation.family residual) : entry ∈ family residual nonzero := by
  cases residual <;> cases nonzero
  · exact ZeroA0.previous_preserved entry h
  · exact ZeroA1.previous_preserved entry h
  · exact ResidualA0.previous_preserved entry h
  · exact ResidualA1.previous_preserved entry h
theorem source_valid (residual nonzero : Bool) : (source residual nonzero).Valid := by
  cases residual <;> cases nonzero <;> lin_cert using ()
theorem target_valid (residual nonzero : Bool) : (target residual nonzero).Valid := by
  cases residual <;> cases nonzero <;> lin_cert using ()
theorem source_present (residual nonzero : Bool) : lookup (family residual nonzero) ⟨"S0",3,20,140⟩ =
    some (source residual nonzero) := by cases residual <;> cases nonzero <;> decide
theorem target_present (residual nonzero : Bool) : lookup (family residual nonzero) ⟨"S0",3,23,142⟩ =
    some (target residual nonzero) := by cases residual <;> cases nonzero <;> decide
theorem exact_dimensions (residual nonzero : Bool) :
    (source residual nonzero).h = 2 - (if nonzero then 1 else 0) - (if residual then 1 else 0) ∧
    (target residual nonzero).h = (if nonzero then 0 else 1) := by
  cases residual <;> cases nonzero <;> decide
theorem source_target_agreement (residual nonzero : Bool) :
    (source residual nonzero).outgoing = (target residual nonzero).incoming := by
  cases residual <;> cases nonzero <;> decide
theorem both_finite_E9 (residual nonzero : Bool) :
    TrajectoryValid (Fact713Row2431Continuation.stages residual) :=
  Fact713Row2431Continuation.both_finite_E9 residual
theorem next_named_d9_missing (residual nonzero : Bool) :
    lookup (family residual nonzero) ⟨"S0",9,9,132⟩ = none := by
  cases residual <;> cases nonzero <;> decide
theorem residual_nonzero_rebased_d4 : Data.ResidualA1_S0_16_137_d4.k = 0 ∧
    Data.ResidualA1_S0_16_137_d4.m = 1 ∧ Data.ResidualA1_S0_16_137_d4.h = 1 := by decide
theorem old_deleted_selection_cannot_span :
    ([] : List (LinearCertificates.Vec 1)).length ≠ Data.ResidualA1_S0_16_137_d4.h := by decide
theorem all_counts : (family false false).length = 1338 ∧ (family false true).length = 1338 ∧
    (family true false).length = 1346 ∧ (family true true).length = 1349 :=
  ⟨ZeroA0.family_count,ZeroA1.family_count,ResidualA0.family_count,ResidualA1.family_count⟩

#print axioms family_coherent
#print axioms previous_preserved
#print axioms source_valid
#print axioms target_valid
#print axioms source_present
#print axioms target_present
#print axioms exact_dimensions
#print axioms source_target_agreement
#print axioms both_finite_E9
#print axioms next_named_d9_missing
#print axioms residual_nonzero_rebased_d4
#print axioms old_deleted_selection_cannot_span
#print axioms all_counts
end Row3136FamilyBranches
