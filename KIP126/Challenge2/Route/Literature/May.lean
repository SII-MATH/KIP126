import KIP126.Challenge2.Route.Literature.Classical

namespace KIP126.Literature.Route
open CategoryTheory CategoryTheory.MonoidalCategory KIP126.StableHomotopy
open KIP126.Synthetic.Context
universe u v
variable (Syn : Type u) [SyntheticCategory.{u, v} Syn]

/-- Tensor suspension conventions and exactness on the existing synthetic
category. To apply May's TC3, the source model must realize THESE choices;
independent exact tensor functors do not by themselves supply TC3. -/
structure MayContext where
  leftShift : ∀ X : Syn, (tensorLeft X).CommShift ℤ
  rightShift : ∀ X : Syn, (tensorRight X).CommShift ℤ
  leftExact : ∀ X : Syn, letI := leftShift X; (tensorLeft X).IsTriangulated
  rightExact : ∀ X : Syn, letI := rightShift X; (tensorRight X).IsTriangulated

/-- The source square and boundary relation selected from May (2001), TC3
(author PDF pp.12–13). The lifting field is the homotopy-group consequence
of the `(j₁,j₂)` pushpull square in Lemma 4.6 (p.14). This is precisely the
part of that source data used here, not a definition of the full TC3 axiom.

The negative sign is essential: TC3 identifies the two paths through
`−id ∧ h′` and `h ∧ id`. The fixed CommShift witnesses above identify their
common suspension target. No unsigned boundary formula is asserted. -/
structure MayPushpullData (B : MayContext Syn)
    (T U : HoCofiberSequence (C := Syn)) where
  vertex : Syn
  j1 : vertex ⟶ T.X ⊗ U.Z
  j2 : vertex ⟶ T.Y ⊗ U.Y
  j3 : vertex ⟶ T.Z ⊗ U.X
  square : j1 ≫ (T.f ▷ U.Z) = j2 ≫ (T.Y ◁ U.g)
  other_square : j2 ≫ (T.g ▷ U.Y) = j3 ≫ (T.Z ◁ U.f)
  boundary : letI := B.leftShift; letI := B.rightShift
    letI := B.leftExact; letI := B.rightExact
    j1 ≫ (U.map (tensorLeft T.X)).h = -(j3 ≫ (T.map (tensorRight U.X)).h)
  lift : ∀ (n : ℤ) (a : HomotopyGroup n (T.X ⊗ U.Z))
      (b : HomotopyGroup n (T.Y ⊗ U.Y)),
    a ≫ (T.f ▷ U.Z) = b ≫ (T.Y ◁ U.g) →
    ∃ v : HomotopyGroup n vertex, v ≫ j1 = a ∧ v ≫ j2 = b

/-- May's source result, on specified tensor suspension conventions. The
existence of this source input on the selected synthetic model remains a
production obligation; no fresh model or global witness is selected here. -/
def MaySourceResults (B : MayContext Syn) : Prop :=
  ∀ T U : HoCofiberSequence (C := Syn), Nonempty (MayPushpullData Syn B T U)

/-- The signed elementwise consequence of TC3 and Lemma 4.6. Both boundary
classes lie in the same actual homotopy group. -/
def MayContext.SignedBoundary (B : MayContext Syn) : Prop :=
  letI := B.leftShift; letI := B.rightShift
  letI := B.leftExact; letI := B.rightExact
  ∀ (T U : HoCofiberSequence (C := Syn)) (n : ℤ)
    (a : HomotopyGroup n (T.X ⊗ U.Z))
    (b : HomotopyGroup n (T.Y ⊗ U.Y)),
    inducedMap (T.f ▷ U.Z) n a = inducedMap (T.Y ◁ U.g) n b →
    ∃ c : HomotopyGroup n (T.Z ⊗ U.X),
      inducedMap (T.g ▷ U.Y) n b = inducedMap (T.Z ◁ U.f) n c ∧
      connectingHomomorphism (U.map (tensorLeft T.X)) n a =
        -(connectingHomomorphism (T.map (tensorRight U.X)) n c)

/-- Historical unsigned target. This is NOT May's source theorem: sign
removal needs an additional premise on the actual boundary or on its image.
It is retained as a named compatibility target, not an external input. -/
def MayContext.Boundary (B : MayContext Syn) : Prop :=
  letI := B.leftShift; letI := B.rightShift
  letI := B.leftExact; letI := B.rightExact
  KIP126.Stable.MaySmashBoundary (C := Syn)

/-- Applied May input, retaining the source sign and the fixed conventions.
Consumers may remove the sign only after proving the required exponent-two
condition. Mod-two E₂ coordinates alone do not prove such a condition on
homotopy groups. -/
structure MayInput extends MayContext Syn where
  boundary : toMayContext.SignedBoundary
end KIP126.Literature.Route
