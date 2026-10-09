import Row2861D4Detector.Naturality
namespace Row2861D4Detector.Matches
open LinearCertificates PageTransitionCertificates Naturality

def sourceCoordinates := homologyEquivalence _ _ Higher.source.comparison
  Higher.source_complete.2

theorem raw_source_projection : ∀ i : Fin 2,
    eval Comparison.sourceS.comparison.projection (fun j => j.val == 1) i =
      (i.val == 0) := by decide

theorem named_coordinates : sourceCoordinates.toCoordinates named =
    (fun i : Fin 2 => i.val == 0) := by
  funext i
  exact (show ∀ i : Fin 2, sourceCoordinates.toCoordinates named i =
    (i.val == 0) from by decide) i

theorem raw_target_projection : ∀ i : Fin 1,
    eval Higher.upperSource.comparison.projection
      (eval Comparison.targetS.comparison.projection (fun j => j.val == 0)) i = true := by decide

def candidateColumn : Matrix 1 1 := fun _ _ => false
def ColumnMatches (ds : S → U) : Prop := ds named = zs ∧
  ∀ i : Fin 1, candidateColumn i 0 = ue.toCoordinates (ds named) i

theorem matched (ds : S → U) (dt : T → V)
    (zeroPreserving : dt zt = zv) (naturality : ∀ x, dt (f x) = g (ds x)) :
    ColumnMatches ds := by
  have h := named_d4_zero ds dt zeroPreserving naturality
  refine ⟨h, ?_⟩
  rw [h]
  intro i
  change false = eval Higher.upperSource.comparison.projection zero i
  rw [eval_zero]
  rfl
#print axioms matched
end Row2861D4Detector.Matches
