import Fact713Row2431Continuation.Data
namespace Fact713Row2431Continuation.Zero
open IndexedFamilyCertificates Fact713Row2431Continuation.Data
def extra : Family := [
  ⟨⟨"S0",7,-13,112⟩,b_S0_neg13_112_d7⟩,
  ⟨⟨"S0",8,-21,105⟩,b_S0_neg21_105_d8⟩,
  ⟨⟨"S0",6,-6,118⟩,b_S0_neg6_118_d6⟩,
  ⟨⟨"S0",5,0,123⟩,b_S0_0_123_d5⟩,
  ⟨⟨"S0",4,5,127⟩,b_S0_5_127_d4⟩,
  ⟨⟨"S0",3,9,130⟩,b_S0_9_130_d3⟩
]
theorem extra_count : extra.length = 6 := rfl
theorem extra_coherent : Coherent extra := checkFamily_sound extra (by decide)
#print axioms extra_coherent
end Fact713Row2431Continuation.Zero
