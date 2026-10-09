import Row3019Detector.Naturality

namespace Row3019Detector.Matches
open LinearCertificates PageTransitionCertificates Naturality

def sourceCoordinates := homologyEquivalence _ _ Comparison.source.comparison
  Comparison.source_complete.2

theorem named_coordinates : sourceCoordinates.toCoordinates named =
    (fun i : Fin 3 => i.val == 2) := by
  funext i
  exact (show ∀ i : Fin 3, sourceCoordinates.toCoordinates named i = (i.val == 2) from by decide) i

theorem named_representative : ∀ i : Fin 4,
    eval Comparison.source.comparison.inclusion (fun j : Fin 3 => j.val == 2) i =
      (i.val == 2) := by decide

/-- Every possible two-dimensional target coordinate is detected. -/
theorem target_coordinates (v : Vec 2) :
    eval Comparison.upperTarget.comparison.projection
      (eval Comparison.upperMiddleMap (eval Comparison.upperSource.comparison.inclusion v)) =
        (fun i : Fin 4 => if i.val == 1 then v 0 else if i.val == 3 then v 1 else false) := by
  exact (show ∀ v : Vec 2,
    eval Comparison.upperTarget.comparison.projection
      (eval Comparison.upperMiddleMap (eval Comparison.upperSource.comparison.inclusion v)) =
        (fun i : Fin 4 => if i.val == 1 then v 0 else if i.val == 3 then v 1 else false)
      from by decide) v

def candidateColumn : Matrix 2 1 := fun _ _ => false

def ColumnMatches (ds : S → U) : Prop := ds named = zs ∧
  ∀ i : Fin 2, candidateColumn i 0 = ue.toCoordinates (ds named) i

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
#print axioms target_coordinates
end Row3019Detector.Matches
