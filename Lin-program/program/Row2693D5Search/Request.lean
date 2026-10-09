import Row2693D5Search.Actual
import ActualTraceRequests.Import

namespace Row2693D5Search
open ActualTraceRequests Actual Product ManualInputObligations.Reference
open LinearCertificates

def spec : Specification := ⟨"fact-7.13:row2693:d5-zero",[false,false,false,false,true],[false]⟩
def request : Request := actual_trace_request% "Row2693D5Search/request.json"
def requests : List Request := actual_trace_batch% "Row2693D5Search/requests.jsonl"

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S} {P : CertifiedAdamsProduct S}

def RequestedValid (K : Actual.Input S pages P) (input : (S.element 2 productDegree).carrier)
    (r : Request) : Prop :=
  r.version = 1 ∧ r.claim = spec.claim ∧
  (∀ i : Fin 5, K.stage2.product.equivalence input i = r.source[i.val]?.getD false) ∧
  r.source.length = 5 ∧ r.output.length = 1 ∧
  (∀ i : Fin 1, K.target.next.equivalence (S.differential 5 productDegree K.value5) i =
    r.output[i.val]?.getD false) ∧
  Nonempty (ManualInputObligations.Trace S pages productDegree 6 input K.value6) ∧
  K.value5 ≠ 0 ∧ S.differential 5 productDegree K.value5 = 0

theorem request_sound (K : Actual.Input S pages P) (input : (S.element 2 productDegree).carrier)
    (binding : K.stage2.product.equivalence input = Finite.product2Name) (r : Request)
    (accepted : check spec r = true) : RequestedValid K input r := by
  obtain ⟨hv,hc,hs,ho⟩ := check_sound spec r accepted
  refine ⟨hv,hc,?_,?_,?_,?_,K.same_input input binding⟩
  · rw [hs,binding]
    decide
  · rw [hs]; rfl
  · rw [ho]; rfl
  · rw [ho,K.named_output]
    decide

theorem batch_sound (K : Actual.Input S pages P) (input : (S.element 2 productDegree).carrier)
    (binding : K.stage2.product.equivalence input = Finite.product2Name) (rs : List Request)
    (accepted : checkBatch spec rs = true) : ∀ r ∈ rs, RequestedValid K input r := by
  intro r hr
  exact request_sound K input binding r ((List.all_eq_true.mp accepted) r hr)

open Lean Elab Tactic
syntax "row2693_d5_cert" " using " term : tactic
elab_rules : tactic
  | `(tactic| row2693_d5_cert using $meaning:term) => do
      let saved ← saveState
      try
        evalTactic (← `(tactic| first
          | exact request_sound $meaning _ (by assumption) _ (by decide)
          | exact batch_sound $meaning _ (by assumption) _ (by decide)))
      catch _ =>
        saved.restore
        throwError "row2693_d5_cert: request, original E2 input binding or actual prefix differs; use ActualTraceRequests.diagnose/diagnoseBatch with Row2693D5Search.spec for the field and record"

theorem imported_single (K : Actual.Input S pages P) (input : (S.element 2 productDegree).carrier)
    (binding : K.stage2.product.equivalence input = Finite.product2Name) : RequestedValid K input request := by
  row2693_d5_cert using K
theorem imported_batch (K : Actual.Input S pages P) (input : (S.element 2 productDegree).carrier)
    (binding : K.stage2.product.equivalence input = Finite.product2Name) :
    ∀ r ∈ requests, RequestedValid K input r := by row2693_d5_cert using K

example (K : Actual.Input S pages P) (input : (S.element 2 productDegree).carrier)
    (binding : K.stage2.product.equivalence input = Finite.product2Name) : True := by
  fail_if_success
    have : RequestedValid K input {request with source := [true,false,false,false,false]} := by
      row2693_d5_cert using K
  fail_if_success
    have : RequestedValid K input {request with source := [false,false,true,false,false]} := by
      row2693_d5_cert using K
  fail_if_success
    have : RequestedValid K input {request with output := [true]} := by row2693_d5_cert using K
  fail_if_success
    have : RequestedValid K input {request with output := [false,false]} := by row2693_d5_cert using K
  fail_if_success
    have : RequestedValid K input {request with claim := "fact-7.13:row2693:E6-nonzero"} := by
      row2693_d5_cert using K
  fail_if_success
    have : RequestedValid K input {request with version := 2} := by row2693_d5_cert using K
  fail_if_success
    have : ∀ r ∈ [request,{request with output := [true,false]}], RequestedValid K input r := by
      row2693_d5_cert using K
  trivial

example (K : Actual.Input S pages P) (input : (S.element 2 productDegree).carrier) : True := by
  fail_if_success
    have : RequestedValid K input request := by row2693_d5_cert using K
  trivial

example : (diagnoseBatch spec [request,{request with output := [true]}] 1).map
    (fun failure => (failure.1,failure.2.location)) = some (2,"output") := by decide
example : (diagnose spec {request with source := [true]}).map (·.location) =
    some "source.length" := by decide
#eval (do
  match parseBatch "{\"claim\":\"x\",\"claim\":\"x\",\"output\":[],\"source\":[],\"version\":1}\n" with
  | .error _ => pure ()
  | .ok _ => throw (IO.userError "duplicate request field was accepted") : IO Unit)

#print axioms request_sound
#print axioms batch_sound
#print axioms imported_single
#print axioms imported_batch
end Row2693D5Search
