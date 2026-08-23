import KIP126.Core.SpectralSequence.FilteredComplex
import Mathlib.Algebra.Homology.Refinements
import Mathlib.Algebra.Homology.SpectralSequence.Basic
import Mathlib.CategoryTheory.Preadditive.Projective.Basic

/-!
# Representatives on pages of a spectral sequence

This file connects Mathlib's categorical pages with generalized-element
representatives. A cycle on the `r`-th page maps through Mathlib's homology
quotient and the page-passage isomorphism to the next page. Vanishing and
equality of such classes are characterized by boundary lifts after an
epimorphic refinement, which is the elementwise content available in an
arbitrary abelian category.

The filtered representative equations are adapted from
`KIPInfra/SpectralSequence/FilteredComplex.lean` at commit `65de864`.
Unlike that source, this module keeps Mathlib's `SpectralSequence` as the only
page engine and uses the project's existing filtered and associated-graded
functors.

For a filtered complex, the leading-term projection used by these
representative calculations is the existing
`Algebra.Filtration.toAssociatedGraded`; no second spectral-sequence or
associated-graded interface is introduced here.
-/

namespace KIP126.Core.SpectralSequence

open CategoryTheory CategoryTheory.Limits

universe u v w

variable {C : Type u} [Category.{v} C] [Abelian C]
variable {κ : Type w} {c : ℤ → ComplexShape κ} {r₀ : ℤ}

/-- The class on the next page represented by a generalized cycle on the
current page. -/
noncomputable def pageClass (E : CategoryTheory.SpectralSequence C c r₀)
    (r : ℤ) (hr : r₀ ≤ r) (pq : κ) {T : C}
    (x : T ⟶ (E.page r hr).X pq)
    (hx : x ≫ (E.page r hr).dFrom pq = 0) :
    T ⟶ (E.page (r + 1) (by omega)).X pq :=
  (E.page r hr).liftCycles x ((c r).next pq) rfl hx ≫
    (E.page r hr).homologyπ pq ≫
      (E.iso r (r + 1) pq rfl hr).hom

/-- A page representative gives the zero class exactly when, after an
epimorphic refinement, it is the image of an incoming page differential. -/
theorem pageClass_eq_zero_iff_boundary_up_to_refinements
    (E : CategoryTheory.SpectralSequence C c r₀)
    (r : ℤ) (hr : r₀ ≤ r) (pq : κ) {T : C}
    (x : T ⟶ (E.page r hr).X pq)
    (hx : x ≫ (E.page r hr).dFrom pq = 0) :
    pageClass E r hr pq x hx = 0 ↔
      ∃ (T' : C) (π : T' ⟶ T) (_ : Epi π)
        (y : T' ⟶ (E.page r hr).xPrev pq),
        π ≫ x = y ≫ (E.page r hr).dTo pq := by
  unfold pageClass
  constructor
  · intro h
    apply ((E.page r hr).liftCycles_comp_homologyπ_eq_zero_iff_up_to_refinements
      ((c r).prev pq) pq ((c r).next pq) rfl rfl x hx).mp
    apply (cancel_mono (E.iso r (r + 1) pq rfl hr).hom).mp
    simpa only [Category.assoc, zero_comp] using h
  · intro h
    have h' := ((E.page r hr).liftCycles_comp_homologyπ_eq_zero_iff_up_to_refinements
      ((c r).prev pq) pq ((c r).next pq) rfl rfl x hx).mpr h
    rw [← Category.assoc, h', zero_comp]

/-- Two cycle representatives give the same class on the next page exactly
when their difference is a boundary after an epimorphic refinement. -/
theorem pageClass_eq_iff_sub_boundary_up_to_refinements
    (E : CategoryTheory.SpectralSequence C c r₀)
    (r : ℤ) (hr : r₀ ≤ r) (pq : κ) {T : C}
    (x x' : T ⟶ (E.page r hr).X pq)
    (hx : x ≫ (E.page r hr).dFrom pq = 0)
    (hx' : x' ≫ (E.page r hr).dFrom pq = 0) :
    pageClass E r hr pq x hx = pageClass E r hr pq x' hx' ↔
      ∃ (T' : C) (π : T' ⟶ T) (_ : Epi π)
        (y : T' ⟶ (E.page r hr).xPrev pq),
        π ≫ x = π ≫ x' + y ≫ (E.page r hr).dTo pq := by
  unfold pageClass
  constructor
  · intro h
    apply ((E.page r hr).liftCycles_comp_homologyπ_eq_iff_up_to_refinements
      ((c r).prev pq) pq ((c r).next pq) rfl rfl x x' hx hx').mp
    apply (cancel_mono (E.iso r (r + 1) pq rfl hr).hom).mp
    simpa only [Category.assoc] using h
  · intro h
    have h' := ((E.page r hr).liftCycles_comp_homologyπ_eq_iff_up_to_refinements
      ((c r).prev pq) pq ((c r).next pq) rfl rfl x x' hx hx').mpr h
    simpa only [Category.assoc] using
      congrArg (fun q => q ≫ (E.iso r (r + 1) pq rfl hr).hom) h'

/-- The class represented by a page differential is zero on the next page. -/
theorem pageClass_differential_eq_zero
    (E : CategoryTheory.SpectralSequence C c r₀)
    (r : ℤ) (hr : r₀ ≤ r) {pq pq' : κ} (hpq : (c r).Rel pq pq')
    {T : C} (x : T ⟶ (E.page r hr).X pq) :
    pageClass E r hr pq' (x ≫ (E.page r hr).d pq pq')
      (by simp only [Category.assoc, HomologicalComplex.d_comp_d, comp_zero]) = 0 := by
  apply (pageClass_eq_zero_iff_boundary_up_to_refinements E r hr pq'
    (x ≫ (E.page r hr).d pq pq') _).mpr
  refine ⟨T, 𝟙 T, inferInstance, x ≫ ((E.page r hr).xPrevIso hpq).inv, ?_⟩
  simp only [Category.id_comp, Category.assoc,
    HomologicalComplex.xPrevIso_comp_dTo]

/-- Page classes are natural with respect to Mathlib morphisms of spectral
sequences. -/
theorem pageClass_naturality
    {E E' : CategoryTheory.SpectralSequence C c r₀} (f : E ⟶ E')
    (r : ℤ) (hr : r₀ ≤ r) (pq : κ) {T : C}
    (x : T ⟶ (E.page r hr).X pq)
    (hx : x ≫ (E.page r hr).dFrom pq = 0) :
    pageClass E r hr pq x hx ≫ (f.hom (r + 1) (by omega)).f pq =
      pageClass E' r hr pq (x ≫ (f.hom r hr).f pq)
        (by rw [Category.assoc, HomologicalComplex.Hom.comm_from, ← Category.assoc, hx,
          zero_comp]) := by
  unfold pageClass
  simp only [Category.assoc]
  rw [← f.comm r (r + 1) pq rfl hr]
  calc
    _ = (E.page r hr).liftCycles x ((c r).next pq) rfl hx ≫
          ((E.page r hr).homologyπ pq ≫
            HomologicalComplex.homologyMap (f.hom r hr) pq) ≫
          (E'.iso r (r + 1) pq rfl hr).hom := by
        simp only [Category.assoc]
    _ = (E.page r hr).liftCycles x ((c r).next pq) rfl hx ≫
          (HomologicalComplex.cyclesMap (f.hom r hr) pq ≫
            (E'.page r hr).homologyπ pq) ≫
          (E'.iso r (r + 1) pq rfl hr).hom := by
        rw [HomologicalComplex.homologyπ_naturality]
    _ = ((E.page r hr).liftCycles x ((c r).next pq) rfl hx ≫
          HomologicalComplex.cyclesMap (f.hom r hr) pq) ≫
          (E'.page r hr).homologyπ pq ≫
          (E'.iso r (r + 1) pq rfl hr).hom := by
        simp only [Category.assoc]
    _ = (E'.page r hr).liftCycles (x ≫ (f.hom r hr).f pq)
          ((c r).next pq) rfl _ ≫
          (E'.page r hr).homologyπ pq ≫
          (E'.iso r (r + 1) pq rfl hr).hom := by
        rw [HomologicalComplex.liftCycles_comp_cyclesMap]

/-- The associated-graded differential has value `b` on a generalized
element `a` exactly when `a` and `b` admit filtration-level representatives
related by the original differential. Projectivity is the categorical
replacement for choosing a lift through the leading-term epimorphism. -/
theorem FilteredComplex.associatedGradedDifferential_iff_representative
    (FC : FilteredComplex C) (s k : ℤ) {T : C} [Projective T]
    (a : T ⟶ FC.filtration.associatedGraded s k)
    (b : T ⟶ FC.filtration.associatedGraded s (k - 1)) :
    a ≫ FC.associatedGradedDifferential s k = b ↔
      ∃ x : T ⟶ Subobject.underlying.obj (FC.filtration.F s k),
        x ≫ FC.filtration.toAssociatedGraded s k = a ∧
        ∃ dx : T ⟶ Subobject.underlying.obj (FC.filtration.F s (k - 1)),
          dx ≫ (FC.filtration.F s (k - 1)).arrow =
            x ≫ (FC.filtration.F s k).arrow ≫ FC.complex.d k (k - 1) ∧
          dx ≫ FC.filtration.toAssociatedGraded s (k - 1) = b := by
  constructor
  · intro hab
    haveI : Epi (FC.filtration.toAssociatedGraded s k) := by
      unfold Algebra.Filtration.toAssociatedGraded Algebra.Filtration.associatedGraded
      infer_instance
    let x := Projective.factorThru a (FC.filtration.toAssociatedGraded s k)
    have hx : x ≫ FC.filtration.toAssociatedGraded s k = a :=
      Projective.factorThru_comp _ _
    let dx := x ≫ (FC.differential_preserves s k).choose
    refine ⟨x, hx, dx, ?_, ?_⟩
    · rw [Category.assoc, (FC.differential_preserves s k).choose_spec]
    · calc
        dx ≫ FC.filtration.toAssociatedGraded s (k - 1) =
            x ≫ ((FC.differential_preserves s k).choose ≫
              FC.filtration.toAssociatedGraded s (k - 1)) := by
                simp only [dx, Category.assoc]
        _ = x ≫ (FC.filtration.toAssociatedGraded s k ≫
              FC.associatedGradedDifferential s k) := by
                rw [FC.toAssociatedGraded_comp_associatedGradedDifferential]
        _ = a ≫ FC.associatedGradedDifferential s k := by
                simpa only [Category.assoc] using
                  congrArg (fun q => q ≫ FC.associatedGradedDifferential s k) hx
        _ = b := hab
  · rintro ⟨x, hx, dx, hdx, hdxLead⟩
    have hdx_eq : dx = x ≫ (FC.differential_preserves s k).choose := by
      apply (cancel_mono (FC.filtration.F s (k - 1)).arrow).mp
      rw [hdx, Category.assoc, (FC.differential_preserves s k).choose_spec]
    calc
      a ≫ FC.associatedGradedDifferential s k =
          (x ≫ FC.filtration.toAssociatedGraded s k) ≫
            FC.associatedGradedDifferential s k := by rw [hx]
      _ = x ≫ ((FC.differential_preserves s k).choose ≫
          FC.filtration.toAssociatedGraded s (k - 1)) := by
            rw [Category.assoc,
              FC.toAssociatedGraded_comp_associatedGradedDifferential]
      _ = dx ≫ FC.filtration.toAssociatedGraded s (k - 1) := by
            simpa only [Category.assoc] using
              congrArg (fun q => q ≫ FC.filtration.toAssociatedGraded s (k - 1))
                hdx_eq.symm
      _ = b := hdxLead

/-- An associated-graded class is a cycle exactly when it has a
filtration-level representative whose differential lifts to the next
filtration level. -/
theorem FilteredComplex.associatedGradedDifferential_eq_zero_iff_representative
    (FC : FilteredComplex C) (s k : ℤ) {T : C} [Projective T]
    (a : T ⟶ FC.filtration.associatedGraded s k) :
    a ≫ FC.associatedGradedDifferential s k = 0 ↔
      ∃ x : T ⟶ Subobject.underlying.obj (FC.filtration.F s k),
        x ≫ FC.filtration.toAssociatedGraded s k = a ∧
        ∃ dx : T ⟶ Subobject.underlying.obj (FC.filtration.F (s + 1) (k - 1)),
          dx ≫ (FC.filtration.F (s + 1) (k - 1)).arrow =
            x ≫ (FC.filtration.F s k).arrow ≫ FC.complex.d k (k - 1) := by
  constructor
  · intro ha
    obtain ⟨x, hx, dx, hdx, hdxLead⟩ :=
      (FC.associatedGradedDifferential_iff_representative s k a 0).mp ha
    obtain ⟨dx', hdx'⟩ :=
      (FC.filtration.comp_toAssociatedGraded_eq_zero_iff_lifts s (k - 1) dx).mp hdxLead
    refine ⟨x, hx, dx', ?_⟩
    calc
      dx' ≫ (FC.filtration.F (s + 1) (k - 1)).arrow =
          (dx' ≫ Subobject.ofLE (FC.filtration.F (s + 1) (k - 1))
            (FC.filtration.F s (k - 1)) (FC.filtration.decreasing s (k - 1))) ≫
            (FC.filtration.F s (k - 1)).arrow := by
              rw [Category.assoc, Subobject.ofLE_arrow]
      _ = dx ≫ (FC.filtration.F s (k - 1)).arrow := by rw [hdx']
      _ = x ≫ (FC.filtration.F s k).arrow ≫ FC.complex.d k (k - 1) := hdx
  · rintro ⟨x, hx, dx, hdx⟩
    apply (FC.associatedGradedDifferential_iff_representative s k a 0).mpr
    let inclusion := Subobject.ofLE (FC.filtration.F (s + 1) (k - 1))
      (FC.filtration.F s (k - 1)) (FC.filtration.decreasing s (k - 1))
    refine ⟨x, hx, dx ≫ inclusion, ?_, ?_⟩
    · rw [Category.assoc, Subobject.ofLE_arrow, hdx]
    · have hinclusion :
          inclusion ≫ FC.filtration.toAssociatedGraded s (k - 1) = 0 := by
        dsimp only [inclusion, Algebra.Filtration.toAssociatedGraded]
        exact cokernel.condition _
      rw [Category.assoc, hinclusion, comp_zero]

/-- A filtered chain map carries a representative of a differential from any
source filtration level to any target filtration level. Specializing
`targetLevel = sourceLevel + r` gives the cycle lift; specializing
`sourceLevel = targetLevel - r + 1` gives the boundary lift. -/
theorem FilteredComplex.Morphism.differentialRepresentative_naturality
    {FC GD : FilteredComplex C} (f : FC ⟶ GD)
    (sourceLevel targetLevel k : ℤ) {T : C}
    (x : T ⟶ Subobject.underlying.obj (FC.filtration.F sourceLevel k))
    (dx : T ⟶ Subobject.underlying.obj
      (FC.filtration.F targetLevel (k - 1)))
    (hdx : dx ≫ (FC.filtration.F targetLevel (k - 1)).arrow =
      x ≫ (FC.filtration.F sourceLevel k).arrow ≫ FC.complex.d k (k - 1)) :
    (dx ≫ (f.preserves targetLevel (k - 1)).choose) ≫
        (GD.filtration.F targetLevel (k - 1)).arrow =
      (x ≫ (f.preserves sourceLevel k).choose) ≫
        (GD.filtration.F sourceLevel k).arrow ≫ GD.complex.d k (k - 1) := by
  calc
    (dx ≫ (f.preserves targetLevel (k - 1)).choose) ≫
          (GD.filtration.F targetLevel (k - 1)).arrow =
        dx ≫ ((f.preserves targetLevel (k - 1)).choose ≫
          (GD.filtration.F targetLevel (k - 1)).arrow) := by
      simp only [Category.assoc]
    _ = dx ≫ (FC.filtration.F targetLevel (k - 1)).arrow ≫
        f.map.f (k - 1) := by
      rw [(f.preserves targetLevel (k - 1)).choose_spec]
    _ = x ≫ (FC.filtration.F sourceLevel k).arrow ≫
        FC.complex.d k (k - 1) ≫ f.map.f (k - 1) := by
      simpa only [Category.assoc] using
        congrArg (fun q => q ≫ f.map.f (k - 1)) hdx
    _ = x ≫ (FC.filtration.F sourceLevel k).arrow ≫
        (f.map.f k ≫ GD.complex.d k (k - 1)) := by
      simpa only [Category.assoc] using
        congrArg (fun q => x ≫ (FC.filtration.F sourceLevel k).arrow ≫ q)
          (f.map.comm k (k - 1)).symm
    _ = x ≫ ((f.preserves sourceLevel k).choose ≫
        (GD.filtration.F sourceLevel k).arrow) ≫
          GD.complex.d k (k - 1) := by
      simpa only [Category.assoc] using
        congrArg (fun q => x ≫ q ≫ GD.complex.d k (k - 1))
          (f.preserves sourceLevel k).choose_spec.symm
    _ = (x ≫ (f.preserves sourceLevel k).choose) ≫
        (GD.filtration.F sourceLevel k).arrow ≫
          GD.complex.d k (k - 1) := by simp only [Category.assoc]

end KIP126.Core.SpectralSequence
