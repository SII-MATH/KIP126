import KIPBase.StableHomotopy.Adams
import KIPBase.E2pageBasis

/-!
# 球谱 Adams E₂：按双次数明确指定 CSV 加法基

来源：https://zenodo.org/records/14875701，v126.3.cw49。
按照逐位置列基的接口，先指定实际页的生成元，再把 CSV 单项式解释为
这些生成元的乘积，声明该明确元素族线性无关且张成整个分量。
`csvBasis` 由这些性质构造；没有公理化计算商环到实际页的同构。

`coordinates_spec` 是外部计算结果：成功的 Gröbner 计算给出实际元素在
上述明确基中的坐标。其正确性仍作为外部输入，不冒充已验证的数学证明。
基和坐标结论只适用于内部次数 t ≤ 261。范围外的截断零关系不传入实际页。
后续页乘法、微分值及 Leibniz 法则不在本模块声明。
-/

namespace KIPBase.StableHomotopy.SphereAdamsE2

set_option maxRecDepth 16384

open SphereE2 SphereE2.CSV Module

universe u v
variable (𝒮 : Type u) [StableHomotopyCategory.{u, v} 𝒮]

/-- 既有球谱 Adams 谱序列的实际第二页。 -/
abbrev Page (s t : ℕ) : Type v :=
  (AdamsSS 𝒮 (SphereSpectrum : 𝒮)).Page 2 ((s : ℤ), (t : ℤ))

axiom pageModule (s t : ℕ) : Module F2 (Page 𝒮 s t)

noncomputable instance (s t : ℕ) : Module F2 (Page 𝒮 s t) := pageModule 𝒮 s t

/-- 实际页的双线性乘法，沿用原来的接口。 -/
axiom pageMul (s t s' t' : ℕ) :
  Page 𝒮 s t →ₗ[F2] Page 𝒮 s' t' →ₗ[F2] Page 𝒮 (s + s') (t + t')

/-- 空单项式在实际页上的值（单位类）。 -/
axiom pageOne : Page 𝒮 0 0

/-- 按原 CSV 编号指定实际页生成元；类型明确记录每个生成元的次数。 -/
axiom pageGenerator (i : Generator) :
  Page 𝒮 (generatorDegree i).1 (generatorDegree i).2

/-- 用实际页的加法和乘法解释齐次表达式，无商环比较同构。 -/
noncomputable def evaluate {s t : ℕ} : Expression s t → Page 𝒮 s t
  | .zero _ _ => 0
  | .one => pageOne 𝒮
  | .gen i => pageGenerator 𝒮 i
  | .add a b => evaluate a + evaluate b
  | .mul a b => pageMul 𝒮 _ _ _ _ (evaluate a) (evaluate b)

/-- 指定位置第 i 个 CSV 单项式在实际第二页上的值。 -/
noncomputable def basisValue (s t : ℕ) (i : BasisIndex s t) : Page 𝒮 s t :=
  evaluate 𝒮 (basisExpression s t i)

/-- 外部基数据：这些明确的单项式在该位置线性无关。 -/
axiom basis_linearIndependent (s t : ℕ) (ht : t ≤ 261) :
  LinearIndependent F2 (basisValue 𝒮 s t)

/-- 外部基数据：这些明确的单项式张成该位置的整个实际第二页分量。 -/
axiom basis_span (s t : ℕ) (ht : t ≤ 261) :
  Submodule.span F2 (Set.range (basisValue 𝒮 s t)) = ⊤

/-- 由指定元素族的线性无关与张成性构造加法基。 -/
noncomputable def csvBasis (s t : ℕ) (ht : t ≤ 261) :
    Basis (BasisIndex s t) F2 (Page 𝒮 s t) :=
  Basis.mk (basis_linearIndependent 𝒮 s t ht) (by rw [basis_span 𝒮 s t ht])

@[simp] theorem csvBasis_apply (s t : ℕ) (ht : t ≤ 261) (i : BasisIndex s t) :
    csvBasis 𝒮 s t ht i = basisValue 𝒮 s t i := by
  simp [csvBasis]

/-- 外部乘法/坐标数据：执行成功时，计算输出正是指定加法基中的坐标。
这是关于实际页元素的等式，不是商代数比较同构的公理。
特别地，取 e 为两个基单项式的乘积，即得到乘法表。 -/
axiom coordinates_spec (s t : ℕ) (ht : t ≤ 261)
    (e : Expression s t) (c : Coordinates s t) (fuel : ℕ)
    (h : coordinates e fuel = .ok c) :
    (csvBasis 𝒮 s t ht).repr (evaluate 𝒮 e) = coordinateVector c

/-- 任意实际元素的基坐标唯一，因此比较坐标足以验证等式。 -/
theorem eq_iff_coordinates_eq (s t : ℕ) (ht : t ≤ 261) (x y : Page 𝒮 s t) :
    x = y ↔ (csvBasis 𝒮 s t ht).repr x = (csvBasis 𝒮 s t ht).repr y :=
  (csvBasis 𝒮 s t ht).repr.injective.eq_iff.symm

/-- 将成功计算得到的坐标重组为实际第二页中的元素。 -/
theorem evaluate_eq_coordinates (s t : ℕ) (ht : t ≤ 261)
    (e : Expression s t) (c : Coordinates s t) (fuel : ℕ)
    (h : coordinates e fuel = .ok c) :
    evaluate 𝒮 e = (csvBasis 𝒮 s t ht).repr.symm (coordinateVector c) := by
  apply (csvBasis 𝒮 s t ht).repr.injective
  simpa [coordinateVector] using coordinates_spec 𝒮 s t ht e c fuel h

/-- 两个具体表达式的成功坐标计算一致，则实际页中相等。
两个失败结果不能作为相等证据。 -/
theorem evaluate_eq_of_coordinates (s t : ℕ) (ht : t ≤ 261)
    (a b : Expression s t) (c : Coordinates s t) (fuel : ℕ)
    (ha : coordinates a fuel = .ok c) (hb : coordinates b fuel = .ok c) :
    evaluate 𝒮 a = evaluate 𝒮 b := by
  apply (csvBasis 𝒮 s t ht).repr.injective
  rw [coordinates_spec 𝒮 s t ht a c fuel ha,
    coordinates_spec 𝒮 s t ht b c fuel hb]

/-- 计算出的零坐标表示实际页中的零元素。 -/
theorem evaluate_eq_zero (s t : ℕ) (ht : t ≤ 261)
    (e : Expression s t) (fuel : ℕ) (h : coordinates e fuel = .ok []) :
    evaluate 𝒮 e = 0 := by
  apply (csvBasis 𝒮 s t ht).repr.injective
  simpa [coordinateVector] using coordinates_spec 𝒮 s t ht e [] fuel h

/-- 两个明确基元素的乘法表：坐标输出在实际页中给出同样的线性组合。
总内部次数的上界明确限制可搬运的乘积。 -/
theorem basis_mul_eq_coordinates (s t s' t' : ℕ) (ht : t + t' ≤ 261)
    (i : BasisIndex s t) (j : BasisIndex s' t')
    (c : Coordinates (s + s') (t + t')) (fuel : ℕ)
    (h : coordinates (.mul (basisExpression s t i) (basisExpression s' t' j)) fuel =
      .ok c) :
    pageMul 𝒮 s t s' t' (basisValue 𝒮 s t i) (basisValue 𝒮 s' t' j) =
      (csvBasis 𝒮 (s + s') (t + t') ht).repr.symm (coordinateVector c) := by
  simpa [evaluate, basisValue] using
    evaluate_eq_coordinates 𝒮 (s + s') (t + t') ht
      (.mul (basisExpression s t i) (basisExpression s' t' j)) c fuel h

/-- 明确的基单项式非零；这是加法基公理的推论。 -/
theorem basisValue_ne_zero (s t : ℕ) (ht : t ≤ 261) (i : BasisIndex s t) :
    basisValue 𝒮 s t i ≠ 0 := by
  simpa using (csvBasis 𝒮 s t ht).ne_zero i

/-- 指定位置每个元素唯一地由这些 CSV 基元素的有限线性组合表示。 -/
theorem exists_unique_coordinates (s t : ℕ) (ht : t ≤ 261) (x : Page 𝒮 s t) :
    ∃! c : BasisIndex s t →₀ F2, (csvBasis 𝒮 s t ht).repr.symm c = x := by
  exact ⟨(csvBasis 𝒮 s t ht).repr x, (csvBasis 𝒮 s t ht).repr.symm_apply_apply x,
    fun c hc => (csvBasis 𝒮 s t ht).repr.symm.injective
      (hc.trans ((csvBasis 𝒮 s t ht).repr.symm_apply_apply x).symm)⟩

end KIPBase.StableHomotopy.SphereAdamsE2
