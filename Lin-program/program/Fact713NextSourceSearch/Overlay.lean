import Fact713Row2773Refinement.Data
import Fact713NextSourceSearch.Actual
namespace Fact713NextSourceSearch.Overlay
open LinearCertificates PageTransitionCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
def b_S0_10_133_d7 : WireComparison := page_comparison% "Fact713NextSourceSearch/wires/b_S0_10_133_d7.json"
theorem b_S0_10_133_d7_valid : b_S0_10_133_d7.Valid := by lin_cert using ()
def b_S0_12_134_d3 : WireComparison := page_comparison% "Fact713NextSourceSearch/wires/b_S0_12_134_d3.json"
theorem b_S0_12_134_d3_valid : b_S0_12_134_d3.Valid := by lin_cert using ()
def b_S0_15_136_d3 : WireComparison := page_comparison% "Fact713NextSourceSearch/wires/b_S0_15_136_d3.json"
theorem b_S0_15_136_d3_valid : b_S0_15_136_d3.Valid := by lin_cert using ()
def b_S0_16_138_d7 : WireComparison := page_comparison% "Fact713NextSourceSearch/wires/b_S0_16_138_d7.json"
theorem b_S0_16_138_d7_valid : b_S0_16_138_d7.Valid := by lin_cert using ()
def b_S0_3_127_d5 : WireComparison := page_comparison% "Fact713NextSourceSearch/wires/b_S0_3_127_d5.json"
theorem b_S0_3_127_d5_valid : b_S0_3_127_d5.Valid := by lin_cert using ()
def b_S0_3_127_d6 : WireComparison := page_comparison% "Fact713NextSourceSearch/wires/b_S0_3_127_d6.json"
theorem b_S0_3_127_d6_valid : b_S0_3_127_d6.Valid := by lin_cert using ()
def b_S0_8_131_d4 : WireComparison := page_comparison% "Fact713NextSourceSearch/wires/b_S0_8_131_d4.json"
theorem b_S0_8_131_d4_valid : b_S0_8_131_d4.Valid := by lin_cert using ()
def b_S0_9_132_d6 : WireComparison := page_comparison% "Fact713NextSourceSearch/wires/b_S0_9_132_d6.json"
theorem b_S0_9_132_d6_valid : b_S0_9_132_d6.Valid := by lin_cert using ()

def stage6 : Stage := ⟨b_S0_9_132_d6,[true]⟩
def stages : List Stage := Fact713Row2773Refinement.Data.stages ++ [stage6]
theorem finite_E7 : TrajectoryValid stages := by lin_cert using ()
theorem named_E7_coordinate : eval b_S0_9_132_d6.comparison.projection stage6.vector =
    (fun _ : Fin 1 => true) := by
  funext i
  exact (show ∀ i, eval b_S0_9_132_d6.comparison.projection stage6.vector i = true from by decide) i

theorem row2684_zero_column :
    (fun i : Fin 2 => matrixOf 2 2 b_S0_12_134_d3.outgoing i 1) = zero := by
  funext i
  exact (show ∀ i, matrixOf 2 2 b_S0_12_134_d3.outgoing i 1 = zero i from by decide) i
theorem adjacent_d3 : b_S0_12_134_d3.outgoing = b_S0_15_136_d3.incoming := by decide

def rawRow : Nat × String × Option String × Nat := ⟨2684,"0",none,9000⟩
theorem raw_unknown : rawRow.2.2.1 = none := rfl

def sourceCoordinates := homologyEquivalence _ _ Comparison.source.comparison Comparison.source_complete.2
theorem named_source_coordinates : sourceCoordinates.toCoordinates Naturality.named =
    (fun i : Fin 2 => i.val == 0) := by
  funext i
  exact (show ∀ i, sourceCoordinates.toCoordinates Naturality.named i = (i.val == 0) from by decide) i

theorem actual_column (sphere detector : ManualInputObligations.Reference.AdamsSpectralSequence)
    (lower : (sphere.element 3 Actual.sourceDegree).carrier → (detector.element 3 Actual.sourceDegree).carrier)
    (upper : (sphere.element 3 Actual.targetDegree).carrier → (detector.element 3 Actual.targetDegree).carrier)
    (meaning : Actual.Meaning sphere detector lower upper)
    (naturality : ∀ x, detector.differential 3 Actual.sourceDegree (lower x) =
      upper (sphere.differential 3 Actual.sourceDegree x))
    (x : (sphere.element 3 Actual.sourceDegree).carrier)
    (named : meaning.source x = Naturality.named)
    (coordinates : (sphere.element 3 Actual.targetDegree).carrier → Vec 2)
    (zeroMeaning : coordinates 0 = zero) :
    coordinates (sphere.differential 3 Actual.sourceDegree x) =
      (fun i => matrixOf 2 2 b_S0_12_134_d3.outgoing i 1) := by
  exact (congrArg coordinates (Actual.actual_row2684_d3_zero sphere detector lower upper
    meaning naturality x named)).trans (zeroMeaning.trans row2684_zero_column.symm)

#print axioms finite_E7
#print axioms named_E7_coordinate
#print axioms named_source_coordinates
#print axioms actual_column
end Fact713NextSourceSearch.Overlay
