import KIP126.Core.Algebra.Filtered
import Mathlib.CategoryTheory.Limits.Constructions.EventuallyConstant

/-!
# Degreewise completion of a decreasing filtration

For a decreasing filtration `F` of a graded object, this file constructs the
canonical inverse system of quotient objects
`Aᵢ / Fˢ Aᵢ`.  The universal-property predicate `CompletionWitness` records
exactly when the canonical cone from `Aᵢ` is limiting.  It is a proved
interface:
the final section proves the predicate for a degreewise eventually-zero
filtration, using Mathlib's eventually-constant-limit construction.
-/

namespace KIP126.Core.Algebra

open CategoryTheory CategoryTheory.Limits

universe u v w

variable {C : Type u} [Category.{v} C] [Abelian C]
variable {ι : Type w} {A : CategoryTheory.GradedObject ι C}

namespace Filtration

/-- The quotient `Aᵢ / Fˢ Aᵢ` at one filtration and grading degree. -/
noncomputable def quotientAt (F : Filtration A) (s : ℤ) (i : ι) : C :=
  cokernel (F.F s i).arrow

/-- The canonical projection `Aᵢ ⟶ Aᵢ / Fˢ Aᵢ`. -/
noncomputable def quotientProjection (F : Filtration A) (s : ℤ) (i : ι) :
    A i ⟶ F.quotientAt s i :=
  cokernel.π (F.F s i).arrow

/-- If `t ≤ s`, the quotient by `Fˢ` maps to the quotient by `Fᵗ`. -/
noncomputable def quotientTransition (F : Filtration A) {t s : ℤ} (h : t ≤ s) (i : ι) :
    F.quotientAt s i ⟶ F.quotientAt t i :=
  cokernel.desc (F.F s i).arrow (F.quotientProjection t i) (by
    change (F.F s i).arrow ≫ cokernel.π (F.F t i).arrow = 0
    rw [← F.inclusion_arrow h i, Category.assoc, cokernel.condition, comp_zero])

/-- The quotient transition commutes with the quotient projections. -/
@[reassoc]
lemma quotientProjection_transition (F : Filtration A) {t s : ℤ} (h : t ≤ s) (i : ι) :
    F.quotientProjection s i ≫ F.quotientTransition h i = F.quotientProjection t i := by
  exact cokernel.π_desc _ _ _

/-- Quotient transitions compose in the evident order. -/
@[reassoc]
lemma quotientTransition_comp (F : Filtration A) {r s t : ℤ}
    (hrs : r ≤ s) (hst : s ≤ t) (i : ι) :
    F.quotientTransition hst i ≫ F.quotientTransition hrs i =
      F.quotientTransition (hrs.trans hst) i := by
  letI : Epi (F.quotientProjection t i) := by
    change Epi (cokernel.π (F.F t i).arrow)
    infer_instance
  apply (cancel_epi (F.quotientProjection t i)).mp
  calc
    F.quotientProjection t i ≫ F.quotientTransition hst i ≫
        F.quotientTransition hrs i =
      (F.quotientProjection t i ≫ F.quotientTransition hst i) ≫
        F.quotientTransition hrs i := (Category.assoc _ _ _).symm
    _ = F.quotientProjection s i ≫ F.quotientTransition hrs i := by
        rw [F.quotientProjection_transition]
    _ = F.quotientProjection r i := F.quotientProjection_transition hrs i
    _ = F.quotientProjection t i ≫ F.quotientTransition (hrs.trans hst) i :=
      (F.quotientProjection_transition (hrs.trans hst) i).symm

/-- The identity quotient transition is the identity. -/
@[simp]
lemma quotientTransition_id (F : Filtration A) (s : ℤ) (i : ι) :
    F.quotientTransition (le_rfl : s ≤ s) i = 𝟙 _ := by
  letI : Epi (F.quotientProjection s i) := by
    change Epi (cokernel.π (F.F s i).arrow)
    infer_instance
  apply (cancel_epi (F.quotientProjection s i)).mp
  rw [F.quotientProjection_transition, Category.comp_id]

/-- The canonical inverse system `s ↦ Aᵢ / Fˢ Aᵢ`.

It is indexed by `OrderDual ℤ`: a morphism `s ⟶ t` has `t ≤ s`, and hence
is precisely the quotient transition from level `s` to level `t`. -/
noncomputable def quotientTower (F : Filtration A) (i : ι) :
    (OrderDual ℤ) ⥤ C where
  obj s := F.quotientAt s i
  map f := F.quotientTransition f.le i
  map_id s := F.quotientTransition_id s i
  map_comp f g := by
    simpa only [Functor.comp_map] using (F.quotientTransition_comp g.le f.le i).symm

/-- The canonical cone from `Aᵢ` to its tower of filtration quotients. -/
noncomputable def quotientTowerCone (F : Filtration A) (i : ι) :
    Cone (F.quotientTower i) where
  pt := A i
  π :=
    { app := fun s => F.quotientProjection s i
      naturality := by
        intro s t f
        dsimp [quotientTower]
        calc
          𝟙 (A i) ≫ F.quotientProjection t i = F.quotientProjection t i := Category.id_comp _
          _ = F.quotientProjection s i ≫ F.quotientTransition f.le i :=
            (F.quotientProjection_transition f.le i).symm }

/-- A degreewise completeness witness: the canonical cone from `Aᵢ` to the
quotient tower is a limit cone.  This is the categorical statement
`Aᵢ ≅ lim_s Aᵢ/FˢAᵢ`, retaining the canonical comparison maps. -/
structure CompletionWitness (F : Filtration A) (i : ι) where
  isLimit : IsLimit (F.quotientTowerCone i)

namespace CompletionWitness

variable {F : Filtration A} {i : ι}

/-- A completion witness supplies existence of the corresponding quotient
tower limit; callers can install this result as a local `HasLimit` instance. -/
theorem hasLimit (W : CompletionWitness F i) : HasLimit (F.quotientTower i) :=
  HasLimit.mk ⟨F.quotientTowerCone i, W.isLimit⟩

/-- The induced isomorphism from a complete filtered component to the limit
of its quotient tower. -/
noncomputable def completionIso (W : CompletionWitness F i)
    [HasLimit (F.quotientTower i)] :
    A i ≅ limit (F.quotientTower i) :=
  W.isLimit.conePointUniqueUpToIso (limit.isLimit _)

/-- The completion isomorphism is the canonical map to the limit, as
characterized by all quotient projections. -/
@[reassoc]
lemma completionIso_hom_comp_limit_π (W : CompletionWitness F i)
    [HasLimit (F.quotientTower i)] (s : OrderDual ℤ) :
    W.completionIso.hom ≫ limit.π (F.quotientTower i) s =
      F.quotientProjection s i :=
  IsLimit.conePointUniqueUpToIso_hom_comp W.isLimit (limit.isLimit _) s

end CompletionWitness

/-- Once a decreasing filtration is zero at level `t`, it is zero at every
higher level `s`. -/
lemma eq_bot_of_le_of_eq_bot (F : Filtration A) {t s : ℤ} (h : t ≤ s) (i : ι)
    (ht : F.F t i = ⊥) : F.F s i = ⊥ := by
  apply le_antisymm
  · rw [← ht]
    exact F.le_of_le h i
  · exact bot_le

/-- At a zero filtration level, the quotient projection is an isomorphism. -/
lemma quotientProjection_isIso_of_eq_bot (F : Filtration A) (s : ℤ) (i : ι)
    (h : F.F s i = ⊥) : IsIso (F.quotientProjection s i) := by
  change IsIso (cokernel.π (F.F s i).arrow)
  rw [h, Subobject.bot_arrow]
  infer_instance

/-- A quotient transition between two zero filtration levels is an
isomorphism. -/
lemma quotientTransition_isIso_of_eq_bot (F : Filtration A) {t s : ℤ}
    (h : t ≤ s) (i : ι) (hs : F.F s i = ⊥) (ht : F.F t i = ⊥) :
    IsIso (F.quotientTransition h i) := by
  letI : IsIso (F.quotientProjection s i) :=
    F.quotientProjection_isIso_of_eq_bot s i hs
  letI : IsIso (F.quotientProjection t i) :=
    F.quotientProjection_isIso_of_eq_bot t i ht
  exact IsIso.of_isIso_fac_left (F.quotientProjection_transition h i)

/-- A filtration which is zero at level `u` yields a quotient tower that is
eventually constant towards `u`. -/
lemma quotientTower_isEventuallyConstantTo_of_eq_bot (F : Filtration A) (i : ι)
    (u : ℤ) (hu : F.F u i = ⊥) :
    (F.quotientTower i).IsEventuallyConstantTo (OrderDual.toDual u) := by
  intro s f
  change IsIso (F.quotientTransition f.le i)
  exact F.quotientTransition_isIso_of_eq_bot f.le i
    (F.eq_bot_of_le_of_eq_bot f.le i hu) hu

/-- If one filtration level is zero, then the canonical quotient cone is a
limit cone. -/
noncomputable def quotientTowerCone_isLimit_of_eq_bot (F : Filtration A) (i : ι)
    (u : ℤ) (hu : F.F u i = ⊥) : IsLimit (F.quotientTowerCone i) := by
  let h := F.quotientTower_isEventuallyConstantTo_of_eq_bot i u hu
  letI : IsIso ((F.quotientTowerCone i).π.app (OrderDual.toDual u)) := by
    change IsIso (F.quotientProjection u i)
    exact F.quotientProjection_isIso_of_eq_bot u i hu
  exact h.isLimitOfIsIso (F.quotientTowerCone i)

namespace CompletionWitness

variable {F : Filtration A} {i : ι}

/-- A degreewise eventually-zero decreasing filtration is complete with
respect to its canonical quotient tower. -/
noncomputable def of_isEventuallyZero (F : Filtration A)
    (hF : F.IsEventuallyZero) (i : ι) : CompletionWitness F i := by
  let u : ℤ := Classical.choose (hF i)
  exact ⟨F.quotientTowerCone_isLimit_of_eq_bot i u
    (Classical.choose_spec (hF i))⟩

/-- A degreewise bounded-above filtration is complete with respect to its
canonical quotient tower. -/
noncomputable def of_isBoundedAbove (F : Filtration A)
    (hF : F.IsBoundedAbove) (i : ι) : CompletionWitness F i :=
  of_isEventuallyZero F hF.isEventuallyZero i

end CompletionWitness

end Filtration

end KIP126.Core.Algebra
