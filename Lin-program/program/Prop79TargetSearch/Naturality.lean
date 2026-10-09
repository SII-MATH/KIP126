import Prop79TargetSearch.Comparison
import Prop79IncomingSearch.CoordinateBridge

namespace Prop79TargetSearch.Naturality
open LinearCertificates PageTransitionCertificates Comparison

abbrev S := Homology (matrixOf source.k source.m source.outgoing) (matrixOf source.m source.n source.incoming)
abbrev U := Homology (matrixOf upperSource.k upperSource.m upperSource.outgoing) (matrixOf upperSource.m upperSource.n upperSource.incoming)
abbrev T := Homology (matrixOf target.k target.m target.outgoing) (matrixOf target.m target.n target.incoming)
abbrev V := Homology (matrixOf upperTarget.k upperTarget.m upperTarget.outgoing) (matrixOf upperTarget.m upperTarget.n upperTarget.incoming)
def f : S → T := inducedMap compatible
def g : U → V := inducedMap uppercompatible
def zs : S := Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)
def zu : U := Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)
def zt : T := Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)
def zv : V := Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _)
def named : S := Quot.mk _ (⟨fun i => i.val == 1,by
  funext i
  exact (show ∀ i, eval (matrixOf source.k source.m source.outgoing)
    (fun j => j.val == 1) i = false from by decide) i⟩ : Cycle _)

def ue := homologyEquivalence _ _ upperSource.comparison upperSource_complete.2

theorem sphere_target_zero (x : U) : x = zu := by
  have hc : ue.toCoordinates x = ue.toCoordinates zu := by
    funext i
    exact Fin.elim0 i
  exact (ue.leftInverse x).symm.trans ((congrArg ue.fromCoordinates hc).trans (ue.leftInverse zu))

theorem named_maps_to_target : f named = CnuPageCertificates.targetClass := by
  apply Quot.sound
  refine ⟨zero, ?_⟩
  change eval (matrixOf target.m target.n target.incoming) zero =
    add (eval middleMap (fun i => i.val == 1)) CnuPageCertificates.target
  rw [eval_zero]
  funext i
  exact (show ∀ i, zero i = add (eval middleMap (fun j => j.val == 1)) CnuPageCertificates.target i from by decide) i

theorem upper_zero : g zu = zv := by
  apply Quot.sound
  refine ⟨zero, ?_⟩
  change eval (matrixOf upperTarget.m upperTarget.n upperTarget.incoming) zero = add (eval upperMiddleMap zero) zero
  rw [eval_zero, eval_zero]
  rfl

theorem named_d3_zero (ds : S → U) (dc : T → V)
    (naturality : ∀ x, dc (f x) = g (ds x)) : dc CnuPageCertificates.targetClass = zv := by
  exact (congrArg dc named_maps_to_target.symm).trans
    ((naturality named).trans ((congrArg g (sphere_target_zero (ds named))).trans upper_zero))

#print axioms sphere_target_zero
#print axioms named_maps_to_target
#print axioms upper_zero
#print axioms named_d3_zero
end Prop79TargetSearch.Naturality
