import Fact715NoHitReduction.Named
import Lean.Elab.Tactic

namespace Fact715NoHitReduction
open ManualInputObligations.Reference ActualAdamsSystemBridge

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {product : CertifiedAdamsProduct S}
  {initial : Fact715ConstructedActual.AdditiveCoordinates S 2 5}

def ResultValid (zeros : ZeroMeaning S pages)
    (initial : Fact715ConstructedActual.AdditiveCoordinates S 2 5)
    (input : (S.element 2 degree).carrier) : Prop :=
  Fact715ConstructedActual.ResultValid S pages initial input ∧ NotHit zeros input

/-- An explicit d9 exclusion is still required. This certificate packages
a proved reduction and its remaining condition; it does not synthesize it. -/
structure Certificate (C : ReductionInput S pages product initial)
    (input : (S.element 2 degree).carrier) : Prop where
  binding : initial.coordinates.equivalence input = Fact715PageCertificates.target
  d9 : D9Exclusion C.zeros input

theorem Certificate.sound (C : ReductionInput S pages product initial)
    (input : (S.element 2 degree).carrier) (cert : Certificate C input) :
    ResultValid C.zeros initial input := C.conditional_not_hit input cert.binding cert.d9

open Lean Elab Tactic
syntax (name := fact715NoHitReduction) "fact715_nohit_reduction" " using " term : tactic
syntax (name := fact715NoHitCert) "fact715_nohit_cert" " using " term " with " term : tactic

elab_rules : tactic
  | `(tactic| fact715_nohit_reduction using $input:term) => do
    withMainContext do
      evalTactic (← `(tactic| exact Fact715NoHitReduction.ReductionInput.raw_reduction $input))
  | `(tactic| fact715_nohit_cert using $input:term with $certificate:term) => do
    withMainContext do
      let target ← getMainTarget
      unless target.getAppFn.isConstOf ``ResultValid do
        throwError "fact715_nohit_cert: expected Fact715NoHitReduction.ResultValid; supply an explicit d9 exclusion certificate"
      evalTactic (← `(tactic| exact Fact715NoHitReduction.Certificate.sound $input _ $certificate))

theorem reduction_tactic (C : ReductionInput S pages product initial) :
    NotHit C.zeros (Fact715ConstructedActual.raw initial) ↔
      D9Exclusion C.zeros (Fact715ConstructedActual.raw initial) := by
  fact715_nohit_reduction using C

theorem conditional_tactic (C : ReductionInput S pages product initial)
    (input : (S.element 2 degree).carrier) (certificate : Certificate C input) :
    ResultValid C.zeros initial input := by
  fact715_nohit_cert using C with certificate

example (C : ReductionInput S pages product initial) :
    NotHit C.zeros (Fact715ConstructedActual.raw initial) ↔
      D9Exclusion C.zeros (Fact715ConstructedActual.raw initial) := by
  fail_if_success fact715_nohit_cert using C with ()
  fact715_nohit_reduction using C

#print axioms Certificate.sound
#print axioms reduction_tactic
#print axioms conditional_tactic
end Fact715NoHitReduction
