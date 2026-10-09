import Row2907PDeltaDetection.Branches

namespace Row2907PDeltaDetection.Request
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport (Coordinates)
open Descent Actual Branches

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S} {P : CertifiedAdamsProduct S}

/-- The request names canonical E3 input coordinates. The same actual E3
element is decoded in the inherited source chart and then taken through
the actual quotient to E4. Input lengths prevent truncation or padding. -/
def requestSource (W : Witness S pages P) (source : List Bool) :
    (S.element 3 sourceDegree).carrier :=
  W.data.source.equivalence.symm (eval swap (fun i => source[i.val]?.getD false))
def requestCycle (W : Witness S pages P) (source : List Bool) : PageCycle S 3 sourceDegree :=
  sourceCycle W.data (requestSource W source)
noncomputable def requestNext (W : Witness S pages P) (source : List Bool) :
    (S.element 4 sourceDegree).carrier :=
  (pages.nextPage 3 sourceDegree).toNext (Quotient.mk _ (requestCycle W source))

def RequestedValid (W : Witness S pages P) (target : Coordinates S 4 targetDegree 1)
    (source output : List Bool) : Prop :=
  source.length = 2 ∧ output.length = 1 ∧
    requestSource W source = W.source ∧
    W.data.source4.equivalence (requestNext W source) = (fun _ => true) ∧
    target.equivalence (S.differential 4 sourceDegree (requestNext W source)) =
      (fun i => output[i.val]?.getD false) ∧
    S.differential 4 sourceDegree (requestNext W source) ≠ 0

def check (source output : List Bool) : Bool :=
  decide (source = [true,false]) && decide (output = [true])

theorem source_binding (W : Witness S pages P) : requestSource W [true,false] = W.source := by
  apply W.data.source.equivalence.injective
  change W.data.source.equivalence (W.data.source.equivalence.symm _) = _
  rw [W.data.source.equivalence.apply_symm_apply]
  exact (congrArg (eval swap)
    ((show (fun i : Fin 2 => [true,false][i.val]?.getD false) =
      (fun i => i.val == 0) from by decide).trans
      ((congrArg sourceCoordinates.toCoordinates W.sourceName).trans named_source_coordinates).symm)).trans
    (W.meaning.sourceBinding W.source).symm

theorem check_sound (W : Witness S pages P) (target : Coordinates S 4 targetDegree 1)
    (source output : List Bool) (accepted : check source output = true) :
    RequestedValid W target source output := by
  simp only [check,Bool.and_eq_true,decide_eq_true_eq] at accepted
  rcases accepted with ⟨rfl,rfl⟩
  have raw := source_binding W
  have same : requestNext W [true,false] = W.next :=
    congrArg (sourceNext W.data) raw
  refine ⟨rfl,rfl,raw,?_,?_,?_⟩
  · exact (congrArg W.data.source4.equivalence same).trans W.next_name
  · exact (congrArg (fun x => target.equivalence (S.differential 4 sourceDegree x)) same).trans
      ((one_target_named_value W target).trans (by decide))
  · rw [same]
    exact W.d4_nonzero

def checkBatch (requests : List (List Bool × List Bool)) : Bool :=
  requests.all (fun request => check request.1 request.2)
theorem checkBatch_sound (W : Witness S pages P) (target : Coordinates S 4 targetDegree 1)
    (requests : List (List Bool × List Bool)) (accepted : checkBatch requests = true) :
    ∀ request ∈ requests, RequestedValid W target request.1 request.2 := by
  intro request member
  exact check_sound W target _ _ ((List.all_eq_true.mp accepted) request member)

def diagnose (source output : List Bool) : Option LinProgramCertificates.VerificationFailure :=
  if source.length != 2 then some ⟨"row2907", "source.length", "expected two canonical E3 coordinates"⟩
  else if source != [true,false] then some ⟨"row2907", "source", "expected named canonical E3 coordinate [true,false]"⟩
  else if output.length != 1 then some ⟨"row2907", "output.length", "expected one E4 target coordinate"⟩
  else if output != [true] then some ⟨"row2907", "output", "expected the nonzero E4 target coordinate [true]"⟩
  else none

syntax "row2907_d4_cert" " using " term " with " term : tactic
macro_rules
  | `(tactic| row2907_d4_cert using $meaning:term with $chart:term) =>
    `(tactic| first
      | exact check_sound $meaning $chart _ _ (by decide)
      | exact checkBatch_sound $meaning $chart _ (by decide))

example (W : Witness S pages P) (target : Coordinates S 4 targetDegree 1) :
    RequestedValid W target [true,false] [true] := by row2907_d4_cert using W with target
example (W : Witness S pages P) (target : Coordinates S 4 targetDegree 1) :
    ∀ request ∈ [([true,false],[true]),([true,false],[true])],
      RequestedValid W target request.1 request.2 := by row2907_d4_cert using W with target
example (W : Witness S pages P) (target : Coordinates S 4 targetDegree 1) : True := by
  fail_if_success
    have : RequestedValid W target [false,true] [true] := by row2907_d4_cert using W with target
  fail_if_success
    have : RequestedValid W target [true,false,false] [true] := by row2907_d4_cert using W with target
  fail_if_success
    have : RequestedValid W target [true,false] [false] := by row2907_d4_cert using W with target
  fail_if_success
    have : RequestedValid W target [true,false] [true,false] := by row2907_d4_cert using W with target
  trivial

#print axioms source_binding
#print axioms check_sound
#print axioms checkBatch_sound
end Row2907PDeltaDetection.Request
