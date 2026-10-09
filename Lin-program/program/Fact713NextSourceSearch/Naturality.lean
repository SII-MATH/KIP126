import Fact713NextSourceSearch.Comparison
namespace Fact713NextSourceSearch.Naturality
open LinearCertificates PageTransitionCertificates ResolutionCertificates Comparison
abbrev S := Homology (matrixOf source.k source.m source.outgoing) (matrixOf source.m source.n source.incoming)
abbrev T := Homology (matrixOf target.k target.m target.outgoing) (matrixOf target.m target.n target.incoming)
abbrev U := Homology (matrixOf upperSource.k upperSource.m upperSource.outgoing) (matrixOf upperSource.m upperSource.n upperSource.incoming)
abbrev V := Homology (matrixOf upperTarget.k upperTarget.m upperTarget.outgoing) (matrixOf upperTarget.m upperTarget.n upperTarget.incoming)
def f : S → T := inducedMap compatible
def g : U → V := inducedMap uppercompatible
def zs : U := Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)
def zt : T := Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)
def zv : V := Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)
def named : S := Quot.mk _ (⟨fun i => (i.val == 0),by
  funext i
  exact (show ∀ i, eval (matrixOf source.k source.m source.outgoing) (fun j => (j.val == 0)) i = false from by decide) i⟩ : Cycle _)
theorem named_maps_zero : f named = zt := by
  apply Quot.sound
  change InImage (matrixOf target.m target.n target.incoming) (add (eval middleMap (fun i => (i.val == 0))) zero)
  refine ⟨zero, ?_⟩
  rw [eval_zero]
  funext i
  exact (show ∀ i, zero i = add (eval middleMap (fun j => (j.val == 0))) zero i from by decide) i

def ue := homologyEquivalence _ _ upperSource.comparison upperSource_complete.2
def ve := homologyEquivalence _ _ upperTarget.comparison upperTarget_complete.2

theorem g_reflects_zero (x : U) (h : g x = zv) : x = zs := by
  have hh := congrArg ve.toCoordinates h
  have hx := ue.leftInverse x
  have hc : ue.toCoordinates x = zero := by
    generalize hv : ue.toCoordinates x = v at *
    rw [← hx] at hh
    have detect : ∀ v : Vec 2,
        eval upperTarget.comparison.projection
          (eval upperMiddleMap (eval upperSource.comparison.inclusion v)) = zero → v = zero := by decide
    apply detect
    change eval upperTarget.comparison.projection
      (eval upperMiddleMap (eval upperSource.comparison.inclusion v)) =
      eval upperTarget.comparison.projection zero at hh
    simpa only [eval_zero] using hh
  have hz : ue.toCoordinates zs = zero := eval_zero _
  have hh := congrArg ue.fromCoordinates (hc.trans hz.symm)
  simpa only [ue.leftInverse] using hh

theorem named_d3_zero (ds : S → U) (dt : T → V)
    (zeroPreserving : dt zt = zv)
    (naturality : ∀ x, dt (f x) = g (ds x)) : ds named = zs := by
  apply g_reflects_zero
  rw [← naturality, named_maps_zero, zeroPreserving]
#print axioms named_d3_zero
end Fact713NextSourceSearch.Naturality
