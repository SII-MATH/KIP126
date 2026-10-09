import Fact713Row2994Constraint.Comparison

namespace Fact713Row2994Constraint.Naturality
open LinearCertificates PageTransitionCertificates ResolutionCertificates Comparison

abbrev S := Homology (matrixOf source.k source.m source.outgoing) (matrixOf source.m source.n source.incoming)
abbrev T := Homology (matrixOf target.k target.m target.outgoing) (matrixOf target.m target.n target.incoming)
abbrev U := Homology (matrixOf upperSource.k upperSource.m upperSource.outgoing) (matrixOf upperSource.m upperSource.n upperSource.incoming)
abbrev V := Homology (matrixOf upperTarget.k upperTarget.m upperTarget.outgoing) (matrixOf upperTarget.m upperTarget.n upperTarget.incoming)
def f : S → T := inducedMap compatible
def g : U → V := inducedMap uppercompatible
def zs : U := Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _)
def zt : T := Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _)
def zv : V := Quot.mk _ (⟨zero, eval_zero _⟩ : Cycle _)
def se := homologyEquivalence _ _ source.comparison source_complete.2
def ue := homologyEquivalence _ _ upperSource.comparison upperSource_complete.2
def ve := homologyEquivalence _ _ upperTarget.comparison upperTarget_complete.2
def residual : Vec 2 := fun i => i.val == 1
def residualClass : U := ue.fromCoordinates residual
def targetMatrix := coordinateMap upperSource.comparison upperTarget.comparison upperMiddleMap

def named : S := Quot.mk _ (⟨fun i => decide (i.val < 3), by
  funext i
  exact (show ∀ i, eval (matrixOf source.k source.m source.outgoing)
    (fun j => decide (j.val < 3)) i = false from by decide) i⟩ : Cycle _)

theorem named_maps_zero : f named = zt := by
  apply Quot.sound
  change InImage (matrixOf target.m target.n target.incoming)
    (add (eval middleMap (fun i => decide (i.val < 3))) zero)
  refine ⟨fun i => i.val == 0, ?_⟩
  funext i
  exact (show ∀ i, eval (matrixOf target.m target.n target.incoming) (fun j => j.val == 0) i =
    add (eval middleMap (fun j => decide (j.val < 3))) zero i from by decide) i

theorem g_all_coordinates (x : U) : ve.toCoordinates (g x) = eval targetMatrix (ue.toCoordinates x) :=
  induced_coordinates_all uppercompatible _ _ upperSource_complete.2 upperTarget_complete.2 x

theorem matrix_kernel (v : Vec 2) : eval targetMatrix v = zero ↔ v = zero ∨ v = residual := by
  exact (show ∀ v : Vec 2, eval targetMatrix v = zero ↔ v = zero ∨ v = residual from by decide) v

theorem matrix_affine (v w : Vec 2) :
    eval targetMatrix v = eval targetMatrix w ↔ v = w ∨ v = add w residual := by
  exact (show ∀ v w : Vec 2, eval targetMatrix v = eval targetMatrix w ↔
    v = w ∨ v = add w residual from by decide) v w

theorem residual_nonzero : residual ≠ zero := by decide
theorem zs_coordinates : ue.toCoordinates zs = zero := eval_zero _
theorem residual_coordinates : ue.toCoordinates residualClass = residual := ue.rightInverse _

theorem source_coordinates_injective : Function.Injective ue.toCoordinates := by
  intro x y h
  exact (ue.leftInverse x).symm.trans ((congrArg ue.fromCoordinates h).trans (ue.leftInverse y))
theorem detector_coordinates_injective : Function.Injective ve.toCoordinates := by
  intro x y h
  exact (ve.leftInverse x).symm.trans ((congrArg ve.fromCoordinates h).trans (ve.leftInverse y))

theorem g_kernel (x : U) : g x = zv ↔ x = zs ∨ x = residualClass := by
  have hz : ve.toCoordinates zv = zero := eval_zero _
  constructor
  · intro h
    have hc : eval targetMatrix (ue.toCoordinates x) = zero :=
      (g_all_coordinates x).symm.trans ((congrArg ve.toCoordinates h).trans hz)
    rcases (matrix_kernel _).mp hc with hzero | hresidual
    · exact Or.inl (source_coordinates_injective (hzero.trans zs_coordinates.symm))
    · exact Or.inr (source_coordinates_injective (hresidual.trans residual_coordinates.symm))
  · intro h
    apply detector_coordinates_injective
    rw [g_all_coordinates, hz]
    apply (matrix_kernel _).mpr
    rcases h with rfl | rfl
    · exact Or.inl zs_coordinates
    · exact Or.inr residual_coordinates

theorem g_affine (x y : U) : g x = g y ↔
    ue.toCoordinates x = ue.toCoordinates y ∨
    ue.toCoordinates x = add (ue.toCoordinates y) residual := by
  constructor
  · intro h
    apply (matrix_affine _ _).mp
    exact (g_all_coordinates x).symm.trans
      ((congrArg ve.toCoordinates h).trans (g_all_coordinates y))
  · intro h
    apply detector_coordinates_injective
    exact (g_all_coordinates x).trans (((matrix_affine _ _).mpr h).trans (g_all_coordinates y).symm)

theorem named_d3_candidates (ds : S → U) (dt : T → V)
    (zeroPreserving : dt zt = zv)
    (naturality : ∀ x, dt (f x) = g (ds x)) :
    ds named = zs ∨ ds named = residualClass := by
  apply (g_kernel _).mp
  rw [← naturality, named_maps_zero, zeroPreserving]

#print axioms named_maps_zero
#print axioms g_all_coordinates
#print axioms matrix_kernel
#print axioms matrix_affine
#print axioms g_kernel
#print axioms g_affine
#print axioms named_d3_candidates
end Fact713Row2994Constraint.Naturality
