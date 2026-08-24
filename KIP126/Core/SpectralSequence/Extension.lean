import KIP126.Core.SpectralSequence.Convergence

/-!
# Bounded extension spectral sequences

This module records finite truncation transitions and the bounded two-term
filtered-complex data used by an extension spectral sequence.  The endpoint,
boundedness, and two-term hypotheses are explicit fields; the `d₀` map is the
associated-graded differential of that filtered complex.
-/

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
