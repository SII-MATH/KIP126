import FiniteFilteredSquareCertificates.Basic
import FilteredExtensionCertificates.Import

namespace FiniteFilteredSquareCertificates
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
  depth : Nat
  s : Nat
  n : Nat
  m : Nat
  l : Nat
  f : List Bool
  p : List Bool
  q : List Bool
  g : List Bool
  sourceA : List (List Bool)
  sourceB : List (List Bool)
  sourceC : List (List Bool)
  sourceD : List (List Bool)
  x : List Bool
  y : List Bool
  z : List Bool
  w : List Bool
  deriving Repr, Lean.FromJson, Lean.ToJson, Lean.ToExpr

structure WireCertificate where
  version : Nat
  data : WireData
  descentA : List (List Bool)
  descentB : List (List Bool)
  descentC : List (List Bool)
  descentD : List (List Bool)
  filteredF : List (List Bool)
  filteredP : List (List Bool)
  filteredQ : List (List Bool)
  filteredG : List (List Bool)
  memberX : List Bool
  memberY : List Bool
  memberZ : List Bool
  memberW : List Bool
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

def decodeData (w : WireData) : Except String Data := do
  let f ← RepresentativeSquareCertificates.matrix "data.f" w.b w.a w.f
  let p ← RepresentativeSquareCertificates.matrix "data.p" w.c w.a w.p
  let q ← RepresentativeSquareCertificates.matrix "data.q" w.d w.b w.q
  let g ← RepresentativeSquareCertificates.matrix "data.g" w.d w.c w.g
  let sourceA ← FilteredExtensionCertificates.matrices "data.sourceA" w.depth w.a w.ha w.sourceA
  let sourceB ← FilteredExtensionCertificates.matrices "data.sourceB" w.depth w.b w.hb w.sourceB
  let sourceC ← FilteredExtensionCertificates.matrices "data.sourceC" w.depth w.c w.hc w.sourceC
  let sourceD ← FilteredExtensionCertificates.matrices "data.sourceD" w.depth w.d w.hd w.sourceD
  let x ← RepresentativeSquareCertificates.vector "data.x" w.a w.x
  let y ← RepresentativeSquareCertificates.vector "data.y" w.b w.y
  let z ← RepresentativeSquareCertificates.vector "data.z" w.c w.z
  let output ← RepresentativeSquareCertificates.vector "data.w" w.d w.w
  return ⟨w.a,w.b,w.c,w.d,w.ha,w.hb,w.hc,w.hd,w.depth,w.s,w.n,w.m,w.l,
    f,p,q,g,sourceA,sourceB,sourceC,sourceD,x,y,z,output⟩

def decodeCertificate (D : Data) (w : WireCertificate) : Except String (Certificate D) := do
  let descentA ← FilteredExtensionCertificates.matrices "descentA" D.depth D.ha D.ha w.descentA
  let descentB ← FilteredExtensionCertificates.matrices "descentB" D.depth D.hb D.hb w.descentB
  let descentC ← FilteredExtensionCertificates.matrices "descentC" D.depth D.hc D.hc w.descentC
  let descentD ← FilteredExtensionCertificates.matrices "descentD" D.depth D.hd D.hd w.descentD
  let filteredF ← FilteredExtensionCertificates.matrices "filteredF" D.depth D.hb D.ha w.filteredF
  let filteredP ← FilteredExtensionCertificates.matrices "filteredP" D.depth D.hc D.ha w.filteredP
  let filteredQ ← FilteredExtensionCertificates.matrices "filteredQ" D.depth D.hd D.hb w.filteredQ
  let filteredG ← FilteredExtensionCertificates.matrices "filteredG" D.depth D.hd D.hc w.filteredG
  let memberX ← RepresentativeSquareCertificates.vector "memberX" D.ha w.memberX
  let memberY ← RepresentativeSquareCertificates.vector "memberY" D.hb w.memberY
  let memberZ ← RepresentativeSquareCertificates.vector "memberZ" D.hc w.memberZ
  let memberW ← RepresentativeSquareCertificates.vector "memberW" D.hd w.memberW
  let firstRep ← RepresentativeSquareCertificates.vector "firstRep" D.a w.firstRep
  let firstSource ← RepresentativeSquareCertificates.vector "firstSource" D.ha w.firstSource
  let firstTarget ← RepresentativeSquareCertificates.vector "firstTarget" D.hb w.firstTarget
  let secondRep ← RepresentativeSquareCertificates.vector "secondRep" D.a w.secondRep
  let secondSource ← RepresentativeSquareCertificates.vector "secondSource" D.ha w.secondSource
  let secondTarget ← RepresentativeSquareCertificates.vector "secondTarget" D.hc w.secondTarget
  let thirdRep ← RepresentativeSquareCertificates.vector "thirdRep" D.c w.thirdRep
  let thirdSource ← RepresentativeSquareCertificates.vector "thirdSource" D.hc w.thirdSource
  let thirdTarget ← RepresentativeSquareCertificates.vector "thirdTarget" D.hd w.thirdTarget
  let firstStable ←
    if w.firstBranch = "f" then
      RepresentativeSquareCertificates.FirstStability.alongF <$>
        RepresentativeSquareCertificates.matrix "firstFactor" D.hb D.ha w.firstFactor
    else if w.firstBranch = "p" then
      RepresentativeSquareCertificates.FirstStability.alongP <$>
        RepresentativeSquareCertificates.matrix "firstFactor" D.hc D.ha w.firstFactor
    else throw "firstBranch: expected f or p"
  let lastStable ← RepresentativeSquareCertificates.matrix "lastFactor" D.hd D.hc w.lastFactor
  return ⟨descentA,descentB,descentC,descentD,filteredF,filteredP,filteredQ,filteredG,
    memberX,memberY,memberZ,memberW,
    ⟨firstRep,firstSource,firstTarget,secondRep,secondSource,secondTarget,
      thirdRep,thirdSource,thirdTarget,firstStable,lastStable⟩⟩

def decode (w : WireCertificate) : Except String ((D : Data) × Certificate D) := do
  if w.version != 1 then throw "version: expected 1"
  let D ← decodeData w.data
  return ⟨D,← decodeCertificate D w⟩

def parse (text : String) : Except String WireCertificate := do
  let w : WireCertificate ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson w).compress != text then
    throw "noncanonical JSON, duplicate or unknown field"
  return w

def checkWire (w : WireCertificate) : Except String Bool := do
  let parsed ← decode w
  return check parsed.1 parsed.2

/-- The exact complete filtration, map, source and result are embedded in the proposition. -/
def WireValid (w : WireCertificate) : Prop :=
  ∃ parsed, decode w = .ok parsed ∧ ResultValid parsed.1

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


def diagnose (D : Data) (cert : Certificate D) : Option VerificationFailure :=
  if D.n > D.m+D.l then some ⟨"finite-filtered-square","length","n exceeds m+l"⟩ else
  ((List.finRange D.depth).findSome? fun i =>
    (FilteredExtensionCertificates.diagnoseFactor s!"descentA[{i.val}]" (D.A (i.val+1)) (D.A i.val) (cert.descentA i)).orElse fun _ =>
    (FilteredExtensionCertificates.diagnoseFactor s!"descentB[{i.val}]" (D.B (i.val+1)) (D.B i.val) (cert.descentB i)).orElse fun _ =>
    (FilteredExtensionCertificates.diagnoseFactor s!"descentC[{i.val}]" (D.C (i.val+1)) (D.C i.val) (cert.descentC i)).orElse fun _ =>
    (FilteredExtensionCertificates.diagnoseFactor s!"descentD[{i.val}]" (D.E (i.val+1)) (D.E i.val) (cert.descentD i)).orElse fun _ =>
    (RepresentativeSquareCertificates.diagnoseSquare s!"filteredF[{i.val}]" (cert.filteredF i) D.f (D.A i.val) (D.B i.val)).orElse fun _ =>
    (RepresentativeSquareCertificates.diagnoseSquare s!"filteredP[{i.val}]" (cert.filteredP i) D.p (D.A i.val) (D.C i.val)).orElse fun _ =>
    (RepresentativeSquareCertificates.diagnoseSquare s!"filteredQ[{i.val}]" (cert.filteredQ i) D.q (D.B i.val) (D.E i.val)).orElse fun _ =>
    (RepresentativeSquareCertificates.diagnoseSquare s!"filteredG[{i.val}]" (cert.filteredG i) D.g (D.C i.val) (D.E i.val))).orElse fun _ =>
  ((diagnoseImage (D.A D.s) D.x cert.memberX).map fun e =>
    {e with location := s!"memberX: {e.location}"}).orElse fun _ =>
  ((diagnoseImage (D.B (D.s+D.n)) D.y cert.memberY).map fun e =>
    {e with location := s!"memberY: {e.location}"}).orElse fun _ =>
  ((diagnoseImage (D.C (D.s+D.m)) D.z cert.memberZ).map fun e =>
    {e with location := s!"memberZ: {e.location}"}).orElse fun _ =>
  ((diagnoseImage (D.E (D.s+D.m+D.l)) D.w cert.memberW).map fun e =>
    {e with location := s!"memberW: {e.location}"}).orElse fun _ =>
  RepresentativeSquareCertificates.diagnose D.square cert.square

instance (D : Data) : DiagnosticCertificateVerifier (ResultValid D) where
  Cert := Certificate D
  check := check D
  sound := check_sound D
  diagnose := diagnose D

def diagnoseWire (w : WireCertificate) : Except String (Option VerificationFailure) := do
  let parsed ← decode w
  return diagnose parsed.1 parsed.2

def physicalLines (text : String) : List String :=
  let lines := text.splitOn "\n"
  if text.endsWith "\n" then lines.dropLast else lines

def parseBatch (text : String) : Except String (List WireCertificate) :=
  (physicalLines text).zipIdx.mapM fun (line,i) => do
    if line.isEmpty then throw s!"line {i+1}: empty record"
    if line.contains '\r' then throw s!"line {i+1}: CR is not canonical; use LF"
    let w ← (parse line).mapError (fun e => s!"line {i+1}: {e}")
    match ← (diagnoseWire w).mapError (fun e => s!"line {i+1}: {e}") with
    | none => return w
    | some e => throw s!"line {i+1}: {e.location}: {e.message}"

elab "finite_filtered_square_certificate% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  let ws ← match parseBatch text with
    | .ok ws => pure ws
    | .error e => throwError "{path.getString}: {e}"
  match ws with
  | [w] => return Lean.toExpr w
  | _ => throwError "{path.getString}: expected exactly one record"

elab "finite_filtered_square_batch% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parseBatch text with
  | .ok ws => return Lean.toExpr ws
  | .error e => throwError "{path.getString}: {e}"


#print axioms checkWire_sound
#print axioms checkBatch_sound
end FiniteFilteredSquareCertificates
