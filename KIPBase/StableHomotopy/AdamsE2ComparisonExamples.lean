import KIPBase.StableHomotopy.AdamsE2Comparison

/-!
实际 Adams 第二页的显式加法基及计算关系。
实际页等式使用外部 coordinates_spec；商环例子仍可使用原 e2_mul。
所有 native_decide 都实际执行数据检查，不用 sorry 替代计算。
-/
set_option maxRecDepth 16384

namespace KIPBase.StableHomotopy.SphereAdamsE2.Examples
open SphereE2 SphereE2.CSV

def x0 : Expression 1 1 := .gen ⟨0, by decide⟩
def x1 : Expression 1 2 := .gen ⟨1, by decide⟩
def x2 : Expression 1 4 := .gen ⟨2, by decide⟩

/-- CSV 在 (2,2) 位置的第 0 个基单项式是 h₀²。 -/
def squareIndex : BasisIndex 2 2 := ⟨0, by native_decide⟩
example : (basisRow 2 2 squareIndex).index = 0 ∧
    (basisRow 2 2 squareIndex).monomial = "0,2" := by native_decide

/-- CSV 在 (3,6) 位置的第 0 个基单项式是 h₀²h₂。 -/
def cubicIndex : BasisIndex 3 6 := ⟨0, by native_decide⟩
example : (basisRow 3 6 cubicIndex).monomial = "0,2,2,1" := by native_decide

-- 原商环计算器仍可使用，不依赖实际页的外部基假设。
example : (Expression.mul x0 x1).data = 0 := by e2_mul

universe u v
variable (𝒮 : Type u) [StableHomotopyCategory.{u, v} 𝒮]
  [BasisData 𝒮] [CoordinateData 𝒮]

-- CSV 的计算结果直接是原有第二页配对的等式，不经过页转换。
example : (sphereAdamsMultiplication (𝒮 := 𝒮)).ssPairing.pair 2 (1, 1) (1, 2)
    (TensorProduct.tmul IntModuleRing (evaluate 𝒮 x0) (evaluate 𝒮 x1)) = 0 := by
  exact evaluate_eq_zero 𝒮 2 3 (by decide) (.mul x0 x1) 1000000 (by native_decide)

-- 逐位置明确列出的单项式是实际页上的加法基。
example : LinearIndependent F2 (SphereAdamsE2.basisValue 𝒮 2 2) :=
  basis_linearIndependent 𝒮 2 2 (by decide)

-- h₀h₁ 的坐标为空，所以它在实际页上为零。
example : pageMul 𝒮 1 1 1 2 (evaluate 𝒮 x0) (evaluate 𝒮 x1) = 0 := by
  exact evaluate_eq_zero 𝒮 2 3 (by decide) (.mul x0 x1) 1000000 (by native_decide)

-- h₀² 的坐标为 [0]，明确得到该位置的第 0 个基元素。
example : pageMul 𝒮 1 1 1 1 (evaluate 𝒮 x0) (evaluate 𝒮 x0) =
    SphereAdamsE2.basisValue 𝒮 2 2 squareIndex := by
  simpa [coordinateVector, evaluate] using
    evaluate_eq_coordinates 𝒮 2 2 (by decide) (.mul x0 x0)
      [squareIndex] 1000000 (by native_decide)

-- 非零性来自明确的基公理，而不是把一次计算成功误当成非零性。
example : SphereAdamsE2.basisValue 𝒮 2 2 squareIndex ≠ 0 :=
  basisValue_ne_zero 𝒮 2 2 (by decide) squareIndex

-- 两个表达式都得到 [0] 坐标，故实际页中 h₁³ = h₀²h₂。
example : evaluate 𝒮 (.mul (.mul x1 x1) x1) =
    evaluate 𝒮 (.mul (.mul x0 x0) x2) := by
  exact evaluate_eq_of_coordinates 𝒮 3 6 (by decide)
    (.mul (.mul x1 x1) x1) (.mul (.mul x0 x0) x2) [cubicIndex] 1000000
    (by native_decide) (by native_decide)

-- 空位置的基确实为空，不会凭空补一个基向量。
example : (rowsAt 0 1).length = 0 := by native_decide

-- 错误次数与超范围请求报错；错误坐标不能被 native_decide 接受。
example : (decodeExpression 2 3 "0,2").isOk = false := by native_decide
example : coordinates (.zero 0 262) = .error "outside data range" := by native_decide
example : True := by
  fail_if_success have := csvBasis 𝒮 1 262 (by omega)
  fail_if_success have : coordinates (.mul x0 x0) = .ok [] := by native_decide
  trivial

end KIPBase.StableHomotopy.SphereAdamsE2.Examples
