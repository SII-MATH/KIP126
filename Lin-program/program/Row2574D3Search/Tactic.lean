import Row2574D3Search.Actual
import Lean.Elab.Tactic

namespace Row2574D3Search
open LinearCertificates PageTransitionCertificates ManualInputObligations ManualInputObligations.Reference

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S} {P : CertifiedAdamsProduct S}

def ResultValid (D : Actual.Input S pages P) (input : (S.element 2 Product.degree).carrier) : Prop :=
  D.product.coordinates.equivalence input = Data.raw ∧
  Nonempty (Trace S pages Product.degree 4 input D.value4) ∧ D.value4 ≠ 0

theorem result_sound (D : Actual.Input S pages P) (input : (S.element 2 Product.degree).carrier)
    (binding : D.product.coordinates.equivalence input = Data.raw) : ResultValid D input :=
  ⟨binding,D.same_input input binding⟩

theorem zero_input_rejected (D : Actual.Input S pages P) : ¬ ResultValid D 0 := by
  rintro ⟨h,_⟩
  rw [D.product.coordinates.zero_value] at h
  exact (show (zero : Vec 5) ≠ Data.raw from by decide) h

open Lean Elab Tactic
syntax "row2574_d3_cert" " using " term " named " term : tactic
elab_rules : tactic
  | `(tactic| row2574_d3_cert using $certificate:term named $binding:term) => do
    withMainContext do
      let target ← getMainTarget
      unless target.getAppFn.isConstOf ``ResultValid do
        throwError "row2574_d3_cert: expected Row2574D3Search.ResultValid for the exact (9,134) E2 input"
      evalTactic (← `(tactic| exact Row2574D3Search.result_sound $certificate _ $binding))

example (D : Actual.Input S pages P) : ResultValid D D.raw := by
  row2574_d3_cert using D named D.product.coordinates.equivalence.apply_symm_apply _

example (D : Actual.Input S pages P) (input : (S.element 2 Product.degree).carrier)
    (binding : D.product.coordinates.equivalence input = Data.raw) : ResultValid D input := by
  row2574_d3_cert using D named binding

example (D : Actual.Input S pages P) (impossible : False) : ResultValid D 0 := by
  fail_if_success row2574_d3_cert using D named D.product.coordinates.equivalence.apply_symm_apply _
  exact impossible.elim

def corruptIncoming : WireComparison := {Data.current3 false with incoming := [false,false,false]}
def corruptProjection : WireComparison := {Data.current3 true with projection := [true,false,false]}
theorem reject_incoming : checkWire corruptIncoming = false := by decide
theorem reject_projection : checkWire corruptProjection = false := by decide

#print axioms result_sound
#print axioms zero_input_rejected
#print axioms reject_incoming
#print axioms reject_projection
end Row2574D3Search
