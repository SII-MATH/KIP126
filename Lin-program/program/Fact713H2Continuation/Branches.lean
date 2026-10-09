import Fact713H2Continuation.ZeroB0
import Fact713H2Continuation.ZeroB1

namespace Fact713H2Continuation
open IndexedFamilyCertificates PageTransitionCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

def family (b : Bool) : Family := if b then ZeroB1.family else ZeroB0.family

theorem family_coherent (b : Bool) : Coherent (family b) := by
  cases b
  · exact ZeroB0.family_coherent
  · exact ZeroB1.family_coherent

theorem previous_preserved (b : Bool) (entry : Entry)
    (h : entry ∈ Fact713SquareContinuation.family b) : entry ∈ family b := by
  cases b
  · exact ZeroB0.previous_preserved entry h
  · exact ZeroB1.previous_preserved entry h

theorem named_prefix_covered (b : Bool) :
    CoversKeys (family b) Fact713Row3143Continuation.namedPrefix := by
  intro key member
  obtain ⟨entry,present,equal⟩ := Fact713SquareContinuation.named_prefix_covered b key member
  exact ⟨entry,previous_preserved b entry present,equal⟩

theorem finite_E10 (b : Bool) : TrajectoryValid (Fact713Row3143Continuation.stages false) :=
  Fact713SquareContinuation.finite_E10 b

theorem trajectory_bound (b : Bool) :
    StageBinding (family b) "S0" ⟨9,132⟩ (Fact713Row3143Continuation.stages false) := by
  cases b <;> decide

theorem square_source_d5_present (b : Bool) : lookup (family b) ⟨"S0",5,12,134⟩ =
    some Fact713SquareContinuation.Data.b_S0_12_134_d5 := by cases b <;> decide

theorem named_d10_missing (b : Bool) : lookup (family b) ⟨"S0",10,9,132⟩ = none := by
  cases b <;> decide

theorem target_d5_present (b : Bool) : lookup (family b) ⟨"S0",5,17,138⟩ =
    some Fact713SquareContinuation.Data.b_S0_17_138_d5 := by cases b <;> decide

theorem source_d6_present (b : Bool) : lookup (family b) ⟨"S0",6,12,134⟩ =
    some Fact713SquareContinuation.Data.b_S0_12_134_d6 := by cases b <;> decide

theorem row3147_d3_present (b : Bool) : lookup (family b) ⟨"S0",3,16,140⟩ = some Data.b_S0_16_140_d3 := by
  cases b <;> decide

theorem family_counts : (family false).length = 1403 ∧ (family true).length = 1403 :=
  ⟨ZeroB0.family_count,ZeroB1.family_count⟩

#print axioms family_coherent
#print axioms previous_preserved
#print axioms named_prefix_covered
#print axioms finite_E10
#print axioms trajectory_bound
#print axioms square_source_d5_present
#print axioms named_d10_missing
#print axioms target_d5_present
#print axioms source_d6_present
#print axioms row3147_d3_present
#print axioms family_counts
end Fact713H2Continuation
