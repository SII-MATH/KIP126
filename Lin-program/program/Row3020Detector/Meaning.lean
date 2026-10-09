import Row3019Detector.Matches

namespace Row3020Detector
open LinearCertificates PageTransitionCertificates ResolutionCertificates
open Row3019Detector.Comparison Row3019Detector.Naturality

theorem all_sources_map_zero (x : S) : f x = zt := by
  induction x using Quot.inductionOn with
  | h x =>
    apply Quot.sound
    change InImage (matrixOf target.m target.n target.incoming)
      (add (eval middleMap x.val) zero)
    refine ⟨zero, ?_⟩
    rw [eval_zero]
    change (zero : Vec 3) = add (eval middleMap x.val) zero
    exact (show ∀ v : Vec 4, (zero : Vec 3) = add (eval middleMap v) zero from by decide) x.val

/-- This applies to this complete source and this d3 target only. -/
theorem all_d3_zero (ds : S → U) (dt : T → V)
    (zeroPreserving : dt zt = zv) (naturality : ∀ x, dt (f x) = g (ds x)) :
    ∀ x, ds x = zs := by
  intro x
  apply g_reflects_zero
  rw [← naturality, all_sources_map_zero, zeroPreserving]

/-- Staircase row3020 has base local0, namely E2 basis3018. -/
def named : S := Quot.mk _ (⟨fun i => i.val == 0, by
  funext i
  exact (show ∀ i, eval (matrixOf source.k source.m source.outgoing)
    (fun j => j.val == 0) i = false from by decide) i⟩ : Cycle _)

theorem named_maps_zero : f named = zt := by
  apply Quot.sound
  change InImage (matrixOf target.m target.n target.incoming)
    (add (eval middleMap (fun i => i.val == 0)) zero)
  refine ⟨zero, ?_⟩
  rw [eval_zero]
  funext i
  exact (show ∀ i, zero i = add (eval middleMap (fun j => j.val == 0)) zero i from by decide) i

theorem named_coordinates : Row3019Detector.Matches.sourceCoordinates.toCoordinates named =
    (fun i : Fin 3 => i.val == 0) := by
  funext i
  exact (show ∀ i : Fin 3,
    Row3019Detector.Matches.sourceCoordinates.toCoordinates named i = (i.val == 0)
    from by decide) i

theorem named_d3_zero (ds : S → U) (dt : T → V)
    (zeroPreserving : dt zt = zv) (naturality : ∀ x, dt (f x) = g (ds x)) :
    ds named = zs := by
  apply g_reflects_zero
  rw [← naturality, named_maps_zero, zeroPreserving]

def candidateColumn : Matrix 2 1 := fun _ _ => false

theorem matched (ds : S → U) (dt : T → V)
    (zeroPreserving : dt zt = zv) (naturality : ∀ x, dt (f x) = g (ds x)) :
    ds named = zs ∧ ∀ i : Fin 2, candidateColumn i 0 = ue.toCoordinates (ds named) i := by
  have hz := named_d3_zero ds dt zeroPreserving naturality
  refine ⟨hz, ?_⟩
  rw [hz]
  intro i
  change false = eval upperSource.comparison.projection zero i
  rw [eval_zero]
  rfl

theorem distinct_row3019 : named ≠ Row3019Detector.Naturality.named := by
  intro h
  have hcoord := congrArg Row3019Detector.Matches.sourceCoordinates.toCoordinates h
  rw [named_coordinates, Row3019Detector.Matches.named_coordinates] at hcoord
  have hbit := congrFun hcoord 0
  contradiction

#print axioms named_d3_zero
#print axioms matched
#print axioms distinct_row3019
#print axioms all_d3_zero
end Row3020Detector
