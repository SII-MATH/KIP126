import Fact713C2Row3143.Naturality
import Fact713C2Row3143.FollowingColumns
import Fact713C2Row3143.MapSemantics
namespace Fact713C2Row3143.Matches
open LinearCertificates PageTransitionCertificates Naturality

def targetCoordinates : ST → Vec 1 :=
  (homologyEquivalence _ _ MapComparison.upperTarget.comparison MapComparison.upperTarget_complete.2).toCoordinates

def candidateColumn : Matrix 1 1 := fun _ _ => false

def ColumnMatches (ds : SS → ST) : Prop :=
  ds requestedClass = zeroS ∧ ∀ i : Fin 1,
    candidateColumn i ⟨0,by decide⟩ = targetCoordinates (ds requestedClass) i

theorem matched_zero (dc : CS → CT) (ds : SS → ST)
    (nextD : CT → InjectiveNext.NT)
    (matrixMeaning : ∀ x, InjectiveNext.ne.toCoordinates (nextD x) =
      eval InjectiveNext.following (InjectiveNext.ce.toCoordinates x))
    (squareZero : ∀ x, nextD (dc x) = InjectiveNext.zeroN)
    (naturality : ∀ x, ds (f x) = ft (dc x)) : ColumnMatches ds := by
  have hz := sphere_zero_from_successor dc ds nextD matrixMeaning squareZero naturality
  refine ⟨hz, ?_⟩
  rw [hz]
  intro i
  change false = eval MapComparison.upperTarget.comparison.projection zero i
  rw [eval_zero]
  rfl
#print axioms matched_zero
end Fact713C2Row3143.Matches
