import Fact713NextSourceSearch.Overlay
import Fact713ComparisonBatches.Batch06
import Fact713ComparisonBatches.Batch07
import HomologyCoordinateChoice.Basic

namespace Fact713NextSourceSearch.CoordinateBridge
open LinearCertificates PageTransitionCertificates Fact713ComparisonBatches

def staircaseSource : WireComparison := (batch06[24]).wire
def staircaseTarget : WireComparison := (batch07[1]).wire
theorem staircaseSource_valid : staircaseSource.Valid :=
  (batch06_valid _ (List.getElem_mem (show 24 < batch06.length from by decide))).2
theorem staircaseTarget_valid : staircaseTarget.Valid :=
  (batch07_valid _ (List.getElem_mem (show 1 < batch07.length from by decide))).2

theorem source_key : (batch06[24]).key = ⟨"S0",2,12,134⟩ := by decide
theorem target_key : (batch07[1]).key = ⟨"S0",2,15,136⟩ := by decide

theorem source_same_complex : staircaseSource.outgoing = Comparison.source.outgoing ∧
    staircaseSource.incoming = Comparison.source.incoming := by decide
theorem target_same_complex : staircaseTarget.outgoing = Comparison.upperSource.outgoing ∧
    staircaseTarget.incoming = Comparison.upperSource.incoming := by decide

def sourceEquivalence : Vec 2 ≃ Vec 2 := HomologyCoordinateChoice.equivalence
  (matrixOf Comparison.source.k Comparison.source.m Comparison.source.outgoing)
  (matrixOf Comparison.source.m Comparison.source.n Comparison.source.incoming)
  Comparison.source.comparison staircaseSource.comparison
  Comparison.source_complete.2 staircaseSource_valid.2
def targetEquivalence : Vec 2 ≃ Vec 2 := HomologyCoordinateChoice.equivalence
  (matrixOf Comparison.upperSource.k Comparison.upperSource.m Comparison.upperSource.outgoing)
  (matrixOf Comparison.upperSource.m Comparison.upperSource.n Comparison.upperSource.incoming)
  Comparison.upperSource.comparison staircaseTarget.comparison
  Comparison.upperSource_complete.2 staircaseTarget_valid.2

def staircaseSourceCoordinates := homologyEquivalence _ _ staircaseSource.comparison staircaseSource_valid.2
def staircaseTargetCoordinates := homologyEquivalence _ _ staircaseTarget.comparison staircaseTarget_valid.2

theorem source_all_coordinates (x : Naturality.S) :
    sourceEquivalence (Overlay.sourceCoordinates.toCoordinates x) =
      staircaseSourceCoordinates.toCoordinates x :=
  HomologyCoordinateChoice.coordinates_compatible _ _ _ _ _ _ x
theorem target_all_coordinates (x : Naturality.U) :
    targetEquivalence (Naturality.ue.toCoordinates x) =
      staircaseTargetCoordinates.toCoordinates x :=
  HomologyCoordinateChoice.coordinates_compatible _ _ _ _ _ _ x

theorem source_swap (v : Vec 2) : sourceEquivalence v = fun i => v (1-i) := by
  exact (show ∀ v : Vec 2, sourceEquivalence v = fun i => v (1-i) from by decide) v
theorem target_swap (v : Vec 2) : targetEquivalence v = fun i => v (1-i) := by
  exact (show ∀ v : Vec 2, targetEquivalence v = fun i => v (1-i) from by decide) v

theorem named_staircase_coordinates : staircaseSourceCoordinates.toCoordinates Naturality.named =
    (fun i : Fin 2 => i.val == 1) := by
  rw [← source_all_coordinates,Overlay.named_source_coordinates,source_swap]
  funext i
  exact (show ∀ i : Fin 2, ((1-i).val == 0) = (i.val == 1) from by decide) i

/-- The complete coordinate change is used on the actual target class.
Column 1 is selected because the named staircase coordinate is (0,1). -/
theorem actual_staircase_column (sphere detector : ManualInputObligations.Reference.AdamsSpectralSequence)
    (lower : (sphere.element 3 Actual.sourceDegree).carrier → (detector.element 3 Actual.sourceDegree).carrier)
    (upper : (sphere.element 3 Actual.targetDegree).carrier → (detector.element 3 Actual.targetDegree).carrier)
    (meaning : Actual.Meaning sphere detector lower upper)
    (naturality : ∀ x, detector.differential 3 Actual.sourceDegree (lower x) =
      upper (sphere.differential 3 Actual.sourceDegree x))
    (x : (sphere.element 3 Actual.sourceDegree).carrier)
    (named : meaning.source x = Naturality.named) :
    targetEquivalence (Naturality.ue.toCoordinates
      (meaning.target (sphere.differential 3 Actual.sourceDegree x))) =
      (fun i => matrixOf 2 2 Overlay.b_S0_12_134_d3.outgoing i 1) := by
  apply Overlay.actual_column sphere detector lower upper meaning naturality x named
    (fun y => targetEquivalence (Naturality.ue.toCoordinates (meaning.target y)))
  rw [meaning.targetZero]
  change eval staircaseTarget.comparison.projection
    (eval Comparison.upperSource.comparison.inclusion
      (eval Comparison.upperSource.comparison.projection zero)) = zero
  rw [eval_zero,eval_zero,eval_zero]

#print axioms sourceEquivalence
#print axioms targetEquivalence
#print axioms source_all_coordinates
#print axioms target_all_coordinates
#print axioms named_staircase_coordinates
#print axioms actual_staircase_column
end Fact713NextSourceSearch.CoordinateBridge
