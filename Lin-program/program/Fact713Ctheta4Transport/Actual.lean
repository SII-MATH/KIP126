import Fact713Ctheta4Transport.Source

namespace Fact713Ctheta4Transport.Actual
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates ActualAdamsHomologyCoordinates.Meaning
open Fact713D4SourceSearch.ActualDescent Source Comparison

variable {C S : AdamsSpectralSequence}

/-- No sphere d3 value or sphere E4 comparison is required for this step. -/
theorem sphere_d3_zero (A : Stage2 C S) (transition : A.input.Transition)
    (knownCycle : C.differential 3 Source.sourceDegree A.value3 = 0)
    (targetMap : (C.element 3 (AdamsTarget 3 Source.sourceDegree)).carrier →
      (S.element 3 (AdamsTarget 3 sphereDegree)).carrier)
    (targetZero : targetMap 0 = 0)
    (naturality : ∀ x, S.differential 3 sphereDegree (A.input.nextMap x) =
      targetMap (C.differential 3 Source.sourceDegree x)) :
    S.differential 3 sphereDegree (A.input.nextTarget.equivalence.symm sphere) = 0 := by
  have same : A.input.nextTarget.equivalence.symm sphere = A.input.nextMap A.value3 :=
    A.input.nextTarget.equivalence.injective
      ((A.input.nextTarget.equivalence.apply_symm_apply _).trans (A.named_image3 transition).symm)
  rw [same,naturality,knownCycle,targetZero]

/-- A nonzero named vector spans this whole one-dimensional actual page. -/
theorem whole_d3_zero (A : Stage2 C S)
    (namedZero : S.differential 3 sphereDegree (A.input.nextTarget.equivalence.symm sphere) = 0)
    (x : (S.element 3 sphereDegree).carrier) : S.differential 3 sphereDegree x = 0 := by
  have casesV : ∀ v : Vec 1, v = zero ∨ v = sphere := by decide
  rcases casesV (A.input.nextTarget.equivalence x) with h | h
  · have same : x = 0 := A.input.nextTarget.equivalence.injective (h.trans A.input.nextTarget.zero_value.symm)
    rw [same,(S.differential 3 sphereDegree).map_zero']
  · have same : x = A.input.nextTarget.equivalence.symm sphere :=
      A.input.nextTarget.equivalence.injective (h.trans (A.input.nextTarget.equivalence.apply_symm_apply _).symm)
    exact same ▸ namedZero

/-- Construct the full sphere d3 meaning from naturality. The complete
incoming map remains explicit and is not reduced to listed rows. -/
def sphereMeaning3 (A : Stage2 C S) (transition : A.input.Transition)
    (knownCycle : C.differential 3 Source.sourceDegree A.value3 = 0)
    (targetMap : (C.element 3 (AdamsTarget 3 Source.sourceDegree)).carrier →
      (S.element 3 (AdamsTarget 3 sphereDegree)).carrier)
    (targetZero : targetMap 0 = 0)
    (naturality : ∀ x, S.differential 3 sphereDegree (A.input.nextMap x) =
      targetMap (C.differential 3 Source.sourceDegree x))
    (additive : ∀ x y, A.input.nextTarget.equivalence (x+y) =
      add (A.input.nextTarget.equivalence x) (A.input.nextTarget.equivalence y))
    (target : Coordinates S 3 (AdamsTarget 3 sphereDegree) 2)
    (incomingCoordinates : ActualAdamsIncomingBridge.Source S 3 sphereDegree ≃ Vec 1)
    (incoming : ∀ x, A.input.nextTarget.equivalence
      (ActualAdamsIncomingBridge.differential S 3 sphereDegree x) =
      eval (matrixOf 1 1 s17_138_3.incoming) (incomingCoordinates x)) :
    Meaning S 3 sphereDegree s17_138_3 A.input.nextTarget where
  current_add := additive
  outgoingCoordinates := target.equivalence
  outgoing_injective := target.equivalence.injective
  outgoing_zero := target.zero_value
  outgoing := by
    intro x
    rw [whole_d3_zero A (sphere_d3_zero A transition knownCycle targetMap targetZero naturality) x]
    exact target.zero_value.trans ((show ∀ v : Vec 1, eval (matrixOf 2 1 s17_138_3.outgoing) v = zero from by decide) _).symm
  incomingCoordinates := incomingCoordinates
  incoming_surjective := incomingCoordinates.surjective
  incoming := incoming

/-- The specified Ctheta4 d4 cycle is transported along the same source
E2-to-E4 trace and same map as the already derived sphere d3 cycle. -/
theorem sphere_d4_zero (P : Prefix C S)
    (knownCycle : C.differential 4 Source.sourceDegree P.value4 = 0)
    (targetMap : (C.element 4 (AdamsTarget 4 Source.sourceDegree)).carrier →
      (S.element 4 (AdamsTarget 4 sphereDegree)).carrier)
    (targetZero : targetMap 0 = 0)
    (naturality : ∀ x, S.differential 4 sphereDegree (P.stage.input.nextMap x) =
      targetMap (C.differential 4 Source.sourceDegree x)) :
    S.differential 4 sphereDegree (P.stage.input.nextMap P.value4) = 0 := by
  rw [naturality,knownCycle,targetZero]

theorem result_sound (P : Prefix C S)
    (knownCycle : C.differential 4 Source.sourceDegree P.value4 = 0)
    (targetMap : (C.element 4 (AdamsTarget 4 Source.sourceDegree)).carrier →
      (S.element 4 (AdamsTarget 4 sphereDegree)).carrier)
    (targetZero : targetMap 0 = 0)
    (naturality : ∀ x, S.differential 4 sphereDegree (P.stage.input.nextMap x) =
      targetMap (C.differential 4 Source.sourceDegree x)) :
    P.stage.input.nextMap P.value4 ≠ 0 ∧
    S.differential 4 sphereDegree (P.stage.input.nextMap P.value4) = 0 := by
  refine ⟨?_,sphere_d4_zero P knownCycle targetMap targetZero naturality⟩
  intro hz
  have named := P.named_image4
  rw [hz,P.stage.input.nextTarget.zero_value] at named
  exact (show (zero : Vec 1) ≠ sphere from by decide) named

theorem whole_d4_zero (P : Prefix C S)
    (knownCycle : C.differential 4 Source.sourceDegree P.value4 = 0)
    (targetMap : (C.element 4 (AdamsTarget 4 Source.sourceDegree)).carrier →
      (S.element 4 (AdamsTarget 4 sphereDegree)).carrier)
    (targetZero : targetMap 0 = 0)
    (naturality : ∀ x, S.differential 4 sphereDegree (P.stage.input.nextMap x) =
      targetMap (C.differential 4 Source.sourceDegree x))
    (x : (S.element 4 sphereDegree).carrier) : S.differential 4 sphereDegree x = 0 := by
  have casesV : ∀ v : Vec 1, v = zero ∨ v = sphere := by decide
  rcases casesV (P.stage.input.nextTarget.equivalence x) with hz | hn
  · have hx : x = 0 := P.stage.input.nextTarget.equivalence.injective
      (hz.trans P.stage.input.nextTarget.zero_value.symm)
    rw [hx,(S.differential 4 sphereDegree).map_zero']
  · have hx : x = P.stage.input.nextMap P.value4 :=
      P.stage.input.nextTarget.equivalence.injective (hn.trans P.named_image4.symm)
    rw [hx]
    exact sphere_d4_zero P knownCycle targetMap targetZero naturality

#print axioms sphere_d3_zero
#print axioms whole_d3_zero
#print axioms sphereMeaning3
#print axioms sphere_d4_zero
#print axioms result_sound
#print axioms whole_d4_zero
end Fact713Ctheta4Transport.Actual
