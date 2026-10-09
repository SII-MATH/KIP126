import Fact713Row3143Continuation.Data
namespace Fact713Row3143Continuation.Zero
open IndexedFamilyCertificates Fact713Row3143Continuation.Data
def extra : Family := [
  ⟨⟨"S0",8,11,134⟩,b_S0_11_134_d8⟩,
  ⟨⟨"S0",7,13,136⟩,b_S0_13_136_d7⟩,
  ⟨⟨"S0",5,16,139⟩,b_S0_16_139_d5⟩,
  ⟨⟨"S0",8,17,139⟩,b_S0_17_139_d8⟩,
  ⟨⟨"S0",8,18,140⟩,b_S0_18_140_d8⟩,
  ⟨⟨"S0",7,19,141⟩,b_S0_19_141_d7⟩,
  ⟨⟨"S0",6,20,142⟩,b_S0_20_142_d6⟩,
  ⟨⟨"S0",7,20,142⟩,b_S0_20_142_d7⟩,
  ⟨⟨"S0",4,21,143⟩,b_S0_21_143_d4⟩,
  ⟨⟨"S0",5,21,143⟩,b_S0_21_143_d5⟩,
  ⟨⟨"S0",7,25,146⟩,b_S0_25_146_d7⟩,
  ⟨⟨"S0",5,26,147⟩,b_S0_26_147_d5⟩,
  ⟨⟨"S0",6,26,147⟩,b_S0_26_147_d6⟩,
  ⟨⟨"S0",7,26,147⟩,b_S0_26_147_d7⟩,
  ⟨⟨"S0",6,27,148⟩,b_S0_27_148_d6⟩,
  ⟨⟨"S0",6,32,152⟩,b_S0_32_152_d6⟩,
  ⟨⟨"S0",9,9,132⟩,b_S0_9_132_d9⟩
]
theorem extra_count : extra.length = 17 := rfl
theorem extra_coherent : Coherent extra := checkFamily_sound extra (by decide)
#print axioms extra_coherent
end Fact713Row3143Continuation.Zero
