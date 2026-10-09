import Fact713D4Branches.ZeroData
import Fact713RefinedComparisonFamily.Basic
namespace Fact713D4Branches.Zero
open IndexedFamilyCertificates Fact713D4Branches.ZeroData
def extra : Family :=
  [⟨⟨"S0", 4, 13, 135⟩, b_S0_13_135_d4⟩,
   ⟨⟨"S0", 5, 13, 135⟩, b_S0_13_135_d5⟩,
   ⟨⟨"S0", 6, 14, 136⟩, b_S0_14_136_d6⟩,
   ⟨⟨"S0", 7, 15, 137⟩, b_S0_15_137_d7⟩,
   ⟨⟨"S0", 3, 17, 138⟩, b_S0_17_138_d3⟩,
   ⟨⟨"S0", 5, 18, 139⟩, b_S0_18_139_d5⟩,
   ⟨⟨"S0", 6, 2, 126⟩, b_S0_2_126_d6⟩,
   ⟨⟨"S0", 7, 2, 126⟩, b_S0_2_126_d7⟩,
   ⟨⟨"S0", 5, 8, 131⟩, b_S0_8_131_d5⟩,
   ⟨⟨"S0", 6, 8, 131⟩, b_S0_8_131_d6⟩,
   ⟨⟨"S0", 7, 9, 132⟩, b_S0_9_132_d7⟩]
theorem extra_count : extra.length = 11 := rfl
theorem extra_coherent : Coherent extra := checkFamily_sound extra (by decide)
#print axioms extra_coherent
end Fact713D4Branches.Zero
