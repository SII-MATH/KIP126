import Fact713RefinedComparisonFamily.Basic
import Fact713Row2773Refinement.Data

namespace Fact713Row2773ComparisonFamily
open IndexedFamilyCertificates Fact713Row2773Refinement.Data

def extra : Family :=
  [⟨⟨"S0", 6, 10, 133⟩, b_S0_10_133_d6⟩,
   ⟨⟨"S0", 7, 11, 134⟩, b_S0_11_134_d7⟩,
   ⟨⟨"S0", 3, 13, 135⟩, b_S0_13_135_d3⟩,
   ⟨⟨"S0", 5, 14, 136⟩, b_S0_14_136_d5⟩,
   ⟨⟨"S0", 6, 15, 137⟩, b_S0_15_137_d6⟩,
   ⟨⟨"S0", 3, 16, 137⟩, b_S0_16_137_d3⟩,
   ⟨⟨"S0", 5, 4, 128⟩, b_S0_4_128_d5⟩,
   ⟨⟨"S0", 6, 4, 128⟩, b_S0_4_128_d6⟩,
   ⟨⟨"S0", 4, 9, 132⟩, b_S0_9_132_d4⟩,
   ⟨⟨"S0", 5, 9, 132⟩, b_S0_9_132_d5⟩]

theorem extra_count : extra.length = 10 := rfl
theorem extra_coherent : Coherent extra := checkFamily_sound extra (by decide)

#print axioms extra_coherent
end Fact713Row2773ComparisonFamily
