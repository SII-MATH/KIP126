import ActualStem125ConstrainedE5.Basic
import Stem125HomologyCertificates.Meaning

namespace ActualStem125ConstrainedE5
open ManualInputObligations.Reference LinearCertificates PageTransitionCertificates
open Stem125E5Search Stem125HomologyCertificates SemanticTrajectoryCertificates

def degree (i : Fin 45) : Bidegree :=
  let f := D2.filtrations[i.val]'(by rw [D2.center_count]; exact i.isLt)
  ⟨f,f+125⟩

def positiveDegree (i : Fin 17) : Bidegree := degree (Product.originalPositive i)
def zeroDegree (i : Fin 28) : Bidegree := degree (Product.originalZero i)

theorem named_degree : positiveDegree 10 = ActualAdamsProductCycleBridge.namedDegree := rfl

/-- Coordinate maps only: all actual differential and quotient meaning is a separate proof. -/
structure PageCoordinates (S : AdamsSpectralSequence) (d : Bidegree) (w : WireComparison) where
  incoming : ActualAdamsSystemBridge.Incoming S 4 d → Vec w.n
  current : (S.element 4 d).carrier → Vec w.m
  outgoing : (S.element 4 (AdamsTarget 4 d)).carrier → Vec w.k
  next : (S.element 5 d).carrier → Vec w.h

noncomputable def actualPage (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (d : Bidegree) (w : WireComparison) (coordinates : PageCoordinates S d w) : PageData w where
  Incoming := ActualAdamsSystemBridge.Incoming S 4 d
  Current := (S.element 4 d).carrier
  Outgoing := (S.element 4 (AdamsTarget 4 d)).carrier
  Next := (S.element 5 d).carrier
  incoming := ActualAdamsSystemBridge.incoming S 4 d
  outgoing := S.differential 4 d
  next := ActualAdamsSystemBridge.advance S pages 4 d
  zeroCurrent := 0
  zeroOutgoing := 0
  zeroNext := 0
  incomingCoordinates := coordinates.incoming
  currentCoordinates := coordinates.current
  outgoingCoordinates := coordinates.outgoing
  nextCoordinates := coordinates.next

abbrev PositiveCoordinates (S : AdamsSpectralSequence) (c : Product.Choice) :=
  (i : Fin 17) → PageCoordinates S (positiveDegree i) (Product.wires c i)

noncomputable def positivePage (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (c : Product.Choice) (coordinates : PositiveCoordinates S c) (i : Fin 17) :
    PageData (Product.wires c i) := actualPage S pages (positiveDegree i) _ (coordinates i)

def PositiveMeaning (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (c : Product.Choice) (coordinates : PositiveCoordinates S c) : Prop :=
  ∀ i, WholeMeaning (positivePage S pages c coordinates i)
    (fun (x y : (S.element 4 (positiveDegree i)).carrier) => x+y)

theorem named_dimension (c : Product.Choice) : (Product.wires c 10).m = 3 := by
  exact (show ∀ f : Fin 20, (Data.twentyfive f).m = 3 from by decide) c.twentyfive

/-- The typed trace and the complete positive page use exactly the same current coordinates. -/
def SameCoordinates {S : AdamsSpectralSequence} {c : Product.Choice}
    (t : TraceData S c) (coordinates : PositiveCoordinates S c) : Prop :=
  ∀ x : (S.element 4 ActualAdamsProductCycleBridge.namedDegree).carrier,
    (named_dimension c ▸ (coordinates 10).current x : Vec 3) = t.coordinates.source x

theorem named_current {S : AdamsSpectralSequence} {c : Product.Choice}
    (t : TraceData S c) (coordinates : PositiveCoordinates S c)
    (same : SameCoordinates t coordinates) :
    (named_dimension c ▸ (coordinates 10).current
      ((ActualAdamsSystemBridge.system S t.pages t.zeros
        ActualAdamsProductCycleBridge.namedDegree).at t.initialName 2) : Vec 3) =
          Fact764ConstrainedE5.Coordinates.named :=
  (same _).trans t.named

abbrev PositiveNext (S : AdamsSpectralSequence) :=
  (i : Fin 17) → (S.element 5 (positiveDegree i)).carrier

theorem positive_cardinality (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (c : Product.Choice) (coordinates : PositiveCoordinates S c)
    (meaning : PositiveMeaning S pages c coordinates) :
    Nat.card (PositiveNext S) = 2 ^ Product.dimension c :=
  actual_next_total_card (Product.wires c) (positivePage S pages c coordinates)
    (fun i (x y : (S.element 4 (positiveDegree i)).carrier) => x+y)
    meaning (Product.all_complete c) (Product.coordinate_count c)

theorem positive_bounds {S : AdamsSpectralSequence} {c : Product.Choice}
    (t : TraceData S c) (h : Constraints c) (coordinates : PositiveCoordinates S c)
    (meaning : PositiveMeaning S t.pages c coordinates)
    (_same : SameCoordinates t coordinates) :
    Nat.card (PositiveNext S) = 2 ^ Product.dimension c ∧
      8 ≤ Nat.card (PositiveNext S) ∧ Nat.card (PositiveNext S) ≤ 64 := by
  have card := positive_cardinality S t.pages c coordinates meaning
  refine ⟨card,?_⟩
  rw [card]
  have bounds := dimension_bounds t h
  have cases : Product.dimension c = 3 ∨ Product.dimension c = 4 ∨
      Product.dimension c = 5 ∨ Product.dimension c = 6 := by omega
  rcases cases with eq | eq | eq | eq <;> rw [eq] <;> decide

#print axioms named_degree
#print axioms named_dimension
#print axioms named_current
#print axioms positive_cardinality
#print axioms positive_bounds
end ActualStem125ConstrainedE5
