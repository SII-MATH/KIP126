import ModuleMapCertificates.Basic
namespace ModuleMapCertificates
open NamedElementCertificates

structure Wire where
  version : Nat
  sourceS : Nat
  sourceT : Int
  targetS : Nat
  targetT : Int
  input : ModuleMonomial
  images : List (Nat × Polynomial)
  relations : List Polynomial
  output : Polynomial
  terms : List Term
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

def Wire.image (w : Wire) (g : Nat) : Polynomial :=
  ((w.images.find? (fun p => p.1 == g)).map Prod.snd).getD []
def Wire.shape (w : Wire) : Bool :=
  decide (w.version = 1 ∧ w.sourceS = w.targetS ∧ w.sourceT = w.targetT + 4 ∧
    (w.images.map Prod.fst).Nodup) && w.images.any (fun p => p.1 == w.input.generator) &&
  w.input.coefficient.all (fun g => g < 4294967295) && decide (w.input.generator < 4294967295) &&
  w.images.all (fun p => p.1 < 4294967295 && p.2.all (fun m => m.all (fun g => g < 4294967295))) &&
  (w.relations ++ [w.output] ++ w.terms.map (·.multiplier)).all (fun p => p.all (fun m => m.all (fun g => g < 4294967295)))
def Wire.Valid (w : Wire) : Prop :=
  w.shape = true ∧ MapValid w.image w.relations w.input w.output

def checkWire (w : Wire) : Bool :=
  w.shape && NamedElementCertificates.check w.relations (substitute w.image w.input) w.output w.terms

theorem checkWire_sound (w : Wire) (h : checkWire w = true) : w.Valid := by
  simp only [checkWire, Bool.and_eq_true] at h
  exact ⟨h.1, NamedElementCertificates.check_sound _ _ _ _ h.2⟩

instance (w : Wire) : LinProgramCertificates.CertificateVerifier w.Valid where
  Cert := Unit
  check := fun _ => checkWire w
  sound := fun _ => checkWire_sound w

def diagnose (w : Wire) : Option String :=
  if w.version != 1 then some "version"
  else if !(decide (w.sourceS = w.targetS ∧ w.sourceT = w.targetT + 4)) then some "degree shift (s,t) -> (s,t-4)"
  else if !(decide (w.images.map Prod.fst).Nodup) then some "duplicate module-generator ID"
  else if !w.images.any (fun p => p.1 == w.input.generator) then some s!"missing module-generator image {w.input.generator}"
  else if !checkWire w then some "polynomial substitution/relation witness"
  else none

def parse (text : String) : Except String Wire := do
  let w : Wire ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson w).compress != text then throw "noncanonical JSON or unknown/duplicate field"
  if !w.shape then throw ((diagnose w).getD "invalid shape")
  return w

elab "module_map% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parse text.trimAscii.toString with
  | .error e => throwError "{path.getString}: {e}"
  | .ok w => return Lean.toExpr w
end ModuleMapCertificates
