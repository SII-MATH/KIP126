import Fact713Row3005Continuation.Branches
import Row2574D3Search.Tactic

namespace Fact713Row2574Continuation
open IndexedFamilyCertificates PageTransitionCertificates

def extra (c : Bool) : Family := [
  ⟨⟨"S0",2,3,130⟩,Row2574D3Search.Data.sourceIncoming2⟩,
  ⟨⟨"S0",3,6,132⟩,Row2574D3Search.Data.source3 c⟩,
  ⟨⟨"S0",3,9,134⟩,Row2574D3Search.Data.current3 c⟩]
theorem extra_count (c : Bool) : (extra c).length = 3 := rfl
theorem extra_coherent (c : Bool) : Coherent (extra c) := by
  cases c <;> exact checkFamily_sound _ (by decide)

#print axioms extra_count
#print axioms extra_coherent
end Fact713Row2574Continuation
