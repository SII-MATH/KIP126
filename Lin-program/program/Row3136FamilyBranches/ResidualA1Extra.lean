import Row3136FamilyBranches.Data
namespace Row3136FamilyBranches.ResidualA1
open IndexedFamilyCertificates Row3136FamilyBranches.Data
def extra : Family := [
  ⟨⟨"S0",4,16,137⟩,ResidualA1_S0_16_137_d4⟩,
  ⟨⟨"S0",3,20,140⟩,ResidualA1_S0_20_140_d3⟩,
  ⟨⟨"S0",3,23,142⟩,ResidualA1_S0_23_142_d3⟩,
  ⟨⟨"S0",3,25,144⟩,ResidualA1_S0_25_144_d3⟩,
  ⟨⟨"S0",2,26,144⟩,ResidualA1_S0_26_144_d2⟩,
  ⟨⟨"S0",3,26,144⟩,ResidualA1_S0_26_144_d3⟩,
  ⟨⟨"S0",2,28,146⟩,ResidualA1_S0_28_146_d2⟩,
  ⟨⟨"S0",2,29,146⟩,ResidualA1_S0_29_146_d2⟩
]
theorem extra_count : extra.length = 8 := rfl
theorem extra_coherent : Coherent extra := checkFamily_sound extra (by decide)
#print axioms extra_coherent
end Row3136FamilyBranches.ResidualA1
