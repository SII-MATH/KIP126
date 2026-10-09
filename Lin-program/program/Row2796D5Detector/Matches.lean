import Row2796D5Detector.Source
namespace Row2796D5Detector.Matches
open LinearCertificates PageTransitionCertificates Source

def candidateColumn : Matrix 1 1 := fun _ _ => false
def ColumnMatches (ds : S → Target.U) : Prop := ds named = Target.zu ∧
  ∀ i : Fin 1, candidateColumn i 0 = Target.ue.toCoordinates (ds named) i

theorem matched (c : Completion3) (d : Completion4 c)
    (ds : S → Target.U) (dt : Homology d.outgoing d.incoming → Target.V)
    (zeroPreserving : dt (z c d) = Target.zv)
    (naturality : ∀ x, dt (f c d x) = Target.g (ds x)) : ColumnMatches ds := by
  have hz := named_d5_zero c d ds dt zeroPreserving naturality
  refine ⟨hz, ?_⟩
  rw [hz]
  intro i
  change false = eval Higher.targetS.comparison.projection zero i
  rw [eval_zero]
  rfl

theorem named_source_raw_projection :
    eval Higher.source4.comparison.projection
      (eval Higher.source3.comparison.projection
        (eval Comparison.c8_135S.comparison.projection (fun i => i.val == 2))) = named4 := by decide

theorem named_target_raw_projection :
    eval Higher.targetS.comparison.projection
      (eval Higher.p13_139S.comparison.projection
        (eval Comparison.c13_139S.comparison.projection (fun i => i.val == 0))) =
      (fun _ => true) := by decide

#print axioms matched
end Row2796D5Detector.Matches
