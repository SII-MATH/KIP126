import Fact762NonzeroE6.Incoming
import Fact762DerivedD5.Basic

namespace Fact762NonzeroE6
open ManualInputObligations ManualInputObligations.Reference
open Fact762CsigmasqD5

variable {C S : AdamsSpectralSequence} {R : Type} [CommRing R] [CharP R 2]

structure Certificate (C S : AdamsSpectralSequence) (R : Type) [CommRing R] [CharP R 2] where
  previous : Fact762DerivedD5.Certificate C S R
  incoming : Incoming4 S previous.source.stage.input.targetPages
  zeros : ActualAdamsSystemBridge.ZeroMeaning S previous.source.stage.input.targetPages

namespace Certificate
variable (c : Certificate C S R)

theorem nonzero6 : c.previous.endpoint6.value ≠ 0 := by
  intro hz
  have boundary := (ActualAdamsSystemBridge.quotient_zero_iff S
    c.previous.source.stage.input.targetPages c.zeros 5 degree c.previous.cycle5).mp
      (hz.trans (S.zero_is_zero _ _).symm)
  obtain ⟨y,hy⟩ := (ActualAdamsIncomingBridge.differential_image S 5 degree c.previous.value5).mpr boundary
  exact (Fact762CsigmasqD5.Actual.named_sphere_nonzero c.previous.source)
    (hy.symm.trans (c.incoming.whole_incoming_zero y))

def ResultValid (input : (S.element 2 degree).carrier) : Prop :=
  Nonempty (Trace S c.previous.source.stage.input.targetPages degree 6 input c.previous.endpoint6.value) ∧
    c.previous.endpoint6.value ≠ 0

theorem sound (input : (S.element 2 degree).carrier)
    (binding : c.previous.source.stage.previous.previous.target.equivalence input = Comparison.sphere2) :
    c.ResultValid input := ⟨c.previous.fixed_trace6 input binding,c.nonzero6⟩

syntax "fact762_e6_cert" " using " term : tactic
macro_rules
  | `(tactic| fact762_e6_cert using $cert:term) =>
    `(tactic| exact Certificate.sound $cert _ (by assumption))

example (input : (S.element 2 degree).carrier)
    (binding : c.previous.source.stage.previous.previous.target.equivalence input = Comparison.sphere2) :
    c.ResultValid input := by fact762_e6_cert using c

#print axioms nonzero6
#print axioms sound
end Certificate
end Fact762NonzeroE6
