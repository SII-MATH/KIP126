import Fact713Ctheta4Transport.Branches

namespace Fact713Ctheta4Transport.Constructed
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open Fact713D4SourceSearch.ActualDescent Source Comparison

/-- Construct E3 transport only after proving the entire sphere d3 from the
named Ctheta4 prefix. Source and sphere page systems are fixed to Stage2. -/
noncomputable def stage3 {C S : AdamsSpectralSequence}
    (A : Stage2 C S) (transition : A.input.Transition)
    (sourceMeaning : Meaning C 3 Source.sourceDegree c17_169_3 A.input.nextSource)
    (targetMap : (C.element 3 (AdamsTarget 3 Source.sourceDegree)).carrier →
      (S.element 3 (AdamsTarget 3 sphereDegree)).carrier)
    (targetZero : targetMap 0 = 0)
    (naturality : ∀ x, S.differential 3 sphereDegree (A.input.nextMap x) =
      targetMap (C.differential 3 Source.sourceDegree x))
    (additive : ∀ x y, A.input.nextTarget.equivalence (x+y) =
      add (A.input.nextTarget.equivalence x) (A.input.nextTarget.equivalence y))
    (outgoing : Coordinates S 3 (AdamsTarget 3 sphereDegree) 2)
    (incomingCoordinates : ActualAdamsIncomingBridge.Source S 3 sphereDegree ≃ Vec 1)
    (incoming : ∀ x, A.input.nextTarget.equivalence (ActualAdamsIncomingBridge.differential S 3 sphereDegree x) =
      eval (matrixOf 1 1 s17_138_3.incoming) (incomingCoordinates x))
    (sourceZero : LocalZeroMeaning A.input.sourcePages 3 Source.sourceDegree)
    (sphereZero : LocalZeroMeaning A.input.targetPages 3 sphereDegree)
    (nextMap : (C.element 4 Source.sourceDegree).carrier → (S.element 4 sphereDegree).carrier) : Stage3 C S where
  previous := A
  transition := transition
  localData :=
    { sourceMeaning := sourceMeaning
      targetMeaning := Actual.sphereMeaning3 A transition (by
        have h := (sourceMeaning.cycle_iff A.value3).mpr (by erw [A.coordinate3]; exact source3_cycle)
        exact h.trans (C.zero_is_zero _ _)) targetMap targetZero naturality
          additive outgoing incomingCoordinates incoming
      sourcePages := A.input.sourcePages
      targetPages := A.input.targetPages
      sourceValid := c17_169_3_valid
      targetValid := s17_138_3_valid
      sourceZero := sourceZero
      targetZero := sphereZero
      nextMap := nextMap }

/-- A packaged finite conclusion using the same constructed source at E4. -/
structure Certificate (C S : AdamsSpectralSequence) where
  transport : Prefix C S
  finiteD4 : C.differential 4 Source.sourceDegree transport.value4 = 0
  targetMap : (C.element 4 (AdamsTarget 4 Source.sourceDegree)).carrier →
    (S.element 4 (AdamsTarget 4 sphereDegree)).carrier
  targetZero : targetMap 0 = 0
  naturality : ∀ x, S.differential 4 sphereDegree (transport.stage.input.nextMap x) =
    targetMap (C.differential 4 Source.sourceDegree x)

theorem result_sound {C S : AdamsSpectralSequence} (c : Certificate C S) :
    c.transport.stage.input.nextMap c.transport.value4 ≠ 0 ∧
    S.differential 4 sphereDegree (c.transport.stage.input.nextMap c.transport.value4) = 0 :=
  Actual.result_sound c.transport c.finiteD4 c.targetMap c.targetZero c.naturality

open Lean Elab Tactic
elab "ctheta4_d4_cert" " using " c:term : tactic => do
  evalTactic (← `(tactic| exact result_sound $c))

#print axioms stage3
#print axioms result_sound
end Fact713Ctheta4Transport.Constructed
