import FilteredTwoTermNaturality.Laws
import FilteredMapExtension.Examples

namespace FilteredTwoTermNaturality.Examples
open FilteredRepresentativeCrossing FilteredMapExtension FilteredMapGradedComparison
open FilteredTwoTermSequence
open FilteredMapExtension.Examples

def negativeSquare : Square firstFiltered firstFiltered where
  source := ⟨-AddMonoidHom.id _,fun s _ hx => (F.group s).neg_mem hx⟩
  target := ⟨-AddMonoidHom.id _,fun s _ hx => (G.group s).neg_mem hx⟩
  commutes x := (map_neg first x).symm

def x : Page F G firstFiltered 1 0 := (sourceClass F G firstFiltered 0 1 firstX,0)

theorem nonzero_differential : pageD F G firstFiltered 1 0 x ≠ 0 := by
  intro hz
  have targetZero : targetD F G firstFiltered 0 1 x.1 = 0 := congrArg Prod.snd hz
  exact first_nonzero ((targetD_zero_iff F G firstFiltered 0 1 x.1).mp targetZero)

theorem negative_source (s n : Nat) (a : SourcePage F G firstFiltered s n) :
    sourceMap negativeSquare s n a = -a := by
  obtain ⟨v,rfl⟩ := QuotientAddGroup.mk'_surjective (sourceRelations F G firstFiltered s n) a
  exact map_neg (sourceClass F G firstFiltered s n) v

theorem negative_target (t n : Nat) (a : AllTargetPage F G firstFiltered t n) :
    targetMap negativeSquare t n a = -a := by
  obtain ⟨v,rfl⟩ := QuotientAddGroup.mk'_surjective (allTargetSubgroup F G firstFiltered t n) a
  exact map_neg (QuotientAddGroup.mk' (allTargetSubgroup F G firstFiltered t n)) v

theorem negative_page (n t : Nat) (a : Page F G firstFiltered n t) :
    pageMap negativeSquare n t a = -a :=
  Prod.ext (negative_source t n a.1) (negative_target t n a.2)

theorem nonzero_naturality :
    pageD F G firstFiltered 1 0 (pageMap negativeSquare 1 0 x) =
      pageMap negativeSquare 1 1 (pageD F G firstFiltered 1 0 x) ∧
    pageD F G firstFiltered 1 0 (pageMap negativeSquare 1 0 x) ≠ 0 := by
  refine ⟨(pageD_natural negativeSquare 1 0 x).symm,?_⟩
  rw [negative_page,map_neg]
  exact neg_ne_zero.mpr nonzero_differential

example : pageMap (identity firstFiltered) 1 0 x = x := pageMap_identity _ _ _
example : pageMap (zeroSquare firstFiltered sumFiltered) 1 0 x = 0 := pageMap_zero _ _ _

#print axioms nonzero_differential
#print axioms negative_page
#print axioms nonzero_naturality
end FilteredTwoTermNaturality.Examples
