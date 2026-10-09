import Row2796Detector.Combined
namespace Row2796Detector.Matches
open LinearCertificates PageTransitionCertificates
open Row2796Detector.Quotient Row2796Detector.Combined

def candidateColumn : Matrix 2 1 := fun _ _ => false

def ColumnMatches (d : Q ann.right → Q detect.right) : Prop :=
  d named = z detect.right ∧ ∀ i,
    candidateColumn i 0 = ce.toCoordinates (d named) i

theorem matched (d : Q ann.right → Q detect.right)
    (d0 : Q ann0.target → Q detect0.target) (d2 : Q ann.target → Q detect.target)
    (z0 : d0 (z ann0.target) = z detect0.target)
    (z2 : d2 (z ann.target) = z detect.target)
    (l0 : ∀ x, d0 (annMap0 x) = detectMap0 (d x))
    (l2 : ∀ x, d2 (annMap x) = detectMap (d x)) : ColumnMatches d := by
  have hz := differential_zero d d0 d2 z0 z2 l0 l2
  refine ⟨hz, ?_⟩
  rw [hz]
  intro i
  change false = eval detect.right.comparison.projection zero i
  rw [eval_zero]
  rfl
#print axioms matched
end Row2796Detector.Matches
