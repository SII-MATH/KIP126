import Fact713Row3143Continuation.Constructed
import LinProgramCertificates.Tactic

namespace Fact713Row3143Continuation.Constructed
open LinearCertificates ManualInputObligations.Reference ManualInputObligations
open Fact713ConstructedNamed LinProgramCertificates

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}

def requestRaw (P : Prefix10 S pages) (source : List Bool) :
    (S.element 2 degree).carrier :=
  P.previous.previous.previous.previous.previous.previous.previous.initial.coordinates.equivalence.symm
    (fun i => source[i.val]?.getD false)

/-- Both requested vectors refer to the same actual trace. Length conditions
exclude truncating or padding a different caller input into this result. -/
def RequestedValid (P : Prefix10 S pages) (source output : List Bool) : Prop :=
  source.length = 2 ∧ output.length = 1 ∧
    ∃ x : (S.element 10 degree).carrier,
      Nonempty (Trace S pages degree 10 (requestRaw P source) x) ∧ x ≠ 0 ∧
      P.page10.coordinates.equivalence x = fun i => output[i.val]?.getD false

def checkRequest (source output : List Bool) : Bool :=
  decide (source = [true,true]) && decide (output = [true])

theorem checkRequest_sound (P : Prefix10 S pages) (source output : List Bool)
    (accepted : checkRequest source output = true) : RequestedValid P source output := by
  simp only [checkRequest, Bool.and_eq_true, decide_eq_true_eq] at accepted
  rcases accepted with ⟨rfl,rfl⟩
  have raw : requestRaw P [true,true] = P.raw := by
    apply congrArg
      P.previous.previous.previous.previous.previous.previous.previous.initial.coordinates.equivalence.symm
    funext i
    exact (show ∀ i : Fin 2, ([true,true][i.val]?.getD false) =
      Fact713NamedActual.vector2 i from by decide) i
  have output : (fun i : Fin 1 => [true][i.val]?.getD false) = vector10 := by decide
  refine ⟨rfl,rfl,?_⟩
  rw [raw,output]
  exact P.named_E10

def diagnoseRequest (source output : List Bool) : Option VerificationFailure :=
  if source.length != 2 then some ⟨"request", "source.length", "expected 2 coordinates"⟩
  else if source != [true,true] then
    some ⟨"request", "source", "expected the named E2 vector [true,true]"⟩
  else if output.length != 1 then some ⟨"request", "output.length", "expected 1 coordinate"⟩
  else if output != [true] then
    some ⟨"request", "output", "expected the nonzero E10 coordinate [true]"⟩
  else none

instance (P : Prefix10 S pages) (source output : List Bool) :
    CertificateVerifier (RequestedValid P source output) where
  Cert := Unit
  check := fun _ => checkRequest source output
  sound := fun _ accepted => checkRequest_sound P source output accepted

instance (P : Prefix10 S pages) (source output : List Bool) :
    DiagnosticCertificateVerifier (RequestedValid P source output) where
  Cert := Unit
  check := fun _ => checkRequest source output
  sound := fun _ accepted => checkRequest_sound P source output accepted
  diagnose := fun _ => diagnoseRequest source output

def checkRequests (requests : List (List Bool × List Bool)) : Bool :=
  requests.all (fun request => checkRequest request.1 request.2)

theorem checkRequests_sound (P : Prefix10 S pages) (requests : List (List Bool × List Bool))
    (accepted : checkRequests requests = true) :
    ∀ request ∈ requests, RequestedValid P request.1 request.2 := by
  intro request member
  exact checkRequest_sound P _ _ ((List.all_eq_true.mp accepted) request member)

instance (P : Prefix10 S pages) (requests : List (List Bool × List Bool)) :
    CertificateVerifier (∀ request ∈ requests, RequestedValid P request.1 request.2) where
  Cert := Unit
  check := fun _ => checkRequests requests
  sound := fun _ accepted => checkRequests_sound P requests accepted

syntax "fact713_e10_cert" " using " term : tactic
macro_rules
  | `(tactic| fact713_e10_cert using $meaning:term) =>
    `(tactic| first
      | exact checkRequest_sound $meaning _ _ (by decide)
      | exact checkRequests_sound $meaning _ (by decide))

example (P : Prefix10 S pages) : RequestedValid P [true,true] [true] := by
  fact713_e10_cert using P

example (P : Prefix10 S pages) :
    ∀ request ∈ [([true,true],[true]),([true,true],[true])],
      RequestedValid P request.1 request.2 := by fact713_e10_cert using P

example (P : Prefix10 S pages) : True := by
  fail_if_success
    have : RequestedValid P [true,false] [true] := by fact713_e10_cert using P
  fail_if_success
    have : RequestedValid P [true,true] [false] := by fact713_e10_cert using P
  fail_if_success
    have : RequestedValid P [true,true,true] [true] := by fact713_e10_cert using P
  fail_if_success
    have : RequestedValid P [true,true] [true,false] := by fact713_e10_cert using P
  trivial

example : checkRequest [true,false] [true] = false ∧
    checkRequest [true,true,true] [true] = false ∧
    checkRequest [true,true] [false] = false ∧
    checkRequest [true,true] [true,false] = false := by decide

example : (diagnoseRequest [true,true] [false]).map VerificationFailure.location =
    some "output" := by decide

#print axioms checkRequest_sound
#print axioms checkRequests_sound
end Fact713Row3143Continuation.Constructed
