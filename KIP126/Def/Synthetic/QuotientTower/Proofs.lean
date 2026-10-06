import KIP126.Def.Synthetic.QuotientTower.Predicates
import KIP126.Def.Synthetic.QuotientMap.Proofs

/-! Local laws of a supplied coherent tower. No tower inhabitant is assumed globally. -/

namespace KIP126.Synthetic.Context

open CategoryTheory CategoryTheory.Pretriangulated KIP126.StableHomotopy

universe u v

variable {Syn : Type u} [SyntheticCategory.{u, v} Syn]
  [HasFunctorialCofiber (C := Syn)] {X Y : Syn} {i j : ℕ}

theorem LambdaRhoDeltaTriangle.lambda_comp_rho (T : LambdaRhoDeltaTriangle X i j) :
    T.lambdaMap ≫ T.rho = 0 :=
  comp_distTriang_mor_zero₁₂ _ T.distinguished

theorem LambdaRhoDeltaTriangle.rho_comp_delta (T : LambdaRhoDeltaTriangle X i j) :
    T.rho ≫ T.delta = 0 :=
  comp_distTriang_mor_zero₂₃ _ T.distinguished

@[simp] theorem FiniteLambdaQuotientTower.rho_self
    (T : FiniteLambdaQuotientTower X) (i : ℕ) :
    T.rho i i le_rfl = 𝟙 (XModLambdaN X i) :=
  T.rho_id i

theorem FiniteLambdaQuotientTower.rho_trans
    (T : FiniteLambdaQuotientTower X) {k i j : ℕ} (hki : k ≤ i) (hij : i ≤ j) :
    T.rho i j hij ≫ T.rho k i hki = T.rho k j (hki.trans hij) :=
  T.rho_comp hki hij

theorem FiniteLambdaQuotientTower.lambda_comp_rho
    (T : FiniteLambdaQuotientTower X) (hi : 0 < i) (hij : i < j) :
    (T.triangle hi hij).lambdaMap ≫ T.rho i j hij.le = 0 := by
  rw [← T.triangle_rho hi hij]
  exact (T.triangle hi hij).lambda_comp_rho

theorem FiniteLambdaQuotientTower.rho_comp_delta
    (T : FiniteLambdaQuotientTower X) (hi : 0 < i) (hij : i < j) :
    T.rho i j hij.le ≫ (T.triangle hi hij).delta = 0 := by
  rw [← T.triangle_rho hi hij]
  exact (T.triangle hi hij).rho_comp_delta

theorem FiniteLambdaQuotientTower.Hom.rho_comm
    {TX : FiniteLambdaQuotientTower X} {TY : FiniteLambdaQuotientTower Y}
    {f : X ⟶ Y} (F : FiniteLambdaQuotientTower.Hom TX TY f) (hij : i ≤ j) :
    TX.rho i j hij ≫ XModLambdaN.map f i =
      XModLambdaN.map f j ≫ TY.rho i j hij :=
  F.rho_naturality hij

end KIP126.Synthetic.Context
