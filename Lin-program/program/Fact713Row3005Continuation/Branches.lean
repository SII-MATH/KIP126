import Fact713Row3005Continuation.ZeroB0
import Fact713Row3005Continuation.ZeroB1
import IndexedPredecessorClosure.Diagnostics

namespace Fact713Row3005Continuation
open IndexedFamilyCertificates PageTransitionCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 32000000

def family (b : Bool) : Family := if b then ZeroB1.family else ZeroB0.family
def stages : List Stage := Fact713Row3143Continuation.stages false ++
  [⟨Data.b_S0_9_132_d10,[true]⟩]
def namedPrefix : List Key := (List.range 9).map (fun i => ⟨"S0",i+2,9,132⟩)

theorem family_coherent (b : Bool) : Coherent (family b) := by
  cases b
  · exact ZeroB0.family_coherent
  · exact ZeroB1.family_coherent
theorem previous_preserved (b : Bool) (entry : Entry)
    (h : entry ∈ Fact713Row2693Continuation.family b) : entry ∈ family b := by
  cases b
  · exact ZeroB0.previous_preserved entry h
  · exact ZeroB1.previous_preserved entry h
theorem finite_E11 : TrajectoryValid stages := checkTrajectory_sound _ (by decide)
theorem named_prefix_covered (b : Bool) : CoversKeys (family b) namedPrefix := by
  cases b <;> exact checkCoverage_sound _ _ (by decide)
theorem trajectory_bound (b : Bool) : StageBinding (family b) "S0" ⟨9,132⟩ stages := by
  cases b <;> decide
theorem row3005_d4_present (b : Bool) : lookup (family b) ⟨"S0",4,14,138⟩ =
    some Data.b_S0_14_138_d4 := by cases b <;> decide
theorem named_d10_present (b : Bool) : lookup (family b) ⟨"S0",10,9,132⟩ =
    some Data.b_S0_9_132_d10 := by cases b <;> decide
theorem named_d11_missing (b : Bool) : lookup (family b) ⟨"S0",11,9,132⟩ = none := by
  cases b <;> decide
theorem family_counts : (family false).length = 1431 ∧ (family true).length = 1431 :=
  ⟨ZeroB0.family_count,ZeroB1.family_count⟩

#print axioms family_coherent
#print axioms previous_preserved
#print axioms finite_E11
#print axioms named_prefix_covered
#print axioms trajectory_bound
#print axioms row3005_d4_present
#print axioms named_d10_present
#print axioms named_d11_missing
#print axioms family_counts
end Fact713Row3005Continuation
