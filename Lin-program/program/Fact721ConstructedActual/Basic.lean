import ActualAdamsHomologyCoordinates.Adapter
import Fact721PageCertificates.First
import Fact721PageCertificates.Second

namespace Fact721ConstructedActual
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates
open ActualAdamsHomologyCoordinates.Meaning

variable (degree : Bidegree)

structure AdditiveCoordinates (S : AdamsSpectralSequence) (r : Nat) (n : Nat) where
  coordinates : Coordinates S r degree n
  map_add : ∀ x y, coordinates.equivalence (x + y) =
    add (coordinates.equivalence x) (coordinates.equivalence y)

/-- Full neighboring actual maps and local quotient laws are inputs. No
later current coordinates, additivity proof, or quotient formula is supplied. -/
structure StepInput (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (r : Nat) (w : WireComparison) (current : AdditiveCoordinates degree S r w.m) where
  outgoingTarget : Coordinates S r (AdamsTarget r degree) w.k
  incomingSource : ActualAdamsIncomingBridge.Source S r degree ≃ Vec w.n
  outgoing : ∀ x, outgoingTarget.equivalence (S.differential r degree x) =
    eval (matrixOf w.k w.m w.outgoing) (current.coordinates.equivalence x)
  incoming : ∀ x, current.coordinates.equivalence
      (ActualAdamsIncomingBridge.differential S r degree x) =
    eval (matrixOf w.m w.n w.incoming) (incomingSource x)
  zeroMeaning : LocalZeroMeaning pages r degree
  addMeaning : LocalAddMeaning pages r degree

namespace StepInput
variable {degree : Bidegree} {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {r : Nat} {w : WireComparison} {current : AdditiveCoordinates degree S r w.m}
  (I : StepInput degree S pages r w current)

def whole : WholeCoordinates S r degree w current.coordinates where
  current_add := current.map_add
  outgoingTarget := I.outgoingTarget
  incomingSource := I.incomingSource
  outgoing := I.outgoing
  incoming := I.incoming

noncomputable def next (accepted : checkWire w = true) : AdditiveCoordinates degree S (r + 1) w.h where
  coordinates := I.whole.next pages accepted I.zeroMeaning
  map_add := nextCoordinates_add I.whole.meaning pages (checkWire_sound w accepted)
    I.zeroMeaning I.addMeaning

noncomputable def stepMeaning (accepted : checkWire w = true) :
    Row3151ActualTransport.Named.StepMeaning S pages r degree w current.coordinates
      (I.next accepted).coordinates := I.whole.stepMeaning pages accepted I.zeroMeaning
end StepInput


theorem whole_zero_of_basis (S : AdamsSpectralSequence) (r : Nat) (degree : Bidegree)
    (current : Coordinates S r degree 2)
    (additive : ∀ x y, current.equivalence (x + y) =
      add (current.equivalence x) (current.equivalence y))
    (first : S.differential r degree (current.equivalence.symm (fun i => i.val == 0)) = 0)
    (second : S.differential r degree (current.equivalence.symm (fun i => i.val == 1)) = 0)
    (x : (S.element r degree).carrier) : S.differential r degree x = 0 := by
  let a := current.equivalence.symm (fun i => i.val == 0)
  let b := current.equivalence.symm (fun i => i.val == 1)
  have cases : ∀ v : Vec 2, v = zero ∨ v = (fun i => i.val == 0) ∨
      v = (fun i => i.val == 1) ∨ v = add (fun i => i.val == 0) (fun i => i.val == 1) := by decide
  rcases cases (current.equivalence x) with hz | ha | hb | hab
  · have eq : x = 0 := current.equivalence.injective (hz.trans current.zero_value.symm)
    rw [eq, (S.differential r degree).map_zero']
  · have eq : x = a := current.equivalence.injective (ha.trans (current.equivalence.apply_symm_apply _).symm)
    exact eq ▸ first
  · have eq : x = b := current.equivalence.injective (hb.trans (current.equivalence.apply_symm_apply _).symm)
    exact eq ▸ second
  · have eq : x = a + b := by
      apply current.equivalence.injective
      rw [additive, show current.equivalence a = (fun i => i.val == 0) from current.equivalence.apply_symm_apply _,
        show current.equivalence b = (fun i => i.val == 1) from current.equivalence.apply_symm_apply _]
      exact hab
    rw [eq, (S.differential r degree).map_add', first, second, add_zero]

#print axioms StepInput.next
#print axioms StepInput.stepMeaning
#print axioms whole_zero_of_basis
end Fact721ConstructedActual
