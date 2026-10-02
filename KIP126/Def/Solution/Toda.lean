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


/-- a13: all naturality, suspension and shuffle statements for the same relation. -/
theorem todaNaturalityInterface (C : Type u) [Category.{v} C] [Preadditive C]
    [HasZeroObject C] [HasShift C ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor C n)] [Pretriangulated C] :
    KIP126.Challenge1.TodaNaturalityInterface C := by
  sorry

universe u' v'

/-- a13: transport under the specified exact functor. -/
theorem todaFunctorInterface {C : Type u} [Category.{v} C] [Preadditive C]
    [HasZeroObject C] [HasShift C ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor C n)] [Pretriangulated C]
    {D : Type u'} [Category.{v'} D] [Preadditive D]
    [HasZeroObject D] [HasShift D ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor D n)] [Pretriangulated D]
    (F : C ⥤ D) [F.CommShift ℤ] [F.IsTriangulated] :
    KIP126.Challenge1.TodaFunctorInterface F := by
  sorry

/-- a13: both actual tensor-functor product containments. -/
theorem todaTensorInterface (C : Type u) [Category.{v} C] [Preadditive C]
    [HasZeroObject C] [HasShift C ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor C n)] [Pretriangulated C] [MonoidalCategory C] :
    KIP126.Challenge1.TodaTensorInterface C := by
  sorry

end KIP126.Def.Solution
