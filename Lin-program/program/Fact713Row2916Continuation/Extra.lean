import Fact713Row2916Continuation.Data
namespace Fact713Row2916Continuation
open IndexedFamilyCertificates Data
def extra : Family := [
  ⟨⟨"S0",4,17,140⟩,b_S0_17_140_d4⟩,
  ⟨⟨"S0",5,17,140⟩,b_S0_17_140_d5⟩,
  ⟨⟨"S0",5,22,144⟩,b_S0_22_144_d5⟩
]
theorem extra_count : extra.length = 3 := rfl
theorem extra_coherent : Coherent extra := checkFamily_sound extra (by decide)
#print axioms extra_coherent
end Fact713Row2916Continuation
