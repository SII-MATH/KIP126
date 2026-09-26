/-
  KIPBase.Synthetic.QuotientTower
  Finite λ-quotient restrictions and the λ-ρ-δ triangles of Blueprint §4.
-/
import KIPBase.Synthetic.Basic

namespace KIPBase.Synthetic

open CategoryTheory CategoryTheory.Limits CategoryTheory.Pretriangulated

universe u v

variable {Syn : Type u} [Category.{v} Syn] [Preadditive Syn]
    [HasZeroObject Syn] [HasShift Syn ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor Syn n)]
    [MonoidalCategory Syn]
    [Pretriangulated Syn] [SyntheticCategory Syn]

/-- A finite `λ-ρ-δ` quotient triangle for `0 < i < j`.

The final object is written as the triangulated shift of
`Σ^{0,-i}(X/λ^{j-i})`; this is the formal version of the Blueprint notation
`Σ^{1,-i}(X/λ^{j-i})`. -/
structure LambdaRhoDeltaTriangle (X : Syn) (i j : ℕ) where
  i_pos : 0 < i
  i_lt_j : i < j
  lambdaMap :
    (SyntheticCategory.biShift (0, -(i : ℤ))).obj (XModLambdaN X (j - i)) ⟶
      XModLambdaN X j
  rho : XModLambdaN X j ⟶ XModLambdaN X i
  delta : XModLambdaN X i ⟶
    ((SyntheticCategory.biShift (0, -(i : ℤ))).obj
      (XModLambdaN X (j - i)))⟦(1 : ℤ)⟧
  distinguished : Triangle.mk lambdaMap rho delta ∈ distTriang Syn

namespace LambdaRhoDeltaTriangle

variable {X : Syn} {i j : ℕ}

/-- The composite `λ^i` followed by quotient restriction is zero. -/
theorem lambda_comp_rho (T : LambdaRhoDeltaTriangle X i j) :
    T.lambdaMap ≫ T.rho = 0 :=
  comp_distTriang_mor_zero₁₂ _ T.distinguished

/-- The composite of quotient restriction and the connecting map is zero. -/
theorem rho_comp_delta (T : LambdaRhoDeltaTriangle X i j) :
    T.rho ≫ T.delta = 0 :=
  comp_distTriang_mor_zero₂₃ _ T.distinguished

end LambdaRhoDeltaTriangle

/-- A coherent finite tower of `λ`-quotients.

This is the explicit finite-tower witness required by Blueprint §4.  Keeping
it as data is essential: the minimal `HasFunctorialCofiber` interface chooses
maps from squares but does not assert identity or composition laws for those
choices.  A coherent tower records exactly those laws, without introducing a
new axiom. -/
structure FiniteLambdaQuotientTower (X : Syn) where
  rho : ∀ (i j : ℕ), i ≤ j → (XModLambdaN X j ⟶ XModLambdaN X i)
  rho_id : ∀ i, rho i i le_rfl = 𝟙 (XModLambdaN X i)
  rho_comp : ∀ {k i j : ℕ} (hki : k ≤ i) (hij : i ≤ j),
    rho i j hij ≫ rho k i hki = rho k j (hki.trans hij)
  triangle : ∀ {i j : ℕ}, 0 < i → i < j → LambdaRhoDeltaTriangle X i j
  triangle_rho : ∀ {i j : ℕ} (hi : 0 < i) (hij : i < j),
    (triangle hi hij).rho = rho i j hij.le

namespace FiniteLambdaQuotientTower

variable {X Y : Syn}

@[simp] theorem rho_self (T : FiniteLambdaQuotientTower X) (i : ℕ) :
    T.rho i i le_rfl = 𝟙 (XModLambdaN X i) :=
  T.rho_id i

theorem rho_trans (T : FiniteLambdaQuotientTower X)
    {k i j : ℕ} (hki : k ≤ i) (hij : i ≤ j) :
    T.rho i j hij ≫ T.rho k i hki = T.rho k j (hki.trans hij) :=
  T.rho_comp hki hij

/-- Naturality and triangle compatibility of finite quotient restrictions for
a map `f : X ⟶ Y`.  The middle components are the canonical maps on cofibers
constructed by `XModLambdaN.map`. -/
structure Hom (TX : FiniteLambdaQuotientTower X)
    (TY : FiniteLambdaQuotientTower Y) (f : X ⟶ Y) : Prop where
  rho_naturality : ∀ {i j : ℕ} (hij : i ≤ j),
    TX.rho i j hij ≫ XModLambdaN.map f i =
      XModLambdaN.map f j ≫ TY.rho i j hij
  lambda_naturality : ∀ {i j : ℕ} (hi : 0 < i) (hij : i < j),
    (SyntheticCategory.biShift (0, -(i : ℤ))).map
          (XModLambdaN.map f (j - i)) ≫
        (TY.triangle hi hij).lambdaMap =
      (TX.triangle hi hij).lambdaMap ≫ XModLambdaN.map f j
  delta_naturality : ∀ {i j : ℕ} (hi : 0 < i) (hij : i < j),
    XModLambdaN.map f i ≫ (TY.triangle hi hij).delta =
      (TX.triangle hi hij).delta ≫
        (shiftFunctor Syn (1 : ℤ)).map
          ((SyntheticCategory.biShift (0, -(i : ℤ))).map
            (XModLambdaN.map f (j - i)))

theorem Hom.rho_comm {TX : FiniteLambdaQuotientTower X}
    {TY : FiniteLambdaQuotientTower Y} {f : X ⟶ Y}
    (F : Hom TX TY f) {i j : ℕ} (hij : i ≤ j) :
    TX.rho i j hij ≫ XModLambdaN.map f i =
      XModLambdaN.map f j ≫ TY.rho i j hij :=
  F.rho_naturality hij

end FiniteLambdaQuotientTower

/-! ### The complete endpoint -/

/-- The `m = ∞` endpoint of the `λ-ρ-δ` triangle in Blueprint §4.

For finite `n > 0` its first two terms are `Σ^{0,-n} X` and `X`, and its
third term is the chosen cofiber `X/λ^n`. -/
noncomputable def infiniteLambdaRhoDeltaTriangle (X : Syn) (n : ℕ)
    (_hn : 0 < n) : Triangle Syn :=
  Triangle.mk (lambdaPow n X)
    (syn_functorial_cofiber.cofibι (lambdaPow n X))
    (syn_functorial_cofiber.cofibδ (lambdaPow n X))

/-- The complete-endpoint `λ-ρ-δ` triangle is distinguished. -/
theorem infiniteLambdaRhoDeltaTriangle_distinguished (X : Syn) (n : ℕ)
    (hn : 0 < n) :
    infiniteLambdaRhoDeltaTriangle X n hn ∈ distTriang Syn :=
  XModLambdaN.triangle_distinguished X n

/-- At the complete endpoint, multiplication by `λ^n` followed by the
quotient map is zero. -/
theorem infinite_lambda_comp_rho (X : Syn) (n : ℕ) (hn : 0 < n) :
    (infiniteLambdaRhoDeltaTriangle X n hn).mor₁ ≫
      (infiniteLambdaRhoDeltaTriangle X n hn).mor₂ = 0 :=
  comp_distTriang_mor_zero₁₂ _
    (infiniteLambdaRhoDeltaTriangle_distinguished X n hn)

end KIPBase.Synthetic
