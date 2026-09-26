import KIPBase.multiplicativeSS.Adams
import KIPBase.E2pageBasis

/-!
# 球谱 Adams E₂：按双次数明确指定 CSV 加法基

来源：https://zenodo.org/records/14875701，v126.3.cw49。
按照逐位置列基的接口，先指定实际页的生成元，再把 CSV 单项式解释为
这些生成元的乘积，以显式输入要求该明确元素族线性无关且张成整个分量。
`csvBasis` 由这些性质构造；没有公理化计算商环到实际页的同构。

`coordinates_spec` 读取 `CoordinateData` 的外部计算结果：成功的 Gröbner
计算给出实际元素在上述明确基中的坐标。其正确性仍作为显式外部输入。
基和坐标结论只适用于内部次数 t ≤ 261。范围外的截断零关系不传入实际页。
`Page` 直接使用 `sphereAdamsConvergingSS.E.Page 2`，乘法直接调用
`sphereAdamsMultiplication.ssPairing.pair 2`。`pageMul` 只是该乘法的
F₂ 双线性包装，不引入另一套乘法，也不需要原始页之间的转换接口。
-/

namespace KIPBase.StableHomotopy.SphereAdamsE2

set_option maxRecDepth 16384

open SphereE2 SphereE2.CSV Module
open CategoryTheory CategoryTheory.MonoidalCategory
open scoped TensorProduct

universe u v
variable (𝒮 : Type u) [StableHomotopyCategory.{u, v} 𝒮]

/-- 直接使用 multiplicativeSS 中既有球谱谱序列的第二页。 -/
abbrev Page (s t : ℕ) : Type v :=
  (sphereAdamsConvergingSS (𝒮 := 𝒮)).E.Page 2 ((s : ℤ), (t : ℤ))

axiom pageModule (s t : ℕ) : Module F2 (Page 𝒮 s t)

noncomputable instance (s t : ℕ) : Module F2 (Page 𝒮 s t) := pageModule 𝒮 s t

/-- 在 F₂ 上，加法群同态自动线性；不需要额外的线性性公理。 -/
private def linearOfAdd {M N : Type v} [AddCommGroup M] [AddCommGroup N]
    [Module F2 M] [Module F2 N] (f : M →+ N) : M →ₗ[F2] N where
  toFun := f
  map_add' := f.map_add
  map_smul' := by
    intro c x
    fin_cases c <;> simp

/-- 既有第二页配对；唯一的转换是目标双次数的算术重写。 -/
noncomputable def pagePair (s t s' t' : ℕ) :
    (sphereAdamsConvergingSS (𝒮 := 𝒮)).E.Page 2 ((s : ℤ), (t : ℤ)) ⊗
        (sphereAdamsConvergingSS (𝒮 := 𝒮)).E.Page 2 ((s' : ℤ), (t' : ℤ)) ⟶
      (sphereAdamsConvergingSS (𝒮 := 𝒮)).E.Page 2
        (((s + s' : ℕ) : ℤ), ((t + t' : ℕ) : ℤ)) :=
  (sphereAdamsMultiplication (𝒮 := 𝒮)).ssPairing.pair 2
    ((s : ℤ), (t : ℤ)) ((s' : ℤ), (t' : ℤ)) ≫
      eqToHom (by simp only [Nat.cast_add, Prod.mk_add_mk])

/-- 将既有张量积配对写成双加法映射，直接在同一页上计算。 -/
noncomputable def pageMulAdd (s t s' t' : ℕ) :
    Page 𝒮 s t →+ Page 𝒮 s' t' →+ Page 𝒮 (s + s') (t + t') where
  toFun x :=
    { toFun := fun y => pagePair 𝒮 s t s' t' (x ⊗ₜ[IntModuleRing] y)
      map_zero' := by
        rw [TensorProduct.tmul_zero]
        exact (pagePair 𝒮 s t s' t').hom.map_zero
      map_add' := by
        intro y z
        rw [TensorProduct.tmul_add]
        exact (pagePair 𝒮 s t s' t').hom.map_add _ _ }
  map_zero' := by
    ext y
    change pagePair 𝒮 s t s' t' (0 ⊗ₜ[IntModuleRing] y) = 0
    rw [TensorProduct.zero_tmul]
    exact (pagePair 𝒮 s t s' t').hom.map_zero
  map_add' := by
    intro x y
    ext z
    change pagePair 𝒮 s t s' t' ((x + y) ⊗ₜ[IntModuleRing] z) =
      pagePair 𝒮 s t s' t' (x ⊗ₜ[IntModuleRing] z) +
        pagePair 𝒮 s t s' t' (y ⊗ₜ[IntModuleRing] z)
    rw [TensorProduct.add_tmul]
    exact (pagePair 𝒮 s t s' t').hom.map_add _ _

/-- 既有第二页配对的 F₂ 双线性包装；不是独立的乘法结构。 -/
noncomputable def pageMul (s t s' t' : ℕ) :
    Page 𝒮 s t →ₗ[F2] Page 𝒮 s' t' →ₗ[F2] Page 𝒮 (s + s') (t + t') :=
  linearOfAdd
    { toFun := fun x => linearOfAdd (pageMulAdd 𝒮 s t s' t' x)
      map_zero' := by ext y; exact congrArg (fun f => f y) (map_zero (pageMulAdd 𝒮 s t s' t'))
      map_add' := by
        intro x y
        ext z
        exact congrArg (fun f => f z) (map_add (pageMulAdd 𝒮 s t s' t') x y) }

/-- 包装成线性映射不改变乘法的值。 -/
@[simp] theorem pageMul_apply (s t s' t' : ℕ)
    (x : Page 𝒮 s t) (y : Page 𝒮 s' t') :
    pageMul 𝒮 s t s' t' x y = pageMulAdd 𝒮 s t s' t' x y := rfl

/-- `pageMul` 的值就是既有配对作用在纯张量上的值，按定义相等。 -/
theorem pageMul_eq_pair (s t s' t' : ℕ)
    (x : Page 𝒮 s t) (y : Page 𝒮 s' t') :
    pageMul 𝒮 s t s' t' x y =
      pagePair 𝒮 s t s' t' (x ⊗ₜ[IntModuleRing] y) := rfl

/-- 空单项式使用既有 multiplicativeSS 单位，不另行指定单位类。 -/
noncomputable def pageOne : Page 𝒮 0 0 :=
  (sphereAdamsUnit (𝒮 := 𝒮)).page 2 (1 : IntModuleRing)

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

/-- 既有 multiplicativeSS 第二页及其乘法的外部基性质。
调用者需明确提供这组数据。
来源仍为 Zenodo 14875701，v126.3.cw49 的逐次数 CSV 基。 -/
class BasisData : Prop where
  linearIndependent : ∀ (s t : ℕ), t ≤ 261 →
    LinearIndependent F2 (basisValue 𝒮 s t)
  span : ∀ (s t : ℕ), t ≤ 261 →
    Submodule.span F2 (Set.range (basisValue 𝒮 s t)) = ⊤

variable [BasisData 𝒮]

/-- 外部基输入：这些明确的单项式在该位置线性无关。 -/
theorem basis_linearIndependent (s t : ℕ) (ht : t ≤ 261) :
    LinearIndependent F2 (basisValue 𝒮 s t) :=
  BasisData.linearIndependent s t ht

/-- 外部基数据：这些明确的单项式张成该位置的整个实际第二页分量。 -/
theorem basis_span (s t : ℕ) (ht : t ≤ 261) :
    Submodule.span F2 (Set.range (basisValue 𝒮 s t)) = ⊤ :=
  BasisData.span s t ht

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
class CoordinateData : Prop where
  spec : ∀ (s t : ℕ) (ht : t ≤ 261)
    (e : Expression s t) (c : Coordinates s t) (fuel : ℕ),
    coordinates e fuel = .ok c →
      (csvBasis 𝒮 s t ht).repr (evaluate 𝒮 e) = coordinateVector c

variable [CoordinateData 𝒮]

/-- 针对当前全页乘法第二页的外部坐标输入。 -/
theorem coordinates_spec (s t : ℕ) (ht : t ≤ 261)
    (e : Expression s t) (c : Coordinates s t) (fuel : ℕ)
    (h : coordinates e fuel = .ok c) :
    (csvBasis 𝒮 s t ht).repr (evaluate 𝒮 e) = coordinateVector c :=
  CoordinateData.spec s t ht e c fuel h

omit [CoordinateData 𝒮] in
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

omit [CoordinateData 𝒮] in
/-- 明确的基单项式非零；这是加法基输入的推论。 -/
theorem basisValue_ne_zero (s t : ℕ) (ht : t ≤ 261) (i : BasisIndex s t) :
    basisValue 𝒮 s t i ≠ 0 := by
  simpa using (csvBasis 𝒮 s t ht).ne_zero i

omit [CoordinateData 𝒮] in
/-- 指定位置每个元素唯一地由这些 CSV 基元素的有限线性组合表示。 -/
theorem exists_unique_coordinates (s t : ℕ) (ht : t ≤ 261) (x : Page 𝒮 s t) :
    ∃! c : BasisIndex s t →₀ F2, (csvBasis 𝒮 s t ht).repr.symm c = x := by
  exact ⟨(csvBasis 𝒮 s t ht).repr x, (csvBasis 𝒮 s t ht).repr.symm_apply_apply x,
    fun c hc => (csvBasis 𝒮 s t ht).repr.symm.injective
      (hc.trans ((csvBasis 𝒮 s t ht).repr.symm_apply_apply x).symm)⟩

end KIPBase.StableHomotopy.SphereAdamsE2
