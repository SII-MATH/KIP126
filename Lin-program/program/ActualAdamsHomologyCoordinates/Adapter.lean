import ActualAdamsHomologyCoordinates.Basic

namespace ActualAdamsHomologyCoordinates
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport
open Meaning

/-- Existing StepMeaning asks for equivalences on both neighboring carriers.
Those stronger inputs are kept separate from the minimal quotient construction. -/
structure WholeCoordinates (S : AdamsSpectralSequence) (r : Nat) (degree : Bidegree)
    (w : WireComparison) (current : Coordinates S r degree w.m) where
  current_add : ∀ x y, current.equivalence (x + y) =
    add (current.equivalence x) (current.equivalence y)
  outgoingTarget : Coordinates S r (AdamsTarget r degree) w.k
  incomingSource : ActualAdamsIncomingBridge.Source S r degree ≃ Vec w.n
  outgoing : ∀ x, outgoingTarget.equivalence (S.differential r degree x) =
    eval (matrixOf w.k w.m w.outgoing) (current.equivalence x)
  incoming : ∀ x,
    current.equivalence (ActualAdamsIncomingBridge.differential S r degree x) =
      eval (matrixOf w.m w.n w.incoming) (incomingSource x)

variable {S : AdamsSpectralSequence} {r : Nat} {degree : Bidegree}
  {w : WireComparison} {current : Coordinates S r degree w.m}

def WholeCoordinates.meaning (M : WholeCoordinates S r degree w current) :
    Meaning S r degree w current where
  current_add := M.current_add
  outgoingCoordinates := M.outgoingTarget.equivalence
  outgoing_injective := M.outgoingTarget.equivalence.injective
  outgoing_zero := M.outgoingTarget.zero_value
  outgoing := M.outgoing
  incomingCoordinates := M.incomingSource
  incoming_surjective := M.incomingSource.surjective
  incoming := M.incoming

/-- Acceptance supplies the finite comparison theorem. All actual-object
premises remain visible; neither next coordinates nor a projection law is supplied. -/
noncomputable def WholeCoordinates.next (M : WholeCoordinates S r degree w current)
    (pages : CertifiedAdamsPages S) (accepted : checkWire w = true)
    (zeroMeaning : LocalZeroMeaning pages r degree) : Coordinates S (r + 1) degree w.h :=
  M.meaning.nextCoordinates pages (checkWire_sound w accepted) zeroMeaning

noncomputable def WholeCoordinates.stepMeaning (M : WholeCoordinates S r degree w current)
    (pages : CertifiedAdamsPages S) (accepted : checkWire w = true)
    (zeroMeaning : LocalZeroMeaning pages r degree) :
    Row3151ActualTransport.Named.StepMeaning S pages r degree w current
      (M.next pages accepted zeroMeaning) where
  outgoingTarget := M.outgoingTarget
  incomingSource := M.incomingSource
  outgoing := M.outgoing
  incoming := M.incoming
  quotient := fun x cycle =>
    M.meaning.nextCoordinates_quotient pages (checkWire_sound w accepted) zeroMeaning ⟨x, cycle⟩

theorem next_nonzero_iff (M : Meaning S r degree w current)
    (pages : CertifiedAdamsPages S) (valid : w.Valid)
    (zeroMeaning : LocalZeroMeaning pages r degree) (x : PageCycle S r degree) :
    (pages.nextPage r degree).toNext (Quotient.mk _ x) ≠ 0 ↔
      eval w.comparison.projection (current.equivalence x.val) ≠ zero := by
  let next := M.nextCoordinates pages valid zeroMeaning
  have eq := M.nextCoordinates_quotient pages valid zeroMeaning x
  change next.equivalence _ = _ at eq
  constructor
  · intro nonzero finiteZero
    apply nonzero
    apply next.equivalence.injective
    exact eq.trans (finiteZero.trans next.zero_value.symm)
  · intro finiteNonzero actualZero
    apply finiteNonzero
    rw [actualZero, next.zero_value] at eq
    exact eq.symm

def cycleAdd (x y : PageCycle S r degree) : PageCycle S r degree :=
  ⟨x.val + y.val, by
    rw [(S.differential r degree).map_add', x.property, y.property,
      S.zero_is_zero, add_zero]⟩

/-- The actual identification is a type equivalence only. Iterating the
construction with additive coordinates needs this additional local law. -/
def LocalAddMeaning (pages : CertifiedAdamsPages S) (r : Nat) (degree : Bidegree) : Prop :=
  ∀ x y : PageCycle S r degree,
    (pages.nextPage r degree).toNext (Quotient.mk _ (cycleAdd x y)) =
      (pages.nextPage r degree).toNext (Quotient.mk _ x) +
        (pages.nextPage r degree).toNext (Quotient.mk _ y)

theorem nextCoordinates_add (M : Meaning S r degree w current)
    (pages : CertifiedAdamsPages S) (valid : w.Valid)
    (zeroMeaning : LocalZeroMeaning pages r degree)
    (addMeaning : LocalAddMeaning pages r degree)
    (x y : (S.element (r + 1) degree).carrier) :
    (M.nextCoordinates pages valid zeroMeaning).equivalence (x + y) =
      add ((M.nextCoordinates pages valid zeroMeaning).equivalence x)
        ((M.nextCoordinates pages valid zeroMeaning).equivalence y) := by
  obtain ⟨qx, rfl⟩ := (pageEquiv pages (r := r) (degree := degree)).surjective x
  obtain ⟨qy, rfl⟩ := (pageEquiv pages (r := r) (degree := degree)).surjective y
  refine Quotient.inductionOn qx ?_
  intro x
  refine Quotient.inductionOn qy ?_
  intro y
  change (M.nextCoordinates pages valid zeroMeaning).equivalence
    ((pages.nextPage r degree).toNext (Quotient.mk _ x) +
      (pages.nextPage r degree).toNext (Quotient.mk _ y)) =
    add ((M.nextCoordinates pages valid zeroMeaning).equivalence
      ((pages.nextPage r degree).toNext (Quotient.mk _ x)))
      ((M.nextCoordinates pages valid zeroMeaning).equivalence
        ((pages.nextPage r degree).toNext (Quotient.mk _ y)))
  rw [← addMeaning x y, M.nextCoordinates_quotient,
    M.nextCoordinates_quotient, M.nextCoordinates_quotient]
  change eval _ (current.equivalence (x.val + y.val)) = _
  rw [M.current_add, eval_add]

#print axioms WholeCoordinates.next
#print axioms WholeCoordinates.stepMeaning
#print axioms next_nonzero_iff
#print axioms nextCoordinates_add
end ActualAdamsHomologyCoordinates
