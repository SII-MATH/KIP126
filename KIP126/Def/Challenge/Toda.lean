import KIP126.Challenge1

namespace KIP126.Def.Challenge

open CategoryTheory CategoryTheory.Limits CategoryTheory.Pretriangulated

universe u v

/-- The generic Toda laws, with the additional triangulated hypothesis visible. -/
theorem todaInterface (C : Type u) [Category.{v} C] [Preadditive C]
    [HasZeroObject C] [HasShift C ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor C n)] [Pretriangulated C]
    [IsTriangulated C] : KIP126.Challenge1.TodaInterface C := by
  sorry

end KIP126.Def.Challenge
