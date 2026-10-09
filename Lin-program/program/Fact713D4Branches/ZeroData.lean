import Row2773D4Leibniz.CoordinateBridge
import Fact713Row2994Branches.Data
namespace Fact713D4Branches.ZeroData
open LinearCertificates PageTransitionCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
def b_S0_13_135_d4 : WireComparison := page_comparison% "Fact713D4Branches/wire/b_S0_13_135_d4.json"
theorem b_S0_13_135_d4_valid : b_S0_13_135_d4.Valid := by lin_cert using ()
def b_S0_13_135_d5 : WireComparison := page_comparison% "Fact713D4Branches/wire/b_S0_13_135_d5.json"
theorem b_S0_13_135_d5_valid : b_S0_13_135_d5.Valid := by lin_cert using ()
def b_S0_14_136_d6 : WireComparison := page_comparison% "Fact713D4Branches/wire/b_S0_14_136_d6.json"
theorem b_S0_14_136_d6_valid : b_S0_14_136_d6.Valid := by lin_cert using ()
def b_S0_15_137_d7 : WireComparison := page_comparison% "Fact713D4Branches/wire/b_S0_15_137_d7.json"
theorem b_S0_15_137_d7_valid : b_S0_15_137_d7.Valid := by lin_cert using ()
def b_S0_17_138_d3 : WireComparison := page_comparison% "Fact713D4Branches/wire/b_S0_17_138_d3.json"
theorem b_S0_17_138_d3_valid : b_S0_17_138_d3.Valid := by lin_cert using ()
def b_S0_18_139_d5 : WireComparison := page_comparison% "Fact713D4Branches/wire/b_S0_18_139_d5.json"
theorem b_S0_18_139_d5_valid : b_S0_18_139_d5.Valid := by lin_cert using ()
def b_S0_2_126_d6 : WireComparison := page_comparison% "Fact713D4Branches/wire/b_S0_2_126_d6.json"
theorem b_S0_2_126_d6_valid : b_S0_2_126_d6.Valid := by lin_cert using ()
def b_S0_2_126_d7 : WireComparison := page_comparison% "Fact713D4Branches/wire/b_S0_2_126_d7.json"
theorem b_S0_2_126_d7_valid : b_S0_2_126_d7.Valid := by lin_cert using ()
def b_S0_8_131_d5 : WireComparison := page_comparison% "Fact713D4Branches/wire/b_S0_8_131_d5.json"
theorem b_S0_8_131_d5_valid : b_S0_8_131_d5.Valid := by lin_cert using ()
def b_S0_8_131_d6 : WireComparison := page_comparison% "Fact713D4Branches/wire/b_S0_8_131_d6.json"
theorem b_S0_8_131_d6_valid : b_S0_8_131_d6.Valid := by lin_cert using ()
def b_S0_9_132_d7 : WireComparison := page_comparison% "Fact713D4Branches/wire/b_S0_9_132_d7.json"
theorem b_S0_9_132_d7_valid : b_S0_9_132_d7.Valid := by lin_cert using ()
theorem named_d7_same : b_S0_9_132_d7 = Fact713Row2994Branches.Data.b_S0_9_132_d7 := by decide
def stage7 : Stage := ⟨b_S0_9_132_d7,[true]⟩
def stages : List Stage := Fact713NextSourceSearch.Overlay.stages ++ [stage7]
theorem finite_E8 : TrajectoryValid stages := by lin_cert using ()
theorem common_stages : stages = Fact713Row2994Branches.Data.residualStages := by decide
#print axioms b_S0_13_135_d4_valid
#print axioms named_d7_same
#print axioms finite_E8
#print axioms common_stages
end Fact713D4Branches.ZeroData
