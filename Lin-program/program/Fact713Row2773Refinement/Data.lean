import Fact713E12Search.Prefix
import Row2773Leibniz.Actual
namespace Fact713Row2773Refinement.Data
open LinearCertificates PageTransitionCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
def b_S0_10_133_d6 : WireComparison := page_comparison% "Fact713Row2773Refinement/wires/b_S0_10_133_d6.json"
theorem b_S0_10_133_d6_valid : b_S0_10_133_d6.Valid := by lin_cert using ()
def b_S0_11_134_d7 : WireComparison := page_comparison% "Fact713Row2773Refinement/wires/b_S0_11_134_d7.json"
theorem b_S0_11_134_d7_valid : b_S0_11_134_d7.Valid := by lin_cert using ()
def b_S0_13_135_d3 : WireComparison := page_comparison% "Fact713Row2773Refinement/wires/b_S0_13_135_d3.json"
theorem b_S0_13_135_d3_valid : b_S0_13_135_d3.Valid := by lin_cert using ()
def b_S0_14_136_d5 : WireComparison := page_comparison% "Fact713Row2773Refinement/wires/b_S0_14_136_d5.json"
theorem b_S0_14_136_d5_valid : b_S0_14_136_d5.Valid := by lin_cert using ()
def b_S0_15_137_d6 : WireComparison := page_comparison% "Fact713Row2773Refinement/wires/b_S0_15_137_d6.json"
theorem b_S0_15_137_d6_valid : b_S0_15_137_d6.Valid := by lin_cert using ()
def b_S0_16_137_d3 : WireComparison := page_comparison% "Fact713Row2773Refinement/wires/b_S0_16_137_d3.json"
theorem b_S0_16_137_d3_valid : b_S0_16_137_d3.Valid := by lin_cert using ()
def b_S0_4_128_d5 : WireComparison := page_comparison% "Fact713Row2773Refinement/wires/b_S0_4_128_d5.json"
theorem b_S0_4_128_d5_valid : b_S0_4_128_d5.Valid := by lin_cert using ()
def b_S0_4_128_d6 : WireComparison := page_comparison% "Fact713Row2773Refinement/wires/b_S0_4_128_d6.json"
theorem b_S0_4_128_d6_valid : b_S0_4_128_d6.Valid := by lin_cert using ()
def b_S0_9_132_d4 : WireComparison := page_comparison% "Fact713Row2773Refinement/wires/b_S0_9_132_d4.json"
theorem b_S0_9_132_d4_valid : b_S0_9_132_d4.Valid := by lin_cert using ()
def b_S0_9_132_d5 : WireComparison := page_comparison% "Fact713Row2773Refinement/wires/b_S0_9_132_d5.json"
theorem b_S0_9_132_d5_valid : b_S0_9_132_d5.Valid := by lin_cert using ()

def stage4 : Stage := ⟨b_S0_9_132_d4, [true]⟩
def stage5 : Stage := ⟨b_S0_9_132_d5, [true]⟩
def stages : List Stage := [Fact713E12Search.Prefix.stage2,
  Fact713E12Search.Prefix.stage3,stage4,stage5]

/-- This is a finite coordinate trajectory through d5. The inherited raw
prefix meanings and the new Leibniz interpretation remain explicit. -/
theorem finite_E6 : TrajectoryValid stages := by lin_cert using ()

theorem named_E6_coordinate :
    eval b_S0_9_132_d5.comparison.projection stage5.vector =
      (fun _ : Fin 1 => true) := by
  funext i
  exact (show ∀ i, eval b_S0_9_132_d5.comparison.projection stage5.vector i = true from by decide) i

theorem row2773_zero_column :
    (fun i : Fin 2 => matrixOf 2 2 b_S0_13_135_d3.outgoing i 0) = zero := by
  funext i
  exact (show ∀ i, matrixOf 2 2 b_S0_13_135_d3.outgoing i 0 = zero i from by decide) i

theorem same_incoming_d3 : b_S0_13_135_d3.outgoing = b_S0_16_137_d3.incoming := by decide

theorem row2773_actual_column (S : ManualInputObligations.Reference.AdamsSpectralSequence)
    (P : ManualInputObligations.Reference.CertifiedAdamsProduct S)
    (M : Row2773Leibniz.Actual.Meaning S P)
    (a : (S.element 3 Row2773Leibniz.Actual.etaDegree).carrier)
    (b : (S.element 3 Row2773Leibniz.Actual.rightDegree).carrier)
    (x : (S.element 3 Row2773Leibniz.Actual.sourceDegree).carrier)
    (namedA : M.eta a = Row2773Leibniz.namedEta)
    (namedB : M.right b = Row2773Leibniz.namedRight)
    (namedX : M.source x = Row2773Leibniz.namedSource)
    (coordinates : (S.element 3 Row2773Leibniz.Actual.targetDegree).carrier → Vec 2)
    (zeroMeaning : coordinates 0 = zero) :
    coordinates (S.differential 3 Row2773Leibniz.Actual.sourceDegree x) =
      (fun i => matrixOf 2 2 b_S0_13_135_d3.outgoing i 0) := by
  exact (congrArg coordinates (Row2773Leibniz.Actual.actual_row2773_d3_zero
    S P M a b x namedA namedB namedX)).trans (zeroMeaning.trans row2773_zero_column.symm)

#print axioms finite_E6
#print axioms named_E6_coordinate
#print axioms row2773_actual_column
end Fact713Row2773Refinement.Data
