import KIP126.Def.SpectralSequence.PageComparison.Raw.Data

/-! Commuting squares for the actual centered page comparisons. -/

namespace KIP126.Core.SpectralSequence.PagewiseIso

open CategoryTheory

universe u v w

variable {C : Type u} [Category.{v} C] [Abelian C]
  {ι : Type w} [AddCommGroup ι] [DecidableEq ι]
  {E F : KIP126.Core.SpectralSequence C ι} (Q : PagewiseIso E F)

/-- The left square is the specified differential square after transporting
the left and middle indices by the common differential degree. -/
theorem left_middle_comm (r : ℤ) (hr : E.r₀ ≤ r) (k : ι) :
    (Q.leftIso r hr k).hom ≫ (F.pageShortComplex r (k - F.diffDeg r)).f =
      (E.pageShortComplex r (k - E.diffDeg r)).f ≫ (Q.middleIso r hr k).hom := by
  sorry

/-- The right square is the same differential compatibility at the middle
index, with the specified degree transports. -/
theorem middle_right_comm (r : ℤ) (hr : E.r₀ ≤ r) (k : ι) :
    (Q.middleIso r hr k).hom ≫ (F.pageShortComplex r (k - F.diffDeg r)).g =
      (E.pageShortComplex r (k - E.diffDeg r)).g ≫ (Q.rightIso r hr k).hom := by
  sorry

end KIP126.Core.SpectralSequence.PagewiseIso
