import Fact713SquareContinuation.Data
namespace Fact713SquareContinuation
open IndexedFamilyCertificates Data
def extra : Family := [
  ⟨⟨"S0",7,-1,123⟩,b_S0_neg1_123_d7⟩,
  ⟨⟨"S0",8,-1,123⟩,b_S0_neg1_123_d8⟩,
  ⟨⟨"S0",9,-1,123⟩,b_S0_neg1_123_d9⟩,
  ⟨⟨"S0",9,-12,113⟩,b_S0_neg12_113_d9⟩,
  ⟨⟨"S0",10,-2,122⟩,b_S0_neg2_122_d10⟩,
  ⟨⟨"S0",8,-2,122⟩,b_S0_neg2_122_d8⟩,
  ⟨⟨"S0",9,-2,122⟩,b_S0_neg2_122_d9⟩,
  ⟨⟨"S0",8,-3,121⟩,b_S0_neg3_121_d8⟩,
  ⟨⟨"S0",5,12,134⟩,b_S0_12_134_d5⟩,
  ⟨⟨"S0",6,12,134⟩,b_S0_12_134_d6⟩,
  ⟨⟨"S0",5,17,138⟩,b_S0_17_138_d5⟩,
  ⟨⟨"S0",7,5,128⟩,b_S0_5_128_d7⟩,
  ⟨⟨"S0",6,6,129⟩,b_S0_6_129_d6⟩,
  ⟨⟨"S0",7,6,129⟩,b_S0_6_129_d7⟩,
  ⟨⟨"S0",8,7,130⟩,b_S0_7_130_d8⟩,
  ⟨⟨"S0",9,8,131⟩,b_S0_8_131_d9⟩
]
theorem extra_count : extra.length = 16 := rfl
theorem extra_coherent : Coherent extra := checkFamily_sound extra (by decide)
#print axioms extra_coherent
end Fact713SquareContinuation
