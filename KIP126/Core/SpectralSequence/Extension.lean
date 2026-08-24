import KIP126.Core.SpectralSequence.Convergence

/-!
# Bounded extension spectral sequences

This module records finite truncation transitions and the bounded two-term
filtered-complex data used by an extension spectral sequence.  The endpoint,
boundedness, and two-term hypotheses are explicit fields; the `d₀` map is the
associated-graded differential of that filtered complex.
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

/-- Data for a bounded two-term extension at one graded stem.

The complex, its degreewise boundedness, and its endpoint extension are all
inputs.  The `twoTerm` field rules out additional nonzero chain degrees, while
`differential_at_one` identifies the remaining differential with the specified
extension map. -/
structure TwoTermData where
  complex : FilteredComplex C
  bounded : Filtration.IsBounded complex.filtration
  endpoint : EndpointExtension complex
  boundary : endpoint.BoundaryWitness
  source : C
  target : C
  map : source ⟶ target
  sourceIso : complex.complex.X 1 ≅ source
  targetIso : complex.complex.X 0 ≅ target
  differential_at_one : sourceIso.inv ≫ complex.complex.d 1 0 ≫ targetIso.hom = map
  twoTerm : ∀ k : ℤ, k ≠ 1 → k ≠ 0 → IsZero (complex.complex.X k)

/-- The source `E₀` object of a bounded extension. -/
noncomputable def e0Source (D : TwoTermData (C := C)) (s : ℤ) : C :=
  D.complex.filtration.associatedGraded s 1

/-- The target `E₀` object of a bounded extension. -/
noncomputable def e0Target (D : TwoTermData (C := C)) (s : ℤ) : C :=
  D.complex.filtration.associatedGraded s (1 - 1)

/-- The `d₀` map induced by the differential of the bounded two-term complex. -/
noncomputable def d0 (D : TwoTermData (C := C)) (s : ℤ) :
    e0Source D s ⟶ e0Target D s :=
  D.complex.associatedGradedDifferential s 1

@[simp] theorem d0_projection (D : TwoTermData (C := C)) (s : ℤ) :
    D.complex.filtration.toAssociatedGraded s 1 ≫ d0 D s =
      (D.complex.differential_preserves s 1).choose ≫
        D.complex.filtration.toAssociatedGraded s (1 - 1) := by
  exact D.complex.toAssociatedGraded_comp_associatedGradedDifferential s 1

end KIP126.Core.SpectralSequence.BoundedExtension
