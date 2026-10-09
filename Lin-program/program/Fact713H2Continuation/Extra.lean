import Fact713H2Continuation.Data
namespace Fact713H2Continuation
open IndexedFamilyCertificates Data
def extra : Family := [
  ⟨⟨"S0",9,10,133⟩,b_S0_10_133_d9⟩,
  ⟨⟨"S0",3,16,140⟩,b_S0_16_140_d3⟩,
  ⟨⟨"S0",8,19,141⟩,b_S0_19_141_d8⟩,
  ⟨⟨"S0",3,19,142⟩,b_S0_19_142_d3⟩,
  ⟨⟨"S0",4,19,142⟩,b_S0_19_142_d4⟩,
  ⟨⟨"S0",4,20,143⟩,b_S0_20_143_d4⟩,
  ⟨⟨"S0",6,22,144⟩,b_S0_22_144_d6⟩,
  ⟨⟨"S0",4,23,145⟩,b_S0_23_145_d4⟩,
  ⟨⟨"S0",5,24,146⟩,b_S0_24_146_d5⟩,
  ⟨⟨"S0",5,25,147⟩,b_S0_25_147_d5⟩,
  ⟨⟨"S0",7,27,148⟩,b_S0_27_148_d7⟩,
  ⟨⟨"S0",5,28,149⟩,b_S0_28_149_d5⟩,
  ⟨⟨"S0",6,28,149⟩,b_S0_28_149_d6⟩,
  ⟨⟨"S0",6,30,151⟩,b_S0_30_151_d6⟩,
  ⟨⟨"S0",6,31,152⟩,b_S0_31_152_d6⟩,
  ⟨⟨"S0",6,34,154⟩,b_S0_34_154_d6⟩,
  ⟨⟨"S0",7,37,157⟩,b_S0_37_157_d7⟩,
  ⟨⟨"S0",7,38,158⟩,b_S0_38_158_d7⟩
]
theorem extra_count : extra.length = 18 := rfl
theorem extra_coherent : Coherent extra := checkFamily_sound extra (by decide)
#print axioms extra_coherent
end Fact713H2Continuation
