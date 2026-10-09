"""Generate the two explicit typed request adapters, without changing core proofs."""
from pathlib import Path
p = Path(__file__).resolve().parent
for fact, n, page, source, vector in [(715,5,5,'[false,false,false,true,false]','named2'),(719,1,6,'[true]','namedVector')]:
 text = f'''import ActualTraceRequests.Import
import Fact{fact}ConstructedActual.Trace

namespace ActualTraceRequests.Fact{fact}
open LinearCertificates ManualInputObligations.Reference ManualInputObligations
open Fact{fact}ConstructedActual

variable {{S : AdamsSpectralSequence}} {{pages : CertifiedAdamsPages S}}
  {{initial : AdditiveCoordinates S 2 {n}}}

def spec : Specification := ⟨"fact-7.{str(fact)[1:]}", {source}, [true]⟩

noncomputable def requestRaw (initial : AdditiveCoordinates S 2 {n}) (request : Request) :
    (S.element 2 degree).carrier :=
  initial.coordinates.equivalence.symm (fun i => request.source[i.val]?.getD false)

/-- Exact lengths prevent padding or truncating the caller's vectors. -/
def RequestedValid (P : Prefix{page} S pages initial) (request : Request) : Prop :=
  request.version = 1 ∧ request.claim = spec.claim ∧
  request.source.length = {n} ∧ request.output.length = 1 ∧
  ∃ endpoint : (S.element {page} degree).carrier,
    Nonempty (Trace S pages degree {page} (requestRaw initial request) endpoint) ∧
    endpoint ≠ 0 ∧
    P.page{page}.coordinates.equivalence endpoint = fun i => request.output[i.val]?.getD false

theorem request_sound (P : Prefix{page} S pages initial) (request : Request)
    (accepted : check spec request = true) : RequestedValid P request := by
  obtain ⟨hv, hc, hs, ho⟩ := check_sound spec request accepted
  have same : requestRaw initial request = raw initial := by
    unfold requestRaw raw
    apply congrArg initial.coordinates.equivalence.symm
    rw [hs]
    funext i
    exact (show ∀ i : Fin {n}, (spec.source[i.val]?.getD false) = {vector} i from by decide) i
  have output : (fun i : Fin 1 => request.output[i.val]?.getD false) = {('named5' if fact == 715 else 'namedVector')} := by
    rw [ho]
    decide
  refine ⟨hv, hc, ?_, ?_, P.endpoint{page}.value, ?_, P.nonzero{page}, ?_⟩
  · rw [hs]; rfl
  · rw [ho]; rfl
  · rw [same]
    exact ⟨P.endpoint{page}.trace⟩
  · rw [output]
    exact P.coordinate{page}

theorem batch_sound (P : Prefix{page} S pages initial) (requests : List Request)
    (accepted : checkBatch spec requests = true) :
    ∀ request ∈ requests, RequestedValid P request := by
  intro request member
  exact request_sound P request ((List.all_eq_true.mp accepted) request member)

instance (P : Prefix{page} S pages initial) (request : Request) :
    LinProgramCertificates.CertificateVerifier (RequestedValid P request) where
  Cert := Unit
  check := fun _ => ActualTraceRequests.check spec request
  sound := fun _ => request_sound P request

#print axioms request_sound
#print axioms batch_sound
end ActualTraceRequests.Fact{fact}
'''
 (p/f'Fact{fact}.lean').write_text(text)
