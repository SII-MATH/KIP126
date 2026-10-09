import Fact721FirstD4Continuation.Data
namespace Fact721FirstD4Continuation.Residual
open IndexedFamilyCertificates Fact721FirstD4Continuation.Data
def extra : Family := [
  ⟨⟨"S0",7,-1,123⟩,b_S0_neg1_123_d7⟩,
  ⟨⟨"S0",8,-1,123⟩,b_S0_neg1_123_d8⟩,
  ⟨⟨"S0",8,-11,114⟩,b_S0_neg11_114_d8⟩,
  ⟨⟨"S0",7,-3,121⟩,b_S0_neg3_121_d7⟩,
  ⟨⟨"S0",7,-7,118⟩,b_S0_neg7_118_d7⟩,
  ⟨⟨"S0",6,0,124⟩,b_S0_0_124_d6⟩,
  ⟨⟨"S0",7,0,124⟩,b_S0_0_124_d7⟩,
  ⟨⟨"S0",8,0,124⟩,b_S0_0_124_d8⟩,
  ⟨⟨"S0",8,1,125⟩,b_S0_1_125_d8⟩,
  ⟨⟨"S0",5,10,132⟩,b_S0_10_132_d5⟩,
  ⟨⟨"S0",4,11,133⟩,b_S0_11_133_d4⟩,
  ⟨⟨"S0",6,12,134⟩,b_S0_12_134_d6⟩,
  ⟨⟨"S0",4,15,136⟩,b_S0_15_136_d4⟩,
  ⟨⟨"S0",6,4,127⟩,b_S0_4_127_d6⟩,
  ⟨⟨"S0",5,6,129⟩,b_S0_6_129_d5⟩,
  ⟨⟨"S0",6,6,129⟩,b_S0_6_129_d6⟩,
  ⟨⟨"S0",7,6,129⟩,b_S0_6_129_d7⟩,
  ⟨⟨"S0",7,7,130⟩,b_S0_7_130_d7⟩,
  ⟨⟨"S0",8,7,130⟩,b_S0_7_130_d8⟩,
  ⟨⟨"S0",8,8,131⟩,b_S0_8_131_d8⟩
]
theorem extra_count : extra.length = 20 := rfl
theorem extra_coherent : Coherent extra := checkFamily_sound extra (by decide)
#print axioms extra_coherent
end Fact721FirstD4Continuation.Residual
