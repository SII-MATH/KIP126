import Fact713Row2907Continuation.ZeroB0
import Fact713Row2907Continuation.ZeroB1
import Fact713Row2907Continuation.Residual

namespace Fact713Row2907Continuation
open IndexedFamilyCertificates PageTransitionCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

def family (r b : Bool) : Family :=
  if r then Residual.family else if b then ZeroB1.family else ZeroB0.family

def source (r b : Bool) : WireComparison :=
  let w := if r then Residual.b_Residual_S0_16_137_d4
    else if b then ZeroB1.b_ZeroB1_S0_16_137_d4 else ZeroB0.b_ZeroB0_S0_16_137_d4
  { version := 1, k := if r then 1 else 2, m := 1, n := 1, h := 0,
    outgoing := w.outgoing, incoming := w.incoming, projection := w.projection,
    inclusion := w.inclusion, up := w.up, down := w.down }

theorem source_valid (r b : Bool) : (source r b).Valid := by
  cases r <;> cases b <;> lin_cert using ()

theorem family_coherent (r b : Bool) : Coherent (family r b) := by
  cases r <;> cases b
  · exact ZeroB0.family_coherent
  · exact ZeroB1.family_coherent
  · exact Residual.family_coherent
  · exact Residual.family_coherent

theorem previous_preserved (r b : Bool) (entry : Entry)
    (h : entry ∈ Fact713Row2916Continuation.family r false) : entry ∈ family r b := by
  cases r <;> cases b
  · exact ZeroB0.previous_preserved entry h
  · exact ZeroB1.previous_preserved entry h
  · exact Residual.previous_preserved entry h
  · exact Residual.previous_preserved entry h

theorem named_prefix_covered (r b : Bool) :
    CoversKeys (family r b) Fact713Row3143Continuation.namedPrefix := by
  intro key member
  obtain ⟨entry,present,equal⟩ := Fact713Row2916Continuation.named_prefix_covered r false key member
  exact ⟨entry,previous_preserved r b entry present,equal⟩

theorem finite_E10 (r b : Bool) : TrajectoryValid (Fact713Row3143Continuation.stages r) :=
  Fact713Row2916Continuation.four_finite_E10 r false

theorem trajectory_bound (r b : Bool) :
    StageBinding (family r b) "S0" ⟨9,132⟩ (Fact713Row3143Continuation.stages r) := by
  cases r <;> cases b <;> decide

theorem source_present (r b : Bool) : lookup (family r b) ⟨"S0",4,16,137⟩ =
    some (source r b) := by cases r <;> cases b <;> decide

theorem source_d5_target_zero (r b : Bool) : lookup (family r b) ⟨"S0",5,11,133⟩ =
    some ZeroB0.b_ZeroB0_S0_11_133_d5 := by cases r <;> cases b <;> decide

theorem named_d10_missing (r b : Bool) : lookup (family r b) ⟨"S0",10,9,132⟩ = none := by
  cases r <;> cases b <;> decide

theorem family_counts : (family false false).length = 1365 ∧ (family false true).length = 1365 ∧
    (family true false).length = 1386 :=
  ⟨ZeroB0.family_count,ZeroB1.family_count,Residual.family_count⟩

#print axioms source_valid
#print axioms family_coherent
#print axioms previous_preserved
#print axioms named_prefix_covered
#print axioms finite_E10
#print axioms trajectory_bound
#print axioms source_present
#print axioms source_d5_target_zero
#print axioms named_d10_missing
#print axioms family_counts
end Fact713Row2907Continuation
