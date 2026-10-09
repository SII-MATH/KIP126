import AggregateTargetInventory.EventAudit.TrajectoryNonboundary
namespace AggregateTargetInventory.EventAudit.FiniteAPI
open LinearCertificates PageTransitionCertificates

/-- Ungraded composable quotient paths. A length-zero path may contain zero;
event validity separately requires a nonzero final differential value. -/
inductive NonzeroPath : {n : Nat} → Vec n → {m : Nat} → Vec m → Prop where
  | refl (x : Vec n) : NonzeroPath x x
  | step {x : Vec m} {y : Vec q} (w : WireComparison)
      (hm : w.m = m) (hw : w.Valid)
      (hx : InKernel (matrixOf w.k m w.outgoing) x)
      (hn : ¬ InImage (matrixOf m w.n w.incoming) x)
      (rest : NonzeroPath (eval (matrixOf w.h m w.projection) x) y) : NonzeroPath x y

theorem NonzeroPath.start_nonzero {x : Vec n} {y : Vec m}
    (path : NonzeroPath x y) (hy : y ≠ zero) : x ≠ zero := by
  induction path with
  | refl => exact hy
  | step w hm hw hx hn rest ih =>
    intro hz
    apply ih hy
    rw [hz, eval_zero]

structure Input where
  sourceE2Dim : Nat
  targetE2Dim : Nat
  sourceDim : Nat
  targetDim : Nat
  rawSource : Vec sourceE2Dim
  rawTarget : Vec targetE2Dim
  source : Vec sourceDim
  target : Vec targetDim
  differential : Matrix targetDim sourceDim

def FiniteEventValid (i : Input) : Prop :=
  NonzeroPath i.rawSource i.source ∧ NonzeroPath i.rawTarget i.target ∧
  eval i.differential i.source = i.target ∧ i.target ≠ zero ∧
  ¬ InKernel i.differential i.source

/-- A proof certificate reuses independently checked paths and event data.
It is not an external Boolean or a proposition field identical to the result. -/
structure Certificate (i : Input) : Prop where
  sourcePath : NonzeroPath i.rawSource i.source
  targetPath : NonzeroPath i.rawTarget i.target
  differentialValue : eval i.differential i.source = i.target
  targetNonzero : i.target ≠ zero

theorem Certificate.valid {i : Input} (c : Certificate i) : FiniteEventValid i :=
  ⟨c.sourcePath,c.targetPath,c.differentialValue,c.targetNonzero,
    StageBasic.source_not_kernel c.differentialValue c.targetNonzero⟩

theorem FiniteEventValid.raw_nonzero {i : Input} (h : FiniteEventValid i) :
    i.rawSource ≠ zero ∧ i.rawTarget ≠ zero := by
  have hs : i.source ≠ zero := by
    intro hz
    apply h.2.2.2.1
    rw [← h.2.2.1, hz, eval_zero]
  exact ⟨h.1.start_nonzero hs, h.2.1.start_nonzero h.2.2.2.1⟩

syntax "finite_event_cert" " using " term : tactic
macro_rules
  | `(tactic| finite_event_cert using $c) => `(tactic| exact Certificate.valid $c)
end AggregateTargetInventory.EventAudit.FiniteAPI
