import Fact713NextD3Continuation.Data
namespace Fact713NextD3Continuation.Zero
open IndexedFamilyCertificates Fact713NextD3Continuation.Data
def extra : Family := [
  ⟨⟨"S0",8,10,133⟩,b_S0_10_133_d8⟩,
  ⟨⟨"S0",7,12,135⟩,b_S0_12_135_d7⟩,
  ⟨⟨"S0",4,12,136⟩,b_S0_12_136_d4⟩,
  ⟨⟨"S0",3,13,137⟩,b_S0_13_137_d3⟩,
  ⟨⟨"S0",6,14,137⟩,b_S0_14_137_d6⟩,
  ⟨⟨"S0",3,16,139⟩,b_S0_16_139_d3⟩,
  ⟨⟨"S0",4,16,139⟩,b_S0_16_139_d4⟩,
  ⟨⟨"S0",7,18,140⟩,b_S0_18_140_d7⟩,
  ⟨⟨"S0",6,19,141⟩,b_S0_19_141_d6⟩,
  ⟨⟨"S0",4,20,142⟩,b_S0_20_142_d4⟩,
  ⟨⟨"S0",5,20,142⟩,b_S0_20_142_d5⟩,
  ⟨⟨"S0",5,25,146⟩,b_S0_25_146_d5⟩,
  ⟨⟨"S0",6,25,146⟩,b_S0_25_146_d6⟩
]
theorem extra_count : extra.length = 13 := rfl
theorem extra_coherent : Coherent extra := checkFamily_sound extra (by decide)
#print axioms extra_coherent
end Fact713NextD3Continuation.Zero
