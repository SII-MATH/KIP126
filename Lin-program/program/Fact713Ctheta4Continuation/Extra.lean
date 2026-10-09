import Fact713Ctheta4Continuation.Data
namespace Fact713Ctheta4Continuation
open IndexedFamilyCertificates Data
def extra : Family := [
  ⟨⟨"S0",4,17,138⟩,b_S0_17_138_d4⟩,
  ⟨⟨"S0",4,22,142⟩,b_S0_22_142_d4⟩,
  ⟨⟨"S0",3,26,145⟩,b_S0_26_145_d3⟩,
  ⟨⟨"S0",2,29,147⟩,b_S0_29_147_d2⟩
]
theorem extra_count : extra.length = 4 := rfl
theorem extra_coherent : Coherent extra := checkFamily_sound extra (by decide)
#print axioms extra_coherent
end Fact713Ctheta4Continuation
