import Fact713Row2693Continuation.ZeroB0
import Fact713Row2693Continuation.ZeroB1

namespace Fact713Row2693Continuation
open IndexedFamilyCertificates PageTransitionCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

def family (b : Bool) : Family := if b then ZeroB1.family else ZeroB0.family
theorem family_coherent (b : Bool) : Coherent (family b) := by
  cases b
  · exact ZeroB0.family_coherent
  · exact ZeroB1.family_coherent
theorem previous_preserved (b : Bool) (entry : Entry)
    (h : entry ∈ Fact713H2Continuation.family b) : entry ∈ family b := by
  cases b
  · exact ZeroB0.previous_preserved entry h
  · exact ZeroB1.previous_preserved entry h
theorem named_prefix_covered (b : Bool) :
    CoversKeys (family b) Fact713Row3143Continuation.namedPrefix := by
  intro key member
  obtain ⟨entry,present,equal⟩ := Fact713H2Continuation.named_prefix_covered b key member
  exact ⟨entry,previous_preserved b entry present,equal⟩
theorem finite_E10 (b : Bool) : TrajectoryValid (Fact713Row3143Continuation.stages false) :=
  Fact713H2Continuation.finite_E10 b
theorem trajectory_bound (b : Bool) :
    StageBinding (family b) "S0" ⟨9,132⟩ (Fact713Row3143Continuation.stages false) := by
  cases b <;> decide
theorem row2693_d5_present (b : Bool) : lookup (family b) ⟨"S0",5,10,134⟩ =
    some Data.b_S0_10_134_d5 := by cases b <;> decide
theorem target_d5_present (b : Bool) : lookup (family b) ⟨"S0",5,15,138⟩ =
    some Data.b_S0_15_138_d5 := by cases b <;> decide
theorem named_d10_missing (b : Bool) : lookup (family b) ⟨"S0",10,9,132⟩ = none := by
  cases b <;> decide
theorem row3005_d4_missing (b : Bool) : lookup (family b) ⟨"S0",4,14,138⟩ = none := by
  cases b <;> decide
theorem full_source_shape : Data.b_S0_10_134_d5.k = 1 ∧ Data.b_S0_10_134_d5.m = 2 ∧
    Data.b_S0_10_134_d5.n = 0 ∧ Data.b_S0_10_134_d5.h = 1 ∧
    Data.b_S0_10_134_d5.outgoing = [false,true] ∧
    Data.b_S0_10_134_d5.projection = [true,false] := by decide
theorem target_killed : Data.b_S0_15_138_d5.h = 0 := rfl
theorem family_counts : (family false).length = 1413 ∧ (family true).length = 1413 :=
  ⟨ZeroB0.family_count,ZeroB1.family_count⟩

#print axioms family_coherent
#print axioms previous_preserved
#print axioms named_prefix_covered
#print axioms finite_E10
#print axioms trajectory_bound
#print axioms row2693_d5_present
#print axioms target_d5_present
#print axioms named_d10_missing
#print axioms row3005_d4_missing
#print axioms full_source_shape
#print axioms target_killed
#print axioms family_counts
end Fact713Row2693Continuation
