import Row2907D4Candidates.Actual
import Row2907PDeltaDetection.Tactic

namespace Row2907D4Candidates.Request
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row2907PDeltaDetection Row2907PDeltaDetection.Descent Row2907PDeltaDetection.Actual
open Row2907PDeltaDetection.Branches Row2907PDeltaDetection.Request
open Row2907TargetProduct.Actual Row2907D4Candidates.Actual

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {P : CertifiedAdamsProduct S}

def check (source : List Bool) (candidates : List (List Bool)) : Bool :=
  decide (source = [true,false]) && decide (candidates = [[true,false],[true,true]])

/-- Candidate membership has actual differential semantics. It does not
choose either output without an additional mathematical constraint. -/
def RequestedValid (W : Witness S pages P) (T : TargetMeaning W false false)
    (source : List Bool) (candidates : List (List Bool)) : Prop :=
  source.length = 2 ∧ requestSource W source = W.source ∧
    candidates = [[true,false],[true,true]] ∧
    ∃ output ∈ candidates, output.length = 2 ∧
      T.page4.equivalence (S.differential 4 sourceDegree (requestNext W source)) =
        (fun i => output[i.val]?.getD false)

theorem check_sound (W : Witness S pages P) (T : TargetMeaning W false false)
    (source : List Bool) (candidates : List (List Bool))
    (accepted : check source candidates = true) : RequestedValid W T source candidates := by
  simp only [check,Bool.and_eq_true,decide_eq_true_eq] at accepted
  rcases accepted with ⟨rfl,rfl⟩
  have raw := source_binding W
  have same : requestNext W [true,false] = W.next := congrArg (sourceNext W.data) raw
  refine ⟨rfl,raw,rfl,?_⟩
  have value := whole_column T W.next
  rw [W.next_name] at value
  rcases hb : remainingCoefficient T with _ | _
  · refine ⟨[true,false],by simp,rfl,?_⟩
    exact (congrArg (fun x => T.page4.equivalence (S.differential 4 sourceDegree x)) same).trans
      (value.trans (by rw [hb]; exact (show eval (column false) (fun _ => true) =
        (fun i : Fin 2 => [true,false][i.val]?.getD false) from by decide)))
  · refine ⟨[true,true],by simp,rfl,?_⟩
    exact (congrArg (fun x => T.page4.equivalence (S.differential 4 sourceDegree x)) same).trans
      (value.trans (by rw [hb]; exact (show eval (column true) (fun _ => true) =
        (fun i : Fin 2 => [true,true][i.val]?.getD false) from by decide)))

def checkBatch (requests : List (List Bool × List (List Bool))) : Bool :=
  requests.all (fun request => check request.1 request.2)

theorem checkBatch_sound (W : Witness S pages P) (T : TargetMeaning W false false)
    (requests : List (List Bool × List (List Bool))) (accepted : checkBatch requests = true) :
    ∀ request ∈ requests, RequestedValid W T request.1 request.2 := by
  intro request member
  exact check_sound W T _ _ ((List.all_eq_true.mp accepted) request member)

def diagnose (source : List Bool) (candidates : List (List Bool)) :
    Option LinProgramCertificates.VerificationFailure :=
  if source.length != 2 then some ⟨"row2907-candidates", "source.length", "expected two E3 coordinates"⟩
  else if source != [true,false] then some ⟨"row2907-candidates", "source", "expected named E3 input"⟩
  else if candidates != [[true,false],[true,true]] then
    some ⟨"row2907-candidates", "candidates", "expected both ordered two-dimensional candidates"⟩
  else none

syntax "row2907_candidates_cert" " using " term " with " term : tactic
macro_rules
  | `(tactic| row2907_candidates_cert using $w:term with $t:term) =>
    `(tactic| first
      | exact check_sound $w $t _ _ (by decide)
      | exact checkBatch_sound $w $t _ (by decide))

example (W : Witness S pages P) (T : TargetMeaning W false false) :
    RequestedValid W T [true,false] [[true,false],[true,true]] := by
  row2907_candidates_cert using W with T

example (W : Witness S pages P) (T : TargetMeaning W false false) : True := by
  fail_if_success
    have : RequestedValid W T [false,true] [[true,false],[true,true]] := by
      row2907_candidates_cert using W with T
  fail_if_success
    have : RequestedValid W T [true,false] [[true,false]] := by
      row2907_candidates_cert using W with T
  fail_if_success
    have : RequestedValid W T [true,false,false] [[true,false],[true,true]] := by
      row2907_candidates_cert using W with T
  fail_if_success
    have : RequestedValid W T [true,false] [[true,false,false],[true,true]] := by
      row2907_candidates_cert using W with T
  trivial

#print axioms check_sound
#print axioms checkBatch_sound
end Row2907D4Candidates.Request
