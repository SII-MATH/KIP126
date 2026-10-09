import PageTransitionCertificates.Import
import PageTransitionCertificates.InducedMap

namespace PageTransitionCertificates

structure WireInducedMap where
  version : Nat
  source : WireComparison
  target : WireComparison
  middle : List Bool
  upper : List Bool
  lower : List Bool
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

def InducedShapeValid (w : WireInducedMap) : Prop :=
  w.version = 1 ∧ w.middle.length = w.target.m * w.source.m ∧
  w.upper.length = w.target.k * w.source.k ∧ w.lower.length = w.target.n * w.source.n
instance (w : WireInducedMap) : Decidable (InducedShapeValid w) := inferInstanceAs (Decidable (_ ∧ _))

def WireInducedMap.Valid (w : WireInducedMap) : Prop :=
  InducedShapeValid w ∧ w.source.Valid ∧ w.target.Valid ∧
  CompatibleMap (matrixOf w.source.k w.source.m w.source.outgoing)
    (matrixOf w.source.m w.source.n w.source.incoming)
    (matrixOf w.target.k w.target.m w.target.outgoing)
    (matrixOf w.target.m w.target.n w.target.incoming)
    (matrixOf w.target.m w.source.m w.middle)
    (matrixOf w.target.k w.source.k w.upper)
    (matrixOf w.target.n w.source.n w.lower)

def checkInducedWire (w : WireInducedMap) : Bool :=
  decide (InducedShapeValid w) && checkWire w.source && checkWire w.target &&
  checkCompatibleMap (matrixOf w.source.k w.source.m w.source.outgoing)
    (matrixOf w.source.m w.source.n w.source.incoming)
    (matrixOf w.target.k w.target.m w.target.outgoing)
    (matrixOf w.target.m w.target.n w.target.incoming)
    (matrixOf w.target.m w.source.m w.middle)
    (matrixOf w.target.k w.source.k w.upper)
    (matrixOf w.target.n w.source.n w.lower)

theorem checkInducedWire_sound (w : WireInducedMap) (h : checkInducedWire w = true) : w.Valid := by
  simp only [checkInducedWire, Bool.and_eq_true] at h
  exact ⟨of_decide_eq_true h.1.1.1, checkWire_sound _ h.1.1.2,
    checkWire_sound _ h.1.2, checkCompatibleMap_sound _ _ _ _ _ _ _ h.2⟩

instance (w : WireInducedMap) : LinProgramCertificates.CertificateVerifier w.Valid where
  Cert := Unit
  check := fun _ => checkInducedWire w
  sound := fun _ => checkInducedWire_sound w

def parseInduced (text : String) : Except String WireInducedMap := do
  let w : WireInducedMap ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson w).compress != text then throw "noncanonical JSON or unknown/duplicate field"
  if !decide (InducedShapeValid w) then throw "map version or matrix dimensions invalid"
  if !decide (ShapeValid w.source) then throw "source comparison version or matrix dimensions invalid"
  if !decide (ShapeValid w.target) then throw "target comparison version or matrix dimensions invalid"
  return w

elab "induced_map% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parseInduced text.trimAscii.toString with
  | .error e => throwError "{path.getString}: {e}"
  | .ok w => return Lean.toExpr w

/-- The checked imported data supplies all premises to the quotient map. -/
def WireInducedMap.onHomology (w : WireInducedMap) (h : w.Valid) :=
  inducedMap h.2.2.2

/-- Coordinate compatibility follows from the exact imported source/target comparisons. -/
theorem WireInducedMap.coordinates (w : WireInducedMap) (h : w.Valid)
    (x : Homology (matrixOf w.source.k w.source.m w.source.outgoing)
      (matrixOf w.source.m w.source.n w.source.incoming)) :
    (homologyEquivalence _ _ w.target.comparison h.2.2.1.2).toCoordinates
      (w.onHomology h x) =
    LinearCertificates.eval
      (coordinateMap w.source.comparison w.target.comparison
        (matrixOf w.target.m w.source.m w.middle))
      ((homologyEquivalence _ _ w.source.comparison h.2.1.2).toCoordinates x) :=
  induced_coordinates_all h.2.2.2 w.source.comparison w.target.comparison h.2.1.2 h.2.2.1.2 x

end PageTransitionCertificates
