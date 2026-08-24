import KIP126.Core.SpectralSequence.Convergence

/-!
# Bounded extension spectral sequences

This module records finite truncation transitions and the two-term associated
graded map used by a bounded extension.  The endpoint and convergence data
remain explicit through the Core API.
-/

namespace KIP126.Core.Algebra.Filtration

open CategoryTheory CategoryTheory.Limits

universe u v w

variable {C : Type u} [Category.{v} C] [Abelian C]
variable {ι : Type w} {A : CategoryTheory.GradedObject ι C}

/-- The truncation quotient at the cut `s₀`. -/
noncomputable def truncatedObj (F : Filtration A) (s₀ : ℤ) (i : ι) : C :=
  F.quotientAt (s₀ + 1) i

/-- The projection to the truncation quotient. -/
noncomputable def truncationProj (F : Filtration A) (s₀ : ℤ) (i : ι) :
    A i ⟶ F.truncatedObj s₀ i := F.quotientProjection (s₀ + 1) i

/-- The transition between truncation quotients. -/
noncomputable def truncationTransition (F : Filtration A)
    {s₀ s₁ : ℤ} (h : s₀ ≤ s₁) (i : ι) :
    F.truncatedObj s₁ i ⟶ F.truncatedObj s₀ i :=
  F.quotientTransition (show s₀ + 1 ≤ s₁ + 1 by omega) i

theorem truncationProj_transition (F : Filtration A)
    {s₀ s₁ : ℤ} (h : s₀ ≤ s₁) (i : ι) :
    F.truncationProj s₁ i ≫ F.truncationTransition h i = F.truncationProj s₀ i := by
  exact F.quotientProjection_transition (show s₀ + 1 ≤ s₁ + 1 by omega) i

theorem truncationTransition_comp (F : Filtration A)
    {s₀ s₁ s₂ : ℤ} (h₀₁ : s₀ ≤ s₁) (h₁₂ : s₁ ≤ s₂) (i : ι) :
    F.truncationTransition h₁₂ i ≫ F.truncationTransition h₀₁ i =
      F.truncationTransition (h₀₁.trans h₁₂) i := by
  exact F.quotientTransition_comp (show s₀ + 1 ≤ s₁ + 1 by omega)
    (show s₁ + 1 ≤ s₂ + 1 by omega) i

end KIP126.Core.Algebra.Filtration

namespace KIP126.Core.SpectralSequence.BoundedExtension

open CategoryTheory CategoryTheory.Limits
open KIP126.Core.Algebra

universe u v

variable {C : Type u} [Category.{v} C] [Abelian C]
variable {X₁ X₂ : C}

/-- Data for a bounded extension at one graded stem. -/
structure TwoTermData where
  source : Filtration (fun _ : ℤ => X₁)
  target : Filtration (fun _ : ℤ => X₂)
  map : X₁ ⟶ X₂
  preserves : ∀ (s i : ℤ), ∃ φ : Subobject.underlying.obj (source.F s i) ⟶
    Subobject.underlying.obj (target.F s i), φ ≫ (target.F s i).arrow =
      (source.F s i).arrow ≫ map

/-- The filtration-preserving graded morphism underlying `TwoTermData`. -/
noncomputable def filteredMap (D : TwoTermData (C := C) (X₁ := X₁) (X₂ := X₂)) :
    FilteredMorphism D.source D.target where
  map := fun _ => D.map
  preserves := D.preserves

/-- The source `E₀` object of a bounded extension. -/
noncomputable def e0Source (D : TwoTermData (C := C) (X₁ := X₁) (X₂ := X₂)) (s : ℤ) : C :=
  D.source.associatedGraded s 0

/-- The target `E₀` object of a bounded extension. -/
noncomputable def e0Target (D : TwoTermData (C := C) (X₁ := X₁) (X₂ := X₂)) (s : ℤ) : C :=
  D.target.associatedGraded s 0

/-- The `d₀` map induced on associated graded pieces by the filtered map. -/
noncomputable def d0 (D : TwoTermData (C := C) (X₁ := X₁) (X₂ := X₂)) (s : ℤ) :
    e0Source D s ⟶ e0Target D s :=
  filteredMap D |>.associatedGradedMap s 0

@[simp] theorem d0_projection (D : TwoTermData (C := C) (X₁ := X₁) (X₂ := X₂)) (s : ℤ) :
    D.source.toAssociatedGraded s 0 ≫ d0 D s =
      ((filteredMap D).preserves s 0).choose ≫ D.target.toAssociatedGraded s 0 := by
  exact FilteredMorphism.toAssociatedGraded_comp_associatedGradedMap (filteredMap D) s 0

end KIP126.Core.SpectralSequence.BoundedExtension
