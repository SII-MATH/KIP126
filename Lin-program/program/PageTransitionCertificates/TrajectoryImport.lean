import PageTransitionCertificates.Trajectory

namespace PageTransitionCertificates

structure WireTrajectory where
  version : Nat
  firstPage : Nat
  stages : List Stage
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

def WireTrajectory.Valid (w : WireTrajectory) : Prop :=
  w.version = 1 ∧ 2 ≤ w.firstPage ∧ TrajectoryValid w.stages

def checkWireTrajectory (w : WireTrajectory) : Bool :=
  decide (w.version = 1 ∧ 2 ≤ w.firstPage) && checkTrajectory w.stages

theorem checkWireTrajectory_sound (w : WireTrajectory) (h : checkWireTrajectory w = true) : w.Valid := by
  simp only [checkWireTrajectory, Bool.and_eq_true, decide_eq_true_eq] at h
  exact ⟨h.1.1, h.1.2, checkTrajectory_sound _ h.2⟩

instance trajectoryVerifier (w : WireTrajectory) : LinProgramCertificates.CertificateVerifier w.Valid where
  Cert := Unit
  check := fun _ => checkWireTrajectory w
  sound := fun _ => checkWireTrajectory_sound w

def parseTrajectory (text : String) : Except String WireTrajectory := do
  let w : WireTrajectory ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson w).compress != text then throw "noncanonical JSON or unknown/duplicate field"
  if w.version != 1 || w.firstPage < 2 then throw "version or first page invalid"
  if w.stages.isEmpty then throw "empty trajectory"
  for (s, i) in w.stages.zipIdx do
    if !checkStage s then throw s!"stage {i}: shape, comparison, cycle or nonboundary check failed"
    if let some next := w.stages[i+1]? then
      if !decide (Linked s next) then throw s!"stage {i}: next representative differs from homology coordinates"
  return w

open Lean Elab Term
elab "trajectory_bundle% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parseTrajectory text.trimAscii.toString with
  | .error e => throwError "{path.getString}: {e}"
  | .ok w => return toExpr w

end PageTransitionCertificates
