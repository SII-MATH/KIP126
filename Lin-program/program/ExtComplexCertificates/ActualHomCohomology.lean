import ExtComplexCertificates.ActualAugmentationHom
import Mathlib.GroupTheory.QuotientGroup.Basic

namespace ExtComplexCertificates.ActualResolution
open MilnorCertificates

noncomputable def homBidegreeSubgroup (s t : Nat) : AddSubgroup ActualHom where
  carrier := {f | HomBidegree s t f}
  zero_mem' := by intro i hi; rfl
  add_mem' := by
    intro f g hf hg i hi
    change f (Finsupp.single i 1) + g (Finsupp.single i 1) = 0
    change homToGenerators f i + homToGenerators g i = 0
    rw [hf i hi,hg i hi,add_zero]
  neg_mem' := by
    intro f hf i hi
    change -f (Finsupp.single i 1) = 0
    change -homToGenerators f i = 0
    rw [hf i hi,neg_zero]

noncomputable abbrev HomCochain (s t : Nat) := homBidegreeSubgroup s t

/-- The cochain differential is actual precomposition with the actual module
boundary, restricted to the homogeneous Hom subgroups. -/
noncomputable def actualCochainDifferential (s t : Nat) : HomCochain s t →+ HomCochain (s+1) t where
  toFun f := ⟨f.val.comp actualDifferential,by
    rw [actualHom_differential_zero]
    exact (homBidegreeSubgroup (s+1) t).zero_mem⟩
  map_zero' := by apply Subtype.ext; ext x; rfl
  map_add' f g := by apply Subtype.ext; ext x; rfl

theorem actualCochainDifferential_zero (s t : Nat) : actualCochainDifferential s t = 0 := by
  apply AddMonoidHom.ext
  intro f
  apply Subtype.ext
  exact actualHom_differential_zero f.val

noncomputable def homCycles (s t : Nat) : AddSubgroup (HomCochain s t) :=
  (actualCochainDifferential s t).ker

noncomputable def homBoundaries (s t : Nat) : AddSubgroup (HomCochain s t) :=
  match s with
  | 0 => ⊥
  | n+1 => (actualCochainDifferential n t).range

theorem homCycles_top (s t : Nat) : homCycles s t = ⊤ := by
  simp [homCycles,actualCochainDifferential_zero]

theorem homBoundaries_bot (s t : Nat) : homBoundaries s t = ⊥ := by
  cases s <;> simp [homBoundaries,actualCochainDifferential_zero]

noncomputable def boundariesInCycles (s t : Nat) : AddSubgroup (homCycles s t) :=
  (homBoundaries s t).comap (homCycles s t).subtype

/-- Kernel modulo image for the actual Hom differential. -/
abbrev ActualHomCohomology (s t : Nat) := (homCycles s t) ⧸ boundariesInCycles s t

theorem boundariesInCycles_bot (s t : Nat) : boundariesInCycles s t = ⊥ := by
  rw [boundariesInCycles,homBoundaries_bot]
  ext x
  simp

noncomputable def cohomologyCyclesEquiv (s t : Nat) : ActualHomCohomology s t ≃+ homCycles s t := by
  unfold ActualHomCohomology
  rw [boundariesInCycles_bot]
  exact QuotientAddGroup.quotientBot

noncomputable def cyclesCochainEquiv (s t : Nat) : homCycles s t ≃+ HomCochain s t where
  toFun x := x.val
  invFun x := ⟨x,by rw [homCycles_top]; trivial⟩
  left_inv x := by rfl
  right_inv x := rfl
  map_add' x y := rfl

noncomputable def cochainCoordinateEquiv (s t : Nat) :
    HomCochain s t ≃+ (Fin (actualHomDimension s t) → AugmentationField) where
  toEquiv := homDimensionEquiv s t
  map_add' f g := by
    funext i
    rfl

/-- Actual Hom kernel/image quotient, additively equivalent to the generator
coordinates. This is cohomology of the finite imported complex, not Ext_A. -/
noncomputable def actualHomCohomologyEquiv (s t : Nat) :
    ActualHomCohomology s t ≃+ (Fin (actualHomDimension s t) → AugmentationField) :=
  (cohomologyCyclesEquiv s t).trans ((cyclesCochainEquiv s t).trans (cochainCoordinateEquiv s t))

theorem cohomology_add_coordinates (s t : Nat) (x y : ActualHomCohomology s t) :
    actualHomCohomologyEquiv s t (x+y) = actualHomCohomologyEquiv s t x + actualHomCohomologyEquiv s t y :=
  (actualHomCohomologyEquiv s t).map_add x y

#print axioms actualHomCohomologyEquiv
end ExtComplexCertificates.ActualResolution
