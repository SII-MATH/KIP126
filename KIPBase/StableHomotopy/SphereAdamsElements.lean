import KIPBase.StableHomotopy.AdamsE2Comparison

/-!
球谱第二页的公共命名元素。后续微分输入与主定理均从此处引用，
不导入 chanllege 的待证结论，也不使用旧 AddCommGrpCat 页上的 AdamsE2Data.hi。
CSV 编号和基编号固定于 Zenodo 14875701 / v126.3.cw49。
-/

set_option maxRecDepth 16384

namespace KIPBase.StableHomotopy.SphereAdamsE2

open CategoryTheory KIPBase.SphereE2

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

end KIPBase.StableHomotopy.SphereAdamsE2
