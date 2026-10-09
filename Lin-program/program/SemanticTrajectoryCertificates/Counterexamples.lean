import SemanticTrajectoryCertificates.Path

namespace SemanticTrajectoryCertificates.Counterexamples
open LinearCertificates PageTransitionCertificates
open AggregateTargetInventory.EventAudit

def wire : WireComparison := ⟨1, 0, 1, 0, 1, [], [], [true], [true], [], []⟩
def stage : Stage := ⟨wire, [true]⟩
theorem stage_valid : stage.Valid := checkStage_sound _ (by decide)

/-- A missing actual incoming source cannot be certified by the empty matrix. -/
def omittedIncoming : PageData wire :=
  { coordinatePage wire with
    Incoming := Bool
    incoming := fun b _ => b
    incomingCoordinates := fun _ => zero }

theorem actual_boundary_exists : ∃ y, omittedIncoming.incoming y = stage.vector :=
  ⟨true, by
    funext i
    exact (show ∀ i : Fin 1, (true : Bool) = ([true] : List Bool)[i.val]?.getD false from by decide) i⟩

theorem omitted_incoming_rejected : ¬ omittedIncoming.Meaning := by
  intro meaning
  have h := meaning.incoming_all true
  have bit := congrFun h ⟨0, by decide⟩
  change true = false at bit
  contradiction

/-- Correct finite data cannot identify a false coordinate as the checked class. -/
theorem wrong_named_coordinate_rejected :
    (coordinatePage wire).currentCoordinates (zero : Vec 1) ≠ stage.vector := by
  intro h
  have bit := congrFun h ⟨0, by decide⟩
  change false = true at bit
  contradiction

def wrongOutgoingCoordinates : PageData wire :=
  { coordinatePage wire with
    Outgoing := Bool
    outgoing := fun _ => true
    zeroOutgoing := false
    outgoingCoordinates := fun _ => zero }

/-- Zero-dimensional coordinates do not reflect equality without injectivity. -/
theorem collapsed_outgoing_rejected : ¬ wrongOutgoingCoordinates.Meaning := by
  intro meaning
  have h : (true : Bool) = false := meaning.outgoing_injective rfl
  contradiction

example : checkStage { stage with representative := [false] } = false := by decide

/-- Adding a genuine incoming identity destroys the claimed nonboundary. -/
def hitWire : WireComparison := ⟨1, 0, 1, 1, 0, [], [true], [], [], [true], []⟩
example : checkWire hitWire = true := by decide
example : checkStage ⟨hitWire, [true]⟩ = false := by decide

#print axioms omitted_incoming_rejected
#print axioms collapsed_outgoing_rejected
end SemanticTrajectoryCertificates.Counterexamples
