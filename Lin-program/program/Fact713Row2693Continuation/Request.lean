import Fact713Row2693Continuation.Branches
import Fact713Row2693Continuation.Actual
import ActualTraceRequestsE10.Examples

namespace Fact713Row2693Continuation
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

syntax "fact713_row2693_cert" " using " term : tactic
macro_rules
  | `(tactic| fact713_row2693_cert using $meaning:term) =>
    `(tactic| first
      | exact request_sound _ $meaning _ (by decide)
      | exact batch_sound _ $meaning _ (by decide))

example (b : Bool) (P : Prefix10 S pages) : RequestedValid b P ActualTraceRequestsE10.e10 := by
  fact713_row2693_cert using P
example (b : Bool) (P : Prefix10 S pages) :
    ∀ request ∈ ActualTraceRequestsE10.e10Batch, RequestedValid b P request := by
  fact713_row2693_cert using P
example (b : Bool) (P : Prefix10 S pages) : True := by
  fail_if_success
    have : RequestedValid b P {ActualTraceRequestsE10.e10 with output := [false]} := by
      fact713_row2693_cert using P
  fail_if_success
    have : RequestedValid b P {ActualTraceRequestsE10.e10 with source := [true,true,false]} := by
      fact713_row2693_cert using P
  trivial

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S} {product : CertifiedAdamsProduct S}

def SourceValid (D : Actual.Input S pages product) (input : (S.element 2 Actual.sourceDegree).carrier) : Prop :=
  Nonempty (ManualInputObligations.Trace S pages Actual.sourceDegree 6 input D.calculation.value6) ∧
    D.calculation.value6 ≠ 0

theorem source_sound (D : Actual.Input S pages product) (input : (S.element 2 Actual.sourceDegree).carrier)
    (binding : D.calculation.stage2.product.equivalence input = Row2693D5Search.Finite.product2Name) :
    SourceValid D input := Actual.same_input_E6 D input binding

syntax "fact713_row2693_source_cert" " using " term : tactic
macro_rules
  | `(tactic| fact713_row2693_source_cert using $meaning:term) =>
    `(tactic| exact source_sound $meaning _ (by assumption))

example (D : Actual.Input S pages product) (input : (S.element 2 Actual.sourceDegree).carrier)
    (binding : D.calculation.stage2.product.equivalence input = Row2693D5Search.Finite.product2Name) :
    SourceValid D input := by fact713_row2693_source_cert using D

def TargetValid (D : Actual.TargetInput S pages product) : Prop :=
  ∀ x : (S.element 6 Actual.targetDegree).carrier, x = 0
theorem target_sound (D : Actual.TargetInput S pages product) : TargetValid D :=
  Actual.target_zero6 D
syntax "fact713_row2693_target_cert" " using " term : tactic
macro_rules
  | `(tactic| fact713_row2693_target_cert using $meaning:term) =>
    `(tactic| exact target_sound $meaning)
example (D : Actual.TargetInput S pages product) : TargetValid D := by
  fact713_row2693_target_cert using D

example (D : Actual.Input S pages product) (input : (S.element 2 Actual.sourceDegree).carrier) : True := by
  fail_if_success
    have : SourceValid D input := by fact713_row2693_source_cert using D
  trivial
example (D : Actual.Input S pages product) (input : (S.element 2 Actual.sourceDegree).carrier)
    (wrong : D.calculation.stage2.product.equivalence input = (fun i => i.val == 3)) : True := by
  fail_if_success
    have : SourceValid D input := by fact713_row2693_source_cert using D
  trivial

#print axioms source_sound
#print axioms target_sound
#print axioms request_sound
#print axioms batch_sound
end Fact713Row2693Continuation
