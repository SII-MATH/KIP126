import KIP126.Def.StableHomotopy.Toda.Predicates

/-!
# Generic Toda naturality, suspension, and product containments

Every statement uses the existing cone-based `Relation`. No independent
bracket operation or graded sign is an input. The suspension comparison
and its sign are the ones in the specified shift structure. Products are
transport along an actual exact tensor functor; no exactness of an
arbitrary tensor structure is asserted.

The four-map shuffle is the existing `Toda.juggling`, including its
negative shifted first map. The containments here and that shuffle do
not assert equality of arbitrarily chosen representatives. In particular,
no specific Hopf relation, near-126 Toda value, vanishing of indeterminacy,
or Moss comparison is assumed here.
-/

namespace KIP126.StableHomotopy.Toda

open CategoryTheory CategoryTheory.Limits CategoryTheory.Pretriangulated
open CategoryTheory.MonoidalCategory

universe u v u' v'

variable {C : Type u} [Category.{v} C] [Preadditive C]
  [HasZeroObject C] [HasShift C ℤ]
  [∀ n : ℤ, Functor.Additive (shiftFunctor C n)] [Pretriangulated C]

/-- Precomposition gives a containment, with the actual suspended map
on the Toda representative. -/
theorem precompose {A X Y Z W : C} {x : X⟦(1 : ℤ)⟧ ⟶ W}
    {f : X ⟶ Y} {g : Y ⟶ Z} {h : Z ⟶ W}
    (hx : Relation x f g h) (a : A ⟶ X) :
    Relation (a⟦(1 : ℤ)⟧' ≫ x) (a ≫ f) g h := by
  sorry

/-- Postcomposition gives a containment for the actual target map. -/
theorem postcompose {X Y Z W V : C} {x : X⟦(1 : ℤ)⟧ ⟶ W}
    {f : X ⟶ Y} {g : Y ⟶ Z} {h : Z ⟶ W}
    (hx : Relation x f g h) (d : W ⟶ V) :
    Relation (x ≫ d) f g (h ≫ d) := by
  sorry

/-- Moving a factor from the first input into the middle input gives
this containment; its reverse is not asserted. -/
theorem absorb_first {X Y Z W V : C} {x : X⟦(1 : ℤ)⟧ ⟶ V}
    {f : X ⟶ Y} {g : Y ⟶ Z} {h : Z ⟶ W} {d : W ⟶ V}
    (hx : Relation x (f ≫ g) h d) :
    Relation x f (g ≫ h) d := by
  sorry

/-- Moving a factor from the last input into the middle input gives
this containment; its reverse is not asserted. -/
theorem absorb_last {X Y Z W V : C} {x : X⟦(1 : ℤ)⟧ ⟶ V}
    {f : X ⟶ Y} {g : Y ⟶ Z} {h : Z ⟶ W} {d : W ⟶ V}
    (hx : Relation x f g (h ≫ d)) :
    Relation x f (g ≫ h) d := by
  sorry

/-- The four-map shuffle identifies the two sets of products, with the
shifted negative sign. It does not equate arbitrary representatives of
the two Toda brackets. The octahedral hypothesis is the one required
by the underlying juggling law. -/
theorem shuffle_iff [IsTriangulated C] {X Y Z W V : C}
    (f : X ⟶ Y) (g : Y ⟶ Z) (h : Z ⟶ W) (d : W ⟶ V)
    (hfg : f ≫ g = 0) (hgh : g ≫ h = 0) (hhd : h ≫ d = 0)
    (z : X⟦(1 : ℤ)⟧ ⟶ V) :
    (∃ x : X⟦(1 : ℤ)⟧ ⟶ W, Relation x f g h ∧ x ≫ d = z) ↔
      ∃ y : Y⟦(1 : ℤ)⟧ ⟶ V,
        Relation y g h d ∧ (-f⟦(1 : ℤ)⟧') ≫ y = z := by
  sorry

/-- Suspension transports the entire Toda relation with its forced
`(-1)^n` sign and the actual comparison of the two iterated shifts. -/
theorem suspension_iff (n : ℤ) {X Y Z W : C}
    {x : X⟦(1 : ℤ)⟧ ⟶ W} {f : X ⟶ Y} {g : Y ⟶ Z} {h : Z ⟶ W} :
    Relation
      (n.negOnePow • ((shiftFunctorComm C (1 : ℤ) n).inv.app X ≫ x⟦n⟧'))
      (f⟦n⟧') (g⟦n⟧') (h⟦n⟧') ↔ Relation x f g h := by
  sorry

variable {D : Type u'} [Category.{v'} D] [Preadditive D]
  [HasZeroObject D] [HasShift D ℤ]
  [∀ n : ℤ, Functor.Additive (shiftFunctor D n)] [Pretriangulated D]

/-- An exact functor transports Toda representatives. The shift
comparison belongs to that same functor. General exact functors only
give this containment, not equality of Toda brackets. -/
theorem map (F : C ⥤ D) [F.CommShift ℤ] [F.IsTriangulated]
    {X Y Z W : C} {x : X⟦(1 : ℤ)⟧ ⟶ W}
    {f : X ⟶ Y} {g : Y ⟶ Z} {h : Z ⟶ W}
    (hx : Relation x f g h) :
    Relation ((F.commShiftIso (1 : ℤ)).inv.app X ≫ F.map x)
      (F.map f) (F.map g) (F.map h) := by
  sorry

variable [MonoidalCategory C]

/-- Tensoring on the right is a product containment when the actual
tensor functor, with its given shift comparison, is exact. -/
theorem tensor_right (V : C) [(tensorRight V).CommShift ℤ]
    [(tensorRight V).IsTriangulated]
    {X Y Z W : C} {x : X⟦(1 : ℤ)⟧ ⟶ W}
    {f : X ⟶ Y} {g : Y ⟶ Z} {h : Z ⟶ W}
    (hx : Relation x f g h) :
    Relation (((tensorRight V).commShiftIso (1 : ℤ)).inv.app X ≫ (x ▷ V))
      (f ▷ V) (g ▷ V) (h ▷ V) := by
  sorry

/-- Tensoring on the left is the corresponding product containment
with the actual left-tensor shift comparison. -/
theorem tensor_left (V : C) [(tensorLeft V).CommShift ℤ]
    [(tensorLeft V).IsTriangulated]
    {X Y Z W : C} {x : X⟦(1 : ℤ)⟧ ⟶ W}
    {f : X ⟶ Y} {g : Y ⟶ Z} {h : Z ⟶ W}
    (hx : Relation x f g h) :
    Relation (((tensorLeft V).commShiftIso (1 : ℤ)).inv.app X ≫ (V ◁ x))
      (V ◁ f) (V ◁ g) (V ◁ h) := by
  sorry

end KIP126.StableHomotopy.Toda
