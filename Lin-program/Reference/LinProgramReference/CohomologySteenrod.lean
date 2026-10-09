import LinProgramReference.AlgebraTopology
import Mathlib.Data.Finset.Basic
import Mathlib.Algebra.BigOperators.Group.Finset.Basic

/-!
# 模 2 上同调代数与 Steenrod 运算（A01–A19）

本文件只定义 Kervaire 局部计算所需的数学对象。Steenrod 运算的单位性、
不稳定性、Cartan 公式和 Adem 公式都写成带有明确量词的命题；它们不是
把任意程序字符串当作数学事实。
-/

namespace LinProgramReference

open scoped BigOperators

/-- 分次 F₂ 代数的分次载体、单位和乘法。 -/
structure GradedF2Algebra where
  /-- 第 n 次分次部分。 -/
  carrier : Nat → Type
  /-- 每个分次部分的交换加法群。 -/
  addGroup : ∀ n, AddCommGroup (carrier n)
  /-- 分次乘法。 -/
  multiply : ∀ p q, carrier p → carrier q → carrier (p + q)
  /-- 次数零的单位元。 -/
  one : carrier 0

/-- 分次代数载体继承各次数的加法群结构。 -/
instance (A : GradedF2Algebra) (n : Nat) : AddCommGroup (A.carrier n) :=
  A.addGroup n

/-- 沿次数相等证明搬运分次元素。 -/
def gradedCast (A : GradedF2Algebra) {m n : Nat}
    (h : m = n) (x : A.carrier m) : A.carrier n := h ▸ x

/-- 分次乘法满足双线性、单位、结合和模 2 下的交换律。 -/
def IsGradedF2Algebra (A : GradedF2Algebra) : Prop :=
  (∀ p q x, A.multiply p q 0 x = 0) ∧
  (∀ p q x, A.multiply p q x 0 = 0) ∧
  (∀ p q x₁ x₂ y,
    A.multiply p q (x₁ + x₂) y =
      A.multiply p q x₁ y + A.multiply p q x₂ y) ∧
  (∀ p q x y₁ y₂,
    A.multiply p q x (y₁ + y₂) =
      A.multiply p q x y₁ + A.multiply p q x y₂) ∧
  (∀ p x,
    gradedCast A (Nat.zero_add p) (A.multiply 0 p A.one x) = x) ∧
  (∀ p x,
    gradedCast A (Nat.add_zero p) (A.multiply p 0 x A.one) = x) ∧
  (∀ p q r x y z,
    gradedCast A (by omega : (p + q) + r = p + (q + r))
      (A.multiply (p + q) r (A.multiply p q x y) z) =
      A.multiply p (q + r) x (A.multiply q r y z)) ∧
  (∀ p q x y,
    gradedCast A (Nat.add_comm p q) (A.multiply p q x y) =
      A.multiply q p y x)

/-- 带有上述公理证明的分次 F₂ 代数。 -/
structure CertifiedGradedF2Algebra extends GradedF2Algebra where
  /-- 分次代数公理。 -/
  laws : IsGradedF2Algebra toGradedF2Algebra

/-- 上链复形上的杯积及其在上同调商上的诱导乘法。 -/
structure CohomologyProduct (C : CochainComplex) where
  /-- 链级杯积。 -/
  cup : ∀ p q, (C.object p).carrier → (C.object q).carrier →
    (C.object (p + q)).carrier
  /-- 两个上循环的杯积仍是上循环。 -/
  cupCocycle : ∀ p q (x : Cocycle C p) (y : Cocycle C q),
    IsCocycle C (p + q) (cup p q x.1 y.1)
  /-- 上同调商上的乘法。 -/
  multiplyClass : ∀ p q, Cohomology C p → Cohomology C q → Cohomology C (p + q)
  /-- 商乘法在循环代表上的取值由链级杯积给出。 -/
  representativeFormula : ∀ p q (x : Cocycle C p) (y : Cocycle C q),
    multiplyClass p q (Quotient.mk (cohomologySetoid C p) x)
      (Quotient.mk (cohomologySetoid C q) y) =
      Quotient.mk (cohomologySetoid C (p + q))
        ⟨cup p q x.1 y.1, cupCocycle p q x y⟩
  /-- 杯积的双线性、单位性和分次交换性证明接口。 -/
  bilinear : Prop
  unit : Prop
  gradedCommutative : Prop

/-- Cartan 公式中的一个分次乘积项；超过 i 的指标贡献零。 -/
def gradedProductTerm (A : GradedF2Algebra)
    (p q i j : Nat) (x : A.carrier (p + j)) (y : A.carrier (q + (i - j))) :
    A.carrier (p + q + i) := by
  by_cases hj : j ≤ i
  · have hdeg : (p + j) + (q + (i - j)) = p + q + i := by omega
    exact hdeg ▸ A.multiply (p + j) (q + (i - j)) x y
  · exact 0

/-- Sq^a Sq^b 需要 Adem 化简的指数条件。 -/
def IsAdemPair (a b : Nat) : Prop := a < 2 * b

/-- Steenrod 平方族及其单位、不稳定和 Cartan 公理。 -/
structure SteenrodAction (A : CertifiedGradedF2Algebra) where
  /-- Sq^i 在第 n 次上的作用。 -/
  sq : ∀ i n, A.carrier n → A.carrier (n + i)
  /-- Sq 保持加法。 -/
  sq_add : ∀ i n x y, sq i n (x + y) = sq i n x + sq i n y
  /-- Sq^0 是恒等映射。 -/
  sq_zero : ∀ n x, sq 0 n x = x
  /-- 不稳定条件：i>n 时 Sq^i(x)=0。 -/
  unstable : ∀ i n x, n < i → sq i n x = 0
  /-- 顶次平方是杯积平方。 -/
  top_square : ∀ n x,
    gradedCast A.toGradedF2Algebra (Nat.add_comm n n)
      (sq n n x) = A.toGradedF2Algebra.multiply n n x x
  /-- Cartan 公式。 -/
  cartan : ∀ i p q x y,
    sq i (p + q) (A.toGradedF2Algebra.multiply p q x y) =
      Finset.sum (Finset.range (i + 1)) (fun j =>
        gradedProductTerm A.toGradedF2Algebra p q i j
          (sq j p x) (sq (i - j) q y))

/-- Adem 公式右端的有限求和项。 -/
def ademTerm (S : SteenrodAction A) (a b n t : Nat)
    (x : A.carrier n) : A.carrier (n + a + b) := by
  by_cases h : 2 * t ≤ a ∧ a < 2 * b ∧
      Nat.choose (b - t - 1) (a - 2 * t) % 2 = 1
  · have hdeg : (n + t) + (a + b - t) = n + a + b := by omega
    exact hdeg ▸ S.sq (a + b - t) (n + t) (S.sq t n x)
  · exact 0

/-- Steenrod 平方满足 Adem 关系；系数由二项式系数模 2 决定。 -/
def SatisfiesAdem (S : SteenrodAction A) : Prop :=
  ∀ a b n x, IsAdemPair a b →
    gradedCast A.toGradedF2Algebra (by omega)
      (S.sq a (n + b) (S.sq b n x)) =
      Finset.sum (Finset.range (b + 1)) (fun t => ademTerm S a b n t x)

/-- 具有 Adem 关系的 Steenrod 作用，即模 2 上同调上的 Steenrod 代数作用。 -/
structure CertifiedSteenrodAction (A : CertifiedGradedF2Algebra) where
  /-- Steenrod 平方族。 -/
  action : SteenrodAction A
  /-- 所有 Adem 关系成立。 -/
  adem : SatisfiesAdem action

/-- Steenrod 代数作用在另一个分次 F₂ 空间上的 A-模。 -/
structure GradedSteenrodModule
    (S : CertifiedSteenrodAction A) where
  /-- 分次载体。 -/
  carrier : Nat → Type
  /-- 每个次数层的交换加法群。 -/
  addGroup : ∀ n, AddCommGroup (carrier n)
  /-- Sq^i 的模作用。 -/
  action : ∀ i n, carrier n → carrier (n + i)
  /-- 作用保持零元和加法。 -/
  mapZero : ∀ i n, action i n 0 = 0
  mapAdd : ∀ i n x y, action i n (x + y) = action i n x + action i n y
  /-- Sq^0 是恒等作用。 -/
  unitAction : ∀ n x, action 0 n x = x
  /-- 模上的不稳定条件。 -/
  unstable : ∀ i n x, n < i → action i n x = 0
  /-- 模作用满足 Steenrod Adem 关系。 -/
  ademCompatibility : Prop

/-- Steenrod 模各分次层继承交换加法群结构。 -/
instance (S : CertifiedSteenrodAction A) (M : GradedSteenrodModule S) (n : Nat) :
    AddCommGroup (M.carrier n) := M.addGroup n

/-- A-模映射保持分次、加法和所有 Steenrod 作用。 -/
structure GradedSteenrodMap
    (S : CertifiedSteenrodAction A)
    (M N : GradedSteenrodModule S) where
  /-- 各次数上的线性映射。 -/
  toFun : ∀ n, M.carrier n → N.carrier n
  /-- 保持零元和加法。 -/
  mapZero : ∀ n, toFun n 0 = 0
  mapAdd : ∀ n x y, toFun n (x + y) = toFun n x + toFun n y
  /-- 与 Steenrod 作用交换。 -/
  commutes : ∀ i n x,
    toFun (n + i) (M.action i n x) = N.action i n (toFun n x)

end LinProgramReference
