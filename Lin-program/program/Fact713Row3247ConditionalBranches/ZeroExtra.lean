import Fact713Row3247ConditionalBranches.Data
namespace Fact713Row3247ConditionalBranches.Zero
open IndexedFamilyCertificates Fact713Row3247ConditionalBranches.Data
def extra : Family := [
  ⟨⟨"S0",7,17,139⟩,b_S0_17_139_d7⟩,
  ⟨⟨"S0",3,18,141⟩,b_S0_18_141_d3⟩,
  ⟨⟨"S0",3,21,143⟩,b_S0_21_143_d3⟩,
  ⟨⟨"S0",4,22,144⟩,b_S0_22_144_d4⟩,
  ⟨⟨"S0",6,24,145⟩,b_S0_24_145_d6⟩,
  ⟨⟨"S0",4,25,146⟩,b_S0_25_146_d4⟩,
  ⟨⟨"S0",5,27,148⟩,b_S0_27_148_d5⟩,
  ⟨⟨"S0",5,30,150⟩,b_S0_30_150_d5⟩,
  ⟨⟨"S0",6,33,153⟩,b_S0_33_153_d6⟩,
  ⟨⟨"S0",8,9,132⟩,b_S0_9_132_d8⟩
]
theorem extra_count : extra.length = 10 := rfl
theorem extra_coherent : Coherent extra := checkFamily_sound extra (by decide)
#print axioms extra_coherent
end Fact713Row3247ConditionalBranches.Zero
