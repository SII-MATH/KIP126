import KIP126.LinProgram.Route.Certification
import KIP126.Def.ClassicalAdams.StandardSphere.Route.Data
import KIP126.Def.StableHomotopy.Source.Hopf

/-! Applicability of the pinned Cnu data to the standard route.
The attaching map is the stabilized explicit quaternionic Hopf map through
the SAME ordinary source realization as the standard sphere. The h2 Adams
detection is retained separately and is not mistaken for this equality.
-/
namespace KIP126.Computation.Route
open KIP126.StableHomotopy KIP126.Synthetic.Context KIP126.Classical.Adams
universe w
variable {Syn : Type w} [SyntheticCategory.{w, 0} Syn]
  [HasFunctorialCofiber (C := Syn)]

/-- Both the leading Adams class and the actual geometric attaching map
are fixed. Therefore the Cnu object and its two cofiber arrows in D are
those of this specified Hopf map, not a cofiber of an arbitrary odd multiple. -/
def GeometricNuSourceIdentification (D : StandardRouteModel Syn) : Prop :=
  NuDetectionIdentification D ∧
    D.auxiliary.nuMap = Source.Hopf.geometricNu standardSourceBinding

end KIP126.Computation.Route
