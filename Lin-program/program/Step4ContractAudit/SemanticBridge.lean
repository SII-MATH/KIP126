import AggregateTargetInventory.EventAudit.Indexed
import LinProgramCertificates.Tactic

namespace Step4ContractAudit
open LinearCertificates PageTransitionCertificates
open AggregateTargetInventory.EventAudit

/-- All source elements must intertwine with the proposed differential.
Target coordinates must be injective; finite certificate acceptance supplies
neither condition. Earlier-page interpretations are separate obligations. -/
structure DifferentialInterpretation (w : Executable.Wire) {S T : Type}
    (d : S → T) (sourceCoordinates : S → Vec w.event.m)
    (targetCoordinates : T → Vec w.event.k) : Prop where
  target_injective : Function.Injective targetCoordinates
  differential : ∀ x, targetCoordinates (d x) =
    eval (matrixOf w.event.k w.event.m w.event.outgoing) (sourceCoordinates x)

theorem interpreted_event (w : Executable.Wire) (hw : w.Valid)
    {S T : Type} (d : S → T) (sc : S → Vec w.event.m) (tc : T → Vec w.event.k)
    (meaning : DifferentialInterpretation w d sc tc)
    (source : S) (target zeroTarget : T)
    (hs : sc source = w.sourceVector) (ht : tc target = w.targetVector)
    (hz : tc zeroTarget = zero) : d source = target ∧ target ≠ zeroTarget := by
  constructor
  · apply meaning.target_injective
    rw [meaning.differential, hs, hw.2.2.2.2.1, ht]
  · intro h
    apply hw.2.2.2.2.2
    rw [← ht, h, hz]

/-- A semantic bridge can be proved by coordinates once the complete
intertwining premise and actual endpoint identifications are supplied. -/
theorem interpreted_event_from_check (w : Executable.Wire)
    (checked : Executable.check w = true)
    {S T : Type} (d : S → T) (sc : S → Vec w.event.m) (tc : T → Vec w.event.k)
    (meaning : DifferentialInterpretation w d sc tc)
    (source : S) (target zeroTarget : T)
    (hs : sc source = w.sourceVector) (ht : tc target = w.targetVector)
    (hz : tc zeroTarget = zero) : d source = target ∧ target ≠ zeroTarget :=
  interpreted_event w (Executable.check_sound w checked) d sc tc meaning
    source target zeroTarget hs ht hz

#print axioms interpreted_event
#print axioms interpreted_event_from_check
end Step4ContractAudit
