import KIP126.Def.Kervaire.Inputs.Literature.Classical

/-! May's source statement retains its sign. TC3 (May 2001, author PDF
pp.12–13) has `j₁ ; (−1 ∧ h′) = j₃ ; (h ∧ 1)`, and Lemma 4.6 says the
square on `(j₁,j₂)` is a homotopy pushpull square. The positive-boundary
formula used locally by LWX is NOT an external input. -/
namespace KIP126.Literature.Route
open CategoryTheory CategoryTheory.MonoidalCategory KIP126.StableHomotopy
open KIP126.Synthetic.Context
universe u v
variable (Syn : Type u) [SyntheticCategory.{u, v} Syn]

/-- Explicit tensor suspension conventions and exactness, on the existing
synthetic tensor product. They must be the conventions used by the source
model identification; arbitrary independent CommShift choices do not suffice. -/
structure MayTensorData where
  leftShift : ∀ X : Syn, (tensorLeft X).CommShift ℤ
  rightShift : ∀ X : Syn, (tensorRight X).CommShift ℤ
  leftExact : ∀ X : Syn, letI := leftShift X; (tensorLeft X).IsTriangulated
  rightExact : ∀ X : Syn, letI := rightShift X; (tensorRight X).IsTriangulated

/-- The actual source square and the three actual arrows appearing in TC3.
The lifting property is the homotopy-group consequence of the homotopy
pullback in Lemma 4.6. Boundary signs are retained in the same group. -/
structure MayPushpullData (S : MayTensorData Syn)
    (T U : HoCofiberSequence (C := Syn)) where
  vertex : Syn
  j1 : vertex ⟶ T.X ⊗ U.Z
  j2 : vertex ⟶ T.Y ⊗ U.Y
  j3 : vertex ⟶ T.Z ⊗ U.X
  square : j1 ≫ (T.f ▷ U.Z) = j2 ≫ (T.Y ◁ U.g)
  other_square : j2 ≫ (T.g ▷ U.Y) = j3 ≫ (T.Z ◁ U.f)
  boundary : letI := S.leftShift; letI := S.rightShift
    letI := S.leftExact; letI := S.rightExact
    j1 ≫ (U.map (tensorLeft T.X)).h = -(j3 ≫ (T.map (tensorRight U.X)).h)
  lift : ∀ (n : ℤ) (a : HomotopyGroup n (T.X ⊗ U.Z))
      (b : HomotopyGroup n (T.Y ⊗ U.Y)),
    a ≫ (T.f ▷ U.Z) = b ≫ (T.Y ◁ U.g) →
    ∃ v : HomotopyGroup n vertex, v ≫ j1 = a ∧ v ≫ j2 = b

/-- The May source result, together with its specified tensor conventions.
It contains neither LWX's generalized Mahowald theorem nor a sign-free
homotopy boundary equality. Model realization of these conventions is a
separate construction obligation. -/
structure MayInput extends MayTensorData Syn where
  tc3 : ∀ T U : HoCofiberSequence (C := Syn), MayPushpullData Syn toMayTensorData T U
end KIP126.Literature.Route
