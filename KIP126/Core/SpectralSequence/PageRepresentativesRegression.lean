import KIP126.Core.SpectralSequence.PageRepresentatives

/-!
# Regression checks for page representatives

These examples keep the representative bridge connected to Mathlib's page
and morphism APIs and to the filtered associated-graded functor.
-/

namespace KIP126.Core.SpectralSequence

open CategoryTheory CategoryTheory.Limits

noncomputable section

universe u v w

variable {C : Type u} [Category.{v} C] [Abelian C]
variable {κ : Type w} {c : ℤ → ComplexShape κ} {r₀ : ℤ}

section FilteredRepresentatives

variable (FC : FilteredComplex C) (s k : ℤ) {T : C} [Projective T]

example (a : T ⟶ FC.filtration.associatedGraded s k)
    (b : T ⟶ FC.filtration.associatedGraded s (k - 1)) :
    a ≫ FC.associatedGradedDifferential s k = b ↔
      ∃ x : T ⟶ Subobject.underlying.obj (FC.filtration.F s k),
        x ≫ FC.filtration.toAssociatedGraded s k = a ∧
        ∃ dx : T ⟶ Subobject.underlying.obj (FC.filtration.F s (k - 1)),
          dx ≫ (FC.filtration.F s (k - 1)).arrow =
            x ≫ (FC.filtration.F s k).arrow ≫ FC.complex.d k (k - 1) ∧
          dx ≫ FC.filtration.toAssociatedGraded s (k - 1) = b :=
  FC.associatedGradedDifferential_iff_representative s k a b

example (a : T ⟶ FC.filtration.associatedGraded s k) :
    a ≫ FC.associatedGradedDifferential s k = 0 ↔
      ∃ x : T ⟶ Subobject.underlying.obj (FC.filtration.F s k),
        x ≫ FC.filtration.toAssociatedGraded s k = a ∧
        ∃ dx : T ⟶ Subobject.underlying.obj (FC.filtration.F (s + 1) (k - 1)),
          dx ≫ (FC.filtration.F (s + 1) (k - 1)).arrow =
            x ≫ (FC.filtration.F s k).arrow ≫ FC.complex.d k (k - 1) :=
  FC.associatedGradedDifferential_eq_zero_iff_representative s k a

end FilteredRepresentatives

example (E : CategoryTheory.SpectralSequence C c r₀)
    (r : ℤ) (hr : r₀ ≤ r) (pq : κ) {T : C}
    (x : T ⟶ (E.page r hr).X pq)
    (hx : x ≫ (E.page r hr).dFrom pq = 0) :
    T ⟶ (E.page (r + 1) (by omega)).X pq :=
  pageClass E r hr pq x hx

example {E E' : CategoryTheory.SpectralSequence C c r₀} (f : E ⟶ E')
    (r : ℤ) (hr : r₀ ≤ r) (pq : κ) {T : C}
    (x : T ⟶ (E.page r hr).X pq)
    (hx : x ≫ (E.page r hr).dFrom pq = 0) :
    pageClass E r hr pq x hx ≫ (f.hom (r + 1) (by omega)).f pq =
      pageClass E' r hr pq (x ≫ (f.hom r hr).f pq)
        (by rw [Category.assoc, HomologicalComplex.Hom.comm_from, ← Category.assoc, hx,
          zero_comp]) :=
  pageClass_naturality f r hr pq x hx

example (E : CategoryTheory.SpectralSequence C c r₀)
    (r : ℤ) (hr : r₀ ≤ r) {pq pq' : κ} (hpq : (c r).Rel pq pq')
    {T : C} (x : T ⟶ (E.page r hr).X pq) :
    pageClass E r hr pq' (x ≫ (E.page r hr).d pq pq')
      (by simp only [Category.assoc, HomologicalComplex.d_comp_d, comp_zero]) = 0 :=
  pageClass_differential_eq_zero E r hr hpq x

example {FC GD : FilteredComplex C} (f : FC ⟶ GD)
    (s k : ℤ) (page : ℕ) {T : C}
    (x : T ⟶ Subobject.underlying.obj (FC.filtration.F s k))
    (dx : T ⟶ Subobject.underlying.obj
      (FC.filtration.F (s + page) (k - 1)))
    (hdx : dx ≫ (FC.filtration.F (s + page) (k - 1)).arrow =
      x ≫ (FC.filtration.F s k).arrow ≫ FC.complex.d k (k - 1)) :
    (dx ≫ (f.preserves (s + page) (k - 1)).choose) ≫
        (GD.filtration.F (s + page) (k - 1)).arrow =
      (x ≫ (f.preserves s k).choose) ≫
        (GD.filtration.F s k).arrow ≫ GD.complex.d k (k - 1) :=
  f.differentialRepresentative_naturality s (s + page) k x dx hdx

example {FC GD : FilteredComplex C} (f : FC ⟶ GD)
    (s k : ℤ) (page : ℕ) {T : C}
    (y : T ⟶ Subobject.underlying.obj
      (FC.filtration.F (s - page + 1) k))
    (dy : T ⟶ Subobject.underlying.obj (FC.filtration.F s (k - 1)))
    (hdy : dy ≫ (FC.filtration.F s (k - 1)).arrow =
      y ≫ (FC.filtration.F (s - page + 1) k).arrow ≫
        FC.complex.d k (k - 1)) :
    (dy ≫ (f.preserves s (k - 1)).choose) ≫
        (GD.filtration.F s (k - 1)).arrow =
      (y ≫ (f.preserves (s - page + 1) k).choose) ≫
        (GD.filtration.F (s - page + 1) k).arrow ≫
          GD.complex.d k (k - 1) :=
  f.differentialRepresentative_naturality (s - page + 1) s k y dy hdy

example {FC GD : FilteredComplex C} (f : FC ⟶ GD) (s k : ℤ) :
    FC.filtration.toAssociatedGraded s k ≫ f.associatedGradedMap s k =
      (f.preserves s k).choose ≫ GD.filtration.toAssociatedGraded s k :=
  Algebra.FilteredMorphism.toAssociatedGraded_comp_associatedGradedMap
    f.toFilteredMorphism s k

end

end KIP126.Core.SpectralSequence
