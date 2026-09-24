import KIP126.Def.SpectralSequence.FilteredComplex.SSDataConstruction.Proofs
import KIP126.Def.SpectralSequence.FilteredPage.AssemblyProofs

/-!
# Finite-page comparison for the two filtered-complex constructions

The nested-subobject `PreSS` and the Mathlib spectral sequence are both built
from the same canonical quotient pages of a filtered complex. These facts
make that shared finite-page object and differential explicit. They do not
claim an adapter for an arbitrary `PreSS`, or a limiting-page comparison.
-/

namespace KIP126.Core.SpectralSequence.FilteredComplex

open CategoryTheory

universe u v

variable {C : Type u} [Category.{v} C] [Abelian C]

/-- The historical construction and the Mathlib construction use the same
finite quotient page at each bidegree. -/
theorem toPreSS_page_eq_canonicalPage (FC : FilteredComplex C)
    (bnd : FC.IsBounded) (s k : ℤ) (n : ℕ) :
    ((FC.toPreSS bnd).ssData (s, k)).page (n : WithTop ℕ) =
      ((FC.canonicalPageSpectralSequence).page (n : ℤ)
        (Int.natCast_nonneg n)).X (s, k) := by
  rfl

/-- On those common pages, the old `PreSS` differential is the Mathlib
spectral-sequence page differential. -/
theorem toPreSS_d_eq_canonicalPage_d (FC : FilteredComplex C)
    (bnd : FC.IsBounded) (s k : ℤ) (n : ℕ) :
    (FC.toPreSS bnd).d (n : ℤ) (s, k) =
      ((FC.canonicalPageSpectralSequence).page (n : ℤ)
        (Int.natCast_nonneg n)).d (s, k) (s + (n : ℤ), k - 1) := by
  rw [FC.toPreSS_d_nat]
  change FC.pageDifferential s k n =
    FC.pageDifferentialHom n (s, k) (s + (n : ℤ), k - 1)
  have hrel : (pageShape n).Rel (s, k) (s + (n : ℤ), k - 1) := by
    change (s, k) + ((n : ℤ), -1) = (s + (n : ℤ), k - 1)
    simp [Int.sub_eq_add_neg]
  rw [FC.pageDifferentialHom_of_rel n (s, k) (s + (n : ℤ), k - 1) hrel]
  simp

end KIP126.Core.SpectralSequence.FilteredComplex
