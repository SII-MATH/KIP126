import Fact713Row2994Constraint.Actual
import Fact713ComparisonBatches.Batch07
import HomologyCoordinateChoice.Basic

namespace Fact713Row2994Constraint.CoordinateBridge
open LinearCertificates PageTransitionCertificates Fact713ComparisonBatches

def staircaseSource : WireComparison := (batch07[11]).wire
def staircaseTarget : WireComparison := (batch07[25]).wire
theorem staircaseSource_valid : staircaseSource.Valid :=
  (batch07_valid _ (List.getElem_mem (show 11 < batch07.length from by decide))).2
theorem staircaseTarget_valid : staircaseTarget.Valid :=
  (batch07_valid _ (List.getElem_mem (show 25 < batch07.length from by decide))).2
theorem source_key : (batch07[11]).key = ⟨"S0",2,17,138⟩ := by decide
theorem target_key : (batch07[25]).key = ⟨"S0",2,20,140⟩ := by decide
theorem source_same_complex : staircaseSource.outgoing = Comparison.source.outgoing ∧
    staircaseSource.incoming = Comparison.source.incoming := by decide
theorem target_same_complex : staircaseTarget.outgoing = Comparison.upperSource.outgoing ∧
    staircaseTarget.incoming = Comparison.upperSource.incoming := by decide

def sourceEquivalence : Vec 1 ≃ Vec 1 := HomologyCoordinateChoice.equivalence
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
    sourceEquivalence (Naturality.se.toCoordinates x) = staircaseSourceCoordinates.toCoordinates x :=
  HomologyCoordinateChoice.coordinates_compatible _ _ _ _ _ _ x
theorem target_all_coordinates (x : Naturality.U) :
    targetEquivalence (Naturality.ue.toCoordinates x) = staircaseTargetCoordinates.toCoordinates x :=
  HomologyCoordinateChoice.coordinates_compatible _ _ _ _ _ _ x
theorem source_identity (v : Vec 1) : sourceEquivalence v = v := by
  exact (show ∀ v : Vec 1, sourceEquivalence v = v from by decide) v
theorem target_swap (v : Vec 2) : targetEquivalence v = fun i => v (1-i) := by
  exact (show ∀ v : Vec 2, targetEquivalence v = fun i => v (1-i) from by decide) v
def staircaseResidual : Vec 2 := fun i => i.val == 0

theorem named_staircase_coordinates :
    staircaseSourceCoordinates.toCoordinates Naturality.named = fun _ => true := by
  funext i
  exact (show ∀ i, staircaseSourceCoordinates.toCoordinates Naturality.named i = true from by decide) i
theorem residual_staircase_coordinates :
    staircaseTargetCoordinates.toCoordinates Naturality.residualClass = staircaseResidual := by
  rw [← target_all_coordinates, Naturality.residual_coordinates, target_swap]
  funext i
  exact (show ∀ i, Naturality.residual (1-i) = staircaseResidual i from by decide) i

def rawRow : Nat × String × Option String × Nat := ⟨2994,"0,1,2",none,9000⟩
theorem raw_unknown : rawRow.2.2.1 = none := rfl
theorem residual_nonzero : staircaseResidual ≠ zero := by decide

theorem actual_staircase_candidates (sphere detector : ManualInputObligations.Reference.AdamsSpectralSequence)
    (lower : (sphere.element 3 Actual.sourceDegree).carrier → (detector.element 3 Actual.sourceDegree).carrier)
    (upper : (sphere.element 3 Actual.targetDegree).carrier → (detector.element 3 Actual.targetDegree).carrier)
    (M : Actual.Meaning sphere detector lower upper)
    (naturality : ∀ x, detector.differential 3 Actual.sourceDegree (lower x) =
      upper (sphere.differential 3 Actual.sourceDegree x))
    (x : (sphere.element 3 Actual.sourceDegree).carrier) (named : M.source x = Naturality.named) :
    staircaseTargetCoordinates.toCoordinates (M.target (sphere.differential 3 Actual.sourceDegree x)) = zero ∨
    staircaseTargetCoordinates.toCoordinates (M.target (sphere.differential 3 Actual.sourceDegree x)) =
      staircaseResidual := by
  rcases Actual.actual_row2994_d3_candidates sphere detector lower upper M naturality x named with hz | hr
  · left
    have decoded : M.target (sphere.differential 3 Actual.sourceDegree x) = Naturality.zs :=
      (congrArg M.target hz).trans M.targetZero
    exact (congrArg staircaseTargetCoordinates.toCoordinates decoded).trans (eval_zero _)
  · right
    rw [hr]
    exact residual_staircase_coordinates

#print axioms source_all_coordinates
#print axioms target_all_coordinates
#print axioms target_swap
#print axioms named_staircase_coordinates
#print axioms residual_staircase_coordinates
#print axioms actual_staircase_candidates
end Fact713Row2994Constraint.CoordinateBridge
