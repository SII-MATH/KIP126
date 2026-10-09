import SemanticTrajectoryCertificates.Indexed

namespace AggregateEliminationCertificates
open LinearCertificates PageTransitionCertificates IndexedFamilyCertificates
open AggregateTargetInventory.EventAudit SemanticTrajectoryCertificates

inductive Role where
  | incoming | outgoing | unknown
  deriving DecidableEq

structure TargetRow where
  id : Nat
  filtration : Nat
  internal : Nat
  raw : List Bool
  role : Role
  deriving DecidableEq

def Matches (row : TargetRow) (w : BoundWire) : Prop :=
  w.object = "S0" ∧ row.internal = row.filtration + 125 ∧
  match row.role with
  | .outgoing => w.event.sourceDegree = ⟨row.filtration, row.internal⟩ ∧
      w.event.finite.rawSource = row.raw
  | .incoming => w.event.targetDegree = ⟨row.filtration, row.internal⟩ ∧
      w.event.finite.rawTarget = row.raw
  | .unknown => False

instance (row : TargetRow) (w : BoundWire) : Decidable (Matches row w) := by
  unfold Matches
  cases row.role <;> infer_instance

structure Item where
  row : TargetRow
  wire : BoundWire

def Item.Valid (family : Family) (item : Item) : Prop :=
  item.wire.Valid family ∧ Matches item.row item.wire

/-- A named finite obstruction, not a dimension subtraction or a topology claim. -/
def Obstruction (family : Family) (row : TargetRow) (w : BoundWire) : Prop :=
  Matches row w ∧ w.Valid family ∧
  match row.role with
  | .outgoing => ¬ InKernel
      (matrixOf w.event.finite.event.k w.event.finite.event.m w.event.finite.event.outgoing)
      w.event.finite.sourceVector
  | .incoming => InImage
      (matrixOf w.event.finite.event.k w.event.finite.event.m w.event.finite.event.outgoing)
      w.event.finite.targetVector
  | .unknown => False

theorem obstruction_sound (family : Family) (item : Item) (valid : item.Valid family) :
    Obstruction family item.row item.wire := by
  have finite := valid.1.2.1.2
  refine ⟨valid.2, valid.1, ?_⟩
  cases h : item.row.role with
  | outgoing => exact finite.source_not_kernel
  | incoming => exact ⟨item.wire.event.finite.sourceVector, finite.2.2.2.2.1⟩
  | unknown => exact (show False from by simpa [Matches, h] using valid.2.2.2)

def check (family : Family) (row : TargetRow) (w : BoundWire) : Bool :=
  checkBound family w && decide (Matches row w)

theorem check_sound (family : Family) (row : TargetRow) (w : BoundWire)
    (checked : check family row w = true) : Obstruction family row w := by
  simp only [check, Bool.and_eq_true, decide_eq_true_eq] at checked
  exact obstruction_sound family ⟨row,w⟩ ⟨checkBound_sound _ _ checked.1,checked.2⟩

instance (family : Family) (row : TargetRow) (w : BoundWire) :
    LinProgramCertificates.CertificateVerifier (Obstruction family row w) where
  Cert := Unit
  check := fun _ => check family row w
  sound := fun _ h => check_sound family row w h

def SemanticObstruction (row : TargetRow) {w : BoundWire} (d : IndexedEventData w) : Prop :=
  match row.role with
  | .outgoing => d.semantics.differential d.semantics.sourceEndpoint.point ≠ d.semantics.zeroTarget
  | .incoming => ∃ x, d.semantics.differential x = d.semantics.targetEndpoint.point
  | .unknown => False

theorem semantic_obstruction (family : Family) (item : Item) (valid : item.Valid family)
    (d : IndexedEventData item.wire) :
    d.Holds family ∧ SemanticObstruction item.row d := by
  have h := bound_event_transport family item.wire valid.1 d
  refine ⟨h, ?_⟩
  unfold SemanticObstruction
  cases hr : item.row.role with
  | outgoing =>
      change d.semantics.differential _ ≠ _
      rw [h.semantics.2.2.1]
      exact h.semantics.2.2.2
  | incoming => exact ⟨d.semantics.sourceEndpoint.point,h.semantics.2.2.1⟩
  | unknown => exact (show False from by simpa [Matches, hr] using valid.2.2.2)

/-- The actual next-page quotient law is an explicit all-boundaries premise. -/
theorem incoming_zero_next (family : Family) (item : Item) (valid : item.Valid family)
    (d : IndexedEventData item.wire) (role : item.row.role = .incoming)
    {Next : Type} (next : d.semantics.targetEndpoint.Point → Next) (zeroNext : Next)
    (boundaries_zero : ∀ x, next (d.semantics.differential x) = zeroNext) :
    next d.semantics.targetEndpoint.point = zeroNext := by
  have h := (semantic_obstruction family item valid d).2
  change SemanticObstruction item.row d at h
  simp only [SemanticObstruction, role] at h
  obtain ⟨x,hx⟩ := h
  rw [← hx]
  exact boundaries_zero x

theorem finite_target_zero_in_quotient (w : BoundWire) (valid : w.Valid family)
    (B : Matrix k w.event.finite.event.k)
    (complex : IsComplex B (matrixOf w.event.finite.event.k w.event.finite.event.m
      w.event.finite.event.outgoing)) :
    ∃ cycle : Cycle B, cycle.val = w.event.finite.targetVector ∧
      (Quot.mk _ cycle : Homology B (matrixOf w.event.finite.event.k
        w.event.finite.event.m w.event.finite.event.outgoing)) =
      Quot.mk _ (⟨zero, eval_zero B⟩ : Cycle B) := by
  have equation := valid.2.1.2.2.2.2.2.1
  have hc : InKernel B w.event.finite.targetVector := by
    rw [← equation]
    exact complex _
  refine ⟨⟨_,hc⟩,rfl,?_⟩
  apply Quot.sound
  change InImage _ (add w.event.finite.targetVector zero)
  rw [ResolutionCertificates.add_zero]
  exact ⟨w.event.finite.sourceVector,equation⟩

/-- An actual full comparison controls every combination, without counting named events. -/
theorem every_cycle_has_homology_coordinates (w : WireComparison) (valid : w.Valid)
    (x : Homology (matrixOf w.k w.m w.outgoing) (matrixOf w.m w.n w.incoming)) :
    ∃ coordinates : Vec w.h,
      (homologyEquivalence _ _ w.comparison valid.2).fromCoordinates coordinates = x := by
  exact ⟨(homologyEquivalence _ _ w.comparison valid.2).toCoordinates x,
    (homologyEquivalence _ _ w.comparison valid.2).leftInverse x⟩

theorem homology_coordinates_distinguish_all (w : WireComparison) (valid : w.Valid)
    (x y : Homology (matrixOf w.k w.m w.outgoing) (matrixOf w.m w.n w.incoming)) :
    (homologyEquivalence _ _ w.comparison valid.2).toCoordinates x =
      (homologyEquivalence _ _ w.comparison valid.2).toCoordinates y → x = y := by
  intro h
  have mapped := congrArg (homologyEquivalence _ _ w.comparison valid.2).fromCoordinates h
  simpa only [(homologyEquivalence _ _ w.comparison valid.2).leftInverse] using mapped

#print axioms obstruction_sound
#print axioms semantic_obstruction
#print axioms incoming_zero_next
#print axioms finite_target_zero_in_quotient
#print axioms every_cycle_has_homology_coordinates
end AggregateEliminationCertificates
