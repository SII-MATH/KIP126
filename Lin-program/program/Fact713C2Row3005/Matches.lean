import Fact713C2Row3005.Naturality
import Fact713C2Row3005.MapSemantics
namespace Fact713C2Row3005.Matches
open LinearCertificates PageTransitionCertificates Naturality

def coordinates : ST → Vec 1 :=
  (homologyEquivalence _ _ MapComparison.upperTarget.comparison MapComparison.upperTarget_complete.2).toCoordinates

def candidateColumn : Matrix 1 1 := fun _ _ => false

def ColumnMatches (ds : SS → ST) : Prop := ds requestedClass = zeroS ∧
  ∀ i, candidateColumn i 0 = coordinates (ds requestedClass) i

theorem matched (dc : CS → CT) (ds : SS → ST)
    (hp : PrefixMeaning dc) (hn : ∀ x, ds (f x) = ft (dc x)) : ColumnMatches ds := by
  have h := sphere_zero_from_prefix dc ds hp hn
  refine ⟨h, ?_⟩
  rw [h]
  intro i
  change false = eval MapComparison.upperTarget.comparison.projection zero i
  rw [eval_zero]
  rfl
#print axioms matched
end Fact713C2Row3005.Matches
