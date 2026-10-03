import KIP126.Main.Axiom.Literature.Synthetic

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

/-- 仅提取调用者已提供的三个证明，得到对应的数学接口。 -/
theorem SyntheticLiteratureInput.interface (input : SyntheticLiteratureInput H N) :
    SyntheticInterface H N where
  nu_cofiber := input.nu_cofiber.value.proof
  lift := input.lift.value.proof
  triangle_lift := input.triangle_lift.value.proof

end KIP126.Synthetic
