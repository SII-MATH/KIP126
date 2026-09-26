import KIPBase.StableHomotopy.SphereAdamsProofsLabels

/-!
公理接入回归：无需传入任何微分 _Input，就能使用原球谱谱序列的具体性质。
第二个例子进一步将 d₂ 的代表关系消去，得到原微分映射上的实际等式。
这些例子使用命名公理，不声称证明了数据库计算结果。
-/

namespace KIPBase.StableHomotopy.SphereAdamsProofs

open SphereAdamsDifferentials

universe u v
variable (𝒮 : Type u) [StableHomotopyCategory.{u, v} 𝒮]

-- h₆ 是已有 SphereAdamsE2.h6；无需额外微分假设。
example : HasNonzeroDifferential 𝒮 2 (SphereAdamsE2.h6 𝒮)
    (SphereAdamsE2.evaluate 𝒮 d2_h6_target) := d2_h6_named 𝒮

-- differential 仅为原 ss.d 的目标次数重写，不是新的“经典微分”。
example :
    let w := (d2_h6 𝒮).choose
    differential 𝒮 2 1 64 3 65 w.differential_degree w.target_degree
      (SphereAdamsE2.h6 𝒮) = SphereAdamsE2.evaluate 𝒮 d2_h6_target := by
  exact DifferentialWitness.equation_on_page_two 𝒮 (d2_h6 𝒮).choose

-- 对 r>2 保留共同循环代表，不将任意 E₂ 元素直接转换为 E_r 元素。
example : HasNonzeroDifferential 𝒮 7
    (SphereAdamsE2.evaluate 𝒮 d7_x123_11_combination_source)
    (SphereAdamsE2.evaluate 𝒮 d7_x123_11_combination_target) :=
  d7_x123_11_combination 𝒮

-- 普通等式也可直接从非零微分公理取得。
example : ExpressionDifferential 𝒮 3 d3_x126_4_source d3_x126_4_target :=
  HasNonzeroDifferential.toHasDifferential 𝒮 3 (d3_x126_4 𝒮)

-- 审计输出应包含 d2_h6 这一命名公理；不会把它误标为计算证明。
#print axioms d2_h6_named
#print axioms d2_x125_8_paper
#print axioms d2_h0Pow6_h6_paper

end KIPBase.StableHomotopy.SphereAdamsProofs
