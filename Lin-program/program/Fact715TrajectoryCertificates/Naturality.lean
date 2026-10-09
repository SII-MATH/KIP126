import Fact715TrajectoryCertificates.MapComparison
namespace Fact715TrajectoryCertificates.Naturality
open LinearCertificates PageTransitionCertificates ResolutionCertificates MapComparison
abbrev CS := Homology (matrixOf source.k source.m source.outgoing) (matrixOf source.m source.n source.incoming)
abbrev SS := Homology (matrixOf target.k target.m target.outgoing) (matrixOf target.m target.n target.incoming)
abbrev CT := Homology (matrixOf upperSource.k upperSource.m upperSource.outgoing) (matrixOf upperSource.m upperSource.n upperSource.incoming)
abbrev ST := Homology (matrixOf upperTarget.k upperTarget.m upperTarget.outgoing) (matrixOf upperTarget.m upperTarget.n upperTarget.incoming)
def f : CS → SS := inducedMap compatible
def ft : CT → ST := inducedMap uppercompatible

def cetaClass : CS := Quot.mk _ (⟨fun i => i.val == 0 || i.val == 2, by
  funext i
  exact (show ∀ i, eval (matrixOf source.k source.m source.outgoing)
    (fun j => j.val == 0 || j.val == 2) i = false from by decide) i⟩ : Cycle _)
def sphereClass : SS := Quot.mk _ (⟨fun i => i.val == 1 || i.val == 3, by
  funext i
  exact (show ∀ i, eval (matrixOf target.k target.m target.outgoing)
    (fun j => j.val == 1 || j.val == 3) i = false from by decide) i⟩ : Cycle _)
def zeroC : CT := Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _)
def zeroS : ST := Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _)

theorem source_image : f cetaClass = sphereClass := by
  apply Quot.sound
  change InImage (matrixOf target.m target.n target.incoming)
    (add (eval middleMap (fun i => i.val == 0 || i.val == 2)) (fun i => i.val == 1 || i.val == 3))
  refine ⟨zero, ?_⟩
  rw [eval_zero]
  funext i
  exact (show ∀ i, zero i = add (eval middleMap (fun i => i.val == 0 || i.val == 2)) (fun i => i.val == 1 || i.val == 3) i from by decide) i

theorem target_is_zero (x : CT) : x = zeroC := by
  let e := homologyEquivalence _ _ upperSource.comparison upperSource_complete.2
  have h : e.toCoordinates x = e.toCoordinates zeroC := by
    funext i
    exact Fin.elim0 i
  have hh := congrArg e.fromCoordinates h
  simpa only [e.leftInverse] using hh

theorem target_map_zero : ft zeroC = zeroS := by
  apply Quot.sound
  change InImage (matrixOf upperTarget.m upperTarget.n upperTarget.incoming)
    (add (eval upperMiddleMap zero) zero)
  rw [eval_zero, add_zero]
  exact ⟨zero,eval_zero _⟩

/-- The actual finite source image and zero codomain replace raw sentinel use.
The remaining premise is naturality of the specified local differentials. -/
theorem sphere_d3_zero (dc : CS → CT) (ds : SS → ST)
    (naturality : ∀ x, ds (f x) = ft (dc x)) : ds sphereClass = zeroS := by
  rw [← source_image, naturality, target_is_zero (dc cetaClass), target_map_zero]
end Fact715TrajectoryCertificates.Naturality
