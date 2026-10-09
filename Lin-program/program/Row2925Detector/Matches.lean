import Row2925Detector.Naturality
namespace Row2925Detector.Matches
open LinearCertificates PageTransitionCertificates Naturality

def sourceCoordinates := homologyEquivalence _ _ Comparison.source.comparison
  Comparison.source_complete.2

theorem named_coordinates : sourceCoordinates.toCoordinates named = (fun _ : Fin 2 => true) := by
  funext i
  exact (show ∀ i : Fin 2, sourceCoordinates.toCoordinates named i = true from by decide) i

theorem named_representative : ∀ i : Fin 6,
    eval Comparison.source.comparison.inclusion (fun _ : Fin 2 => true) i =
      (i.val == 1 || i.val == 2) := by decide

def staircaseInclusion : Matrix 6 2 := fun i j =>
  (j.val == 0 && (i.val == 1 || i.val == 2)) || (j.val == 1 && i.val == 2)

theorem staircase_named_representative : ∀ i : Fin 6,
    staircaseInclusion i 0 = (i.val == 1 || i.val == 2) := by decide

theorem staircase_named_coordinate :
    eval Comparison.source.comparison.projection (fun i => staircaseInclusion i 0) =
      sourceCoordinates.toCoordinates named := by
  funext i
  exact (show ∀ i, eval Comparison.source.comparison.projection
    (fun j => staircaseInclusion j 0) i = sourceCoordinates.toCoordinates named i from by decide) i

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
end Row2925Detector.Matches
