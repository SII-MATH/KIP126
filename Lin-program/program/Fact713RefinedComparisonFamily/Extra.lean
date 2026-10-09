import Fact713RefinedComparisonFamily.Basic
import Fact713RefinedSourceSearch.Data

namespace Fact713RefinedComparisonFamily
open IndexedFamilyCertificates Fact713RefinedSourceSearch.Data

def extra : Family :=
  [⟨⟨"S0", 5, 19, 140⟩, b_S0_19_140_d5⟩,
   ⟨⟨"S0", 4, 24, 144⟩, b_S0_24_144_d4⟩,
   ⟨⟨"S0", 4, 28, 147⟩, b_S0_28_147_d4⟩,
   ⟨⟨"S0", 3, 32, 150⟩, b_S0_32_150_d3⟩,
   ⟨⟨"S0", 2, 35, 152⟩, b_S0_35_152_d2⟩]

theorem extra_count : extra.length = 5 := rfl

theorem extra_coherent : Coherent extra := checkFamily_sound extra (by decide)

#print axioms extra_coherent
end Fact713RefinedComparisonFamily
