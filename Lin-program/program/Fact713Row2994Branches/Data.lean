import Fact713Row2994Constraint.CoordinateBridge
import Fact713NextSourceSearch.Overlay
namespace Fact713Row2994Branches.Data
open LinearCertificates PageTransitionCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
def b_S0_13_135_d4 : WireComparison := page_comparison% "Fact713Row2994Branches/wire/b_S0_13_135_d4.json"
theorem b_S0_13_135_d4_valid : b_S0_13_135_d4.Valid := by lin_cert using ()
def b_S0_13_135_d5 : WireComparison := page_comparison% "Fact713Row2994Branches/wire/b_S0_13_135_d5.json"
theorem b_S0_13_135_d5_valid : b_S0_13_135_d5.Valid := by lin_cert using ()
def b_S0_14_136_d6 : WireComparison := page_comparison% "Fact713Row2994Branches/wire/b_S0_14_136_d6.json"
theorem b_S0_14_136_d6_valid : b_S0_14_136_d6.Valid := by lin_cert using ()
def b_S0_15_137_d7 : WireComparison := page_comparison% "Fact713Row2994Branches/wire/b_S0_15_137_d7.json"
theorem b_S0_15_137_d7_valid : b_S0_15_137_d7.Valid := by lin_cert using ()
def b_S0_17_138_d3 : WireComparison := page_comparison% "Fact713Row2994Branches/wire/b_S0_17_138_d3.json"
theorem b_S0_17_138_d3_valid : b_S0_17_138_d3.Valid := by lin_cert using ()
def b_S0_17_138_d4 : WireComparison := page_comparison% "Fact713Row2994Branches/wire/b_S0_17_138_d4.json"
theorem b_S0_17_138_d4_valid : b_S0_17_138_d4.Valid := by lin_cert using ()
def b_S0_18_139_d5 : WireComparison := page_comparison% "Fact713Row2994Branches/wire/b_S0_18_139_d5.json"
theorem b_S0_18_139_d5_valid : b_S0_18_139_d5.Valid := by lin_cert using ()
def b_S0_2_126_d6 : WireComparison := page_comparison% "Fact713Row2994Branches/wire/b_S0_2_126_d6.json"
theorem b_S0_2_126_d6_valid : b_S0_2_126_d6.Valid := by lin_cert using ()
def b_S0_2_126_d7 : WireComparison := page_comparison% "Fact713Row2994Branches/wire/b_S0_2_126_d7.json"
theorem b_S0_2_126_d7_valid : b_S0_2_126_d7.Valid := by lin_cert using ()
def b_S0_8_131_d5 : WireComparison := page_comparison% "Fact713Row2994Branches/wire/b_S0_8_131_d5.json"
theorem b_S0_8_131_d5_valid : b_S0_8_131_d5.Valid := by lin_cert using ()
def b_S0_8_131_d6 : WireComparison := page_comparison% "Fact713Row2994Branches/wire/b_S0_8_131_d6.json"
theorem b_S0_8_131_d6_valid : b_S0_8_131_d6.Valid := by lin_cert using ()
def b_S0_9_132_d7 : WireComparison := page_comparison% "Fact713Row2994Branches/wire/b_S0_9_132_d7.json"
theorem b_S0_9_132_d7_valid : b_S0_9_132_d7.Valid := by lin_cert using ()
def zeroSource : WireComparison := page_comparison% "Fact713Row2994Branches/wire/zero_source_d3.json"
theorem zeroSource_valid : zeroSource.Valid := by lin_cert using ()
theorem source_d3_alternatives : zeroSource.outgoing = [false,false] ∧ b_S0_17_138_d3.outgoing = [true,false] := by decide
theorem residual_source_homology_zero : b_S0_17_138_d3.h = 0 := by decide
theorem zero_source_homology_one : zeroSource.h = 1 := by decide
def stage7 : Stage := ⟨b_S0_9_132_d7,[true]⟩
def residualStages : List Stage := Fact713NextSourceSearch.Overlay.stages ++ [stage7]
theorem residual_finite_E8 : TrajectoryValid residualStages := by lin_cert using ()
theorem zero_finite_E7 : TrajectoryValid Fact713NextSourceSearch.Overlay.stages := Fact713NextSourceSearch.Overlay.finite_E7
theorem named_E8_coordinate : eval b_S0_9_132_d7.comparison.projection stage7.vector = (fun _ : Fin 1 => true) := by
  funext i
  exact (show ∀ i, eval b_S0_9_132_d7.comparison.projection stage7.vector i = true from by decide) i
theorem residual_column : (fun i : Fin 2 => matrixOf 2 1 b_S0_17_138_d3.outgoing i 0) = Fact713Row2994Constraint.CoordinateBridge.staircaseResidual := by decide
#print axioms zeroSource_valid
#print axioms b_S0_17_138_d3_valid
#print axioms residual_finite_E8
#print axioms zero_finite_E7
#print axioms named_E8_coordinate
#print axioms residual_column
end Fact713Row2994Branches.Data
