import Row3147H2Product.Actual
import ActualTraceRequests.Import

namespace Row3147H2Product
open ActualTraceRequests Actual ManualInputObligations.Reference
open LinearCertificates

def spec : Specification := ⟨"fact-7.13:row3147:d3-zero",[false,false,false,false,true],[false,false]⟩
def request : Request := actual_trace_request% "Row3147H2Product/request.json"
def requests : List Request := actual_trace_batch% "Row3147H2Product/requests.jsonl"

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S} {P : CertifiedAdamsProduct S}
  {I : Stage2 S pages P}

def RequestedValid (K : I.Prefix) (input : (S.element 2 productDegree).carrier)
    (r : Request) : Prop :=
  r.version = 1 ∧ r.claim = spec.claim ∧
  (∀ i : Fin 5, I.product.equivalence input i = r.source[i.val]?.getD false) ∧
  r.source.length = 5 ∧ r.output.length = 2 ∧
  (∀ i : Fin 2, I.target3.equivalence (S.differential 3 productDegree I.value3) i =
    r.output[i.val]?.getD false) ∧
  Nonempty (ManualInputObligations.Trace S pages productDegree 4 input (I.value4 K)) ∧
  I.value3 ≠ 0 ∧ S.differential 3 productDegree I.value3 = 0

theorem request_sound (K : I.Prefix) (input : (S.element 2 productDegree).carrier)
    (binding : I.product.equivalence input = Finite.rawProduct) (r : Request)
    (accepted : check spec r = true) : RequestedValid K input r := by
  obtain ⟨hv,hc,hs,ho⟩ := check_sound spec r accepted
  refine ⟨hv,hc,?_,?_,?_,?_,I.same_input K input binding⟩
  · rw [hs,binding]
    decide
  · rw [hs]; rfl
  · rw [ho]; rfl
  · rw [ho,I.named_output K]
    decide

theorem batch_sound (K : I.Prefix) (input : (S.element 2 productDegree).carrier)
    (binding : I.product.equivalence input = Finite.rawProduct) (rs : List Request)
    (accepted : checkBatch spec rs = true) : ∀ r ∈ rs, RequestedValid K input r := by
  intro r hr
  exact request_sound K input binding r ((List.all_eq_true.mp accepted) r hr)

open Lean Elab Tactic
syntax "row3147_h2_cert" " using " term : tactic
elab_rules : tactic
  | `(tactic| row3147_h2_cert using $meaning:term) => do
      let saved ← saveState
      try
        evalTactic (← `(tactic| first
          | exact request_sound $meaning _ (by assumption) _ (by decide)
          | exact batch_sound $meaning _ (by assumption) _ (by decide)))
      catch _ =>
        saved.restore
        throwError "row3147_h2_cert: request, original E2 input binding or actual prefix differs; use ActualTraceRequests.diagnose/diagnoseBatch with Row3147H2Product.spec for the field and record"

theorem imported_single (K : I.Prefix) (input : (S.element 2 productDegree).carrier)
    (binding : I.product.equivalence input = Finite.rawProduct) : RequestedValid K input request := by
  row3147_h2_cert using K
theorem imported_batch (K : I.Prefix) (input : (S.element 2 productDegree).carrier)
    (binding : I.product.equivalence input = Finite.rawProduct) :
    ∀ r ∈ requests, RequestedValid K input r := by row3147_h2_cert using K

example (K : I.Prefix) (input : (S.element 2 productDegree).carrier)
    (binding : I.product.equivalence input = Finite.rawProduct) : True := by
  fail_if_success
    have : RequestedValid K input {request with source := [true,false,false,false,false]} := by
      row3147_h2_cert using K
  fail_if_success
    have : RequestedValid K input {request with source := [false,false,true,false,false]} := by
      row3147_h2_cert using K
  fail_if_success
    have : RequestedValid K input {request with output := [false,true]} := by row3147_h2_cert using K
  fail_if_success
    have : RequestedValid K input {request with output := [false]} := by row3147_h2_cert using K
  fail_if_success
    have : RequestedValid K input {request with claim := "fact-7.13:row3147:E4-nonzero"} := by
      row3147_h2_cert using K
  fail_if_success
    have : RequestedValid K input {request with version := 2} := by row3147_h2_cert using K
  fail_if_success
    have : ∀ r ∈ [request,{request with output := [true,false]}], RequestedValid K input r := by
      row3147_h2_cert using K
  trivial

example (K : I.Prefix) (input : (S.element 2 productDegree).carrier) : True := by
  fail_if_success
    have : RequestedValid K input request := by row3147_h2_cert using K
  trivial

example : (diagnoseBatch spec [request,{request with output := [false,true]}] 1).map
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
end Row3147H2Product
