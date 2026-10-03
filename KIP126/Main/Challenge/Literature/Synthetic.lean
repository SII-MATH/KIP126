import KIP126.Main.Axiom.Literature.Synthetic

namespace KIP126.Synthetic

open KIP126.External KIP126.StableHomotopy
open KIP126.StableHomotopy.Cohomology KIP126.Synthetic.Context

universe u v u' v'

variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type u'} [SyntheticCategory.{u', v'} Syn]
  (H : Mod2EilenbergMacLane (C := C)) (N : NuFunctorData C Syn)

/-- 仅提取调用者已提供的三个证明，得到对应的数学接口。 -/
theorem Challenge.SyntheticLiteratureInput.interface (input : SyntheticLiteratureInput H N) :
    SyntheticInterface H N := by
  sorry


end KIP126.Synthetic
