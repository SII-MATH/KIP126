import KIP126.Def.Kervaire.Inputs.Literature.ClassicalSource
import KIP126.Def.ClassicalAdams.StandardSphere.Classes.Data
import KIP126.Def.StableHomotopy.Source.Hopf

/-! The classical source used by the standard route has geometrically
specified Hopf maps. An h2 leading term alone would also allow odd
multiples of nu in pi3; it is not its geometric definition. Both maps
below are the stabilized explicit complex/quaternionic Hopf maps through
the SAME source realization and sphere/shift comparisons as Final. -/
namespace KIP126.Literature.Route
open KIP126.Classical.Adams KIP126.StableHomotopy

structure StandardClassicalSourceGeometry
    (S : ClassicalSourceData standardFoundation.hf2) : Prop where
  eta : S.eta = Source.Hopf.geometricEta standardSourceBinding
  nu : S.nu = Source.Hopf.geometricNu standardSourceBinding

/-- The Xu/IWX existence statement with the usual specified low Hopf
maps. The geometry conditions bind objects, not additional local results. -/
def StandardClassicalSourceExistence : Prop :=
  ∃ S : ClassicalSourceData standardFoundation.hf2,
    ClassicalSourceResults standardMilnorCooperations S ∧ StandardClassicalSourceGeometry S

end KIP126.Literature.Route
