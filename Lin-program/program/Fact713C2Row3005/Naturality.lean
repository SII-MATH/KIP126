import Fact713C2Row3005.MapComparison
import NamedPageComparison.Fact761D3
import Fact715TrajectoryCertificates.ConditionalData
namespace Fact713C2Row3005.Naturality
open LinearCertificates PageTransitionCertificates ResolutionCertificates MapComparison
abbrev CS := Homology (matrixOf source.k source.m source.outgoing) (matrixOf source.m source.n source.incoming)
abbrev SS := Homology (matrixOf target.k target.m target.outgoing) (matrixOf target.m target.n target.incoming)
abbrev CT := Homology (matrixOf upperSource.k upperSource.m upperSource.outgoing) (matrixOf upperSource.m upperSource.n upperSource.incoming)
abbrev ST := Homology (matrixOf upperTarget.k upperTarget.m upperTarget.outgoing) (matrixOf upperTarget.m upperTarget.n upperTarget.incoming)
def f : CS → SS := inducedMap compatible
def ft : CT → ST := inducedMap uppercompatible

def sourceClass : CS := Quot.mk _ (⟨fun i => i.val == 0, by
  funext i
  exact (show ∀ i, eval (matrixOf source.k source.m source.outgoing) (fun j => j.val == 0) i = false from by decide) i⟩ : Cycle _)
def requestedClass : SS := Quot.mk _ (⟨fun i => i.val == 2, by
  funext i
  exact (show ∀ i, eval (matrixOf target.k target.m target.outgoing) (fun j => j.val == 2) i = false from by decide) i⟩ : Cycle _)
def zeroC : CT := Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)
def zeroS : ST := Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)

theorem source_image : f sourceClass = requestedClass := by
  apply Quot.sound
  change InImage (matrixOf target.m target.n target.incoming)
    (add (eval middleMap (fun i => i.val == 0)) (fun i => i.val == 2))
  refine ⟨zero, ?_⟩
  rw [eval_zero]
  funext i
  exact (show ∀ i, zero i = add (eval middleMap (fun i => i.val == 0)) (fun i => i.val == 2) i from by decide) i

theorem target_map_zero : ft zeroC = zeroS := by
  apply Quot.sound
  change InImage (matrixOf upperTarget.m upperTarget.n upperTarget.incoming) (add (eval upperMiddleMap zero) zero)
  rw [eval_zero, add_zero]
  exact ⟨zero,eval_zero _⟩


def prefixRow : NamedPageComparison.Fact761D3.ImportedRow := ⟨3110,[0],9995,none⟩
theorem raw_unknown : prefixRow.diff = none := by decide
theorem prefix_decoded :
    Fact715TrajectoryCertificates.ConditionalData.queryStored 3 prefixRow 3 =
      some (zero : Vec 3) := by rfl

def targetCoordinates := homologyEquivalence _ _ upperSource.comparison upperSource_complete.2

/-- The imported prefix interpretation is explicit and ranges over every
available query; it is not a supplied desired-zero equation. -/
def PrefixMeaning (dc : CS → CT) : Prop :=
  ∀ v, Fact715TrajectoryCertificates.ConditionalData.queryStored 3 prefixRow 3 = some v →
    targetCoordinates.toCoordinates (dc sourceClass) = eval upperSource.comparison.projection v

theorem source_zero_from_prefix (dc : CS → CT) (hp : PrefixMeaning dc) :
    dc sourceClass = zeroC := by
  have h := hp zero prefix_decoded
  have hz : targetCoordinates.toCoordinates zeroC = eval upperSource.comparison.projection zero := rfl
  have he := congrArg targetCoordinates.fromCoordinates (h.trans hz.symm)
  simpa only [targetCoordinates.leftInverse] using he

theorem sphere_zero_from_prefix (dc : CS → CT) (ds : SS → ST)
    (hp : PrefixMeaning dc) (hn : ∀ x, ds (f x) = ft (dc x)) :
    ds requestedClass = zeroS := by
  rw [← source_image, hn, source_zero_from_prefix dc hp, target_map_zero]
end Fact713C2Row3005.Naturality
