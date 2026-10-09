import Fact715Source2574.Vanishing
import Fact715Source2574.Recorded
import Lean.Elab.Tactic

namespace Fact715Source2574
open ManualInputObligations.Reference Actual Actual.Stage2
open ActualAdamsHomologyCoordinates.Meaning

structure Certificate (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (P : CertifiedAdamsProduct S) where
  stage : Stage2 S pages P
  recorded : stage.RecordedMeaning
  zero3 : LocalZeroMeaning pages 3 sourceDegree
  zero4 : LocalZeroMeaning pages 4 sourceDegree

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {P : CertifiedAdamsProduct S}

def ResultValid (S : AdamsSpectralSequence) : Prop :=
  ∀ x : ActualAdamsIncomingBridge.Source S 5 ⟨11,136⟩,
    ActualAdamsIncomingBridge.differential S 5 ⟨11,136⟩ x = 0

theorem Certificate.sound (C : Certificate S pages P) : ResultValid S :=
  C.stage.incoming5_zero (C.stage.recordedKnown C.recorded) C.zero3 C.zero4

theorem Certificate.source_empty (C : Certificate S pages P) :
    ∀ x : (S.element 5 sourceDegree).carrier, x = 0 :=
  C.stage.page5_zero (C.stage.recordedKnown C.recorded) C.zero3 C.zero4

theorem Certificate.no_boundary (C : Certificate S pages P)
    (x : (S.element 5 ⟨11,136⟩).carrier) (nonzero : x ≠ 0) :
    ¬ PageBoundary S 5 ⟨11,136⟩ x :=
  C.stage.no_boundary5 (C.stage.recordedKnown C.recorded) C.zero3 C.zero4 x nonzero

open Lean Elab Tactic
syntax (name := source2574Cert) "source2574_cert" " using " term : tactic
elab_rules : tactic
  | `(tactic| source2574_cert using $certificate:term) => do
    withMainContext do
      let target ← getMainTarget
      unless target.getAppFn.isConstOf ``ResultValid do
        throwError "source2574_cert: expected Fact715Source2574.ResultValid, the whole incoming d5 map at (11,136)"
      evalTactic (← `(tactic| exact Fact715Source2574.Certificate.sound $certificate))

theorem tactic_test (C : Certificate S pages P) : ResultValid S := by
  source2574_cert using C

#print axioms Certificate.sound
#print axioms Certificate.source_empty
#print axioms Certificate.no_boundary
#print axioms tactic_test
end Fact715Source2574
