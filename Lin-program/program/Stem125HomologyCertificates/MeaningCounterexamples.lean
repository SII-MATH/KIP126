import Stem125HomologyCertificates.Meaning

namespace Stem125HomologyCertificates.MeaningCounterexamples
open LinearCertificates PageTransitionCertificates SemanticTrajectoryCertificates

abbrev one : WireComparison where
  version := 1
  k := 0
  m := 1
  n := 0
  h := 1
  outgoing := []
  incoming := []
  inclusion := [true]
  projection := [true]
  up := []
  down := []

theorem one_valid : one.Valid := checkWire_sound one (by decide)

abbrev incompleteCurrent : PageData one where
  Incoming := Vec 0
  Current := Unit
  Outgoing := Unit
  Next := Unit
  incoming := fun _ => ()
  outgoing := fun _ => ()
  next := fun _ => ()
  zeroCurrent := ()
  zeroOutgoing := ()
  zeroNext := ()
  incomingCoordinates := id
  currentCoordinates := fun _ => zero
  outgoingCoordinates := fun _ => zero
  nextCoordinates := fun _ => zero

theorem incompleteCurrent_completeMeaning : incompleteCurrent.CompleteMeaning where
  current_injective := fun _ _ _ => Subsingleton.elim _ _
  outgoing_injective := fun _ _ _ => Subsingleton.elim _ _
  next_injective := fun _ _ _ => Subsingleton.elim _ _
  current_zero := rfl
  outgoing_zero := rfl
  next_zero := rfl
  outgoing_all := fun _ => (eval_zero _).symm
  incoming_all := by intro y; funext i; rfl
  next_cycle := fun _ _ => (eval_zero _).symm
  incoming_surjective := fun y => ⟨y, rfl⟩

theorem incompleteCurrent_not_surjective :
    ¬ Function.Surjective incompleteCurrent.currentCoordinates := by
  intro h
  obtain ⟨x, hx⟩ := h (fun _ => true)
  have he := congrFun hx 0
  contradiction

/-- The finite quotient has two elements while this actual next space has
only one. Injection and complete incoming data do not suffice. -/
theorem incompleteCurrent_wrong_card :
    Nat.card incompleteCurrent.Next ≠ 2 ^ one.h := by
  change Nat.card Unit ≠ 2 ^ 1
  simp [Nat.card_eq_fintype_card]

abbrev boundary : WireComparison where
  version := 1
  k := 0
  m := 1
  n := 1
  h := 0
  outgoing := []
  incoming := [true]
  inclusion := []
  projection := []
  up := [true]
  down := []

theorem boundary_valid : boundary.Valid := checkWire_sound boundary (by decide)

abbrev incompleteIncoming : PageData boundary where
  Incoming := Unit
  Current := Vec 1
  Outgoing := Unit
  Next := Unit
  incoming := fun _ => zero
  outgoing := fun _ => ()
  next := fun _ => ()
  zeroCurrent := zero
  zeroOutgoing := ()
  zeroNext := ()
  incomingCoordinates := fun _ => zero
  currentCoordinates := id
  outgoingCoordinates := fun _ => zero
  nextCoordinates := fun _ => zero

theorem incompleteIncoming_meaning : incompleteIncoming.Meaning where
  current_injective := fun _ _ h => h
  outgoing_injective := fun _ _ _ => Subsingleton.elim _ _
  next_injective := fun _ _ _ => Subsingleton.elim _ _
  current_zero := rfl
  outgoing_zero := rfl
  next_zero := rfl
  outgoing_all := by intro x; apply Subsingleton.elim
  incoming_all := fun _ => (eval_zero _).symm
  next_cycle := by intro x hx; apply Subsingleton.elim

theorem incompleteIncoming_current_surjective :
    Function.Surjective incompleteIncoming.currentCoordinates := fun x => ⟨x, rfl⟩

theorem incompleteIncoming_not_surjective :
    ¬ Function.Surjective incompleteIncoming.incomingCoordinates := by
  intro h
  obtain ⟨x, hx⟩ := h (fun _ => true)
  have he := congrFun hx 0
  contradiction

theorem finite_boundary_without_actual_boundary :
    InImage (matrixOf boundary.m boundary.n boundary.incoming) (fun _ => true) ∧
      ¬ ∃ x, incompleteIncoming.incoming x = fun _ => true := by
  constructor
  · exact ⟨fun _ => true, by decide⟩
  · rintro ⟨x, hx⟩
    have he := congrFun hx 0
    contradiction

#print axioms incompleteCurrent_completeMeaning
#print axioms incompleteCurrent_wrong_card
#print axioms incompleteIncoming_meaning
#print axioms finite_boundary_without_actual_boundary
end Stem125HomologyCertificates.MeaningCounterexamples
