import Row2576Detector.Quotient
namespace Row2576Detector.Matches
open LinearCertificates PageTransitionCertificates Quotient

def candidateColumn : Matrix 2 1 := fun _ _ => false
def ColumnMatches (d : Q Comparison.source → Q Comparison.upperSource) : Prop :=
  d named = z Comparison.upperSource ∧
  ∀ i : Fin 2, candidateColumn i 0 = targetCoordinates.toCoordinates (d named) i

theorem matched (d : Q Comparison.source → Q Comparison.upperSource)
    (dc2 : Q Comparison.target → Q Comparison.upperTarget)
    (dh2 : Q ann.target → Q detect.target)
    (zc2 : dc2 (z Comparison.target) = z Comparison.upperTarget)
    (zh2 : dh2 (z ann.target) = z detect.target)
    (naturality : ∀ x, dc2 (c2Map x) = c2Detect (d x))
    (leibniz : ∀ x, dh2 (annMap x) = detectMap (d x)) : ColumnMatches d := by
  have hz := named_d3_zero d dc2 dh2 zc2 zh2 naturality leibniz
  refine ⟨hz, ?_⟩
  rw [hz]
  intro i
  change false = eval Comparison.upperSource.comparison.projection zero i
  rw [eval_zero]
  rfl

theorem residual_representative : ∀ i : Fin 5,
    eval Comparison.upperSource.comparison.inclusion (fun j => j.val == 1) i =
      (i.val == 2) := by decide

theorem named_coordinate : (homologyEquivalence _ _ Comparison.source.comparison
    Comparison.source_complete.2).toCoordinates named = (fun _ : Fin 1 => true) := by
  funext i
  exact (show ∀ i : Fin 1, (homologyEquivalence _ _ Comparison.source.comparison
    Comparison.source_complete.2).toCoordinates named i = true from by decide) i

#print axioms matched
#print axioms residual_representative
end Row2576Detector.Matches
