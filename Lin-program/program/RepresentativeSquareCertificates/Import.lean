import RepresentativeSquareCertificates.Basic
import LinearCertificates.Import

namespace RepresentativeSquareCertificates
open LinearCertificates LinProgramCertificates

structure WireData where
  a : Nat
  b : Nat
  c : Nat
  d : Nat
  ha : Nat
  hb : Nat
  hc : Nat
  hd : Nat
  f : List Bool
  p : List Bool
  q : List Bool
  g : List Bool
  higherA : List Bool
  higherB : List Bool
  higherC : List Bool
  higherD : List Bool
  x : List Bool
  y : List Bool
  z : List Bool
  w : List Bool
  deriving Repr, Lean.FromJson, Lean.ToJson, Lean.ToExpr

structure WireCertificate where
  version : Nat
  data : WireData
  firstRep : List Bool
  firstSource : List Bool
  firstTarget : List Bool
  secondRep : List Bool
  secondSource : List Bool
  secondTarget : List Bool
  thirdRep : List Bool
  thirdSource : List Bool
  thirdTarget : List Bool
  firstBranch : String
  firstFactor : List Bool
  lastFactor : List Bool
  deriving Repr, Lean.FromJson, Lean.ToJson, Lean.ToExpr

def matrix (name : String) (m n : Nat) (bits : List Bool) : Except String (Matrix m n) :=
  (WireMatrix.toMatrix ⟨m,n,bits⟩).mapError (fun e => s!"{name}: {e}")

def vector (name : String) (n : Nat) (bits : List Bool) : Except String (Vec n) :=
  (decodeVector n bits).mapError (fun e => s!"{name}: {e}")

def decodeData (w : WireData) : Except String Data := do
  let f ← matrix "data.f" w.b w.a w.f
  let p ← matrix "data.p" w.c w.a w.p
  let q ← matrix "data.q" w.d w.b w.q
  let g ← matrix "data.g" w.d w.c w.g
  let higherA ← matrix "data.higherA" w.a w.ha w.higherA
  let higherB ← matrix "data.higherB" w.b w.hb w.higherB
  let higherC ← matrix "data.higherC" w.c w.hc w.higherC
  let higherD ← matrix "data.higherD" w.d w.hd w.higherD
  let x ← vector "data.x" w.a w.x
  let y ← vector "data.y" w.b w.y
  let z ← vector "data.z" w.c w.z
  let v ← vector "data.w" w.d w.w
  return ⟨w.a,w.b,w.c,w.d,w.ha,w.hb,w.hc,w.hd,
    f,p,q,g,higherA,higherB,higherC,higherD,x,y,z,v⟩

def decodeCertificate (D : Data) (w : WireCertificate) : Except String (Certificate D) := do
  let firstRep ← vector "firstRep" D.a w.firstRep
  let firstSource ← vector "firstSource" D.ha w.firstSource
  let firstTarget ← vector "firstTarget" D.hb w.firstTarget
  let secondRep ← vector "secondRep" D.a w.secondRep
  let secondSource ← vector "secondSource" D.ha w.secondSource
  let secondTarget ← vector "secondTarget" D.hc w.secondTarget
  let thirdRep ← vector "thirdRep" D.c w.thirdRep
  let thirdSource ← vector "thirdSource" D.hc w.thirdSource
  let thirdTarget ← vector "thirdTarget" D.hd w.thirdTarget
  let firstStable ←
    if w.firstBranch = "f" then
      FirstStability.alongF <$> matrix "firstFactor" D.hb D.ha w.firstFactor
    else if w.firstBranch = "p" then
      FirstStability.alongP <$> matrix "firstFactor" D.hc D.ha w.firstFactor
    else throw "firstBranch: expected f or p"
  let lastStable ← matrix "lastFactor" D.hd D.hc w.lastFactor
  return ⟨firstRep,firstSource,firstTarget,secondRep,secondSource,secondTarget,
    thirdRep,thirdSource,thirdTarget,firstStable,lastStable⟩

def decode (w : WireCertificate) : Except String ((D : Data) × Certificate D) := do
  if w.version != 1 then throw "version: expected 1"
  let D ← decodeData w.data
  return ⟨D, ← decodeCertificate D w⟩

def parse (text : String) : Except String WireCertificate := do
  let w : WireCertificate ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson w).compress != text then
    throw "noncanonical JSON, duplicate or unknown field"
  return w

def checkWire (w : WireCertificate) : Except String Bool := do
  let parsed ← decode w
  return check parsed.1 parsed.2

/-- The semantic query is tied to the exact decoded input, not a hash or label. -/
def WireValid (w : WireCertificate) : Prop :=
  ∃ parsed, decode w = .ok parsed ∧ Transfer parsed.1

theorem checkWire_sound (w : WireCertificate) (h : checkWire w = .ok true) : WireValid w := by
  cases he : decode w with
  | error e => simp [checkWire,he,bind,Except.bind] at h
  | ok parsed =>
    have accepted : check parsed.1 parsed.2 = true := by
      simpa [checkWire,he,bind,Except.bind,pure,Except.pure] using h
    exact ⟨parsed,he,check_sound _ _ accepted⟩

def checkBatch : List WireCertificate → Bool
  | [] => true
  | w :: ws => (match checkWire w with | .ok b => b | .error _ => false) && checkBatch ws

theorem checkBatch_sound (ws : List WireCertificate) (h : checkBatch ws = true) :
    ∀ w ∈ ws, WireValid w := by
  induction ws with
  | nil => simp
  | cons w ws ih =>
    simp only [checkBatch,Bool.and_eq_true] at h
    have hw : checkWire w = .ok true := by
      cases he : checkWire w with
      | error e => simp [he] at h
      | ok b => simpa [he] using h.1
    intro v hv
    rcases List.mem_cons.mp hv with hv | hv
    · subst v
      exact checkWire_sound _ hw
    · exact ih h.2 _ hv

instance (w : WireCertificate) : CertificateVerifier (WireValid w) where
  Cert := Unit
  check := fun _ => match checkWire w with | .ok b => b | .error _ => false
  sound := by
    intro _ h
    cases he : checkWire w with
    | error e => simp [he] at h
    | ok b =>
      simp only [he] at h
      exact checkWire_sound w (he.trans (congrArg Except.ok h))

def diagnoseSquare (name : String) (d1 : Matrix m n) (d2 : Matrix q p)
    (f1 : Matrix p n) (f0 : Matrix q m) : Option VerificationFailure :=
  ((List.finRange q).flatMap (fun i => (List.finRange n).map (fun j => (i,j)))).findSome?
    (fun (i,j) => if dot (d2 i) (fun r => f1 r j) != dot (f0 i) (fun r => d1 r j)
      then some ⟨"representative-square", s!"{name}: row {i.val}, column {j.val}",
        "matrix composite bits differ"⟩ else none)

def diagnoseExtension (name : String) (f : Matrix b a) (H : Matrix a h) (K : Matrix b k)
    (x : Vec a) (y : Vec b) (rep : Vec a) (source : Vec h) (target : Vec k) :
    Option VerificationFailure :=
  match diagnoseImage H (add rep x) source with
  | some e => some {e with location := s!"{name}.source: {e.location}"}
  | none => (diagnoseImage K (add (eval f rep) y) target).map
      (fun e => {e with location := s!"{name}.target: {e.location}"})

def diagnose (D : Data) (cert : Certificate D) : Option VerificationFailure :=
  (diagnoseSquare "commutes" D.p D.q D.f D.g).orElse fun _ =>
  (diagnoseExtension "first" D.f D.higherA D.higherB D.x D.y
    cert.firstRep cert.firstSource cert.firstTarget).orElse fun _ =>
  (diagnoseExtension "second" D.p D.higherA D.higherC D.x D.z
    cert.secondRep cert.secondSource cert.secondTarget).orElse fun _ =>
  (diagnoseExtension "third" D.g D.higherC D.higherD D.z D.w
    cert.thirdRep cert.thirdSource cert.thirdTarget).orElse fun _ =>
  (match cert.firstStable with
    | .alongF factor => diagnoseSquare "firstStable.f" factor D.f D.higherA D.higherB
    | .alongP factor => diagnoseSquare "firstStable.p" factor D.p D.higherA D.higherC).orElse fun _ =>
  diagnoseSquare "lastStable" cert.lastStable D.g D.higherC D.higherD

def diagnoseWire (w : WireCertificate) : Except String (Option VerificationFailure) := do
  let parsed ← decode w
  return diagnose parsed.1 parsed.2

def diagnoseBatch (ws : List WireCertificate) : Option String :=
  ws.zipIdx.findSome? fun (w,i) =>
    match diagnoseWire w with
    | .error e => some s!"record {i+1}: {e}"
    | .ok (some e) => some s!"record {i+1}: {e.location}: {e.message}"
    | .ok none => none

instance (D : Data) : DiagnosticCertificateVerifier (Transfer D) where
  Cert := Certificate D
  check := check D
  sound := check_sound D
  diagnose := diagnose D

/-- Elaborating the file constructs data only. The tactic checks it again in the kernel. -/
elab "representative_square_certificate% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  let w ← match parse text.trimAscii.toString with
    | .ok w => pure w
    | .error e => throwError "{path.getString}: {e}"
  match diagnoseWire w with
  | .error e => throwError "{path.getString}: {e}"
  | .ok (some e) => throwError "{path.getString}: {e.location}: {e.message}"
  | .ok none => return Lean.toExpr w

#print axioms checkWire_sound
#print axioms checkBatch_sound
end RepresentativeSquareCertificates
