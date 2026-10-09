import Row3325Detector.Combined
namespace Row3325Detector.Matches
open LinearCertificates PageTransitionCertificates Row3325Detector.Quotient Combined

def candidateColumn : Matrix 3 1 := fun _ _ => false
def ColumnMatches (d : Q ann1.right → Q detect1.right) : Prop :=
  d named = z detect1.right ∧ ∀ i, candidateColumn i 0 = ce.toCoordinates (d named) i

theorem matched (d : Q ann1.right → Q detect1.right)
    (d1 : Q ann1.target → Q detect1.target)
    (d8 : Q ann8.target → Q detect8.target)
    (d13 : Q ann13.target → Q detect13.target)
    (z1 : d1 (z ann1.target) = z detect1.target)
    (z8 : d8 (z ann8.target) = z detect8.target)
    (z13 : d13 (z ann13.target) = z detect13.target)
    (l1 : ∀ x, d1 (annMap1 x) = detectMap1 (d x))
    (l8 : ∀ x, d8 (annMap8 x) = detectMap8 (d x))
    (l13 : ∀ x, d13 (annMap13 x) = detectMap13 (d x)) : ColumnMatches d := by
  have hz := differential_zero d d1 d8 d13 z1 z8 z13 l1 l8 l13
  refine ⟨hz, ?_⟩
  rw [hz]
  intro i
  change false = eval detect1.right.comparison.projection zero i
  rw [eval_zero]
  rfl
#print axioms matched
end Row3325Detector.Matches
