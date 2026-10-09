import Row2695Detector.Naturality

namespace Row2695Detector.Matches
open LinearCertificates PageTransitionCertificates Naturality

def sourceCoordinates := homologyEquivalence _ _ Comparison.source.comparison
  Comparison.source_complete.2

theorem named_coordinates : sourceCoordinates.toCoordinates named =
    (fun i : Fin 3 => i.val == 1) := by
  funext i
  exact (show ∀ i : Fin 3, sourceCoordinates.toCoordinates named i =
    (i.val == 1) from by decide) i

/-- The staircase row identifier 2695 names E2 local2, basis2697. -/
theorem named_representative : ∀ i : Fin 5,
    eval Comparison.source.comparison.inclusion (fun j : Fin 3 => j.val == 1) i =
      (i.val == 2) := by decide

def candidateColumn : Matrix 1 1 := fun _ _ => false

def ColumnMatches (ds : S → U) : Prop := ds named = zs ∧
  ∀ i : Fin 1, candidateColumn i 0 = ue.toCoordinates (ds named) i

theorem matched (ds : S → U) (dt : T → V)
    (zeroPreserving : dt zt = zv) (naturality : ∀ x, dt (f x) = g (ds x)) :
    ColumnMatches ds := by
  have h := named_d3_zero ds dt zeroPreserving naturality
  refine ⟨h, ?_⟩
  rw [h]
  intro i
  change false = eval Comparison.upperSource.comparison.projection zero i
  rw [eval_zero]
  rfl

#print axioms matched
#print axioms named_coordinates
end Row2695Detector.Matches
