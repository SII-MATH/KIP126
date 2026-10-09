import Row2576D4Detector.Source
namespace Row2576D4Detector.Matches
open LinearCertificates PageTransitionCertificates Source

def targetCoordinates := homologyEquivalence _ _ Comparison.target3.comparison
  Comparison.target3_complete.2
def candidateColumn : Matrix 2 1 := fun _ _ => false
def ColumnMatches (ds : S → Target.U) : Prop := ds named = Target.zu ∧
  ∀ i : Fin 2, candidateColumn i 0 = targetCoordinates.toCoordinates (ds named) i

theorem matched (outT : Matrix 4 0) (inT : Matrix 0 0)
    (targetOut : Matrix 5 6) (d3Naturality : Target.Natural targetOut)
    (ds : S → Target.U) (dt : T outT inT → Target.V targetOut)
    (zeroPreserving : dt (z outT inT) = Target.zv targetOut)
    (d4Naturality : ∀ x, dt (f outT inT x) = Target.g targetOut d3Naturality (ds x)) :
    ColumnMatches ds := by
  have hz := named_d4_zero outT inT targetOut d3Naturality ds dt zeroPreserving d4Naturality
  refine ⟨hz, ?_⟩
  rw [hz]
  intro i
  change false = eval Comparison.target3.comparison.projection zero i
  rw [eval_zero]
  rfl
#print axioms matched
end Row2576D4Detector.Matches
