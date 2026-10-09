import AggregateTargetInventory.EventAudit.Executable

namespace SemanticTrajectoryCertificates
open LinearCertificates PageTransitionCertificates

/-- `next` is a total extension; its interpretation is required only on cycles. -/
structure PageData (w : WireComparison) where
  Incoming : Type
  Current : Type
  Outgoing : Type
  Next : Type
  incoming : Incoming → Current
  outgoing : Current → Outgoing
  next : Current → Next
  zeroCurrent : Current
  zeroOutgoing : Outgoing
  zeroNext : Next
  incomingCoordinates : Incoming → Vec w.n
  currentCoordinates : Current → Vec w.m
  outgoingCoordinates : Outgoing → Vec w.k
  nextCoordinates : Next → Vec w.h

structure PageData.Meaning {w : WireComparison} (p : PageData w) : Prop where
  current_injective : Function.Injective p.currentCoordinates
  outgoing_injective : Function.Injective p.outgoingCoordinates
  next_injective : Function.Injective p.nextCoordinates
  current_zero : p.currentCoordinates p.zeroCurrent = zero
  outgoing_zero : p.outgoingCoordinates p.zeroOutgoing = zero
  next_zero : p.nextCoordinates p.zeroNext = zero
  outgoing_all : ∀ x, p.outgoingCoordinates (p.outgoing x) =
    eval (matrixOf w.k w.m w.outgoing) (p.currentCoordinates x)
  incoming_all : ∀ y, p.currentCoordinates (p.incoming y) =
    eval (matrixOf w.m w.n w.incoming) (p.incomingCoordinates y)
  next_cycle : ∀ x, p.outgoing x = p.zeroOutgoing → p.nextCoordinates (p.next x) =
    eval w.comparison.projection (p.currentCoordinates x)

/-- Surjectivity is needed for the converse boundary implication only. -/
structure PageData.CompleteMeaning {w : WireComparison} (p : PageData w) : Prop
    extends PageData.Meaning p where
  incoming_surjective : Function.Surjective p.incomingCoordinates

def PageData.StageHolds {w : WireComparison} (p : PageData w) (x : p.Current) : Prop :=
  p.outgoing x = p.zeroOutgoing ∧
  (¬ ∃ y, p.incoming y = x) ∧ p.next x ≠ p.zeroNext

theorem stage_transport (s : Stage) (checked : s.Valid) (p : PageData s.wire)
    (meaning : p.Meaning) (x : p.Current) (named : p.currentCoordinates x = s.vector) :
    p.StageHolds x := by
  have hc : p.outgoing x = p.zeroOutgoing := by
    apply meaning.outgoing_injective
    rw [meaning.outgoing_all, named, checked.2.2.1, meaning.outgoing_zero]
  refine ⟨hc, ?_, ?_⟩
  · rintro ⟨y, hy⟩
    apply checked.2.2.2
    refine ⟨p.incomingCoordinates y, ?_⟩
    rw [← meaning.incoming_all, hy, named]
  · intro hz
    apply checked.2.2.2
    apply (projection_zero_iff_boundary _ _ _ checked.1.2 s.vector checked.2.2.1).mp
    rw [← named, ← meaning.next_cycle x hc, hz, meaning.next_zero]

theorem next_zero_iff_boundary (w : WireComparison) (checked : w.Valid)
    (p : PageData w) (meaning : p.CompleteMeaning) (x : p.Current)
    (cycle : p.outgoing x = p.zeroOutgoing) :
    p.next x = p.zeroNext ↔ ∃ y, p.incoming y = x := by
  have hc : InKernel (matrixOf w.k w.m w.outgoing) (p.currentCoordinates x) := by
    change eval (matrixOf w.k w.m w.outgoing) (p.currentCoordinates x) = zero
    rw [← meaning.outgoing_all, cycle, meaning.outgoing_zero]
  constructor
  · intro hz
    have hp : eval w.comparison.projection (p.currentCoordinates x) = zero := by
      rw [← meaning.next_cycle x cycle, hz, meaning.next_zero]
    obtain ⟨v, hv⟩ := (projection_zero_iff_boundary _ _ _ checked.2 _ hc).mp hp
    obtain ⟨y, hy⟩ := meaning.incoming_surjective v
    refine ⟨y, meaning.current_injective ?_⟩
    rw [meaning.incoming_all, hy, hv]
  · rintro ⟨y, hy⟩
    apply meaning.next_injective
    rw [meaning.next_cycle x cycle, meaning.next_zero]
    apply (projection_zero_iff_boundary _ _ _ checked.2 _ hc).mpr
    refine ⟨p.incomingCoordinates y, ?_⟩
    rw [← meaning.incoming_all, hy]

def coordinatePage (w : WireComparison) : PageData w where
  Incoming := Vec w.n
  Current := Vec w.m
  Outgoing := Vec w.k
  Next := Vec w.h
  incoming := eval (matrixOf w.m w.n w.incoming)
  outgoing := eval (matrixOf w.k w.m w.outgoing)
  next := eval w.comparison.projection
  zeroCurrent := zero
  zeroOutgoing := zero
  zeroNext := zero
  incomingCoordinates := id
  currentCoordinates := id
  outgoingCoordinates := id
  nextCoordinates := id

theorem coordinatePage_meaning (w : WireComparison) : (coordinatePage w).CompleteMeaning where
  current_injective := fun _ _ h => h
  outgoing_injective := fun _ _ h => h
  next_injective := fun _ _ h => h
  current_zero := rfl
  outgoing_zero := rfl
  next_zero := rfl
  outgoing_all := fun _ => rfl
  incoming_all := fun _ => rfl
  next_cycle := fun _ _ => rfl
  incoming_surjective := fun v => ⟨v, rfl⟩

#print axioms stage_transport
#print axioms next_zero_iff_boundary
end SemanticTrajectoryCertificates
