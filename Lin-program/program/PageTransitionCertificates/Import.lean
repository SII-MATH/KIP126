import PageTransitionCertificates.Quotient
import LinearCertificates.Import

namespace PageTransitionCertificates
open LinearCertificates

structure WireComparison where
  version : Nat
  k : Nat
  m : Nat
  n : Nat
  h : Nat
  outgoing : List Bool
  incoming : List Bool
  inclusion : List Bool
  projection : List Bool
  up : List Bool
  down : List Bool
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

def matrixOf (rows cols : Nat) (bits : List Bool) : Matrix rows cols :=
  fun i j => bits[i.val * cols + j.val]?.getD false

def WireComparison.comparison (w : WireComparison) : Comparison w.k w.m w.n w.h :=
  ⟨matrixOf w.m w.h w.inclusion, matrixOf w.h w.m w.projection,
    matrixOf w.n w.m w.up, matrixOf w.m w.k w.down⟩

def ShapeValid (w : WireComparison) : Prop :=
  w.version = 1 ∧ w.outgoing.length = w.k * w.m ∧
  w.incoming.length = w.m * w.n ∧ w.inclusion.length = w.m * w.h ∧
  w.projection.length = w.h * w.m ∧ w.up.length = w.n * w.m ∧ w.down.length = w.m * w.k
instance (w : WireComparison) : Decidable (ShapeValid w) := inferInstanceAs (Decidable (_ ∧ _))

def WireComparison.Valid (w : WireComparison) : Prop :=
  ShapeValid w ∧ HomologyComparison (matrixOf w.k w.m w.outgoing)
    (matrixOf w.m w.n w.incoming) w.comparison

def checkWire (w : WireComparison) : Bool :=
  decide (ShapeValid w) && checkComparison (matrixOf w.k w.m w.outgoing)
    (matrixOf w.m w.n w.incoming) w.comparison

theorem checkWire_sound (w : WireComparison) (hc : checkWire w = true) : w.Valid := by
  simp only [checkWire, Bool.and_eq_true] at hc
  exact ⟨of_decide_eq_true hc.1, checkComparison_sound _ _ _ hc.2⟩

instance (w : WireComparison) : LinProgramCertificates.CertificateVerifier w.Valid where
  Cert := Unit
  check := fun _ => checkWire w
  sound := fun _ => checkWire_sound w

def parse (text : String) : Except String WireComparison := do
  let w : WireComparison ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson w).compress != text then throw "noncanonical JSON or unknown/duplicate field"
  if !decide (ShapeValid w) then throw "version or matrix dimensions invalid"
  return w

elab "page_comparison% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parse text.trimAscii.toString with
  | .error e => throwError "{path.getString}: {e}"
  | .ok w => return Lean.toExpr w

end PageTransitionCertificates

namespace PageTransitionCertificates
open LinearCertificates ResolutionCertificates

def firstMismatch (name : String) (a b : Matrix m n) : Option String :=
  ((List.finRange m).flatMap (fun i => (List.finRange n).map (fun j => (i,j)))).findSome?
    (fun (i,j) => if a i j != b i j then some s!"{name}[{i.val},{j.val}]" else none)

def diagnose (w : WireComparison) : Option String := Id.run do
  if !decide (ShapeValid w) then return some "version or matrix dimensions"
  let a := matrixOf w.k w.m w.outgoing
  let b := matrixOf w.m w.n w.incoming
  let c := w.comparison
  for e in [firstMismatch "outgoing*incoming" (compose a b) (fun _ _ => false),
    firstMismatch "outgoing*inclusion" (compose a c.inclusion) (fun _ _ => false),
    firstMismatch "projection*incoming" (compose c.projection b) (fun _ _ => false),
    firstMismatch "projection*inclusion" (compose c.projection c.inclusion) (identityMatrix w.h),
    firstMismatch "homotopy" (matrixAdd (compose c.inclusion c.projection)
      (matrixAdd (compose b c.up) (compose c.down a))) (identityMatrix w.m)] do
    if e.isSome then return e
  return none
end PageTransitionCertificates
