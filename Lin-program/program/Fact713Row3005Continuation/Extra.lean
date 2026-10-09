import Fact713Row3005Continuation.Data
namespace Fact713Row3005Continuation
open IndexedFamilyCertificates Data
def extra : Family := [
  ⟨⟨"S0",3,10,135⟩,b_S0_10_135_d3⟩,
  ⟨⟨"S0",4,14,138⟩,b_S0_14_138_d4⟩,
  ⟨⟨"S0",4,18,141⟩,b_S0_18_141_d4⟩,
  ⟨⟨"S0",9,19,141⟩,b_S0_19_141_d9⟩,
  ⟨⟨"S0",9,20,142⟩,b_S0_20_142_d9⟩,
  ⟨⟨"S0",8,21,143⟩,b_S0_21_143_d8⟩,
  ⟨⟨"S0",7,22,144⟩,b_S0_22_144_d7⟩,
  ⟨⟨"S0",5,23,145⟩,b_S0_23_145_d5⟩,
  ⟨⟨"S0",6,23,145⟩,b_S0_23_145_d6⟩,
  ⟨⟨"S0",8,28,149⟩,b_S0_28_149_d8⟩,
  ⟨⟨"S0",6,29,150⟩,b_S0_29_150_d6⟩,
  ⟨⟨"S0",7,29,150⟩,b_S0_29_150_d7⟩,
  ⟨⟨"S0",8,29,150⟩,b_S0_29_150_d8⟩,
  ⟨⟨"S0",7,30,151⟩,b_S0_30_151_d7⟩,
  ⟨⟨"S0",8,30,151⟩,b_S0_30_151_d8⟩,
  ⟨⟨"S0",7,36,156⟩,b_S0_36_156_d7⟩,
  ⟨⟨"S0",2,7,133⟩,b_S0_7_133_d2⟩,
  ⟨⟨"S0",10,9,132⟩,b_S0_9_132_d10⟩
]
theorem extra_count : extra.length = 18 := rfl
theorem extra_coherent : Coherent extra := checkFamily_sound extra (by decide)
#print axioms extra_coherent
end Fact713Row3005Continuation
