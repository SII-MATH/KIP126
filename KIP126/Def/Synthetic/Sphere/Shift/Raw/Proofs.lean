import KIP126.Def.Synthetic.Sphere.Shift.Raw.Data
import Mathlib.CategoryTheory.Preadditive.AdditiveFunctor

/-!
Additivity is a consequence of the existing synthetic background, not a new
model assumption. The composition and zero comparisons make the shift by
`-p` an inverse equivalence to the shift by `p`. A pretriangulated category
has binary biproducts, and equivalences preserve them and zero morphisms;
hence these existing bigraded shift functors are additive.
-/

namespace KIP126.Synthetic.Context

open CategoryTheory

universe u v

variable {Syn : Type u} [SyntheticCategory.{u, v} Syn]

/-- The existing bigraded shift preserves addition. -/
theorem biShift_additive (p : ℤ × ℤ) :
    (SyntheticCategory.biShift (Syn := Syn) p).Additive := by
  sorry

attribute [instance] biShift_additive

/-- Additivity of the already defined suspension-invariance function. -/
theorem susp_invariance_add (m n k l : ℤ) (X : Syn)
    (f g : BiHom m n X) :
    susp_invariance m n k l X (f + g) =
      susp_invariance m n k l X f + susp_invariance m n k l X g := by
  sorry

/-- The specified inverse reindexing map is additive. -/
theorem biSuspensionHomEquivRaw_add (n w q : ℤ) (Q : Syn)
    (f g : BiHom n w (((SyntheticCategory.biShift (0, -q)).obj Q)⟦(1 : ℤ)⟧)) :
    biSuspensionHomEquivRaw n w q Q (f + g) =
      biSuspensionHomEquivRaw n w q Q f + biSuspensionHomEquivRaw n w q Q g := by
  sorry

end KIP126.Synthetic.Context
