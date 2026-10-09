import Fact713Row2693Continuation.Data
namespace Fact713Row2693Continuation
open IndexedFamilyCertificates Data
def extra : Family := [
  ⟨⟨"S0",2,-2,125⟩,b_S0_neg2_125_d2⟩,
  ⟨⟨"S0",3,1,127⟩,b_S0_1_127_d3⟩,
  ⟨⟨"S0",5,10,134⟩,b_S0_10_134_d5⟩,
  ⟨⟨"S0",5,15,138⟩,b_S0_15_138_d5⟩,
  ⟨⟨"S0",6,15,138⟩,b_S0_15_138_d6⟩,
  ⟨⟨"S0",8,20,142⟩,b_S0_20_142_d8⟩,
  ⟨⟨"S0",6,21,143⟩,b_S0_21_143_d6⟩,
  ⟨⟨"S0",7,21,143⟩,b_S0_21_143_d7⟩,
  ⟨⟨"S0",7,28,149⟩,b_S0_28_149_d7⟩,
  ⟨⟨"S0",4,5,130⟩,b_S0_5_130_d4⟩
]
theorem extra_count : extra.length = 10 := rfl
theorem extra_coherent : Coherent extra := checkFamily_sound extra (by decide)
#print axioms extra_coherent
end Fact713Row2693Continuation
