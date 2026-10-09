import Prop79IncomingSearch.CoordinateBridge
import Prop79IncomingSearch.Actual

namespace Prop79IncomingSearch.Incoming
open LinearCertificates PageTransitionCertificates CoordinateBridge

def basis (j : Fin 3) : Vec 3 := fun i => i == j
def namedTarget : Vec 2 := fun i => i.val == 0
def zeroIncoming : Matrix 2 3 := fun _ _ => false

theorem namedTarget_nonzero : namedTarget ≠ zero := by decide
theorem finite_not_image : ¬ InImage zeroIncoming namedTarget := by lin_cert using namedTarget

/-- All three basis columns are needed; this controls every source vector. -/
theorem zero_of_three_columns (d : Vec 3 → Vec 2)
    (mapZero : d zero = zero) (mapAdd : ∀ x y, d (add x y) = add (d x) (d y))
    (col0 : d (basis 0) = zero) (col1 : d (basis 1) = zero)
    (col2 : d (basis 2) = zero) : ∀ x, d x = zero := by
  intro x
  have decompose : x = add (if x 0 then basis 0 else zero)
      (add (if x 1 then basis 1 else zero) (if x 2 then basis 2 else zero)) :=
    (show ∀ x : Vec 3, x = add (if x 0 then basis 0 else zero)
      (add (if x 1 then basis 1 else zero) (if x 2 then basis 2 else zero)) from by decide) x
  rw [decompose, mapAdd, mapAdd]
  split_ifs <;> simp only [col0, col1, col2, mapZero] <;> rfl

theorem source_basis1_named : sourceCoordinates.fromCoordinates (basis 1) = Naturality.named := by
  have hc : sourceCoordinates.toCoordinates Naturality.named = basis 1 :=
    named_source_coordinates.trans (by
      funext i
      exact (show ∀ i : Fin 3, (i.val == 1) = basis 1 i from by decide) i)
  exact (congrArg sourceCoordinates.fromCoordinates hc).symm.trans
    (sourceCoordinates.leftInverse Naturality.named)

def represented (dc : Naturality.T → Naturality.V) (x : Vec 3) : Vec 2 :=
  targetCoordinates.toCoordinates (dc (sourceCoordinates.fromCoordinates x))

/-- The first/third columns retain their separate boundary/prefix meanings.
The second column is obtained from the two complete naturality squares. -/
theorem complete_incoming_zero
    (ds : Naturality.S → Naturality.U)
    (detector : Row2925Detector.Naturality.T → Row2925Detector.Naturality.V)
    (dc : Naturality.T → Naturality.V)
    (etaZero : detector Row2925Detector.Naturality.zt = Row2925Detector.Naturality.zv)
    (etaNaturality : ∀ x, detector (Row2925Detector.Naturality.f x) =
      Row2925Detector.Naturality.g (ds x))
    (bottomNaturality : ∀ x, dc (Naturality.f x) = Naturality.g (ds x))
    (mapZero : represented dc zero = zero)
    (mapAdd : ∀ x y, represented dc (add x y) = add (represented dc x) (represented dc y))
    (boundaryColumn : represented dc (basis 0) = zero)
    (futurePrefixColumn : represented dc (basis 2) = zero) :
    ∀ x, represented dc x = eval zeroIncoming x := by
  have namedZero : dc Naturality.named = Naturality.zv :=
    Naturality.named_d3_zero ds detector dc etaZero etaNaturality bottomNaturality
  have middle : represented dc (basis 1) = zero := by
    unfold represented
    rw [source_basis1_named, namedZero]
    exact eval_zero _
  intro x
  have h := zero_of_three_columns (represented dc) mapZero mapAdd boundaryColumn middle futurePrefixColumn x
  exact h.trans (show eval zeroIncoming x = zero from by
    exact (show ∀ x : Vec 3, eval zeroIncoming x = zero from by decide) x).symm

theorem complete_no_hit (dc : Naturality.T → Naturality.V)
    (complete : ∀ x, represented dc x = eval zeroIncoming x) :
    ¬ ∃ x, dc x = CnuPageCertificates.targetClass := by
  rintro ⟨x, hit⟩
  have h := complete (sourceCoordinates.toCoordinates x)
  unfold represented at h
  rw [sourceCoordinates.leftInverse, hit, named_target_coordinates] at h
  have hz : eval zeroIncoming (sourceCoordinates.toCoordinates x) = zero :=
    (show ∀ v : Vec 3, eval zeroIncoming v = zero from by decide) _
  exact namedTarget_nonzero (h.trans hz)

#print axioms finite_not_image
#print axioms zero_of_three_columns
#print axioms source_basis1_named
#print axioms complete_incoming_zero
#print axioms complete_no_hit
end Prop79IncomingSearch.Incoming
