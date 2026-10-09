import ModuleToModuleCertificates.Matrix
namespace Row2796D4Detector.Shifted
open NamedElementCertificates LinearCertificates ModuleToModuleCertificates
structure Wire where
  version : Nat
  sourceS : Nat
  sourceT : Int
  targetS : Nat
  targetT : Int
  sourceGenerators : Nat
  targetGenerators : Nat
  rows : Nat
  cols : Nat
  images : List (List Polynomial)
  source : List (List Polynomial)
  target : List (List Polynomial)
  relations : List (List Polynomial)
  entries : List Bool
  terms : List (List Term)
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

def expr (n : Nat) (xs : List Polynomial) : ModuleExpressions.Expression n := fun i => xs[i.val]?.getD []
def Wire.img (w : Wire) : Fin w.sourceGenerators → ModuleExpressions.Expression w.targetGenerators :=
  fun i => expr _ (w.images[i.val]?.getD [])
def Wire.src (w : Wire) : Fin w.cols → ModuleExpressions.Expression w.sourceGenerators :=
  fun i => expr _ (w.source[i.val]?.getD [])
def Wire.tgt (w : Wire) : Fin w.rows → ModuleExpressions.Expression w.targetGenerators :=
  fun i => expr _ (w.target[i.val]?.getD [])
def Wire.rels (w : Wire) := w.relations.map (expr w.targetGenerators)
def Wire.mat (w : Wire) : Matrix w.rows w.cols := fun i j => w.entries[i.val*w.cols+j.val]?.getD false

def expressionIdsValid (xs : List Polynomial) : Bool :=
  xs.all fun p => p.all fun m => m.all fun g => g < 4294967295

def Wire.shape (w : Wire) : Bool :=
  decide (w.version=1 ∧ w.sourceS+1=w.targetS ∧ w.sourceT+7=w.targetT ∧
    w.images.length=w.sourceGenerators ∧ w.source.length=w.cols ∧ w.target.length=w.rows ∧
    w.entries.length=w.rows*w.cols ∧ w.terms.length=w.cols) &&
  w.images.all (fun x => x.length == w.targetGenerators) &&
  w.source.all (fun x => x.length == w.sourceGenerators) &&
  (w.target ++ w.relations).all (fun x => x.length == w.targetGenerators) &&
  decide (w.sourceGenerators < 4294967295 ∧ w.targetGenerators < 4294967295) &&
  (w.images ++ w.source ++ w.target ++ w.relations).all expressionIdsValid &&
  w.terms.all (fun ts => ts.all (fun t => expressionIdsValid [t.multiplier]))
def checkWire (w : Wire) : Bool := w.shape &&
  checkMatrix w.img w.rels w.src w.tgt w.mat (fun i => w.terms[i.val]?.getD [])
def Wire.Valid (w : Wire) : Prop := w.shape=true ∧
  ∀ j, ModuleToModuleCertificates.Valid w.img w.rels (w.src j) (decode w.tgt (fun i => w.mat i j))
theorem checkWire_sound (w : Wire) (h : checkWire w=true) : w.Valid := by
  simp only [checkWire, Bool.and_eq_true] at h
  refine ⟨h.1, fun j => ?_⟩
  exact check_sound _ _ _ _ _ (List.all_eq_true.mp h.2 j (List.mem_finRange j))
instance (w : Wire) : LinProgramCertificates.CertificateVerifier w.Valid where
  Cert := Unit
  check := fun _ => checkWire w
  sound := fun _ => checkWire_sound w

def parse (text : String) : Except String Wire := do
  let w : Wire ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson w).compress != text then throw "noncanonical/unknown/duplicate JSON"
  if !w.shape then throw "version, degree, dimensions, or missing expression coordinates"
  return w
elab "row2796_shifted% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parse text.trimAscii.toString with
  | .error e => throwError "{path.getString}: {e}"
  | .ok w => return Lean.toExpr w
end Row2796D4Detector.Shifted
