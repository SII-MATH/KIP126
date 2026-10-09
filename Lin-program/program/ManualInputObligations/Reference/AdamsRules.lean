import ManualInputObligations.Reference.AdamsHomology

/-!
# Adams 页上的乘法与广义 Leibniz 规则（E12–E15、G01–G03）

页上的乘法不是字符串拼接：它必须保持 F₂ 双线性、单位、结合和双次数。
下面同时写出微分的广义 Leibniz 等式，并显式处理自然出现的双次数等式。
-/

namespace ManualInputObligations.Reference

/-- 在双次数等式下搬运页元素。 -/
def pageCast (S : AdamsSpectralSequence) (r : Nat)
    {d e : Bidegree} (h : d = e) :
    (S.element r d).carrier → (S.element r e).carrier := h ▸ id

/-- Adams 微分目标与乘积双次数的交换等式。 -/
theorem adamsTarget_add_left (r : Nat) (d e : Bidegree) :
    AdamsTarget r (Bidegree.add d e) =
      Bidegree.add (AdamsTarget r d) e := by
  cases d with
  | mk df di =>
    cases e with
    | mk ef ei =>
      ext <;> simp [AdamsTarget, Bidegree.add] <;> omega

/-- 右因子微分时的双次数交换等式。 -/
theorem adamsTarget_add_right (r : Nat) (d e : Bidegree) :
    AdamsTarget r (Bidegree.add d e) =
      Bidegree.add d (AdamsTarget r e) := by
  cases d with
  | mk df di =>
    cases e with
    | mk ef ei =>
      ext <;> simp [AdamsTarget, Bidegree.add] <;> omega

/-- 双次数加法的单位、结合和交换等式。 -/
theorem bidegree_add_zero_left (d : Bidegree) :
    Bidegree.add ⟨0, 0⟩ d = d := by
  cases d
  simp [Bidegree.add]

theorem bidegree_add_zero_right (d : Bidegree) :
    Bidegree.add d ⟨0, 0⟩ = d := by
  cases d
  simp [Bidegree.add]

theorem bidegree_add_assoc (d e f : Bidegree) :
    Bidegree.add (Bidegree.add d e) f =
      Bidegree.add d (Bidegree.add e f) := by
  cases d <;> cases e <;> cases f
  apply Bidegree.ext <;> simp [Bidegree.add, Nat.add_assoc, add_assoc]

theorem bidegree_add_comm (d e : Bidegree) :
    Bidegree.add d e = Bidegree.add e d := by
  cases d <;> cases e
  apply Bidegree.ext <;> simp [Bidegree.add, Nat.add_comm, add_comm]

theorem adamsTarget_product_degree (r : Nat) (d e : Bidegree) :
    Bidegree.add (AdamsTarget r d) e =
      Bidegree.add d (AdamsTarget r e) := by
  exact (adamsTarget_add_left r d e).symm.trans (adamsTarget_add_right r d e)

/-- 页上的双线性分次乘法。 -/
structure AdamsPageProduct (S : AdamsSpectralSequence) where
  /-- 第 r 页的乘法。 -/
  multiply : ∀ r d e, (S.element r d).carrier → (S.element r e).carrier →
    (S.element r (Bidegree.add d e)).carrier
  /-- 左右零元律。 -/
  zero_left : ∀ r d e y, multiply r d e 0 y = 0
  zero_right : ∀ r d e x, multiply r d e x 0 = 0
  /-- 左右加法律。 -/
  add_left : ∀ r d e x₁ x₂ y,
    multiply r d e (x₁ + x₂) y = multiply r d e x₁ y + multiply r d e x₂ y
  add_right : ∀ r d e x y₁ y₂,
    multiply r d e x (y₁ + y₂) = multiply r d e x y₁ + multiply r d e x y₂
  /-- 单位元所在的双次数。 -/
  unit : ∀ r, (S.element r ⟨0, 0⟩).carrier
  /-- 左单位律。 -/
  left_unit : ∀ r d x,
    pageCast S r (bidegree_add_zero_left d)
      (multiply r ⟨0, 0⟩ d (unit r) x) = x
  /-- 右单位律。 -/
  right_unit : ∀ r d x,
    pageCast S r (bidegree_add_zero_right d)
      (multiply r d ⟨0, 0⟩ x (unit r)) = x
  /-- 结合律，等式两侧通过双次数等式搬运到同一载体。 -/
  associative : ∀ r d e f x y z,
    pageCast S r (bidegree_add_assoc d e f)
      (multiply r (Bidegree.add d e) f (multiply r d e x y) z) =
      multiply r d (Bidegree.add e f) x (multiply r e f y z)
  /-- 分次交换律（模 2 时符号消失）。 -/
  gradedComm : ∀ r d e x y,
    pageCast S r (bidegree_add_comm d e)
      (multiply r d e x y) = multiply r e d y x

/-- 广义 Leibniz 规则：微分作用在乘积上等于两项之和。 -/
structure GeneralizedLeibnizRule (S : AdamsSpectralSequence)
    (P : AdamsPageProduct S) where
  /-- 第 r 阶微分满足的双次数公式。 -/
  formula : ∀ r d e x y,
    pageCast S r (adamsTarget_add_left r d e)
      (S.differential r (Bidegree.add d e) (P.multiply r d e x y)) =
      P.multiply r (AdamsTarget r d) e (S.differential r d x) y +
        pageCast S r (adamsTarget_product_degree r d e).symm
          (P.multiply r d (AdamsTarget r e) x (S.differential r e y))

/-- 一个有乘法和 Leibniz 规则的 Adams 页系统。 -/
structure CertifiedAdamsProduct (S : AdamsSpectralSequence) where
  /-- 页乘法及其全部代数公理。 -/
  product : AdamsPageProduct S
  /-- 微分的广义 Leibniz 证明。 -/
  leibniz : GeneralizedLeibnizRule S product

end ManualInputObligations.Reference
