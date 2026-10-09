import Fact713RefinedComparisonFamily.Basic
import Fact713NextSourceSearch.Overlay

namespace Fact713NextComparisonFamily
open IndexedFamilyCertificates Fact713NextSourceSearch.Overlay

def extra : Family :=
  [⟨⟨"S0", 7, 10, 133⟩, b_S0_10_133_d7⟩,
   ⟨⟨"S0", 3, 12, 134⟩, b_S0_12_134_d3⟩,
   ⟨⟨"S0", 3, 15, 136⟩, b_S0_15_136_d3⟩,
   ⟨⟨"S0", 7, 16, 138⟩, b_S0_16_138_d7⟩,
   ⟨⟨"S0", 5, 3, 127⟩, b_S0_3_127_d5⟩,
   ⟨⟨"S0", 6, 3, 127⟩, b_S0_3_127_d6⟩,
   ⟨⟨"S0", 4, 8, 131⟩, b_S0_8_131_d4⟩,
   ⟨⟨"S0", 6, 9, 132⟩, b_S0_9_132_d6⟩]

theorem extra_count : extra.length = 8 := rfl
theorem extra_coherent : Coherent extra := checkFamily_sound extra (by decide)

#print axioms extra_coherent
end Fact713NextComparisonFamily
