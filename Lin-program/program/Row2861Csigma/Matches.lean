import Row2861Csigma.Naturality
namespace Row2861Csigma.Matches
open LinearCertificates Naturality

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
end Row2861Csigma.Matches
