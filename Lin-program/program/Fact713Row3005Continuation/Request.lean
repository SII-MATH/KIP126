import Fact713Row3005Continuation.Target
import Fact713Row3005Continuation.Actual
import ActualTraceRequests.Import

namespace Fact713Row3005Continuation
open LinearCertificates IndexedFamilyCertificates ManualInputObligations ManualInputObligations.Reference
open Constructed ActualTraceRequests

def spec : Specification := ⟨"fact-7.13:E11",[true,true],[true]⟩
def e11 : ActualTraceRequests.Request := actual_trace_request% "Fact713Row3005Continuation/fact713.json"
def e11Batch : List ActualTraceRequests.Request := actual_trace_batch% "Fact713Row3005Continuation/fact713.jsonl"

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}

def RequestedValid (b : Bool) (P : Prefix11 S pages) (request : ActualTraceRequests.Request) : Prop :=
  Coherent (family b) ∧ StageBinding (family b) "S0" ⟨9,132⟩ stages ∧
  request.version = 1 ∧ request.claim = spec.claim ∧ request.source.length = 2 ∧ request.output.length = 1 ∧
  ∃ x : (S.element 11 Fact713ConstructedNamed.degree).carrier,
    Nonempty (Trace S pages Fact713ConstructedNamed.degree 11
      (Fact713Row3143Continuation.Constructed.requestRaw P.previous request.source) x) ∧
    x ≠ 0 ∧ P.page11.coordinates.equivalence x = fun i => request.output[i.val]?.getD false

theorem request_sound (b : Bool) (P : Prefix11 S pages) (request : ActualTraceRequests.Request)
    (accepted : ActualTraceRequests.check spec request = true) : RequestedValid b P request := by
  obtain ⟨hv,hc,hs,ho⟩ := ActualTraceRequests.check_sound spec request accepted
  refine ⟨family_coherent b,trajectory_bound b,hv,hc,?_,?_,?_⟩
  · rw [hs]; rfl
  · rw [ho]; rfl
  · rw [hs,ho]
    change ∃ x : (S.element 11 Fact713ConstructedNamed.degree).carrier,
      Nonempty (Trace S pages Fact713ConstructedNamed.degree 11
        (Fact713Row3143Continuation.Constructed.requestRaw P.previous [true,true]) x) ∧
      x ≠ 0 ∧ P.page11.coordinates.equivalence x = fun i => [true][i.val]?.getD false
    have raw : Fact713Row3143Continuation.Constructed.requestRaw P.previous [true,true] = P.raw := by
      apply congrArg
        P.previous.previous.previous.previous.previous.previous.previous.previous.initial.coordinates.equivalence.symm
      funext i
      exact (show ∀ i : Fin 2, ([true,true][i.val]?.getD false) =
        Fact713NamedActual.vector2 i from by decide) i
    have output : (fun i : Fin 1 => [true][i.val]?.getD false) = vector11 := by decide
    rw [raw,output]
    exact P.named_E11

theorem batch_sound (b : Bool) (P : Prefix11 S pages) (requests : List ActualTraceRequests.Request)
    (accepted : ActualTraceRequests.checkBatch spec requests = true) :
    ∀ request ∈ requests, RequestedValid b P request := by
  intro request member
  exact request_sound b P request ((List.all_eq_true.mp accepted) request member)

open Lean Elab Tactic
syntax "fact713_row3005_cert" " using " term : tactic
elab_rules : tactic
  | `(tactic| fact713_row3005_cert using $meaning:term) => do
      let saved ← saveState
      try
        evalTactic (← `(tactic| first
          | exact request_sound _ $meaning _ (by decide)
          | exact batch_sound _ $meaning _ (by decide)))
      catch _ =>
        saved.restore
        throwError "fact713_row3005_cert: expected the same original E2 input and E11 output with complete Prefix11; use ActualTraceRequests.diagnose or diagnoseBatch with Fact713Row3005Continuation.spec for the record and field"

theorem imported_single (b : Bool) (P : Prefix11 S pages) : RequestedValid b P e11 := by
  fact713_row3005_cert using P
theorem imported_batch (b : Bool) (P : Prefix11 S pages) :
    ∀ request ∈ e11Batch, RequestedValid b P request := by fact713_row3005_cert using P

example (_b : Bool) (_P : Prefix11 S pages) : True := by
  fail_if_success
    have : RequestedValid _b _P {e11 with source := [true,false]} := by fact713_row3005_cert using _P
  fail_if_success
    have : RequestedValid _b _P {e11 with source := [true,true,false]} := by fact713_row3005_cert using _P
  fail_if_success
    have : RequestedValid _b _P {e11 with output := [false]} := by fact713_row3005_cert using _P
  fail_if_success
    have : RequestedValid _b _P {e11 with claim := "fact-7.13:E12"} := by fact713_row3005_cert using _P
  fail_if_success
    have : RequestedValid _b _P {e11 with version := 2} := by fact713_row3005_cert using _P
  trivial
example : (ActualTraceRequests.diagnoseBatch spec [e11,{e11 with output := [false]}] 1).map
    (fun failure => (failure.1,failure.2.location)) = some (2,"output") := by decide

variable {C : AdamsSpectralSequence}
def SourceValid (D : Actual.Input C S) (input : (S.element 2 Actual.degree).carrier) : Prop :=
  Nonempty (Trace S D.calculation.input.stage2.middle.targetPages Actual.degree 5 input D.calculation.value5) ∧
    D.calculation.value5 ≠ 0
theorem source_sound (D : Actual.Input C S) (input : (S.element 2 Actual.degree).carrier)
    (binding : D.calculation.input.stage2.sphereCoordinates.equivalence input = Row3005D4Search.Data.sphereRaw) :
    SourceValid D input := Actual.same_input_E5 D input binding

syntax "fact713_row3005_source_cert" " using " term " named " term : tactic
macro_rules
  | `(tactic| fact713_row3005_source_cert using $meaning:term named $binding:term) =>
    `(tactic| exact source_sound $meaning _ $binding)

example (D : Actual.Input C S) (input : (S.element 2 Actual.degree).carrier)
    (binding : D.calculation.input.stage2.sphereCoordinates.equivalence input = Row3005D4Search.Data.sphereRaw) :
    SourceValid D input := by fact713_row3005_source_cert using D named binding
example (D : Actual.Input C S) (input : (S.element 2 Actual.degree).carrier)
    (_wrong : D.calculation.input.stage2.sphereCoordinates.equivalence input = (fun i => i.val == 3)) : True := by
  fail_if_success
    have : SourceValid D input := by fact713_row3005_source_cert using D named _wrong
  trivial

#print axioms request_sound
#print axioms batch_sound
#print axioms imported_single
#print axioms imported_batch
#print axioms source_sound
end Fact713Row3005Continuation
