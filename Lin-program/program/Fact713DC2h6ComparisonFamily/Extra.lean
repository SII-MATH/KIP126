import Fact713RefinedComparisonFamily.Basic
import Fact713DC2h6Source.Overlay

namespace Fact713DC2h6ComparisonFamily
open IndexedFamilyCertificates Fact713DC2h6Source.Overlay

def extra : Family :=
  [⟨⟨"S0", 6, -1, 123⟩, b_S0_neg1_123_d6⟩,
   ⟨⟨"S0", 8, -12, 113⟩, b_S0_neg12_113_d8⟩,
   ⟨⟨"S0", 7, -4, 120⟩, b_S0_neg4_120_d7⟩,
   ⟨⟨"S0", 6, -4, 121⟩, b_S0_neg4_121_d6⟩,
   ⟨⟨"S0", 7, -8, 117⟩, b_S0_neg8_117_d7⟩,
   ⟨⟨"S0", 4, 10, 132⟩, b_S0_10_132_d4⟩,
   ⟨⟨"S0", 3, 11, 133⟩, b_S0_11_133_d3⟩,
   ⟨⟨"S0", 3, 14, 135⟩, b_S0_14_135_d3⟩,
   ⟨⟨"S0", 4, 14, 135⟩, b_S0_14_135_d4⟩,
   ⟨⟨"S0", 5, 2, 126⟩, b_S0_2_126_d5⟩,
   ⟨⟨"S0", 6, 3, 126⟩, b_S0_3_126_d6⟩,
   ⟨⟨"S0", 7, 3, 127⟩, b_S0_3_127_d7⟩,
   ⟨⟨"S0", 5, 5, 128⟩, b_S0_5_128_d5⟩,
   ⟨⟨"S0", 4, 7, 130⟩, b_S0_7_130_d4⟩,
   ⟨⟨"S0", 5, 9, 131⟩, b_S0_9_131_d5⟩]

theorem extra_count : extra.length = 15 := rfl
theorem extra_coherent : Coherent extra := checkFamily_sound extra (by decide)

#print axioms extra_coherent
end Fact713DC2h6ComparisonFamily
