import LinearCertificates.Diagnostics
import Lean.Data.Json

namespace LinearCertificates

structure WireMatrix where
  rows : Nat
  cols : Nat
  entries : List Bool
  deriving Repr, Lean.FromJson, Lean.ToJson, Lean.ToExpr

/-- Strict row-major decoding; zero-dimensional matrices have zero entries. -/
def WireMatrix.toMatrix (wire : WireMatrix) : Except String (Matrix wire.rows wire.cols) :=
  if wire.entries.length = wire.rows * wire.cols then
    .ok (fun i j => wire.entries[i.val * wire.cols + j.val]!)
  else .error s!"matrix.entries: expected {wire.rows * wire.cols} bits, got {wire.entries.length}"

def decodeVector (n : Nat) (bits : List Bool) : Except String (Vec n) :=
  if bits.length = n then .ok (fun i => bits[i.val]!)
  else .error s!"vector: expected {n} bits, got {bits.length}"

structure WireCertificate where
  matrix : WireMatrix
  target : List Bool
  witness : List Bool
  kind : String
  deriving Repr, Lean.FromJson, Lean.ToJson, Lean.ToExpr

/-- Import only constructs data. Proofs use the typed checkers after import. -/
def parseCertificate (text : String) : Except String WireCertificate := do
  let wire : WireCertificate ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson wire).compress != text then
    throw "noncanonical JSON, duplicate or unknown field (use canonical serializer)"
  return wire

def checkWire (wire : WireCertificate) : Except String Bool := do
  let a ← wire.matrix.toMatrix
  let target ← decodeVector wire.matrix.rows wire.target
  if wire.kind = "image" then
    let witness ← decodeVector wire.matrix.cols wire.witness
    return checkImage a target witness
  else if wire.kind = "nonimage" then
    let witness ← decodeVector wire.matrix.rows wire.witness
    return checkNotImage a target witness
  else throw s!"kind: unsupported linear certificate {wire.kind}"

end LinearCertificates

namespace LinearCertificates

/-- A successfully decoded certificate carries its exact mathematical query.
The existential equalities tie semantic matrices and vectors to the decoder. -/
def WireValid (wire : WireCertificate) : Prop :=
  ∃ (a : Matrix wire.matrix.rows wire.matrix.cols) (y : Vec wire.matrix.rows),
    wire.matrix.toMatrix = .ok a ∧ decodeVector wire.matrix.rows wire.target = .ok y ∧
    ((wire.kind = "image" ∧ InImage a y) ∨
     (wire.kind = "nonimage" ∧ ¬ InImage a y))

theorem checkWire_sound (wire : WireCertificate) (h : checkWire wire = .ok true) :
    WireValid wire := by
  unfold checkWire at h
  cases ha : wire.matrix.toMatrix with
  | error e => simp [ha, bind, Except.bind] at h
  | ok a =>
    cases hy : decodeVector wire.matrix.rows wire.target with
    | error e => simp [ha, hy, bind, Except.bind] at h
    | ok y =>
      simp only [ha, hy, bind, Except.bind] at h
      by_cases hi : wire.kind = "image"
      · simp only [hi, ↓reduceIte] at h
        cases hw : decodeVector wire.matrix.cols wire.witness with
        | error e => simp [hw] at h
        | ok w =>
          simp [hw, pure, Except.pure] at h
          exact ⟨a, y, ha, hy, Or.inl ⟨hi, checkImage_sound a y w h⟩⟩
      · simp only [hi, ↓reduceIte] at h
        by_cases hn : wire.kind = "nonimage"
        · simp only [hn, ↓reduceIte] at h
          cases hw : decodeVector wire.matrix.rows wire.witness with
          | error e => simp [hw] at h
          | ok w =>
            simp [hw, pure, Except.pure] at h
            exact ⟨a, y, ha, hy, Or.inr ⟨hn, checkNotImage_sound a y w h⟩⟩
        · simp [hn, throw] at h

end LinearCertificates

namespace LinearCertificates

/-- File elaboration creates data only. Build systems must list the input file
as a dependency, or regenerate the explicit Lean module with import_jsonl.py. -/
elab "linear_certificate% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  let wire ← match parseCertificate text.trimAscii.toString with
    | .ok wire => pure wire
    | .error e => throwError "{path.getString}: {e}"
  match checkWire wire with
  | .error e => throwError "{path.getString}: {e}"
  | .ok _ => return Lean.toExpr wire

instance (wire : WireCertificate) : LinProgramCertificates.CertificateVerifier (WireValid wire) where
  Cert := Unit
  check := fun _ => match checkWire wire with | .ok b => b | .error _ => false
  sound := by
    intro _ h
    cases he : checkWire wire with
    | error e => simp [he] at h
    | ok b =>
      simp only [he] at h
      exact checkWire_sound wire (he.trans (congrArg Except.ok h))

end LinearCertificates

namespace LinearCertificates

def diagnoseWire (wire : WireCertificate) : Except String (Option LinProgramCertificates.VerificationFailure) := do
  let a ← wire.matrix.toMatrix
  let target ← decodeVector wire.matrix.rows wire.target
  if wire.kind = "image" then
    return diagnoseImage a target (← decodeVector wire.matrix.cols wire.witness)
  else if wire.kind = "nonimage" then
    return diagnoseNotImage a target (← decodeVector wire.matrix.rows wire.witness)
  else throw s!"kind: unsupported linear certificate {wire.kind}"

end LinearCertificates
