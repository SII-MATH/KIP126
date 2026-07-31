import KIP126.Core.Algebra.Filtered
import Mathlib.Algebra.Homology.HomologicalComplex

/-!
# Filtered chain complexes

A filtered chain complex is a Mathlib `ChainComplex` equipped with a decreasing
filtration preserved by the differential.  Unlike the historical KIP core, this
file does not define a second spectral-sequence record or a nested `Z/B`
presentation.  It supplies the associated graded differential needed by a
future construction through Mathlib's spectral-object machinery.
-/

namespace KIP126.Core.SpectralSequence

open CategoryTheory CategoryTheory.Limits

universe u v

variable {C : Type u} [Category.{v} C] [Abelian C]

/-- A chain complex together with a decreasing filtration preserved by its
differential. -/
structure FilteredComplex (C : Type u) [Category.{v} C] [Abelian C] where
  /-- The underlying Mathlib chain complex. -/
  complex : ChainComplex C ℤ
  /-- A decreasing filtration of the underlying graded object. -/
  filtration : Algebra.Filtration complex.X
  /-- The differential maps every filtration level into the same level in the
next chain degree. -/
  differential_preserves : ∀ (s k : ℤ),
    ∃ φ : Subobject.underlying.obj (filtration.F s k) ⟶
        Subobject.underlying.obj (filtration.F s (k - 1)),
      φ ≫ (filtration.F s (k - 1)).arrow =
        (filtration.F s k).arrow ≫ complex.d k (k - 1)

namespace FilteredComplex

/-- The differential induced on a fixed associated graded piece. -/
noncomputable def associatedGradedDifferential (FC : FilteredComplex C)
    (s k : ℤ) :
    FC.filtration.associatedGraded s k ⟶
      FC.filtration.associatedGraded s (k - 1) := by
  unfold Algebra.Filtration.associatedGraded
  exact cokernel.desc _
    ((FC.differential_preserves s k).choose ≫
      cokernel.π (Subobject.ofLE (FC.filtration.F (s + 1) (k - 1))
        (FC.filtration.F s (k - 1)) (FC.filtration.decreasing s (k - 1))))
    (by
      have factor :
          Subobject.ofLE (FC.filtration.F (s + 1) k) (FC.filtration.F s k)
              (FC.filtration.decreasing s k) ≫
            (FC.differential_preserves s k).choose =
          (FC.differential_preserves (s + 1) k).choose ≫
            Subobject.ofLE (FC.filtration.F (s + 1) (k - 1))
              (FC.filtration.F s (k - 1)) (FC.filtration.decreasing s (k - 1)) := by
        have mono_arrow : Mono (FC.filtration.F s (k - 1)).arrow := inferInstance
        have lhs_eq :
            (Subobject.ofLE (FC.filtration.F (s + 1) k) (FC.filtration.F s k)
                (FC.filtration.decreasing s k) ≫
              (FC.differential_preserves s k).choose) ≫
                (FC.filtration.F s (k - 1)).arrow =
              (FC.filtration.F (s + 1) k).arrow ≫ FC.complex.d k (k - 1) := by
          rw [Category.assoc, (FC.differential_preserves s k).choose_spec,
            ← Category.assoc, Subobject.ofLE_arrow]
        have rhs_eq :
            ((FC.differential_preserves (s + 1) k).choose ≫
              Subobject.ofLE (FC.filtration.F (s + 1) (k - 1))
                (FC.filtration.F s (k - 1)) (FC.filtration.decreasing s (k - 1))) ≫
                (FC.filtration.F s (k - 1)).arrow =
              (FC.filtration.F (s + 1) k).arrow ≫ FC.complex.d k (k - 1) := by
          rw [Category.assoc, Subobject.ofLE_arrow,
            (FC.differential_preserves (s + 1) k).choose_spec]
        exact mono_arrow.right_cancellation _ _ (lhs_eq.trans rhs_eq.symm)
      rw [← Category.assoc, factor, Category.assoc, cokernel.condition, comp_zero])

/-- The associated graded differential squares to zero. -/
theorem associatedGradedDifferential_sq (FC : FilteredComplex C)
    (s k : ℤ) :
    FC.associatedGradedDifferential s k ≫
      FC.associatedGradedDifferential s (k - 1) = 0 := by
  unfold associatedGradedDifferential Algebra.Filtration.associatedGraded
  apply (cancel_epi (cokernel.π (Subobject.ofLE
    (FC.filtration.F (s + 1) k) (FC.filtration.F s k)
    (FC.filtration.decreasing s k)))).mp
  simp only [comp_zero, id_eq]
  rw [← Category.assoc, cokernel.π_desc, Category.assoc, cokernel.π_desc]
  suffices h : (FC.differential_preserves s k).choose ≫
      (FC.differential_preserves s (k - 1)).choose = 0 by
    rw [← Category.assoc, h, zero_comp]
  have mono_arrow : Mono (FC.filtration.F s (k - 1 - 1)).arrow := inferInstance
  apply mono_arrow.right_cancellation
  rw [zero_comp, Category.assoc,
    (FC.differential_preserves s (k - 1)).choose_spec,
    ← Category.assoc, (FC.differential_preserves s k).choose_spec,
    Category.assoc, FC.complex.d_comp_d, comp_zero]

end FilteredComplex

end KIP126.Core.SpectralSequence
