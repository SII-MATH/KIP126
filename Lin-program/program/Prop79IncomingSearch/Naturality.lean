import Prop79IncomingSearch.Comparison
import CnuPageCertificates.BottomCell

namespace Prop79IncomingSearch.Naturality
open LinearCertificates PageTransitionCertificates Comparison

abbrev S := Row2925Detector.Naturality.S
abbrev U := Row2925Detector.Naturality.U
abbrev T := Homology (matrixOf target.k target.m target.outgoing)
  (matrixOf target.m target.n target.incoming)
abbrev V := Homology (matrixOf upperTarget.k upperTarget.m upperTarget.outgoing)
  (matrixOf upperTarget.m upperTarget.n upperTarget.incoming)
def f : S → T := inducedMap compatible
def g : U → V := inducedMap uppercompatible
def zt : T := Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _)
def zv : V := Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _)
def named : T := Quot.mk _ (⟨fun i => i.val == 1 || i.val == 2, by
  funext i
  exact (show ∀ i, eval (matrixOf target.k target.m target.outgoing)
    (fun j => j.val == 1 || j.val == 2) i = false from by decide) i⟩ : Cycle _)

theorem source_named_image : f Row2925Detector.Naturality.named = named := by
  apply Quot.sound
  refine ⟨zero, ?_⟩
  rw [eval_zero]
  funext i
  exact (show ∀ i, zero i = add
    (eval middleMap (fun j => j.val == 1 || j.val == 2))
    (fun j => j.val == 1 || j.val == 2) i from by decide) i

theorem upper_zero : g Row2925Detector.Naturality.zs = zv := by
  apply Quot.sound
  refine ⟨zero, ?_⟩
  change eval (matrixOf upperTarget.m upperTarget.n upperTarget.incoming) zero =
    add (eval upperMiddleMap zero) zero
  rw [eval_zero, eval_zero]
  funext i
  rfl

def coordinates := homologyEquivalence _ _ target.comparison target_complete.2

theorem named_coordinates : coordinates.toCoordinates named =
    (fun i : Fin 3 => i.val == 1 || i.val == 2) := by
  funext i
  exact (show ∀ i, coordinates.toCoordinates named i =
    (i.val == 1 || i.val == 2) from by decide) i

theorem target_exact : upperTarget = CnuPageCertificates.wire := rfl

/-- Both d3 naturality squares remain explicit mathematical premises. -/
theorem named_d3_zero (ds : S → U)
    (detector : Row2925Detector.Naturality.T → Row2925Detector.Naturality.V)
    (dc : T → V)
    (etaZero : detector Row2925Detector.Naturality.zt = Row2925Detector.Naturality.zv)
    (etaNaturality : ∀ x, detector (Row2925Detector.Naturality.f x) =
      Row2925Detector.Naturality.g (ds x))
    (bottomNaturality : ∀ x, dc (f x) = g (ds x)) : dc named = zv := by
  have hs := Row2925Detector.Naturality.named_d3_zero ds detector etaZero etaNaturality
  rw [← source_named_image, bottomNaturality, hs, upper_zero]

#print axioms source_named_image
#print axioms upper_zero
#print axioms named_coordinates
#print axioms target_exact
#print axioms named_d3_zero
end Prop79IncomingSearch.Naturality
