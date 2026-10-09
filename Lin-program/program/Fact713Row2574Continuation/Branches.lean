import Fact713Row2574Continuation.ZeroB0C0
import Fact713Row2574Continuation.ZeroB0C1
import Fact713Row2574Continuation.ZeroB1C0
import Fact713Row2574Continuation.ZeroB1C1

namespace Fact713Row2574Continuation
open IndexedFamilyCertificates PageTransitionCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

def family (b c : Bool) : Family := Fact713Row3005Continuation.family b ++ extra c
theorem family_coherent (b c : Bool) : Coherent (family b c) := by
  cases b <;> cases c
  · exact ZeroB0C0.coherent
  · exact ZeroB0C1.coherent
  · exact ZeroB1C0.coherent
  · exact ZeroB1C1.coherent
theorem previous_preserved (b c : Bool) (entry : Entry)
    (h : entry ∈ Fact713Row3005Continuation.family b) : entry ∈ family b c :=
  List.mem_append_left _ h
theorem family_count (b c : Bool) : (family b c).length = 1434 := by
  cases b <;> cases c <;> simp only [family,List.length_append,extra_count]
  all_goals first
    | rw [Fact713Row3005Continuation.family_counts.1]
    | rw [Fact713Row3005Continuation.family_counts.2]
theorem source_present (b c : Bool) : lookup (family b c) ⟨"S0",3,6,132⟩ =
    some (Row2574D3Search.Data.source3 c) := by cases b <;> cases c <;> decide
theorem target_present (b c : Bool) : lookup (family b c) ⟨"S0",3,9,134⟩ =
    some (Row2574D3Search.Data.current3 c) := by cases b <;> cases c <;> decide
theorem target2_present (b c : Bool) : lookup (family b c) ⟨"S0",2,9,134⟩ =
    some Row2574D3Search.Data.current2 := by cases b <;> cases c <;> decide
theorem incoming2_present (b c : Bool) : lookup (family b c) ⟨"S0",2,3,130⟩ =
    some Row2574D3Search.Data.sourceIncoming2 := by cases b <;> cases c <;> decide
theorem trajectory_bound (b c : Bool) : StageBinding (family b c) "S0" ⟨9,132⟩
    Fact713Row3005Continuation.stages := by cases b <;> cases c <;> decide
theorem named_d11_missing (b c : Bool) : lookup (family b c) ⟨"S0",11,9,132⟩ = none := by
  cases b <;> cases c <;> decide
theorem row2695_d4_missing (b c : Bool) : lookup (family b c) ⟨"S0",4,9,134⟩ = none := by
  cases b <;> cases c <;> decide

#print axioms family_coherent
#print axioms previous_preserved
#print axioms family_count
#print axioms source_present
#print axioms target_present
#print axioms target2_present
#print axioms incoming2_present
#print axioms trajectory_bound
#print axioms named_d11_missing
#print axioms row2695_d4_missing
end Fact713Row2574Continuation
