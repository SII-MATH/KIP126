import KIPBase.StableHomotopy.SphereAdamsElements

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

-- 保留旧公开名称；它们按定义就是公共接口中的同一个元素。
abbrev h6Generator := SphereAdamsE2.h6Generator
abbrev h6Expression := SphereAdamsE2.h6Expression
abbrev h6SqExpression := SphereAdamsE2.h6SqExpression
noncomputable abbrev dataH6 := SphereAdamsE2.dataH6
noncomputable abbrev dataH6Sq := SphereAdamsE2.dataH6Sq
abbrev h6BasisIndex := SphereAdamsE2.h6BasisIndex
abbrev h6SqBasisIndex := SphereAdamsE2.h6SqBasisIndex

theorem h6Generator_name : generatorName h6Generator = "h_6" :=
  SphereAdamsE2.h6Generator_name

theorem h6Generator_degree : generatorDegree h6Generator = (1, 64) :=
  SphereAdamsE2.h6Generator_degree

theorem h6SqBasis_monomial :
    (CSV.basisRow 2 128 h6SqBasisIndex).monomial = "69,2" :=
  SphereAdamsE2.h6SqBasis_monomial

variable (𝒮 : Type u) [StableHomotopyCategory.{u, v} 𝒮]

noncomputable abbrev h6 : Page 𝒮 1 64 := SphereAdamsE2.h6 𝒮
noncomputable abbrev h6Sq : Page 𝒮 2 128 := SphereAdamsE2.h6Sq 𝒮

theorem h6Sq_eq_pair :
    h6Sq 𝒮 =
      (sphereAdamsMultiplication (𝒮 := 𝒮)).ssPairing.pair 2 (1, 64) (1, 64)
        (TensorProduct.tmul IntModuleRing (h6 𝒮) (h6 𝒮)) := rfl

variable [BasisData 𝒮] [CoordinateData 𝒮]

theorem h6_eq_basisValue :
    h6 𝒮 = SphereAdamsE2.basisValue 𝒮 1 64 h6BasisIndex :=
  SphereAdamsE2.h6_eq_basisValue 𝒮

theorem h6Sq_eq_basisValue :
    h6Sq 𝒮 = SphereAdamsE2.basisValue 𝒮 2 128 h6SqBasisIndex :=
  SphereAdamsE2.h6Sq_eq_basisValue 𝒮

theorem h6Sq_ne_zero : h6Sq 𝒮 ≠ 0 := SphereAdamsE2.h6Sq_ne_zero 𝒮

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
