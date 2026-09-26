import KIPBase.StableHomotopy.SphereAdamsProofsData

/-!
Generated external computation axioms, explicitly requested by the user.
These constrain the existing sphereAdamsConvergingSS differential.
They are mathematical assumptions, not proofs of the database computations.
Each includes E_r representatives of the fixed E2 labels and an E_r-nonzero target.
-/

namespace KIPBase.StableHomotopy.SphereAdamsProofs

open SphereAdamsDifferentials

universe u v

variable (𝒮 : Type u) [StableHomotopyCategory.{u, v} 𝒮]

/-- 球谱具体微分公理：d_2(x_{125,8}) = h_1 * x_{123,9} + h_0^2 * x_{124,8}。
源次数 (s,t)=(8,133)，目标次数 (10,134)；目标在 E_2 中非零。
来源：proofs.db:log.id=5990；论文 Fact 7.13(2)。
完整来源与校验信息见 `d2_x125_8_provenance` 及伴随 records.json。
此公理直接约束已有 sphereAdamsConvergingSS 的微分：
HasNonzeroDifferential 中的代表和等式均使用原来的页与 d 映射。
按用户要求接受数据库计算结果；这里不证明计算正确性，也不另定义微分。 -/
axiom d2_x125_8 :
    HasNonzeroDifferential 𝒮 2
      (SphereAdamsE2.evaluate 𝒮 d2_x125_8_source)
      (SphereAdamsE2.evaluate 𝒮 d2_x125_8_target)

/-- 球谱具体微分公理：d_2(h_6) = h_0 * h_5^2。
源次数 (s,t)=(1,64)，目标次数 (3,65)；目标在 E_2 中非零。
来源：proofs.db:log.id=5541；论文 Lemma 7.16, classical Toda bracket argument。
完整来源与校验信息见 `d2_h6_provenance` 及伴随 records.json。
此公理直接约束已有 sphereAdamsConvergingSS 的微分：
HasNonzeroDifferential 中的代表和等式均使用原来的页与 d 映射。
按用户要求接受数据库计算结果；这里不证明计算正确性，也不另定义微分。 -/
axiom d2_h6 :
    HasNonzeroDifferential 𝒮 2
      (SphereAdamsE2.evaluate 𝒮 d2_h6_source)
      (SphereAdamsE2.evaluate 𝒮 d2_h6_target)

/-- 球谱具体微分公理：d_3(h_4 * x_{109,12}) = h_1 * x_{122,15,2}。
源次数 (s,t)=(13,137)，目标次数 (16,139)；目标在 E_3 中非零。
来源：proofs.db:log.id=153768；论文 Lemma 7.14(1)。
完整来源与校验信息见 `d3_h4_x109_12_provenance` 及伴随 records.json。
此公理直接约束已有 sphereAdamsConvergingSS 的微分：
HasNonzeroDifferential 中的代表和等式均使用原来的页与 d 映射。
按用户要求接受数据库计算结果；这里不证明计算正确性，也不另定义微分。 -/
axiom d3_h4_x109_12 :
    HasNonzeroDifferential 𝒮 3
      (SphereAdamsE2.evaluate 𝒮 d3_h4_x109_12_source)
      (SphereAdamsE2.evaluate 𝒮 d3_h4_x109_12_target)

/-- 球谱具体微分公理：d_3(h_0^2 * x_{123,13,2}) = h_0^2 * x_{122,16}。
源次数 (s,t)=(15,138)，目标次数 (18,140)；目标在 E_3 中非零。
来源：proofs.db:log.id=462481；论文 Lemma 7.14(2)。
完整来源与校验信息见 `d3_h0Sq_x123_13_2_provenance` 及伴随 records.json。
此公理直接约束已有 sphereAdamsConvergingSS 的微分：
HasNonzeroDifferential 中的代表和等式均使用原来的页与 d 映射。
按用户要求接受数据库计算结果；这里不证明计算正确性，也不另定义微分。 -/
axiom d3_h0Sq_x123_13_2 :
    HasNonzeroDifferential 𝒮 3
      (SphereAdamsE2.evaluate 𝒮 d3_h0Sq_x123_13_2_source)
      (SphereAdamsE2.evaluate 𝒮 d3_h0Sq_x123_13_2_target)

/-- 球谱具体微分公理：d_3(x_{126,4}) = h_0^2 * x_{125,5}。
源次数 (s,t)=(4,130)，目标次数 (7,132)；目标在 E_3 中非零。
来源：proofs.db:log.id=929469；论文 Lemma 7.16。
完整来源与校验信息见 `d3_x126_4_provenance` 及伴随 records.json。
此公理直接约束已有 sphereAdamsConvergingSS 的微分：
HasNonzeroDifferential 中的代表和等式均使用原来的页与 d 映射。
按用户要求接受数据库计算结果；这里不证明计算正确性，也不另定义微分。 -/
axiom d3_x126_4 :
    HasNonzeroDifferential 𝒮 3
      (SphereAdamsE2.evaluate 𝒮 d3_x126_4_source)
      (SphereAdamsE2.evaluate 𝒮 d3_x126_4_target)

/-- 球谱具体微分公理：d_7(x_{123,11,2} + x_{123,11} + h_0 * h_6 * [B_4]) = h_1 * x_{121,17}。
源次数 (s,t)=(11,134)，目标次数 (18,140)；目标在 E_7 中非零。
来源：proofs.db:log.id=2671068；论文 Lemma 7.14(2)。
完整来源与校验信息见 `d7_x123_11_combination_provenance` 及伴随 records.json。
此公理直接约束已有 sphereAdamsConvergingSS 的微分：
HasNonzeroDifferential 中的代表和等式均使用原来的页与 d 映射。
按用户要求接受数据库计算结果；这里不证明计算正确性，也不另定义微分。 -/
axiom d7_x123_11_combination :
    HasNonzeroDifferential 𝒮 7
      (SphereAdamsE2.evaluate 𝒮 d7_x123_11_combination_source)
      (SphereAdamsE2.evaluate 𝒮 d7_x123_11_combination_target)

/-- 球谱具体微分公理：d_2(h_0^6 * h_6) = h_0^7 * h_5^2。
源次数 (s,t)=(7,70)，目标次数 (9,71)；目标在 E_2 中非零。
来源：S0_AdamsSS_t261.db:S0_AdamsE2_basis.id=513；论文 Lemma 7.16, classical Toda bracket argument。
完整来源与校验信息见 `d2_h0Pow6_h6_provenance` 及伴随 records.json。
此公理直接约束已有 sphereAdamsConvergingSS 的微分：
HasNonzeroDifferential 中的代表和等式均使用原来的页与 d 映射。
按用户要求接受数据库计算结果；这里不证明计算正确性，也不另定义微分。 -/
axiom d2_h0Pow6_h6 :
    HasNonzeroDifferential 𝒮 2
      (SphereAdamsE2.evaluate 𝒮 d2_h0Pow6_h6_source)
      (SphereAdamsE2.evaluate 𝒮 d2_h0Pow6_h6_target)

end KIPBase.StableHomotopy.SphereAdamsProofs
