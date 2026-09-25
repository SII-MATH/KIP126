import KIPBase.StableHomotopy.AdamsE2Comparison

/-!
# h₆² 在球谱的经典模 2 Adams 谱序列中存活至 E∞

来源：Weinan Lin, Guozhen Wang, Zhouli Xu,
On the Last Kervaire Invariant Problem, Theorem 1.4 (= Theorem 7.1).
https://arxiv.org/html/2412.10879v2

直接使用 `multiplicativeSS` 中的 `sphereAdamsConvergingSS` 及
`sphereAdamsMultiplication`。元素、乘法、微分和 E∞ 均位于同一谱序列；
不通过另外的页同构搬运。基和坐标性质分别由 `BasisData`、`CoordinateData`
显式提供，本文件的计算结论以相应输入为前提。
CSV 中编号 69 的生成元是 h₆，双次数为 (s,t) = (1,64)；
其平方的双次数是 (2,128)，对应 stem t-s = 126。

“存活”用同一个 Z∞ 代表元表达：它在 E₂ 中代表指定元素，
且在 E∞ = Z∞/B∞ 中的像非零。没有假设存在整个 E₂ 到 E∞ 的映射，
也没有把 E∞ 分量非零或单独 d₂ = 0 当作指定元素存活。

这里只陈述论文结论。主定理的证明按要求保留 sorry；
这不是从现有 E₂ 乘法数据推导出的存活性证明。
-/

set_option maxRecDepth 16384

namespace KIPBase.KervaireChallenge

open CategoryTheory
open StableHomotopy StableHomotopy.SphereAdamsE2
open SphereE2

universe u v

/-- 原始 CSV 的生成元编号，采用从 0 开始的索引。 -/
def h6Generator : Generator := ⟨69, by decide⟩

theorem h6Generator_name : generatorName h6Generator = "h_6" := by decide

theorem h6Generator_degree : generatorDegree h6Generator = (1, 64) := by decide

/-- 按原始生成元编号给出的齐次表达式。 -/
def h6Expression : CSV.Expression 1 64 := .gen h6Generator

def h6SqExpression : CSV.Expression 2 128 := .mul h6Expression h6Expression

/-- 保留计算环中的表达式，供原来的 e2_mul 使用。 -/
noncomputable def dataH6 : E2 := h6Expression.data
noncomputable def dataH6Sq : E2 := h6SqExpression.data

variable (𝒮 : Type u) [StableHomotopyCategory.{u, v} 𝒮]
  [BasisData 𝒮] [CoordinateData 𝒮]

/-- 实际第二页上的指定生成元 h₆，无比较同构。 -/
noncomputable def h6 : Page 𝒮 1 64 := evaluate 𝒮 h6Expression

def h6BasisIndex : CSV.BasisIndex 1 64 := ⟨0, by native_decide⟩

/-- h₆ 对应 (1,64) 的唯一 CSV 基元素。 -/
theorem h6_eq_basisValue :
    h6 𝒮 = SphereAdamsE2.basisValue 𝒮 1 64 h6BasisIndex := by
  simpa [CSV.coordinateVector, h6] using
    evaluate_eq_coordinates 𝒮 1 64 (by decide) h6Expression
      [h6BasisIndex] 1000000 (by native_decide)

/-- 直接使用 multiplicativeSS 原有配对定义 h₆ · h₆。 -/
noncomputable def h6Sq : Page 𝒮 2 128 :=
  (sphereAdamsMultiplication (𝒮 := 𝒮)).ssPairing.pair 2 (1, 64) (1, 64)
    (TensorProduct.tmul IntModuleRing (h6 𝒮) (h6 𝒮))

omit [BasisData 𝒮] [CoordinateData 𝒮] in
/-- 目标中的平方就是原有配对的值，按定义相等，无转换前提。 -/
theorem h6Sq_eq_pair :
    h6Sq 𝒮 =
      (sphereAdamsMultiplication (𝒮 := 𝒮)).ssPairing.pair 2 (1, 64) (1, 64)
        (TensorProduct.tmul IntModuleRing (h6 𝒮) (h6 𝒮)) := rfl

/-- CSV 在 (2,128) 位置的第 0 个基元素。 -/
def h6SqBasisIndex : CSV.BasisIndex 2 128 := ⟨0, by native_decide⟩

theorem h6SqBasis_monomial :
    (CSV.basisRow 2 128 h6SqBasisIndex).monomial = "69,2" := by native_decide

/-- 具体坐标公式：h₆² 就是 (2,128) 位置明确列出的第 0 个加法基元素。 -/
theorem h6Sq_eq_basisValue :
    h6Sq 𝒮 = SphereAdamsE2.basisValue 𝒮 2 128 h6SqBasisIndex := by
  change evaluate 𝒮 h6SqExpression = _
  simpa [CSV.coordinateVector] using
    evaluate_eq_coordinates 𝒮 2 128 (by decide) h6SqExpression
      [h6SqBasisIndex] 1000000 (by native_decide)

/-- E₂ 中非零来自基性质；这不等于已经证明存活至 E∞。 -/
theorem h6Sq_ne_zero : h6Sq 𝒮 ≠ 0 := by
  rw [h6Sq_eq_basisValue]
  exact basisValue_ne_zero 𝒮 2 128 (by decide) h6SqBasisIndex

/-- 指定 E₂ 元素存活至 E∞ 并保持非零。

`SSData` 使用相对页编号 n = (r-r₀).toNat。这里直接读取既有
ModuleCat 谱序列的 r₀，不额外假定旧 transfer 占位实现保持起始页。
使用 Z∞ ↪ Z_n → E₂ 和 Z∞ → E∞，确保两页上使用同一个代表元。
Z∞ 排除支持非零微分，E∞ 中非零排除成为边缘。
-/
def SurvivesToEInfty (s t : ℕ) (x : Page 𝒮 s t) : Prop :=
  let E := (sphereAdamsConvergingSS (𝒮 := 𝒮)).E
  let D := E.ssData ((s : ℤ), (t : ℤ))
  let n : WithTop ℕ := ↑(2 - E.r₀).toNat
  ∃ z : (Subobject.underlying.obj (D.Z ⊤) : ModuleCat.{v, v} IntModuleRing.{v}),
    (Subobject.ofLE (D.Z ⊤) (D.Z n) (D.Z_anti le_top) ≫ D.pageπ n) z = x ∧
      (D.pageπ ⊤) z ≠ 0

/-- Lin–Wang–Xu, Theorem 1.4 / 7.1：
h₆² 在球谱的经典模 2 Adams 谱序列中存活至 E∞^{2,128}，且非零。
谱序列及乘法使用既有 multiplicativeSS 接口，E₂ 基/坐标数据作为显式输入；
本结论的证明尚未形式化。 -/
theorem h6_sq_survives_to_eInfty :
    SurvivesToEInfty 𝒮 2 128 (h6Sq 𝒮) := by
  sorry

end KIPBase.KervaireChallenge
