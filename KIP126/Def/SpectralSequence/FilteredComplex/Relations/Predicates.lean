import KIP126.Def.SpectralSequence.FilteredComplex.Relations.Data

/-! Predicates for filtered-complex/page relations. -/

namespace KIP126.Core.SpectralSequence.FilteredComplex

open CategoryTheory

universe u v

variable {C : Type u} [Category.{v} C] [Abelian C]

/-- A strict filtered-lift relation between associated-graded representatives.
Unlike a relation between elements of a quotient page, its target is not
necessarily unique: changing a filtered lift can change the target by a
boundary. The comparison with the historical quotient-coset relation remains
to be proved; this definition does not assume that equivalence. -/
def RepresentativeRelation (FC : FilteredComplex C)
    (r : ℤ) (hr : 0 ≤ r) (s k : ℤ) {T : C}
    (x : T ⟶ FC.filtration.associatedGraded s k)
    (y : T ⟶ FC.filtration.associatedGraded (s + r) (k - 1)) : Prop :=
  ∃ (xl : T ⟶ Subobject.underlying.obj (FC.filtration.F s k))
    (yl : T ⟶ Subobject.underlying.obj (FC.filtration.F (s + r) (k - 1))),
    xl ≫ FC.filtration.toAssociatedGraded s k = x ∧
    yl ≫ FC.filtration.toAssociatedGraded (s + r) (k - 1) = y ∧
    xl ≫ PageView.filDiff (FC := FC) s k =
      yl ≫ PageView.drop (FC := FC) r s k hr

namespace PageView

variable {FC : FilteredComplex C} (P : PageView FC)

/-- A filtered lift whose associated-graded image represents a page element. -/
def IsLift (r : ℤ) (hr : P.firstPage ≤ r) (s k : ℤ)
    {T : C}
    (xl : T ⟶ Subobject.underlying.obj (FC.filtration.F s k))
    (x : P.element r hr s k T) : Prop :=
  ∃ z : T ⟶ Subobject.underlying.obj
      (FC.cycleSubobject s k (P.pageNumber r hr)),
    z ≫ (FC.cycleSubobject s k (P.pageNumber r hr)).arrow =
      xl ≫ FC.filtration.toAssociatedGraded s k ∧
    z ≫ FC.pageπ s k (P.pageNumber r hr) =
      x ≫ (P.pageToPage r hr s k).hom

/-- A page element relation induced by the page differential. -/
def relation (r : ℤ) (hr : P.firstPage ≤ r) (s k : ℤ)
    {T : C} (x : P.element r hr s k T)
    (y : P.element r hr (s + r) (k - 1) T) : Prop :=
  MathlibModel.DifferentialRelation P.sequence r hr (s, k) (target r s k) x y

/-- The canonical page-level crossing predicate for a relation. -/
def crossed (r : ℤ) (hr : P.firstPage ≤ r) (s k : ℤ)
    {T : C} (x : P.element r hr s k T)
    (y : P.element r hr (s + r) (k - 1) T)
    (h : P.relation r hr s k x y) : Prop :=
  MathlibModel.RelationCrossedBy (P.datum r hr s k) x y h

end PageView

end KIP126.Core.SpectralSequence.FilteredComplex
