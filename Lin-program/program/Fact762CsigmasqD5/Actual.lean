import Fact762CsigmasqD5.Source
import Fact762CsigmasqD5.Target

namespace Fact762CsigmasqD5.Actual
open LinearCertificates PageTransitionCertificates ManualInputObligations ManualInputObligations.Reference
open Comparison

/-- This theorem uses the named finite d5 cycle only. The NULL9952 record is
not an all-page vanishing theorem. All map coordinates are quotient-derived. -/
theorem named_d5_zero (P : Source.Prefix C S) (Q : Target.Prefix C S)
    (naturality : ∀ x, S.differential 5 Source.sphereDegree (P.stage.input.nextMap x) =
      Q.stage.input.nextMap (C.differential 5 Source.sourceDegree x))
    (sourceCycle : C.differential 5 Source.sourceDegree P.value5 = 0) :
    S.differential 5 Source.sphereDegree (P.stage.input.nextMap P.value5) = 0 := by
  rw [naturality,sourceCycle]
  exact Q.map_zero

theorem named_sphere_nonzero (P : Source.Prefix C S) : P.stage.input.nextMap P.value5 ≠ 0 := by
  intro h
  have bad := P.named_image
  rw [h,P.stage.input.nextTarget.zero_value] at bad
  exact (show (zero : Vec 1) ≠ sphere from by decide) bad

def ResultValid (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (input : (S.element 2 Source.sphereDegree).carrier) : Prop :=
  ∃ endpoint : (S.element 5 Source.sphereDegree).carrier,
    Nonempty (Trace S pages Source.sphereDegree 5 input endpoint) ∧ endpoint ≠ 0 ∧
      S.differential 5 Source.sphereDegree endpoint = 0

theorem result_sound (P : Source.Prefix C S) (Q : Target.Prefix C S)
    (naturality : ∀ x, S.differential 5 Source.sphereDegree (P.stage.input.nextMap x) =
      Q.stage.input.nextMap (C.differential 5 Source.sourceDegree x))
    (sourceCycle : C.differential 5 Source.sourceDegree P.value5 = 0)
    (input : (S.element 2 Source.sphereDegree).carrier)
    (binding : P.stage.previous.previous.target.equivalence input = sphere2) :
    ResultValid S P.stage.input.targetPages input := by
  have same : input = P.stage.previous.previous.map P.raw :=
    P.stage.previous.previous.target.equivalence.injective (binding.trans P.sphere_raw.symm)
  subst input
  exact ⟨P.stage.input.nextMap P.value5,⟨P.sphereTrace5⟩,named_sphere_nonzero P,
    named_d5_zero P Q naturality sourceCycle⟩

theorem extends_to_E6 (P : Source.Prefix C S) (Q : Target.Prefix C S)
    (naturality : ∀ x, S.differential 5 Source.sphereDegree (P.stage.input.nextMap x) =
      Q.stage.input.nextMap (C.differential 5 Source.sourceDegree x))
    (sourceCycle : C.differential 5 Source.sourceDegree P.value5 = 0) :
    ∃ endpoint, Nonempty (Trace S P.stage.input.targetPages Source.sphereDegree 6
      (P.stage.previous.previous.map P.raw) endpoint) := by
  have cycle : S.differential 5 Source.sphereDegree (P.stage.input.nextMap P.value5) =
      S.zero 5 (AdamsTarget 5 Source.sphereDegree) := by
    rw [S.zero_is_zero]
    exact named_d5_zero P Q naturality sourceCycle
  exact ⟨_,⟨.step P.sphereTrace5 cycle⟩⟩

structure Certificate (C S : AdamsSpectralSequence) where
  source : Source.Prefix C S
  target : Target.Prefix C S
  naturality : ∀ x, S.differential 5 Source.sphereDegree (source.stage.input.nextMap x) =
    target.stage.input.nextMap (C.differential 5 Source.sourceDegree x)
  sourceCycle : C.differential 5 Source.sourceDegree source.value5 = 0

theorem Certificate.sound (c : Certificate C S)
    (input : (S.element 2 Source.sphereDegree).carrier)
    (binding : c.source.stage.previous.previous.target.equivalence input = sphere2) :
    ResultValid S c.source.stage.input.targetPages input :=
  result_sound c.source c.target c.naturality c.sourceCycle input binding

open Lean Elab Tactic
syntax "csigmasq_d5_cert" " using " term : tactic
elab_rules : tactic
  | `(tactic| csigmasq_d5_cert using $c:term) => do
    evalTactic (← `(tactic| exact Certificate.sound $c _ (by assumption)))

example (c : Certificate C S) (input : (S.element 2 Source.sphereDegree).carrier)
    (binding : c.source.stage.previous.previous.target.equivalence input = sphere2) :
    ResultValid S c.source.stage.input.targetPages input := by
  csigmasq_d5_cert using c

#print axioms named_d5_zero
#print axioms named_sphere_nonzero
#print axioms result_sound
#print axioms extends_to_E6
#print axioms Certificate.sound
end Fact762CsigmasqD5.Actual
