import Fact713FourBranchContinuation.ZeroA0
import Fact713FourBranchContinuation.ZeroA1
import Fact713FourBranchContinuation.ResidualA0
import Fact713FourBranchContinuation.ResidualA1
import Row3136FamilyBranches.Actual
import Fact713Row3143Continuation.Branches

namespace Fact713FourBranchContinuation
open IndexedFamilyCertificates PageTransitionCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

def family (r a : Bool) : Family :=
  match r,a with
  | false,false => ZeroA0.family
  | false,true => ZeroA1.family
  | true,false => ResidualA0.family
  | true,true => ResidualA1.family

theorem family_coherent (r a : Bool) : Coherent (family r a) := by
  cases r <;> cases a
  · exact ZeroA0.family_coherent
  · exact ZeroA1.family_coherent
  · exact ResidualA0.family_coherent
  · exact ResidualA1.family_coherent
theorem row3136_preserved (r a : Bool) (entry : Entry)
    (h : entry ∈ Row3136FamilyBranches.family r a) : entry ∈ family r a := by
  cases r <;> cases a
  · exact ZeroA0.row3136_preserved entry h
  · exact ZeroA1.row3136_preserved entry h
  · exact ResidualA0.row3136_preserved entry h
  · exact ResidualA1.row3136_preserved entry h
theorem row3143_preserved (r a : Bool) (entry : Entry)
    (h : entry ∈ Fact713Row3143Continuation.family r) : entry ∈ family r a := by
  cases r <;> cases a
  · exact ZeroA0.row3143_preserved entry h
  · exact ZeroA1.row3143_preserved entry h
  · exact ResidualA0.row3143_preserved entry h
  · exact ResidualA1.row3143_preserved entry h
theorem named_prefix_covered (r a : Bool) :
    CoversKeys (family r a) Fact713Row3143Continuation.namedPrefix := by
  intro key member
  obtain ⟨entry,present,equal⟩ := Fact713Row3143Continuation.named_prefix_covered r key member
  exact ⟨entry,row3143_preserved r a entry present,equal⟩
theorem four_finite_E10 (r a : Bool) :
    TrajectoryValid (Fact713Row3143Continuation.stages r) :=
  Fact713Row3143Continuation.both_finite_E10 r
theorem trajectory_bound (r a : Bool) :
    StageBinding (family r a) "S0" ⟨9,132⟩ (Fact713Row3143Continuation.stages r) := by
  cases r <;> cases a <;> decide
theorem source_present (r a : Bool) : lookup (family r a) ⟨"S0",3,20,140⟩ =
    some (Row3136FamilyBranches.source r a) := by cases r <;> cases a <;> decide
theorem target_present (r a : Bool) : lookup (family r a) ⟨"S0",3,23,142⟩ =
    some (Row3136FamilyBranches.target r a) := by cases r <;> cases a <;> decide
theorem named_d9_present (r a : Bool) : lookup (family r a) ⟨"S0",9,9,132⟩ =
    some Fact713Row3143Continuation.Data.b_S0_9_132_d9 := by cases r <;> cases a <;> decide
theorem named_d10_missing (r a : Bool) : lookup (family r a) ⟨"S0",10,9,132⟩ = none := by
  cases r <;> cases a <;> decide
theorem source_d4_missing (r a : Bool) : lookup (family r a) ⟨"S0",4,17,140⟩ = none := by
  cases r <;> cases a <;> decide
theorem residual_nonzero_rebase_present : lookup (family true true) ⟨"S0",4,16,137⟩ =
    some Row3136FamilyBranches.Data.ResidualA1_S0_16_137_d4 := by decide
theorem family_counts : (family false false).length = 1355 ∧ (family false true).length = 1355 ∧
    (family true false).length = 1364 ∧ (family true true).length = 1367 :=
  ⟨ZeroA0.family_count,ZeroA1.family_count,ResidualA0.family_count,ResidualA1.family_count⟩

#print axioms family_coherent
#print axioms row3136_preserved
#print axioms row3143_preserved
#print axioms named_prefix_covered
#print axioms four_finite_E10
#print axioms trajectory_bound
#print axioms source_present
#print axioms target_present
#print axioms named_d9_present
#print axioms named_d10_missing
#print axioms source_d4_missing
#print axioms residual_nonzero_rebase_present
#print axioms family_counts
end Fact713FourBranchContinuation
