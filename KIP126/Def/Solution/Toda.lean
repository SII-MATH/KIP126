import KIP126.Challenge1
import KIP126.Def.StableHomotopy.Toda.Coset.Proofs
import KIP126.Def.StableHomotopy.Toda.Juggling.Proofs

namespace KIP126.Def.Solution

open CategoryTheory CategoryTheory.Limits CategoryTheory.Pretriangulated

universe u v

/-- The generic Toda laws, with the additional triangulated hypothesis visible. -/
theorem todaInterface (C : Type u) [Category.{v} C] [Preadditive C]
    [HasZeroObject C] [HasShift C ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor C n)] [Pretriangulated C]
    [IsTriangulated C] : KIP126.Challenge1.TodaInterface C where
  composable := KIP126.StableHomotopy.Toda.composable
  exists_relation := KIP126.StableHomotopy.Toda.exists_relation
  coset := KIP126.StableHomotopy.Toda.relation_iff_indeterminacy
  juggling := KIP126.StableHomotopy.Toda.juggling

end KIP126.Def.Solution
