import Fact713D4ComparisonBranches.Data
namespace Fact713D4ComparisonBranches.Zero
open IndexedFamilyCertificates Fact713D4ComparisonBranches.Data
def extra : Family := [
  ⟨⟨"S0",6,1,125⟩,b_S0_1_125_d6⟩,
  ⟨⟨"S0",7,1,125⟩,b_S0_1_125_d7⟩,
  ⟨⟨"S0",4,12,134⟩,b_S0_12_134_d4⟩,
  ⟨⟨"S0",6,13,135⟩,b_S0_13_135_d6⟩,
  ⟨⟨"S0",5,7,130⟩,b_S0_7_130_d5⟩,
  ⟨⟨"S0",6,7,130⟩,b_S0_7_130_d6⟩,
  ⟨⟨"S0",7,8,131⟩,b_S0_8_131_d7⟩
]
theorem extra_count : extra.length = 7 := rfl
theorem extra_coherent : Coherent extra := checkFamily_sound extra (by decide)
#print axioms extra_coherent
end Fact713D4ComparisonBranches.Zero
