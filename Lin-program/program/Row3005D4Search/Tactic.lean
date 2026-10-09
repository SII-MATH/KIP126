import Row3005D4Search.Actual
import Lean.Elab.Tactic

namespace Row3005D4Search
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Actual Source

theorem zero_input_rejected {C S : AdamsSpectralSequence} (D : Certificate C S) :
    ¬ ResultValid D 0 := by
  rintro ⟨h,_⟩
  rw [D.input.stage2.sphereCoordinates.zero_value] at h
  exact (show (zero : Vec 5) ≠ Data.sphereRaw from by decide) h

open Lean Elab Tactic
syntax "row3005_d4_cert" " using " term " named " term : tactic
elab_rules : tactic
  | `(tactic| row3005_d4_cert using $certificate:term named $binding:term) => do
    withMainContext do
      let target ← getMainTarget
      unless target.getAppFn.isConstOf ``ResultValid do
        throwError "row3005_d4_cert: expected Row3005D4Search.Actual.ResultValid with the exact sphere E2 input"
      evalTactic (← `(tactic| exact Row3005D4Search.Actual.result_sound $certificate _ $binding))

example {C S : AdamsSpectralSequence} (D : Certificate C S)
    (input : (S.element 2 sDegree).carrier)
    (binding : D.input.stage2.sphereCoordinates.equivalence input = Data.sphereRaw) :
    ResultValid D input := by row3005_d4_cert using D named binding

example {C S : AdamsSpectralSequence} (D : Certificate C S) :
    ResultValid D (D.input.stage2.middleMap D.input.stage2.raw) := by
  row3005_d4_cert using D named D.input.stage2.named2

example {C S : AdamsSpectralSequence} (D : Certificate C S) (impossible : False) :
    ResultValid D 0 := by
  fail_if_success row3005_d4_cert using D named D.input.stage2.named2
  exact impossible.elim

example {C S : AdamsSpectralSequence} (D : Certificate C S) (impossible : False) : True := by
  have _ := D.input
  fail_if_success row3005_d4_cert using D named D.input.stage2.named2
  exact impossible.elim

def corruptOutgoing : WireComparison := {Data.sphere3 with outgoing := [true]}
def corruptIncoming : WireComparison := {Data.sphere3 with incoming := [true,false,false,false]}
theorem reject_outgoing : checkWire corruptOutgoing = false := by decide
theorem reject_incoming : checkWire corruptIncoming = false := by decide

#print axioms zero_input_rejected
#print axioms reject_outgoing
#print axioms reject_incoming
end Row3005D4Search
