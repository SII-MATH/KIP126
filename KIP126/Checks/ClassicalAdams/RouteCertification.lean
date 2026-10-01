import KIP126.Interface.Challenge.LinProgram.Route
import KIP126.Main.Axiom.Computation.Route
import Lean

/-! Type/dependency regression only. It proves no program output. -/
namespace KIP126.Checks.RouteCertification
open KIP126.StableHomotopy KIP126.Synthetic.Context KIP126.Classical.Adams
open KIP126.Computation.Route
universe w
variable {Syn : Type w} [SyntheticCategory.{w, 0} Syn]
  [HasFunctorialCofiber (C := Syn)]

example (D : StandardRouteModel Syn) (h : GeometricNuSourceIdentification D) :
    NuDetectionIdentification D := h.1

example (D : StandardRouteModel Syn) (h : GeometricNuSourceIdentification D) :
    D.auxiliary.nuMap = Source.Hopf.geometricNu standardSourceBinding := h.2

end KIP126.Checks.RouteCertification

open Lean Elab Command in
run_cmd do
  let env ← getEnv
  let producer := ``KIP126.Interface.Challenge.LinProgram.route_certification
  let consumer := ``KIP126.Main.Axiom.Computation.route_certification
  let some pi := env.find? producer | throwError "missing route C production goal"
  let some ci := env.find? consumer | throwError "missing route C consumption axiom"
  unless pi.type == ci.type do
    throwError "joint route certification producer/consumer types differ"
  let producerAxioms ← liftCoreM (collectAxioms producer)
  if producerAxioms.contains consumer then
    throwError "route C producer depends on its own consumption axiom"
  match ci with
  | .axiomInfo _ => pure ()
  | _ => throwError "route C stage boundary must be an explicit axiom"
