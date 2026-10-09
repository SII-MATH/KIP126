import Fact713DC2h6Source.Overlay

namespace Fact713DC2h6Source.CoordinateBridge
open LinearCertificates PageTransitionCertificates

theorem source_same_complex : Overlay.staircaseSource.outgoing = Comparison.source.outgoing ∧
    Overlay.staircaseSource.incoming = Comparison.source.incoming := by decide
theorem target_same_complex : Overlay.staircaseTarget.outgoing = Comparison.upperSource.outgoing ∧
    Overlay.staircaseTarget.incoming = Comparison.upperSource.incoming := by decide

def targetEquivalence : Vec 1 ≃ Vec 1 := HomologyCoordinateChoice.equivalence
  (matrixOf Comparison.upperSource.k Comparison.upperSource.m Comparison.upperSource.outgoing)
  (matrixOf Comparison.upperSource.m Comparison.upperSource.n Comparison.upperSource.incoming)
  Comparison.upperSource.comparison Overlay.staircaseTarget.comparison
  Comparison.upperSource_complete.2 Overlay.staircaseTarget_valid.2

def staircaseTargetCoordinates := homologyEquivalence _ _
  Overlay.staircaseTarget.comparison Overlay.staircaseTarget_valid.2

theorem target_all_coordinates (x : Naturality.U) :
    targetEquivalence (Naturality.ue.toCoordinates x) =
      staircaseTargetCoordinates.toCoordinates x :=
  HomologyCoordinateChoice.coordinates_compatible _ _ _ _ _ _ x

theorem target_identity (v : Vec 1) : targetEquivalence v = v := by
  exact (show ∀ v : Vec 1, targetEquivalence v = v from by decide) v

/-- The target coordinate agreement applies to every class of the quotient. -/
theorem actual_staircase_column (sphere detector : ManualInputObligations.Reference.AdamsSpectralSequence)
    (lower : (sphere.element 3 Actual.sourceDegree).carrier → (detector.element 3 Actual.sourceDegree).carrier)
    (upper : (sphere.element 3 Actual.targetDegree).carrier → (detector.element 3 Actual.targetDegree).carrier)
    (meaning : Actual.Meaning sphere detector lower upper)
    (naturality : ∀ x, detector.differential 3 Actual.sourceDegree (lower x) =
      upper (sphere.differential 3 Actual.sourceDegree x))
    (x : (sphere.element 3 Actual.sourceDegree).carrier)
    (named : meaning.source x = Naturality.named) :
    staircaseTargetCoordinates.toCoordinates
      (meaning.target (sphere.differential 3 Actual.sourceDegree x)) =
      (fun i => matrixOf 1 2 Overlay.b_S0_11_133_d3.outgoing i 1) := by
  rw [← target_all_coordinates, target_identity]
  exact Overlay.actual_column sphere detector lower upper meaning naturality x named

#print axioms source_same_complex
#print axioms target_same_complex
#print axioms targetEquivalence
#print axioms target_all_coordinates
#print axioms target_identity
#print axioms actual_staircase_column
end Fact713DC2h6Source.CoordinateBridge
