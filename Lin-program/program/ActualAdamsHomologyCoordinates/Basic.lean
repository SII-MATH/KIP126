import Row3151ActualTransport.Named

namespace ActualAdamsHomologyCoordinates
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport

/-- Only current-page coordinates are supplied. The incoming coordinate map
may have a kernel, and the outgoing coordinate map need not be onto. -/
structure Meaning (S : AdamsSpectralSequence) (r : Nat) (degree : Bidegree)
    (w : WireComparison) (current : Coordinates S r degree w.m) where
  current_add : ∀ x y, current.equivalence (x + y) =
    add (current.equivalence x) (current.equivalence y)
  outgoingCoordinates : (S.element r (AdamsTarget r degree)).carrier → Vec w.k
  outgoing_injective : Function.Injective outgoingCoordinates
  outgoing_zero : outgoingCoordinates 0 = zero
  outgoing : ∀ x, outgoingCoordinates (S.differential r degree x) =
    eval (matrixOf w.k w.m w.outgoing) (current.equivalence x)
  incomingCoordinates : ActualAdamsIncomingBridge.Source S r degree → Vec w.n
  incoming_surjective : Function.Surjective incomingCoordinates
  incoming : ∀ x,
    current.equivalence (ActualAdamsIncomingBridge.differential S r degree x) =
      eval (matrixOf w.m w.n w.incoming) (incomingCoordinates x)

variable {S : AdamsSpectralSequence} {r : Nat} {degree : Bidegree}
  {w : WireComparison} {current : Coordinates S r degree w.m}
  (M : Meaning S r degree w current)

namespace Meaning

include M in
theorem cycle_iff (x : (S.element r degree).carrier) :
    S.differential r degree x = S.zero r (AdamsTarget r degree) ↔
      InKernel (matrixOf w.k w.m w.outgoing) (current.equivalence x) := by
  constructor
  · intro h
    change eval _ _ = zero
    rw [← M.outgoing, h, S.zero_is_zero, M.outgoing_zero]
  · intro h
    apply M.outgoing_injective
    rw [M.outgoing, S.zero_is_zero, M.outgoing_zero]
    exact h

include M in
theorem boundary_iff (x : (S.element r degree).carrier) :
    PageBoundary S r degree x ↔
      InImage (matrixOf w.m w.n w.incoming) (current.equivalence x) := by
  rw [← ActualAdamsIncomingBridge.differential_image]
  constructor
  · rintro ⟨y, hy⟩
    exact ⟨M.incomingCoordinates y,
      (M.incoming y).symm.trans (congrArg current.equivalence hy)⟩
  · rintro ⟨v, hv⟩
    obtain ⟨y, rfl⟩ := M.incoming_surjective v
    exact ⟨y, current.equivalence.injective ((M.incoming y).trans hv)⟩

include M in
theorem related_iff (x y : PageCycle S r degree) :
    PageEquivalent S r degree x y ↔
      InImage (matrixOf w.m w.n w.incoming)
        (add (current.equivalence x.val) (current.equivalence y.val)) := by
  constructor
  · rintro (h | h)
    · rw [h, PageTransitionCertificates.add_self]
      exact ⟨zero, eval_zero _⟩
    · rw [← M.current_add]
      exact (M.boundary_iff _).mp h
  · intro h
    apply Or.inr
    apply (M.boundary_iff _).mpr
    rw [M.current_add]
    exact h

/-- Coordinates on the actual quotient, built directly from representatives. -/
def homologyCoordinates (valid : w.Valid) : PageHomology S r degree → Vec w.h :=
  Quotient.lift (fun x => eval w.comparison.projection (current.equivalence x.val)) (by
    intro x y h
    exact (valid.2.2.2.2.2 _ _ ((M.cycle_iff _).mp x.property)
      ((M.cycle_iff _).mp y.property)).mpr ((M.related_iff x y).mp h))

theorem homologyCoordinates_mk (valid : w.Valid) (x : PageCycle S r degree) :
    M.homologyCoordinates valid (Quotient.mk _ x) =
      eval w.comparison.projection (current.equivalence x.val) := rfl

theorem homologyCoordinates_injective (valid : w.Valid) :
    Function.Injective (M.homologyCoordinates valid) := by
  intro x y
  refine Quotient.inductionOn x ?_
  intro x
  refine Quotient.inductionOn y ?_
  intro y h
  apply Quotient.sound
  apply (M.related_iff x y).mpr
  exact (valid.2.2.2.2.2 _ _ ((M.cycle_iff _).mp x.property)
    ((M.cycle_iff _).mp y.property)).mp h

def representative (valid : w.Valid) (z : Vec w.h) : PageCycle S r degree :=
  ⟨current.equivalence.symm (eval w.comparison.inclusion z), by
    apply (M.cycle_iff _).mpr
    rw [current.equivalence.apply_symm_apply]
    exact valid.2.2.1 z⟩

theorem representative_coordinate (valid : w.Valid) (z : Vec w.h) :
    M.homologyCoordinates valid (Quotient.mk _ (M.representative valid z)) = z := by
  change eval w.comparison.projection
    (current.equivalence (current.equivalence.symm (eval w.comparison.inclusion z))) = z
  rw [current.equivalence.apply_symm_apply]
  exact valid.2.2.2.1 z

theorem homologyCoordinates_surjective (valid : w.Valid) :
    Function.Surjective (M.homologyCoordinates valid) :=
  fun z => ⟨Quotient.mk _ (M.representative valid z), M.representative_coordinate valid z⟩

/-- Completeness of the actual homology coordinates is proved, not assumed. -/
noncomputable def homologyEquiv (valid : w.Valid) : PageHomology S r degree ≃ Vec w.h :=
  Equiv.ofBijective (M.homologyCoordinates valid)
    ⟨M.homologyCoordinates_injective valid, M.homologyCoordinates_surjective valid⟩

def pageEquiv (pages : CertifiedAdamsPages S) :
    PageHomology S r degree ≃ (S.element (r + 1) degree).carrier where
  toFun := (pages.nextPage r degree).toNext
  invFun := (pages.nextPage r degree).fromNext
  left_inv := (pages.nextPage r degree).leftInverse
  right_inv := (pages.nextPage r degree).rightInverse

/-- No next-page coordinate function is an input to this equivalence. -/
noncomputable def nextEquiv (pages : CertifiedAdamsPages S) (valid : w.Valid) :
    (S.element (r + 1) degree).carrier ≃ Vec w.h :=
  (pageEquiv pages).symm.trans (M.homologyEquiv valid)

theorem nextEquiv_quotient (pages : CertifiedAdamsPages S) (valid : w.Valid)
    (x : PageCycle S r degree) :
    M.nextEquiv pages valid ((pages.nextPage r degree).toNext (Quotient.mk _ x)) =
      eval w.comparison.projection (current.equivalence x.val) := by
  change M.homologyCoordinates valid
    ((pages.nextPage r degree).fromNext ((pages.nextPage r degree).toNext (Quotient.mk _ x))) = _
  rw [(pages.nextPage r degree).leftInverse]
  rfl

/-- CertifiedAdamsPages is only an equivalence of types. Its local zero law
must therefore be explicit; no laws at other pages or degrees are needed. -/
def LocalZeroMeaning (pages : CertifiedAdamsPages S) (r : Nat) (degree : Bidegree) : Prop :=
  (pages.nextPage r degree).toNext
    (Quotient.mk _ (ActualAdamsSystemBridge.zeroCycle S r degree)) = S.zero (r + 1) degree

noncomputable def nextCoordinates (pages : CertifiedAdamsPages S) (valid : w.Valid)
    (zeroMeaning : LocalZeroMeaning pages r degree) : Coordinates S (r + 1) degree w.h where
  equivalence := M.nextEquiv pages valid
  zero_value := by
    have hz := M.nextEquiv_quotient pages valid (ActualAdamsSystemBridge.zeroCycle S r degree)
    change M.nextEquiv pages valid _ = eval _ (current.equivalence 0) at hz
    rw [current.zero_value, eval_zero] at hz
    rw [show (pages.nextPage r degree).toNext
      (Quotient.mk _ (ActualAdamsSystemBridge.zeroCycle S r degree)) = 0 from
        zeroMeaning.trans (S.zero_is_zero _ _)] at hz
    exact hz

theorem nextCoordinates_quotient (pages : CertifiedAdamsPages S) (valid : w.Valid)
    (zeroMeaning : LocalZeroMeaning pages r degree) (x : PageCycle S r degree) :
    (M.nextCoordinates pages valid zeroMeaning).equivalence
      ((pages.nextPage r degree).toNext (Quotient.mk _ x)) =
        eval w.comparison.projection (current.equivalence x.val) :=
  M.nextEquiv_quotient pages valid x

#print axioms cycle_iff
#print axioms boundary_iff
#print axioms related_iff
#print axioms homologyCoordinates_injective
#print axioms representative_coordinate
#print axioms homologyCoordinates_surjective
#print axioms homologyEquiv
#print axioms nextEquiv_quotient
#print axioms nextCoordinates
#print axioms nextCoordinates_quotient
end Meaning
end ActualAdamsHomologyCoordinates
