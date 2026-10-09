import FilteredCrossingCertificates.Basic
import FilteredExtensionCertificates.Import

namespace FilteredCrossingCertificates
open LinearCertificates LinProgramCertificates

structure WireCertificate where
  version : Nat
  extension : FilteredExtensionCertificates.WireCertificate
  stability : List Bool
  deriving Repr, Lean.FromJson, Lean.ToJson, Lean.ToExpr

def decode (w : WireCertificate) :
    Except String ((D : FilteredExtensionCertificates.Data) × Certificate D) := do
  if w.version != 1 then throw "version: expected 1"
  let parsed ← FilteredExtensionCertificates.decode w.extension
  let stability ← RepresentativeSquareCertificates.matrix "stability"
    parsed.1.hb parsed.1.ha w.stability
  return ⟨parsed.1, ⟨parsed.2, stability⟩⟩

def parse (text : String) : Except String WireCertificate := do
  let w : WireCertificate ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson w).compress != text then
    throw "noncanonical JSON, duplicate or unknown field"
  return w

def checkWire (w : WireCertificate) : Except String Bool := do
  let parsed ← decode w
  return check parsed.1 parsed.2

def WireValid (w : WireCertificate) : Prop :=
  ∃ parsed, decode w = .ok parsed ∧ ResultValid parsed.1

theorem checkWire_sound (w : WireCertificate) (accepted : checkWire w = .ok true) :
    WireValid w := by
  cases he : decode w with
  | error e => simp [checkWire, he, bind, Except.bind] at accepted
  | ok parsed =>
    have h : check parsed.1 parsed.2 = true := by
      simpa [checkWire, he, bind, Except.bind, pure, Except.pure] using accepted
    exact ⟨parsed, he, check_sound _ _ h⟩

def checkBatch : List WireCertificate → Bool
  | [] => true
  | w :: ws => (match checkWire w with | .ok b => b | .error _ => false) && checkBatch ws

theorem checkBatch_sound (ws : List WireCertificate) (accepted : checkBatch ws = true) :
    ∀ w ∈ ws, WireValid w := by
  induction ws with
  | nil => simp
  | cons w ws ih =>
    simp only [checkBatch, Bool.and_eq_true] at accepted
    have hw : checkWire w = .ok true := by
      cases he : checkWire w with
      | error e => simp [he] at accepted
      | ok b => simpa [he] using accepted.1
    intro v hv
    rcases List.mem_cons.mp hv with hv | hv
    · subst v; exact checkWire_sound _ hw
    · exact ih accepted.2 _ hv

def diagnose (D : FilteredExtensionCertificates.Data) (cert : Certificate D) :
    Option VerificationFailure :=
  (FilteredExtensionCertificates.diagnose D cert.extension).orElse fun _ =>
    RepresentativeSquareCertificates.diagnoseSquare "stability"
      cert.stability D.f (D.sourceAt (D.s+1)) (D.targetAt (D.s+D.n+1))

instance (D : FilteredExtensionCertificates.Data) : DiagnosticCertificateVerifier (ResultValid D) where
  Cert := Certificate D
  check := check D
  sound := check_sound D
  diagnose := diagnose D

def parseBatch (text : String) : Except String (List WireCertificate) :=
  (FilteredExtensionCertificates.physicalLines text).zipIdx.mapM fun (line,i) => do
    if line.isEmpty then throw s!"line {i+1}: empty record"
    if line.contains '\r' then throw s!"line {i+1}: CR is not canonical; use LF"
    let w ← (parse line).mapError (fun e => s!"line {i+1}: {e}")
    let parsed ← (decode w).mapError (fun e => s!"line {i+1}: {e}")
    match diagnose parsed.1 parsed.2 with
    | none => return w
    | some e => throw s!"line {i+1}: {e.location}: {e.message}"

elab "filtered_stable_certificate% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  let ws ← match parseBatch text with
    | .ok ws => pure ws
    | .error e => throwError "{path.getString}: {e}"
  match ws with
  | [w] => return Lean.toExpr w
  | _ => throwError "{path.getString}: expected exactly one record"

elab "filtered_stable_batch% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parseBatch text with
  | .ok ws => return Lean.toExpr ws
  | .error e => throwError "{path.getString}: {e}"

#print axioms checkWire_sound
#print axioms checkBatch_sound
end FilteredCrossingCertificates
