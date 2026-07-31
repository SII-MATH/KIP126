import KIP126.Core.Algebra.Graded
import Mathlib.Algebra.Homology.ShortComplex.HomologicalComplex

/-!
# Filtered graded objects

This file supplies the part of the shared Core that is not already a Mathlib
object: decreasing filtrations by subobjects of a graded object, their
associated graded pieces, and filtration-preserving maps.  Filtrations and
filtered maps work in an arbitrary category; quotient-based associated graded
pieces work in an abelian category.  Neither layer assumes a field or an
elementwise presentation.
-/

namespace KIP126.Core.Algebra

open CategoryTheory CategoryTheory.Limits

universe u v w

variable {C : Type u} [Category.{v} C]

/-- A decreasing filtration of a graded object.  `F s i` denotes the
subobject $F^s A_i$, and `decreasing` says $F^{s+1} A_i \le F^s A_i$. -/
structure Filtration {ι : Type w} (A : CategoryTheory.GradedObject ι C) where
  /-- The filtration subobject at a filtration level and grading index. -/
  F : ℤ → (i : ι) → Subobject (A i)
  /-- The filtration is decreasing. -/
  decreasing : ∀ (s : ℤ) (i : ι), F (s + 1) i ≤ F s i

namespace Filtration

variable {ι : Type w} {A : CategoryTheory.GradedObject ι C}

/-- The associated graded piece
$\operatorname{gr}^s_F A_i = F^s A_i/F^{s+1} A_i$. -/
noncomputable def associatedGraded [Abelian C] (F : Filtration A) (s : ℤ) (i : ι) : C :=
  cokernel (Subobject.ofLE (F.F (s + 1) i) (F.F s i) (F.decreasing s i))

/-- The quotient map from a filtration level to its associated graded piece. -/
noncomputable def toAssociatedGraded [Abelian C] (F : Filtration A) (s : ℤ) (i : ι) :
    Subobject.underlying.obj (F.F s i) ⟶ F.associatedGraded s i :=
  cokernel.π (Subobject.ofLE (F.F (s + 1) i) (F.F s i) (F.decreasing s i))

/-- All associated graded pieces, graded by filtration degree and the original
grading index. -/
noncomputable def associatedGradedObject [Abelian C] (F : Filtration A) :
    CategoryTheory.GradedObject (ℤ × ι) C :=
  fun si => F.associatedGraded si.1 si.2

/-- A filtration is exhaustive degreewise when every component is the whole
object at some filtration level. -/
def IsExhaustive (F : Filtration A) : Prop :=
  ∀ i : ι, ∃ s : ℤ, F.F s i = ⊤

/-- A filtration is eventually zero degreewise when every component vanishes
at some filtration level.  This is stronger than merely having zero
intersection. -/
def IsEventuallyZero [Abelian C] (F : Filtration A) : Prop :=
  ∀ i : ι, ∃ s : ℤ, F.F s i = ⊥

/-- A filtration is bounded below degreewise if sufficiently low levels are
the whole object. -/
structure IsBoundedBelow (F : Filtration A) where
  /-- A lower filtration bound for each graded component. -/
  lower : ι → ℤ
  eq_top_of_le : ∀ (i : ι) (s : ℤ), s ≤ lower i → F.F s i = ⊤

/-- A filtration is bounded above degreewise if sufficiently high levels are
zero. -/
structure IsBoundedAbove [Abelian C] (F : Filtration A) where
  /-- An upper filtration bound for each graded component. -/
  upper : ι → ℤ
  eq_bot_of_le : ∀ (i : ι) (s : ℤ), upper i ≤ s → F.F s i = ⊥

/-- A degreewise bounded filtration has both a lower and an upper bound. -/
structure IsBounded [Abelian C] (F : Filtration A) extends IsBoundedBelow F, IsBoundedAbove F where
  lower_le_upper : ∀ i : ι, lower i ≤ upper i

/-- A bounded-below filtration is exhaustive. -/
lemma IsBoundedBelow.isExhaustive {F : Filtration A} (hF : IsBoundedBelow F) :
    IsExhaustive F := by
  intro i
  exact ⟨hF.lower i, hF.eq_top_of_le i (hF.lower i) le_rfl⟩

/-- A bounded-above filtration is eventually zero. -/
lemma IsBoundedAbove.isEventuallyZero [Abelian C] {F : Filtration A} (hF : IsBoundedAbove F) :
    IsEventuallyZero F := by
  intro i
  exact ⟨hF.upper i, hF.eq_bot_of_le i (hF.upper i) le_rfl⟩

end Filtration

/-- A morphism of filtered graded objects is a graded map whose restriction to
each filtration subobject factors through the corresponding target
subobject. -/
structure FilteredMorphism {ι : Type w}
    {A B : CategoryTheory.GradedObject ι C} (F : Filtration A) (G : Filtration B) where
  /-- The underlying degree-preserving map. -/
  map : A ⟶ B
  /-- Preservation of every filtration level. -/
  preserves : ∀ (s : ℤ) (i : ι),
    ∃ φ : Subobject.underlying.obj (F.F s i) ⟶ Subobject.underlying.obj (G.F s i),
      φ ≫ (G.F s i).arrow = (F.F s i).arrow ≫ map i

namespace FilteredMorphism

variable {ι : Type w}
  {A B : CategoryTheory.GradedObject ι C} {F : Filtration A} {G : Filtration B}

/-- The map on associated graded pieces induced by a filtration-preserving
morphism. -/
noncomputable def associatedGradedMap [Abelian C] (f : FilteredMorphism F G) (s : ℤ) (i : ι) :
    F.associatedGraded s i ⟶ G.associatedGraded s i :=
  cokernel.map
    (Subobject.ofLE (F.F (s + 1) i) (F.F s i) (F.decreasing s i))
    (Subobject.ofLE (G.F (s + 1) i) (G.F s i) (G.decreasing s i))
    (f.preserves (s + 1) i).choose
    (f.preserves s i).choose
    (by
      apply (cancel_mono ((G.F s i).arrow)).mp
      simp only [Category.assoc, Subobject.ofLE_arrow]
      rw [(f.preserves s i).choose_spec, (f.preserves (s + 1) i).choose_spec,
        ← Category.assoc, Subobject.ofLE_arrow])

end FilteredMorphism

end KIP126.Core.Algebra
