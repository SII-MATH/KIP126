import Step4ContractAudit.SemanticBridge
import AggregateTargetInventory.EventAudit.IndexedDiagnostics

namespace Step4ContractAudit
open LinearCertificates PageTransitionCertificates
open AggregateTargetInventory.EventAudit

def actual : Indexed.Wire := indexed_event_checked%
  "FiniteEventProducer/ThreeProduct/indexed-event3744.json"

theorem actual_checked : actual.Valid := by lin_cert using ()

/-- The certificate proves a nonzero finite differential, so replacing the
interpreted differential by the zero function gives an explicit countermodel. -/
theorem finite_acceptance_does_not_identify_arbitrary_differential :
    actual.finite.Valid ∧
    (fun _ : Vec actual.finite.event.m => (zero : Vec actual.finite.event.k))
      actual.finite.sourceVector ≠ actual.finite.targetVector := by
  refine ⟨actual_checked.2, ?_⟩
  exact fun h => actual_checked.2.2.2.2.2.2 h.symm

theorem finite_coordinate_interpretation :
    DifferentialInterpretation actual.finite
      (eval (matrixOf actual.finite.event.k actual.finite.event.m actual.finite.event.outgoing))
      id id := ⟨fun _ _ h => h, fun _ => rfl⟩

theorem actual_finite_value_and_nonzero :
    eval (matrixOf actual.finite.event.k actual.finite.event.m actual.finite.event.outgoing)
      actual.finite.sourceVector = actual.finite.targetVector ∧
    actual.finite.targetVector ≠ zero :=
  interpreted_event actual.finite actual_checked.2 _ id id finite_coordinate_interpretation
    actual.finite.sourceVector actual.finite.targetVector zero rfl rfl rfl

def wrongResult : Executable.Wire :=
  { actual.finite with target := [false, true] }

def wrongCoordinates : Executable.Wire :=
  { actual.finite with source := [false, true, true] }

example : Executable.check wrongResult = false := by decide
example : Executable.check wrongCoordinates = false := by decide
example : True := by
  fail_if_success have : wrongResult.Valid := by lin_cert using ()
  trivial
example : True := by
  fail_if_success have : wrongCoordinates.Valid := by lin_cert using ()
  trivial

def shifted (d : Indexed.Degree) : Indexed.Degree := { d with t := d.t + 100 }
def shiftedLabel (l : Indexed.StageLabel) : Indexed.StageLabel :=
  { l with
    center := shifted l.center
    incoming := shifted l.incoming
    outgoing := shifted l.outgoing }
def coherentlyRelabeled : Indexed.Wire :=
  { actual with
    sourceDegree := shifted actual.sourceDegree
    targetDegree := shifted actual.targetDegree
    sourceLabels := actual.sourceLabels.map shiftedLabel
    targetLabels := actual.targetLabels.map shiftedLabel }

/-- Indexed shape alone cannot bind a certificate to a particular spectrum
or dataset. The family-level binding layer must perform that check. -/
theorem coherent_relabeling_passes_local_checker : coherentlyRelabeled.Valid := by
  lin_cert using ()
example : coherentlyRelabeled.sourceDegree ≠ actual.sourceDegree := by decide

def brokenStage : Indexed.Wire :=
  { actual with finite := { actual.finite with sourceStages := [] } }

example : Indexed.check brokenStage = false := by decide
example : (Indexed.diagnoseIndexed brokenStage).map (·.location) =
    some "finite.sourceStages.length" := by decide

#eval do
  for text in ["{}", "{\"version\":1,\"version\":1}", "{\"finite\":null}"] do
    match Indexed.parseDiagnosed text with
    | .ok _ => throw (IO.userError "malformed indexed event accepted")
    | .error _ => pure ()
  for wire in [brokenStage, { actual with finite := wrongResult },
      { actual with finite := wrongCoordinates }] do
    match Indexed.parseDiagnosed (Lean.toJson wire).compress with
    | .ok _ => throw (IO.userError "invalid event survived diagnosed import")
    | .error e => IO.println e

#print axioms finite_acceptance_does_not_identify_arbitrary_differential
#print axioms actual_finite_value_and_nonzero
#print axioms coherent_relabeling_passes_local_checker
end Step4ContractAudit
