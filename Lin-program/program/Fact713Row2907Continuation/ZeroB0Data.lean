import Fact713Row2916Continuation.Branches
namespace Fact713Row2907Continuation.ZeroB0
open LinearCertificates PageTransitionCertificates IndexedFamilyCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000
def b_ZeroB0_S0_neg10_115_d8 : WireComparison := page_comparison% "Fact713Row2907Continuation/wire/b_ZeroB0_S0_neg10_115_d8.json"
theorem b_ZeroB0_S0_neg10_115_d8_valid : b_ZeroB0_S0_neg10_115_d8.Valid := by lin_cert using ()
#print axioms b_ZeroB0_S0_neg10_115_d8_valid
def b_ZeroB0_S0_neg2_122_d7 : WireComparison := page_comparison% "Fact713Row2907Continuation/wire/b_ZeroB0_S0_neg2_122_d7.json"
theorem b_ZeroB0_S0_neg2_122_d7_valid : b_ZeroB0_S0_neg2_122_d7.Valid := by lin_cert using ()
#print axioms b_ZeroB0_S0_neg2_122_d7_valid
def b_ZeroB0_S0_11_133_d5 : WireComparison := page_comparison% "Fact713Row2907Continuation/wire/b_ZeroB0_S0_11_133_d5.json"
theorem b_ZeroB0_S0_11_133_d5_valid : b_ZeroB0_S0_11_133_d5.Valid := by lin_cert using ()
#print axioms b_ZeroB0_S0_11_133_d5_valid
def b_ZeroB0_S0_16_137_d4 : WireComparison := page_comparison% "Fact713Row2907Continuation/wire/b_ZeroB0_S0_16_137_d4.json"
theorem b_ZeroB0_S0_16_137_d4_valid : b_ZeroB0_S0_16_137_d4.Valid := by lin_cert using ()
#print axioms b_ZeroB0_S0_16_137_d4_valid
def b_ZeroB0_S0_25_144_d3 : WireComparison := page_comparison% "Fact713Row2907Continuation/wire/b_ZeroB0_S0_25_144_d3.json"
theorem b_ZeroB0_S0_25_144_d3_valid : b_ZeroB0_S0_25_144_d3.Valid := by lin_cert using ()
#print axioms b_ZeroB0_S0_25_144_d3_valid
def b_ZeroB0_S0_28_146_d2 : WireComparison := page_comparison% "Fact713Row2907Continuation/wire/b_ZeroB0_S0_28_146_d2.json"
theorem b_ZeroB0_S0_28_146_d2_valid : b_ZeroB0_S0_28_146_d2.Valid := by lin_cert using ()
#print axioms b_ZeroB0_S0_28_146_d2_valid
def b_ZeroB0_S0_5_128_d6 : WireComparison := page_comparison% "Fact713Row2907Continuation/wire/b_ZeroB0_S0_5_128_d6.json"
theorem b_ZeroB0_S0_5_128_d6_valid : b_ZeroB0_S0_5_128_d6.Valid := by lin_cert using ()
#print axioms b_ZeroB0_S0_5_128_d6_valid
def extra : Family := [
  ⟨⟨"S0",8,-10,115⟩,b_ZeroB0_S0_neg10_115_d8⟩,
  ⟨⟨"S0",7,-2,122⟩,b_ZeroB0_S0_neg2_122_d7⟩,
  ⟨⟨"S0",5,11,133⟩,b_ZeroB0_S0_11_133_d5⟩,
  ⟨⟨"S0",4,16,137⟩,b_ZeroB0_S0_16_137_d4⟩,
  ⟨⟨"S0",3,25,144⟩,b_ZeroB0_S0_25_144_d3⟩,
  ⟨⟨"S0",2,28,146⟩,b_ZeroB0_S0_28_146_d2⟩,
  ⟨⟨"S0",6,5,128⟩,b_ZeroB0_S0_5_128_d6⟩
]
theorem extra_count : extra.length = 7 := rfl
theorem extra_coherent : Coherent extra := checkFamily_sound extra (by decide)
#print axioms extra_coherent
end Fact713Row2907Continuation.ZeroB0
