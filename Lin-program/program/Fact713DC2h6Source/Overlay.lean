import Fact713DC2h6Source.Actual
import PageTransitionCertificates.Import
import Fact713ComparisonBatches.Batch06
import HomologyCoordinateChoice.Basic
namespace Fact713DC2h6Source.Overlay
open LinearCertificates PageTransitionCertificates Fact713ComparisonBatches
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000
def b_S0_neg1_123_d6 : WireComparison := page_comparison% "Fact713DC2h6Source/wires/b_S0_neg1_123_d6.json"
theorem b_S0_neg1_123_d6_valid : b_S0_neg1_123_d6.Valid := by lin_cert using ()
def b_S0_neg12_113_d8 : WireComparison := page_comparison% "Fact713DC2h6Source/wires/b_S0_neg12_113_d8.json"
theorem b_S0_neg12_113_d8_valid : b_S0_neg12_113_d8.Valid := by lin_cert using ()
def b_S0_neg4_120_d7 : WireComparison := page_comparison% "Fact713DC2h6Source/wires/b_S0_neg4_120_d7.json"
theorem b_S0_neg4_120_d7_valid : b_S0_neg4_120_d7.Valid := by lin_cert using ()
def b_S0_neg4_121_d6 : WireComparison := page_comparison% "Fact713DC2h6Source/wires/b_S0_neg4_121_d6.json"
theorem b_S0_neg4_121_d6_valid : b_S0_neg4_121_d6.Valid := by lin_cert using ()
def b_S0_neg8_117_d7 : WireComparison := page_comparison% "Fact713DC2h6Source/wires/b_S0_neg8_117_d7.json"
theorem b_S0_neg8_117_d7_valid : b_S0_neg8_117_d7.Valid := by lin_cert using ()
def b_S0_10_132_d4 : WireComparison := page_comparison% "Fact713DC2h6Source/wires/b_S0_10_132_d4.json"
theorem b_S0_10_132_d4_valid : b_S0_10_132_d4.Valid := by lin_cert using ()
def b_S0_11_133_d3 : WireComparison := page_comparison% "Fact713DC2h6Source/wires/b_S0_11_133_d3.json"
theorem b_S0_11_133_d3_valid : b_S0_11_133_d3.Valid := by lin_cert using ()
def b_S0_14_135_d3 : WireComparison := page_comparison% "Fact713DC2h6Source/wires/b_S0_14_135_d3.json"
theorem b_S0_14_135_d3_valid : b_S0_14_135_d3.Valid := by lin_cert using ()
def b_S0_14_135_d4 : WireComparison := page_comparison% "Fact713DC2h6Source/wires/b_S0_14_135_d4.json"
theorem b_S0_14_135_d4_valid : b_S0_14_135_d4.Valid := by lin_cert using ()
def b_S0_2_126_d5 : WireComparison := page_comparison% "Fact713DC2h6Source/wires/b_S0_2_126_d5.json"
theorem b_S0_2_126_d5_valid : b_S0_2_126_d5.Valid := by lin_cert using ()
def b_S0_3_126_d6 : WireComparison := page_comparison% "Fact713DC2h6Source/wires/b_S0_3_126_d6.json"
theorem b_S0_3_126_d6_valid : b_S0_3_126_d6.Valid := by lin_cert using ()
def b_S0_3_127_d7 : WireComparison := page_comparison% "Fact713DC2h6Source/wires/b_S0_3_127_d7.json"
theorem b_S0_3_127_d7_valid : b_S0_3_127_d7.Valid := by lin_cert using ()
def b_S0_5_128_d5 : WireComparison := page_comparison% "Fact713DC2h6Source/wires/b_S0_5_128_d5.json"
theorem b_S0_5_128_d5_valid : b_S0_5_128_d5.Valid := by lin_cert using ()
def b_S0_7_130_d4 : WireComparison := page_comparison% "Fact713DC2h6Source/wires/b_S0_7_130_d4.json"
theorem b_S0_7_130_d4_valid : b_S0_7_130_d4.Valid := by lin_cert using ()
def b_S0_9_131_d5 : WireComparison := page_comparison% "Fact713DC2h6Source/wires/b_S0_9_131_d5.json"
theorem b_S0_9_131_d5_valid : b_S0_9_131_d5.Valid := by lin_cert using ()

def staircaseSource : WireComparison := (batch06[18]).wire
def staircaseTarget : WireComparison := (batch06[35]).wire
theorem staircaseSource_valid : staircaseSource.Valid :=
  (batch06_valid _ (List.getElem_mem (show 18 < batch06.length from by decide))).2
theorem staircaseTarget_valid : staircaseTarget.Valid :=
  (batch06_valid _ (List.getElem_mem (show 35 < batch06.length from by decide))).2
theorem source_key : (batch06[18]).key = ⟨"S0",2,11,133⟩ := by decide
theorem target_key : (batch06[35]).key = ⟨"S0",2,14,135⟩ := by decide

def sourceCoordinates := homologyEquivalence _ _ Comparison.source.comparison Comparison.source_complete.2
def staircaseCoordinates := homologyEquivalence _ _ staircaseSource.comparison staircaseSource_valid.2
def sourceEquivalence : Vec 2 ≃ Vec 2 := HomologyCoordinateChoice.equivalence
  (matrixOf Comparison.source.k Comparison.source.m Comparison.source.outgoing)
  (matrixOf Comparison.source.m Comparison.source.n Comparison.source.incoming)
  Comparison.source.comparison staircaseSource.comparison
  Comparison.source_complete.2 staircaseSource_valid.2
theorem source_all_coordinates (x : Naturality.S) :
    sourceEquivalence (sourceCoordinates.toCoordinates x) = staircaseCoordinates.toCoordinates x :=
  HomologyCoordinateChoice.coordinates_compatible _ _ _ _ _ _ x
theorem source_change (v : Vec 2) : sourceEquivalence v =
    fun i => if i.val == 0 then v 0 else xor (v 0) (v 1) := by
  exact (show ∀ v : Vec 2, sourceEquivalence v =
    fun i => if i.val == 0 then v 0 else xor (v 0) (v 1) from by decide) v
theorem named_staircase_coordinates : staircaseCoordinates.toCoordinates Naturality.named =
    (fun i : Fin 2 => i.val == 1) := by
  funext i
  exact (show ∀ i, staircaseCoordinates.toCoordinates Naturality.named i = (i.val == 1) from by decide) i

def rawRow : Nat × String × Option String × Nat := ⟨2622,"1",none,9000⟩
theorem raw_unknown : rawRow.2.2.1 = none := rfl
theorem column_zero : (fun i : Fin 1 => matrixOf 1 2 b_S0_11_133_d3.outgoing i 1) = zero := by
  funext i
  exact (show ∀ i, matrixOf 1 2 b_S0_11_133_d3.outgoing i 1 = zero i from by decide) i
theorem adjacent_d3 : b_S0_11_133_d3.outgoing = b_S0_14_135_d3.incoming := by decide

theorem actual_column (sphere detector : ManualInputObligations.Reference.AdamsSpectralSequence)
    (lower : (sphere.element 3 Actual.sourceDegree).carrier → (detector.element 3 Actual.sourceDegree).carrier)
    (upper : (sphere.element 3 Actual.targetDegree).carrier → (detector.element 3 Actual.targetDegree).carrier)
    (meaning : Actual.Meaning sphere detector lower upper)
    (naturality : ∀ x, detector.differential 3 Actual.sourceDegree (lower x) =
      upper (sphere.differential 3 Actual.sourceDegree x))
    (x : (sphere.element 3 Actual.sourceDegree).carrier)
    (named : meaning.source x = Naturality.named) :
    Naturality.ue.toCoordinates (meaning.target (sphere.differential 3 Actual.sourceDegree x)) =
      (fun i => matrixOf 1 2 b_S0_11_133_d3.outgoing i 1) := by
  have actual := Actual.actual_row2622_d3_zero sphere detector lower upper meaning naturality x named
  have decoded := congrArg (fun y => Naturality.ue.toCoordinates (meaning.target y)) actual
  have atZero : Naturality.ue.toCoordinates (meaning.target 0) = zero := by
    rw [meaning.targetZero]
    exact eval_zero _
  exact decoded.trans (atZero.trans column_zero.symm)

#print axioms sourceEquivalence
#print axioms source_all_coordinates
#print axioms named_staircase_coordinates
#print axioms actual_column
end Fact713DC2h6Source.Overlay
