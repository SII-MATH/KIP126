import KIP126.Def.Challenge1
import KIP126.Def.References.Literature.Claims

/-! Source-bearing input statements only. Their evidence constructors and
transparent projections are in `Main/Solution/Literature/Synthetic`. -/

namespace KIP126.Synthetic

open KIP126.External KIP126.StableHomotopy
open KIP126.StableHomotopy.Cohomology KIP126.Synthetic.Context

universe u v u' v'

variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type u'} [SyntheticCategory.{u', v'} Syn]
  (H : Mod2EilenbergMacLane (C := C)) (N : NuFunctorData C Syn)

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


end KIP126.Synthetic
