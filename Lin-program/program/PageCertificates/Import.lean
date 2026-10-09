import PageCertificates.Checker
import LinearCertificates.Import

namespace PageCertificates
open LinearCertificates

structure WirePage where
  incoming : WireMatrix
  outgoing : WireMatrix
  representative : List Bool
  separator : List Bool
  deriving Lean.FromJson, Lean.ToJson, Lean.ToExpr

/-- Validate dimensions before constructing a dependent page. -/
def WirePage.toPage (w : WirePage) : Except String Page := do
  if w.outgoing.cols != w.incoming.rows then throw "outgoing.cols != incoming.rows"
  if w.incoming.entries.length != w.incoming.rows * w.incoming.cols then
    throw "incoming.entries: wrong dimension"
  if w.outgoing.entries.length != w.outgoing.rows * w.outgoing.cols then
    throw "outgoing.entries: wrong dimension"
  return { sources := w.incoming.cols, dimension := w.incoming.rows, targets := w.outgoing.rows
           incoming := fun i j => w.incoming.entries[i.val * w.incoming.cols + j.val]!
           outgoing := fun i j => w.outgoing.entries[i.val * w.outgoing.cols + j.val]! }

/-- Both d squared zero and the nonzero homology representative are checked. -/
def checkWire (w : WirePage) : Except String Bool := do
  let p ← w.toPage
  let x ← decodeVector p.dimension w.representative
  let separator ← decodeVector p.dimension w.separator
  return checkComplex p.outgoing p.incoming && checkHomology p x ⟨separator⟩

def parse (text : String) : Except String WirePage := do
  let w : WirePage ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson w).compress != text then throw "noncanonical page JSON or duplicate/unknown field"
  return w

end PageCertificates

namespace PageCertificates
open LinearCertificates

def WireValid (w : WirePage) : Prop :=
  ∃ (p : Page) (x : Vec p.dimension),
    w.toPage = .ok p ∧ decodeVector p.dimension w.representative = .ok x ∧
    IsComplex p ∧ NonzeroHomology p x

theorem checkWire_sound (w : WirePage) (h : checkWire w = .ok true) : WireValid w := by
  unfold checkWire at h
  cases hp : w.toPage with
  | error e => simp [hp, bind, Except.bind] at h
  | ok p =>
      cases hx : decodeVector p.dimension w.representative with
      | error e => simp [hp, hx, bind, Except.bind] at h
      | ok x =>
          cases hs : decodeVector p.dimension w.separator with
          | error e => simp [hp, hx, hs, bind, Except.bind] at h
          | ok s =>
              simp [hp, hx, hs, bind, Except.bind, pure, Except.pure, Bool.and_eq_true] at h
              exact ⟨p, x, hp, hx, checkComplex_sound _ _ h.1, checkHomology_sound p x ⟨s⟩ h.2⟩

instance (w : WirePage) : LinProgramCertificates.CertificateVerifier (WireValid w) where
  Cert := Unit
  check := fun _ => match checkWire w with | .ok b => b | .error _ => false
  sound := by
    intro _ h
    cases he : checkWire w with
    | error e => simp [he] at h
    | ok b =>
        simp only [he] at h
        exact checkWire_sound w (he.trans (congrArg Except.ok h))

end PageCertificates

namespace PageCertificates
elab "page_bundle% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  let w ← match parse text.trimAscii.toString with
    | .ok w => pure w
    | .error e => throwError "{path.getString}: {e}"
  return Lean.toExpr w
end PageCertificates
