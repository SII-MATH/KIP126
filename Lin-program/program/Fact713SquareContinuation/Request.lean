import Fact713SquareContinuation.Branches
import Fact713SquareContinuation.Target
import ActualTraceRequestsE10.Examples

namespace Fact713SquareContinuation
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

syntax "fact713_square_cert" " using " term : tactic
macro_rules
  | `(tactic| fact713_square_cert using $meaning:term) =>
    `(tactic| first
      | exact request_sound _ $meaning _ (by decide)
      | exact batch_sound _ $meaning _ (by decide))

example (b : Bool) (P : Prefix10 S pages) : RequestedValid b P ActualTraceRequestsE10.e10 := by
  fact713_square_cert using P
example (b : Bool) (P : Prefix10 S pages) :
    ∀ request ∈ ActualTraceRequestsE10.e10Batch, RequestedValid b P request := by
  fact713_square_cert using P
example (b : Bool) (P : Prefix10 S pages) : True := by
  fail_if_success
    have : RequestedValid b P {ActualTraceRequestsE10.e10 with output := [false]} := by
      fact713_square_cert using P
  fail_if_success
    have : RequestedValid b P {ActualTraceRequestsE10.e10 with source := [true,true,false]} := by
      fact713_square_cert using P
  trivial

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S} {product : CertifiedAdamsProduct S}

def SourceValid (D : Actual.Input S pages product) (input : (S.element 2 Actual.degree).carrier) : Prop :=
  Nonempty (ManualInputObligations.Trace S pages Actual.degree 6 input D.endpoint6.value) ∧
    D.endpoint6.value ≠ 0

theorem source_sound (D : Actual.Input S pages product) (input : (S.element 2 Actual.degree).carrier)
    (binding : D.square.source.initial.equivalence input = Row2684D5Search.Data.sourceVector) :
    SourceValid D input := Actual.same_input_E6 D input binding

syntax "fact713_square_source_cert" " using " term : tactic
macro_rules
  | `(tactic| fact713_square_source_cert using $meaning:term) =>
    `(tactic| exact source_sound $meaning _ (by assumption))

example (D : Actual.Input S pages product) (input : (S.element 2 Actual.degree).carrier)
    (binding : D.square.source.initial.equivalence input = Row2684D5Search.Data.sourceVector) :
    SourceValid D input := by fact713_square_source_cert using D

def TargetValid (D : Target.Input C S product) (input : (S.element 2 Target.degree).carrier) : Prop :=
  Nonempty (ManualInputObligations.Trace S D.previous.ctheta.transport.stage.input.targetPages
    Target.degree 6 input D.endpoint6.value) ∧ D.endpoint6.value ≠ 0

theorem target_sound (D : Target.Input C S product) (input : (S.element 2 Target.degree).carrier)
    (binding : D.previous.ctheta.transport.stage.previous.target.equivalence input =
      Fact713Ctheta4Transport.Comparison.sphere2) : TargetValid D input :=
  Target.same_input_E6 D input binding

syntax "fact713_square_target_cert" " using " term : tactic
macro_rules
  | `(tactic| fact713_square_target_cert using $meaning:term) =>
    `(tactic| exact target_sound $meaning _ (by assumption))

example (D : Target.Input C S product) (input : (S.element 2 Target.degree).carrier)
    (binding : D.previous.ctheta.transport.stage.previous.target.equivalence input =
      Fact713Ctheta4Transport.Comparison.sphere2) : TargetValid D input := by
  fact713_square_target_cert using D

#print axioms source_sound
#print axioms target_sound
#print axioms request_sound
#print axioms batch_sound
end Fact713SquareContinuation
