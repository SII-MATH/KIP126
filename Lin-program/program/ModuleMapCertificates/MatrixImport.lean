import ModuleMapCertificates.MatrixSemantics
namespace ModuleMapCertificates
open NamedElementCertificates LinearCertificates
structure MatrixWire where
  version : Nat
  sourceS : Nat
  sourceT : Int
  targetS : Nat
  targetT : Int
  rows : Nat
  cols : Nat
  source : List ModuleMonomial
  target : List Polynomial
  entries : List Bool
  images : List (Nat × Polynomial)
  relations : List Polynomial
  terms : List (List Term)
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

def MatrixWire.image (w : MatrixWire) (g : Nat) : Polynomial :=
  ((w.images.find? (fun p => p.1 == g)).map Prod.snd).getD []
def MatrixWire.src (w : MatrixWire) : Fin w.cols → ModuleMonomial :=
  fun j => w.source[j.val]?.getD ⟨[],0⟩
def MatrixWire.tgt (w : MatrixWire) : Fin w.rows → Polynomial := fun i => w.target[i.val]?.getD []
def MatrixWire.matrix (w : MatrixWire) : Matrix w.rows w.cols :=
  fun i j => w.entries[i.val*w.cols+j.val]?.getD false

def MatrixWire.shape (w : MatrixWire) : Bool :=
  decide (w.version = 1 ∧ w.sourceS = w.targetS ∧ w.sourceT = w.targetT + 4 ∧
    w.source.length = w.cols ∧ w.target.length = w.rows ∧ w.entries.length = w.rows*w.cols ∧
    w.terms.length = w.cols ∧ (w.images.map Prod.fst).Nodup) &&
  w.source.all (fun m => m.generator < 4294967295 && m.coefficient.all (fun g => g < 4294967295) && w.images.any (fun p => p.1 == m.generator)) &&
  w.images.all (fun p => p.1 < 4294967295) &&
  (w.target ++ w.relations ++ w.images.map Prod.snd ++ (w.terms.flatten.map (·.multiplier))).all
    (fun p => p.all (fun m => m.all (fun g => g < 4294967295)))
def MatrixWire.Valid (w : MatrixWire) : Prop :=
  w.shape = true ∧ MatrixValid w.image w.relations w.src w.tgt w.matrix
def checkMatrixWire (w : MatrixWire) : Bool := w.shape &&
  checkMatrix w.image w.relations w.src w.tgt w.matrix (fun j => w.terms[j.val]?.getD [])
theorem checkMatrixWire_sound (w : MatrixWire) (h : checkMatrixWire w = true) : w.Valid := by
  simp only [checkMatrixWire, Bool.and_eq_true] at h
  exact ⟨h.1,checkMatrix_sound _ _ _ _ _ _ h.2⟩
instance (w : MatrixWire) : LinProgramCertificates.CertificateVerifier w.Valid where
  Cert := Unit
  check := fun _ => checkMatrixWire w
  sound := fun _ => checkMatrixWire_sound w

def parseMatrix (text : String) : Except String MatrixWire := do
  let w : MatrixWire ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson w).compress != text then throw "noncanonical/duplicate/unknown JSON"
  if !w.shape then throw "dimension, degree shift, or generator-image coverage failure"
  return w
elab "module_matrix% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parseMatrix text.trimAscii.toString with
  | .error e => throwError "{path.getString}: {e}"
  | .ok w => return Lean.toExpr w
end ModuleMapCertificates
