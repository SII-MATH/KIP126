import Fact713Row3247Boundaries.Actual
import Fact713D4ComparisonBranches.Branches
namespace Fact713Row3247ConditionalBranches.Data
open LinearCertificates PageTransitionCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
def b_S0_17_139_d7 : WireComparison := page_comparison% "Fact713Row3247ConditionalBranches/wire/b_S0_17_139_d7.json"
theorem b_S0_17_139_d7_valid : b_S0_17_139_d7.Valid := by lin_cert using ()
#print axioms b_S0_17_139_d7_valid
def b_S0_18_141_d3 : WireComparison := page_comparison% "Fact713Row3247ConditionalBranches/wire/b_S0_18_141_d3.json"
theorem b_S0_18_141_d3_valid : b_S0_18_141_d3.Valid := by lin_cert using ()
#print axioms b_S0_18_141_d3_valid
def b_S0_21_143_d3 : WireComparison := page_comparison% "Fact713Row3247ConditionalBranches/wire/b_S0_21_143_d3.json"
theorem b_S0_21_143_d3_valid : b_S0_21_143_d3.Valid := by lin_cert using ()
#print axioms b_S0_21_143_d3_valid
def b_S0_22_144_d4 : WireComparison := page_comparison% "Fact713Row3247ConditionalBranches/wire/b_S0_22_144_d4.json"
theorem b_S0_22_144_d4_valid : b_S0_22_144_d4.Valid := by lin_cert using ()
#print axioms b_S0_22_144_d4_valid
def b_S0_24_145_d6 : WireComparison := page_comparison% "Fact713Row3247ConditionalBranches/wire/b_S0_24_145_d6.json"
theorem b_S0_24_145_d6_valid : b_S0_24_145_d6.Valid := by lin_cert using ()
#print axioms b_S0_24_145_d6_valid
def b_S0_25_146_d4 : WireComparison := page_comparison% "Fact713Row3247ConditionalBranches/wire/b_S0_25_146_d4.json"
theorem b_S0_25_146_d4_valid : b_S0_25_146_d4.Valid := by lin_cert using ()
#print axioms b_S0_25_146_d4_valid
def b_S0_27_148_d5 : WireComparison := page_comparison% "Fact713Row3247ConditionalBranches/wire/b_S0_27_148_d5.json"
theorem b_S0_27_148_d5_valid : b_S0_27_148_d5.Valid := by lin_cert using ()
#print axioms b_S0_27_148_d5_valid
def b_S0_30_150_d5 : WireComparison := page_comparison% "Fact713Row3247ConditionalBranches/wire/b_S0_30_150_d5.json"
theorem b_S0_30_150_d5_valid : b_S0_30_150_d5.Valid := by lin_cert using ()
#print axioms b_S0_30_150_d5_valid
def b_S0_33_153_d6 : WireComparison := page_comparison% "Fact713Row3247ConditionalBranches/wire/b_S0_33_153_d6.json"
theorem b_S0_33_153_d6_valid : b_S0_33_153_d6.Valid := by lin_cert using ()
#print axioms b_S0_33_153_d6_valid
def b_S0_9_132_d8 : WireComparison := page_comparison% "Fact713Row3247ConditionalBranches/wire/b_S0_9_132_d8.json"
theorem b_S0_9_132_d8_valid : b_S0_9_132_d8.Valid := by lin_cert using ()
#print axioms b_S0_9_132_d8_valid
def stage8 : Stage := ⟨b_S0_9_132_d8,[true]⟩
def stages : List Stage := Fact713Row2994Branches.Data.residualStages ++ [stage8]
theorem finite_E9 : TrajectoryValid stages := by lin_cert using ()
#print axioms finite_E9
end Fact713Row3247ConditionalBranches.Data
