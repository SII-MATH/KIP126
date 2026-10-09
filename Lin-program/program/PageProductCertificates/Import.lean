import PageProductCertificates.CycleWitness
namespace PageProductCertificates
open LinearCertificates PageTransitionCertificates
structure Wire where
  version : Nat
  left : WireComparison
  right : WireComparison
  target : WireComparison
  tensor : List Bool
  leftProjector : List Bool
  leftCorrection : List Bool
  rightProjector : List Bool
  rightCorrection : List Bool
  leftBoundary : List Bool
  rightBoundary : List Bool
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

def tensorOf (a b c : Nat) (xs : List Bool) : Tensor a b c :=
  fun k i j => xs[(k.val*a+i.val)*b+j.val]?.getD false

def Wire.product (w : Wire) := tensorOf w.left.m w.right.m w.target.m w.tensor

def Wire.witness (w : Wire) : CycleWitness w.left.k w.left.m w.right.k w.right.m
    w.target.n w.left.n w.right.n :=
  ⟨matrixOf w.left.m w.left.m w.leftProjector, matrixOf w.left.m w.left.k w.leftCorrection,
   matrixOf w.right.m w.right.m w.rightProjector, matrixOf w.right.m w.right.k w.rightCorrection,
   tensorOf w.left.n w.right.m w.target.n w.leftBoundary,
   tensorOf w.left.m w.right.n w.target.n w.rightBoundary⟩

def Shape (w : Wire) : Prop :=
  w.version = 1 ∧ ShapeValid w.left ∧ ShapeValid w.right ∧ ShapeValid w.target ∧
  w.tensor.length = w.left.m*w.right.m*w.target.m ∧
  w.leftProjector.length = w.left.m*w.left.m ∧ w.leftCorrection.length = w.left.m*w.left.k ∧
  w.rightProjector.length = w.right.m*w.right.m ∧ w.rightCorrection.length = w.right.m*w.right.k ∧
  w.leftBoundary.length = w.left.n*w.right.m*w.target.n ∧
  w.rightBoundary.length = w.left.m*w.right.n*w.target.n
instance (w : Wire) : Decidable (Shape w) := inferInstanceAs (Decidable (_ ∧ _))

def wireCheck (w : Wire) : Bool := decide (Shape w) &&
  checkCycles (matrixOf w.left.k w.left.m w.left.outgoing) (matrixOf w.left.m w.left.n w.left.incoming) w.left.comparison
    (matrixOf w.right.k w.right.m w.right.outgoing) (matrixOf w.right.m w.right.n w.right.incoming) w.right.comparison
    (matrixOf w.target.k w.target.m w.target.outgoing) (matrixOf w.target.m w.target.n w.target.incoming) w.target.comparison
    w.product w.witness

def Wire.Valid (w : Wire) : Prop := Shape w ∧ PageProductCertificates.Valid
  (matrixOf w.left.k w.left.m w.left.outgoing) (matrixOf w.left.m w.left.n w.left.incoming)
  (matrixOf w.right.k w.right.m w.right.outgoing) (matrixOf w.right.m w.right.n w.right.incoming)
  (matrixOf w.target.k w.target.m w.target.outgoing) (matrixOf w.target.m w.target.n w.target.incoming) w.product

theorem wireCheck_sound (w : Wire) (h : wireCheck w = true) : w.Valid := by
  simp only [wireCheck, Bool.and_eq_true] at h
  exact ⟨of_decide_eq_true h.1, checkCycles_sound _ _ _ _ _ _ _ _ _ _ _ h.2⟩

instance (w : Wire) : LinProgramCertificates.CertificateVerifier w.Valid where
  Cert := Unit
  check := fun _ => wireCheck w
  sound := fun _ => wireCheck_sound w

def parse (s : String) : Except String Wire := do
  let w : Wire ← Lean.fromJson? (← Lean.Json.parse s)
  if (Lean.toJson w).compress != s then throw "noncanonical JSON or duplicate/unknown field"
  if !decide (Shape w) then throw "version or array length invalid"
  return w

elab "page_product% " path:str : term => do
  let s ← IO.FS.readFile path.getString
  match parse s.trimAscii.toString with
  | .ok w => return Lean.toExpr w
  | .error e => throwError "{path.getString}: {e}"

def tensorMismatch (label : String) (s t : Tensor a b c) : Option String :=
  ((List.finRange c).flatMap fun k => (List.finRange a).flatMap fun i =>
    (List.finRange b).map fun j => (k,i,j)).findSome? fun (k,i,j) =>
      if s k i j != t k i j then some s!"{label}[{k.val},{i.val},{j.val}]" else none

def diagnose (w : Wire) : Option String := Id.run do
  if !decide (Shape w) then return some "version or array length"
  for (label,c) in [("left",w.left),("right",w.right),("target",w.target)] do
    if let some e := PageTransitionCertificates.diagnose c then return some s!"{label}.{e}"
  let a := matrixOf w.left.k w.left.m w.left.outgoing
  let b := matrixOf w.right.k w.right.m w.right.outgoing
  let c := matrixOf w.target.k w.target.m w.target.outgoing
  let ci := matrixOf w.target.m w.target.n w.target.incoming
  let v := w.witness
  for e in [PageTransitionCertificates.firstMismatch "left.cycle" (ResolutionCertificates.compose a v.leftProjector) (fun _ _ => false),
    PageTransitionCertificates.firstMismatch "left.projector" (ResolutionCertificates.matrixAdd v.leftProjector (ResolutionCertificates.compose v.leftCorrection a)) (ResolutionCertificates.identityMatrix w.left.m),
    PageTransitionCertificates.firstMismatch "right.cycle" (ResolutionCertificates.compose b v.rightProjector) (fun _ _ => false),
    PageTransitionCertificates.firstMismatch "right.projector" (ResolutionCertificates.matrixAdd v.rightProjector (ResolutionCertificates.compose v.rightCorrection b)) (ResolutionCertificates.identityMatrix w.right.m)] do
    if e.isSome then return e
  for e in [tensorMismatch "cycles" (post c (preRight (preLeft w.product v.leftProjector) v.rightProjector)) (fun _ _ _ => false),
    tensorMismatch "leftBoundary" (preRight (preLeft w.product (matrixOf w.left.m w.left.n w.left.incoming)) v.rightProjector) (post ci v.leftBoundary),
    tensorMismatch "rightBoundary" (preRight (preLeft w.product v.leftProjector) (matrixOf w.right.m w.right.n w.right.incoming)) (post ci v.rightBoundary)] do
    if e.isSome then return e
  return none
end PageProductCertificates
