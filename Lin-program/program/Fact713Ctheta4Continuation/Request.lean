import Fact713Ctheta4Continuation.Branches
import Fact713Ctheta4Continuation.Actual
import ActualTraceRequestsE10.Examples

namespace Fact713Ctheta4Continuation
open IndexedFamilyCertificates ManualInputObligations.Reference
open Fact713Row3143Continuation.Constructed

/-- Any selected finite branch is coherent and binds the named trajectory.
Actual E10 quotient meanings belong to the explicitly supplied prefix. -/
def RequestedValid (b : Bool) (P : Prefix10 S pages) (request : ActualTraceRequests.Request) : Prop :=
  Coherent (family b) ∧
  StageBinding (family b) "S0" ⟨9,132⟩ (Fact713Row3143Continuation.stages false) ∧
  ActualTraceRequestsE10.RequestedValid P request

theorem request_sound (b : Bool) (P : Prefix10 S pages) (request : ActualTraceRequests.Request)
    (accepted : ActualTraceRequests.check ActualTraceRequestsE10.spec request = true) :
    RequestedValid b P request :=
  ⟨family_coherent b,trajectory_bound b,ActualTraceRequestsE10.request_sound P request accepted⟩

theorem batch_sound (b : Bool) (P : Prefix10 S pages) (requests : List ActualTraceRequests.Request)
    (accepted : ActualTraceRequests.checkBatch ActualTraceRequestsE10.spec requests = true) :
    ∀ request ∈ requests, RequestedValid b P request := by
  intro request member
  exact request_sound b P request ((List.all_eq_true.mp accepted) request member)

syntax "fact713_ctheta4_cert" " using " term : tactic
macro_rules
  | `(tactic| fact713_ctheta4_cert using $meaning:term) =>
    `(tactic| first
      | exact request_sound _ $meaning _ (by decide)
      | exact batch_sound _ $meaning _ (by decide))

example (b : Bool) (P : Prefix10 S pages) : RequestedValid b P ActualTraceRequestsE10.e10 := by
  fact713_ctheta4_cert using P
example (b : Bool) (P : Prefix10 S pages) :
    ∀ request ∈ ActualTraceRequestsE10.e10Batch, RequestedValid b P request := by
  fact713_ctheta4_cert using P
example (b : Bool) (P : Prefix10 S pages) : True := by
  fail_if_success
    have : RequestedValid b P {ActualTraceRequestsE10.e10 with output := [false]} := by
      fact713_ctheta4_cert using P
  fail_if_success
    have : RequestedValid b P {ActualTraceRequestsE10.e10 with source := [true,true,false]} := by
      fact713_ctheta4_cert using P
  trivial

variable {C S : AdamsSpectralSequence} {product : CertifiedAdamsProduct S}

def SourceValid (D : Actual.Input C S product) (input : (S.element 2 Actual.degree).carrier) : Prop :=
  Nonempty (ManualInputObligations.Trace S D.ctheta.transport.stage.input.targetPages
    Actual.degree 5 input D.endpoint5.value) ∧ D.endpoint5.value ≠ 0

theorem source_sound (D : Actual.Input C S product) (input : (S.element 2 Actual.degree).carrier)
    (binding : D.ctheta.transport.stage.previous.target.equivalence input =
      Fact713Ctheta4Transport.Comparison.sphere2) : SourceValid D input :=
  Actual.same_input_E5 D input binding

syntax "fact713_ctheta4_source_cert" " using " term : tactic
macro_rules
  | `(tactic| fact713_ctheta4_source_cert using $meaning:term) =>
    `(tactic| exact source_sound $meaning _ (by assumption))

example (D : Actual.Input C S product) (input : (S.element 2 Actual.degree).carrier)
    (binding : D.ctheta.transport.stage.previous.target.equivalence input =
      Fact713Ctheta4Transport.Comparison.sphere2) : SourceValid D input := by
  fact713_ctheta4_source_cert using D

#print axioms source_sound
#print axioms request_sound
#print axioms batch_sound
end Fact713Ctheta4Continuation
