import KIP126.Def.SpectralSequence.Computation.Predicates
import KIP126.Def.Comparison.StageInterfaces.Models
import KIP126.Def.StageInput.StandardSphere.Sequence.Data
import KIP126.Def.ClassicalAdams.Tmf.Model.Predicates

/-! Coordinate-bound tmf comparison contracts and the combined consumer adapter. -/

namespace KIP126.Challenge2
open CategoryTheory CategoryTheory.MonoidalCategory
open Classical.Adams Core.SpectralSequence
universe u v w

/-- am14 的 BR21 微分切片。同一代数对象的单位定义实际 Hurewicz，
固定 CSV 商中的 w₂² 与 β⁵g 经同一个坐标比较进入该对象的实际 Adams 塔。
这项只交付微分等式，不从它增加非零或存活。
来源：BR21 Table 5.4 / Theorem 5.18，印刷页196 / PDF第213页。
原书写 βg⁴；`CsvE2.betaGFourValue_eq_betaFiveGValue` 从同一商环关系证明
βg⁴ = β⁵g。固定坐标源为 v126.3.cw49；到实际 tmf E₂ 的比较另列。
本组尚不包含 tmf 的几何构造、乘法比较、θ₅ 像零或 125-stem 检测。 -/
structure TmfDifferentialInterface {C : Type u}
    [StableHomotopy.StableHomotopyCategory.{u, v} C]
    [StableHomotopy.HasFunctorialCofiber (C := C)]
    (H : StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C)) where
  target : Mon C
  coordinates : Tmf.E2Presentation H target
  br21 : HasDifferential (adamsTowerInternalSpectralSequence H.unit target.X) 3
    (16, 112) (19, 114) coordinates.v2Sixteen coordinates.betaFiveG

/-- Project the same target and coordinates from the compatibility interface. -/
def TmfDifferentialInterface.toModel {C : Type u}
    [StableHomotopy.StableHomotopyCategory.{u, v} C]
    [StableHomotopy.HasFunctorialCofiber (C := C)]
    {H : StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C)}
    (input : TmfDifferentialInterface H) : TmfModel H where
  target := input.target
  coordinates := input.coordinates

/-- BR21's differential on this exact algebra object and coordinate comparison. -/
def TmfModel.Br21Statement {C : Type u}
    [StableHomotopy.StableHomotopyCategory.{u, v} C]
    [StableHomotopy.HasFunctorialCofiber (C := C)]
    {H : StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C)}
    (model : TmfModel H) : Prop :=
  HasDifferential (adamsTowerInternalSpectralSequence H.unit model.target.X) 3
    (16, 112) (19, 114) model.coordinates.v2Sixteen model.coordinates.betaFiveG

/-- Reassemble the original tmf interface without a fresh choice. -/
def TmfModel.withDifferential {C : Type u}
    [StableHomotopy.StableHomotopyCategory.{u, v} C]
    [StableHomotopy.HasFunctorialCofiber (C := C)]
    {H : StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C)}
    (model : TmfModel H) (proof : model.Br21Statement) : TmfDifferentialInterface H where
  target := model.target
  coordinates := model.coordinates
  br21 := proof

/-- am14 的单位与乘法比较义务，约束已选的同一个 target/coordinates。
乘法使用实际 Adams 层配对及 target.mul；不再容许独立选择一个页面乘法。
所有张量、HF₂ ring 和相容结构来自 Def 的同一个固定实现。 -/
def StandardTmfModelMultiplicativeInterface
    (T : TmfModel standardFoundation.hf2) : Prop :=
  let c := KIP126.Def.StageInput.witness
  letI : Foundation.TensorInput c.foundationInput := c.tensorInput
  T.coordinates.RespectsUnit ∧
    Tmf.E2Presentation.RespectsMultiplication c.cooperationInput.ring T.coordinates

/-- Original comparison API, definitionally the property of the same tmf model. -/
def StandardTmfMultiplicativeInterface
    (T : TmfDifferentialInterface standardFoundation.hf2) : Prop :=
  StandardTmfModelMultiplicativeInterface T.toModel

end KIP126.Challenge2
