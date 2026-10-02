import KIP126.Challenge1
import KIP126.Def.References.Literature.Claims

/-!
# 带来源的 synthetic 文献输入

数学接口在 Challenge1 中定义；这里将调用者提供的证明绑定到已有 claim
目录的精确来源。目录编号和文献定位本身不产生证明，也不选择一个全局输入。

ν 的 cofiber 判据来自 Pstrągowski Lemma 4.23；full lift 来自 BHS Lemma 9.15；
与 distinguished triangle 相容的 lift 来自该引理的证明。三个输入始终使用
同一个 H𝔽₂ 与同一个 ν，不能用相互无关的模型分别填入。
-/

namespace KIP126.Synthetic

open KIP126.External KIP126.StableHomotopy
open KIP126.StableHomotopy.Cohomology KIP126.Synthetic.Context

universe u v u' v'

variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type u'} [SyntheticCategory.{u', v'} Syn]
  (H : Mod2EilenbergMacLane (C := C)) (N : NuFunctorData C Syn)

/-- 将明确提供的 cofiber 判据证明绑定到 Pstrągowski Lemma 4.23。 -/
def cataloguedNuCofiberCriterion (proof : NuCofiberCriterion H N) :
    CataloguedExternalResult (NuCofiberCriterion H N) :=
  { root := .nuCofiberCriterion
    value :=
      { proof := proof
        ref := (externalClaimLedger.lookup .nuCofiberCriterion).ref }
    ref_eq := rfl
    class_supported := by trivial }

/-- 将明确提供的 full-lift 证明绑定到 BHS Lemma 9.15。 -/
def cataloguedSyntheticLift (proof : SyntheticLiftComparison H N) :
    CataloguedExternalResult (SyntheticLiftComparison H N) :=
  { root := .syntheticLift
    value :=
      { proof := proof
        ref := (externalClaimLedger.lookup .syntheticLift).ref }
    ref_eq := rfl
    class_supported := by trivial }

/-- 将明确提供的三角提升证明绑定到 BHS Lemma 9.15 的证明。 -/
def cataloguedSyntheticTriangleLift (proof : SyntheticTriangleLiftComparison H N) :
    CataloguedExternalResult (SyntheticTriangleLiftComparison H N) :=
  { root := .syntheticTriangleLift
    value :=
      { proof := proof
        ref := (externalClaimLedger.lookup .syntheticTriangleLift).ref }
    ref_eq := rfl
    class_supported := by trivial }

/-- 同一 H𝔽₂ 与 ν 上的三个显式文献输入，分别锁定其 claim 来源。

每个 `CataloguedExternalResult` 同时携带命题证明与来源。此记录的定义不声称
存在这样的输入，也不把未完成的来源定理转换为项目 axiom。
-/
structure SyntheticLiteratureInput where
  nu_cofiber : CataloguedExternalResult (NuCofiberCriterion H N)
  nu_cofiber_root : nu_cofiber.root = .nuCofiberCriterion
  lift : CataloguedExternalResult (SyntheticLiftComparison H N)
  lift_root : lift.root = .syntheticLift
  triangle_lift : CataloguedExternalResult (SyntheticTriangleLiftComparison H N)
  triangle_lift_root : triangle_lift.root = .syntheticTriangleLift

/-- 仅提取调用者已提供的三个证明，得到对应的数学接口。 -/
theorem SyntheticLiteratureInput.interface (input : SyntheticLiteratureInput H N) :
    SyntheticInterface H N where
  nu_cofiber := input.nu_cofiber.value.proof
  lift := input.lift.value.proof
  triangle_lift := input.triangle_lift.value.proof

end KIP126.Synthetic
