import Fact713Row2916Continuation.Branches
import Fact713Row2916Continuation.Actual
import ActualTraceRequestsE10.Examples

namespace Fact713Row2916Continuation
open IndexedFamilyCertificates ManualInputObligations.Reference
open Fact713Row3143Continuation.Constructed

/-- Any selected finite branch is coherent and binds the named trajectory.
Actual E10 quotient meanings belong to the explicitly supplied prefix. -/
def RequestedValid (r a : Bool) (P : Prefix10 S pages) (request : ActualTraceRequests.Request) : Prop :=
  Coherent (family r a) ∧
  StageBinding (family r a) "S0" ⟨9,132⟩ (Fact713Row3143Continuation.stages r) ∧
  ActualTraceRequestsE10.RequestedValid P request

theorem request_sound (r a : Bool) (P : Prefix10 S pages) (request : ActualTraceRequests.Request)
    (accepted : ActualTraceRequests.check ActualTraceRequestsE10.spec request = true) :
    RequestedValid r a P request :=
  ⟨family_coherent r a,trajectory_bound r a,ActualTraceRequestsE10.request_sound P request accepted⟩

theorem batch_sound (r a : Bool) (P : Prefix10 S pages) (requests : List ActualTraceRequests.Request)
    (accepted : ActualTraceRequests.checkBatch ActualTraceRequestsE10.spec requests = true) :
    ∀ request ∈ requests, RequestedValid r a P request := by
  intro request member
  exact request_sound r a P request ((List.all_eq_true.mp accepted) request member)

syntax "fact713_row2916_cert" " using " term : tactic
macro_rules
  | `(tactic| fact713_row2916_cert using $meaning:term) =>
    `(tactic| first
      | exact request_sound _ _ $meaning _ (by decide)
      | exact batch_sound _ _ $meaning _ (by decide))

example (r a : Bool) (P : Prefix10 S pages) : RequestedValid r a P ActualTraceRequestsE10.e10 := by
  fact713_row2916_cert using P
example (r a : Bool) (P : Prefix10 S pages) :
    ∀ request ∈ ActualTraceRequestsE10.e10Batch, RequestedValid r a P request := by
  fact713_row2916_cert using P
example (r a : Bool) (P : Prefix10 S pages) : True := by
  fail_if_success
    have : RequestedValid r a P {ActualTraceRequestsE10.e10 with output := [false]} := by
      fact713_row2916_cert using P
  fail_if_success
    have : RequestedValid r a P {ActualTraceRequestsE10.e10 with source := [true,true,false]} := by
      fact713_row2916_cert using P
  trivial

/-- The named row3143 actual E5 quotient is constructed from the two
proved whole d4 equations, in the same supplied spectral sequence. -/
def SourceSurvives (D : Actual.Input S T pages product action) : Prop :=
  D.page5.equivalence D.named5 = (fun _ : Fin 1 => true) ∧ D.named5 ≠ 0

theorem source_sound (D : Actual.Input S T pages product action) : SourceSurvives D :=
  ⟨Actual.named5_coordinate D,Actual.named5_nonzero D⟩

syntax "fact713_row2916_source_cert" " using " term : tactic
macro_rules
  | `(tactic| fact713_row2916_source_cert using $meaning:term) =>
    `(tactic| exact source_sound $meaning)

example (D : Actual.Input S T pages product action) : SourceSurvives D := by
  fact713_row2916_source_cert using D

#print axioms source_sound
#print axioms request_sound
#print axioms batch_sound
end Fact713Row2916Continuation
