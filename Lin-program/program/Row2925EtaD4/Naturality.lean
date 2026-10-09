import Row2925EtaD4.Higher
import Mathlib.Data.Fintype.Pi
namespace Row2925EtaD4.Naturality
open LinearCertificates PageTransitionCertificates ResolutionCertificates Higher
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
  change InImage (matrixOf target.m target.n target.incoming) (add (eval MiddleMap (fun i => (i.val == 0))) zero)
  refine ⟨zero, ?_⟩
  rw [eval_zero]
  funext i
  exact (show ∀ i, zero i = add (eval MiddleMap (fun j => (j.val == 0))) zero i from by decide) i

def ue := homologyEquivalence _ _ upperSource.comparison upperSource_complete.2
def ve := homologyEquivalence _ _ upperTarget.comparison upperTarget_complete.2

def detection : Matrix 1 2 :=
  coordinateMap upperSource.comparison upperTarget.comparison upperMiddleMap

theorem target_coordinate (x : U) :
    ve.toCoordinates (g x) = (fun _ => ue.toCoordinates x (1 : Fin 2)) := by
  have hc := induced_coordinates_all uppercompatible _ _ upperSource_complete.2 upperTarget_complete.2 x
  change ve.toCoordinates (g x) = _ at hc
  rw [hc]
  funext i
  exact (show ∀ (v : Vec 2) (i : Fin 1),
    eval detection v i =
      v (1 : Fin 2) from by decide) (ue.toCoordinates x) i

theorem second_zero_of_product_zero (x : U) (h : g x = zv) :
    ue.toCoordinates x (1 : Fin 2) = false := by
  have hc := congrArg ve.toCoordinates h
  rw [target_coordinate] at hc
  exact congrFun hc (0 : Fin 1)

/-- Source annihilation and the full ordinary multiplication square exclude
exactly the second target coordinate; the first coordinate is left free. -/
theorem named_second_coordinate_zero (ds : S → U) (dt : T → V)
    (zeroPreserving : dt zt = zv)
    (leibniz : ∀ x, dt (f x) = g (ds x)) :
    ue.toCoordinates (ds named) (1 : Fin 2) = false := by
  apply second_zero_of_product_zero
  rw [← leibniz, named_maps_zero, zeroPreserving]

#print axioms named_maps_zero
#print axioms target_coordinate
#print axioms named_second_coordinate_zero
end Row2925EtaD4.Naturality
