import Fact713C2Row3143.InjectiveNext
namespace Fact713C2Row3143.Naturality
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
def requestedClass : SS := Quot.mk _ (⟨fun i => i.val == 0, by
  funext i
  exact (show ∀ i, eval (matrixOf target.k target.m target.outgoing) (fun j => j.val == 0) i = false from by decide) i⟩ : Cycle _)
def zeroC : CT := Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)
def zeroS : ST := Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)

theorem source_image : f sourceClass = requestedClass := by
  apply Quot.sound
  change InImage (matrixOf target.m target.n target.incoming)
    (add (eval middleMap (fun i => i.val == 0)) (fun i => i.val == 0))
  refine ⟨zero, ?_⟩
  rw [eval_zero]
  funext i
  exact (show ∀ i, zero i = add (eval middleMap (fun i => i.val == 0)) (fun i => i.val == 0) i from by decide) i

theorem target_map_zero : ft zeroC = zeroS := by
  apply Quot.sound
  change InImage (matrixOf upperTarget.m upperTarget.n upperTarget.incoming) (add (eval upperMiddleMap zero) zero)
  rw [eval_zero, add_zero]
  exact ⟨zero,eval_zero _⟩

/-- The successor is injective from its actual two imported d3 columns.
Square-zero and naturality are explicit structural premises. -/
theorem sphere_zero_from_successor
    (dc : CS → CT) (ds : SS → ST)
    (nextD : CT → InjectiveNext.NT)
    (matrixMeaning : ∀ x, InjectiveNext.ne.toCoordinates (nextD x) =
      eval InjectiveNext.following (InjectiveNext.ce.toCoordinates x))
    (squareZero : ∀ x, nextD (dc x) = InjectiveNext.zeroN)
    (naturality : ∀ x, ds (f x) = ft (dc x)) :
    ds requestedClass = zeroS := by
  have hz : dc sourceClass = zeroC :=
    InjectiveNext.following_reflects_quotient_zero nextD matrixMeaning
      (dc sourceClass) (squareZero sourceClass)
  rw [← source_image, naturality, hz, target_map_zero]

#print axioms sphere_zero_from_successor
end Fact713C2Row3143.Naturality
