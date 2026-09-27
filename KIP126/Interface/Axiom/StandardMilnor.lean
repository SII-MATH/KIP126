import KIP126.Interface.Axiom.StandardFoundation
import KIP126.Def.ClassicalAdams.MilnorCooperations.Data

namespace KIP126.Classical.Adams

open KIP126.StableHomotopy

/-!
# Milnor 基础输入：坐标选择与相容性质

以下两项逐一对应 `MilnorCooperations` 的原字段，使用同一个
`standardFoundation.hf2`。来源方向是 classical Milnor cobar identification；
精确文献定位和从合作运算出发的构造仍待完成。
-/
namespace StandardMilnorInputs

/-- 数据：为指定 H𝔽₂ 的 Adams resolution 第一页选择 Milnor cochain 坐标。
这里声明的是各次数上的 ℤ-线性等价，尚未构造。 -/
axiom coordinates (s t : ℕ) :
    adamsPage standardFoundation.hf2.unit SphereSpectrum 1 (by decide) s t ≃ₗ[ℤ]
      KIP126.Steenrod.Milnor.cochains s t

/-- 性质：上面选定的同一坐标把已构造的第一微分送到 Milnor cobar 微分。
这是原结构要求的相容性，尚未证明。 -/
axiom differential_coordinates (s t : ℕ)
    (x : adamsPage standardFoundation.hf2.unit SphereSpectrum 1 (by decide) s t) :
    coordinates (s + 1) t (sphereFirstDifferential standardFoundation.hf2 s t x) =
      KIP126.Steenrod.Milnor.differential s t (coordinates s t x)

end StandardMilnorInputs

/-- 将逐项声明的基础输入组装成原接口；不再假定一个额外的整包值。 -/
noncomputable def standardMilnorCooperations : MilnorCooperations standardFoundation.hf2 where
  coordinates := StandardMilnorInputs.coordinates
  differential_coordinates := StandardMilnorInputs.differential_coordinates

end KIP126.Classical.Adams
