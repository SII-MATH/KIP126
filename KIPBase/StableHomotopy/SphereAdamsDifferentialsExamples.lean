import KIPBase.StableHomotopy.SphereAdamsDifferentials
import KIPBase.chanllege

/-!
球谱接口回归：公共元素与旧名称一致、第二页代表不能错认、
错误微分次数被排除。以下条件示例不宣称任何具体非零微分成立。
-/

namespace KIPBase.StableHomotopy.SphereAdamsDifferentials.Examples

universe u v
variable (𝒮 : Type u) [StableHomotopyCategory.{u, v} 𝒮]

example : KervaireChallenge.h6 𝒮 = SphereAdamsE2.h6 𝒮 := rfl
example : KervaireChallenge.h6Sq 𝒮 = SphereAdamsE2.h6Sq 𝒮 := rfl

example {x y : SphereAdamsE2.Page 𝒮 2 128}
    (h : Represents 𝒮 2 (by decide) x y) : x = y :=
  h.eq_on_page_two 𝒮

-- d₁₂ 从 (2,128) 出发的目标必须在 (14,139)，不可能在 (13,139)。
example (y : SphereAdamsE2.Page 𝒮 13 139) :
    ¬ HasDifferential 𝒮 12 (SphereAdamsE2.h6Sq 𝒮) y := by
  rintro ⟨w⟩
  have h := congrArg Prod.fst w.target_degree
  norm_num [adamsDiffDeg] at h

-- 数据表达式接口确实引用公共 h₆²；此处只比较两种陈述，不假设该微分存在。
example (y : SphereE2.CSV.Expression 14 139) :
    ExpressionDifferential 𝒮 12 SphereAdamsE2.h6SqExpression y ↔
      HasDifferential 𝒮 12 (SphereAdamsE2.h6Sq 𝒮) (SphereAdamsE2.evaluate 𝒮 y) :=
  Iff.rfl

-- 合法零微分可从零代表和已有微分的线性性构造，不读取任何微分数据库。
example (hstart : (ss 𝒮).r₀ = 2)
    (hdeg : (ss 𝒮).diffDeg 2 = adamsDiffDeg 2) :
    HasDifferential 𝒮 2 (0 : SphereAdamsE2.Page 𝒮 1 64)
      (0 : SphereAdamsE2.Page 𝒮 3 65) := by
  exact ⟨{
    page_ge_two := by decide
    start_page := hstart
    differential_degree := hdeg
    target_degree := by decide
    source := 0
    target := 0
    source_represents := represents_zero 𝒮 2 (by decide) 1 64
    target_represents := represents_zero 𝒮 2 (by decide) 3 65
    equation := (differential 𝒮 2 1 64 3 65 hdeg (by decide)).hom.map_zero
  }⟩

-- E₂ 的基非零性保持可用；不需要旧 AdamsE2Data.hi 接口。
example [SphereAdamsE2.BasisData 𝒮] [SphereAdamsE2.CoordinateData 𝒮] :
    SphereAdamsE2.h6Sq 𝒮 ≠ 0 := SphereAdamsE2.h6Sq_ne_zero 𝒮

end KIPBase.StableHomotopy.SphereAdamsDifferentials.Examples
