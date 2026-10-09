import Row2916D4Search.Actual
import Row2916D4Search.Semantics

namespace Row2916D4Search
open LinearCertificates ManualInputObligations.Reference Actual Finite
open Fact713Row3247Source.ModuleLeibniz

variable {S T : AdamsSpectralSequence} {A : Action S T}

def ResultValid (D : Actual.Input S T A) (x : (S.element 4 sphereDegree).carrier) : Prop :=
  D.sphere4.equivalence x = namedModule ∧ x ≠ 0 ∧ S.differential 4 sphereDegree x = 0

theorem result_sound (D : Actual.Input S T A) (transition : D.Transition4)
    (x : (S.element 4 sphereDegree).carrier) (named : D.sphere4.equivalence x = namedModule) :
    ResultValid D x := by
  refine ⟨named,?_,whole_sphere_d4_zero D transition x⟩
  intro h
  have bad := named
  rw [h,D.sphere4.zero_value] at bad
  exact (show (zero : Vec 1) ≠ namedModule from by decide) bad

theorem derived_image_result (D : Actual.Input S T A) (transition : D.Transition4) :
    ResultValid D (D.map4 D.named4) := result_sound D transition _ (image4_coordinate D transition)

open Lean Elab Tactic
syntax "row2916_d4_cert" " using " term " via " term : tactic
syntax "row2916_d4_cert" " using " term " via " term " named " term : tactic
elab_rules : tactic
  | `(tactic| row2916_d4_cert using $meaning:term via $tr:term) => do
      let saved ← saveState
      try
        evalTactic (← `(tactic| first
          | exact derived_image_result $meaning $tr
          | exact whole_sphere_d4_zero $meaning $tr _))
      catch _ =>
        saved.restore
        throwError "row2916_d4_cert: goal must be the derived named E4 image or the actual d4 equation for this Input and Transition4"
  | `(tactic| row2916_d4_cert using $meaning:term via $tr:term named $binding:term) => do
      evalTactic (← `(tactic| exact result_sound $meaning $tr _ $binding))

example (D : Actual.Input S T A) (transition : D.Transition4) :
    ResultValid D (D.map4 D.named4) := by row2916_d4_cert using D via transition
example (D : Actual.Input S T A) (transition : D.Transition4)
    (x : (S.element 4 sphereDegree).carrier) : S.differential 4 sphereDegree x = 0 := by
  row2916_d4_cert using D via transition
example (D : Actual.Input S T A) (transition : D.Transition4)
    (x : (S.element 4 sphereDegree).carrier) (binding : D.sphere4.equivalence x = namedModule) :
    ResultValid D x := by row2916_d4_cert using D via transition named binding
example (D : Actual.Input S T A) (transition : D.Transition4) : True := by
  fail_if_success
    have : False := by row2916_d4_cert using D via transition
  fail_if_success
    have : ResultValid D 0 := by row2916_d4_cert using D via transition
  trivial

#print axioms result_sound
#print axioms derived_image_result
end Row2916D4Search
