import SemilinearMapCertificates.Basic
namespace SemilinearMapCertificates
open NamedElementCertificates ModuleMapCertificates
structure Wire where
  version : Nat
  s : Nat
  t : Nat
  input : ModuleMonomial
  coefficients : List (Nat × Polynomial)
  images : List (Nat × Polynomial)
  relations : List Polynomial
  output : Polynomial
  terms : List Term
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

def lookup (xs : List (Nat × Polynomial)) (g : Nat) := ((xs.find? (fun p => p.1==g)).map Prod.snd).getD []
def Wire.shape (w : Wire) : Bool :=
  decide (w.version=1 ∧ (w.coefficients.map Prod.fst).Nodup ∧ (w.images.map Prod.fst).Nodup) &&
  w.input.coefficient.all (fun g => g<4294967295 && w.coefficients.any (fun p => p.1==g)) &&
  decide (w.input.generator<4294967295) && w.images.any (fun p => p.1==w.input.generator) &&
  (w.coefficients ++ w.images).all (fun p => p.1<4294967295) &&
  (w.relations ++ [w.output] ++ (w.coefficients ++ w.images).map Prod.snd ++ w.terms.map (·.multiplier)).all
    (fun p => p.all (fun m => m.all (fun g => g<4294967295)))
def Wire.Valid (w : Wire) : Prop := w.shape=true ∧
  SemilinearMapCertificates.Valid (lookup w.coefficients) (lookup w.images) w.relations w.input w.output
def checkWire (w : Wire) : Bool := w.shape && NamedElementCertificates.check w.relations
  (substitute (lookup w.coefficients) (lookup w.images) w.input) w.output w.terms
theorem checkWire_sound (w : Wire) (h : checkWire w=true) : w.Valid := by
  simp only [checkWire, Bool.and_eq_true] at h
  exact ⟨h.1,NamedElementCertificates.check_sound _ _ _ _ h.2⟩
instance (w : Wire) : LinProgramCertificates.CertificateVerifier w.Valid where
  Cert := Unit
  check := fun _ => checkWire w
  sound := fun _ => checkWire_sound w

def parse (text : String) : Except String Wire := do
  let w : Wire ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson w).compress != text then throw "noncanonical/duplicate/unknown JSON"
  if !w.shape then throw "missing/duplicate coefficient or module image, version or sentinel"
  return w
elab "semilinear_map% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parse text.trimAscii.toString with
  | .error e => throwError "{path.getString}: {e}"
  | .ok w => return Lean.toExpr w
end SemilinearMapCertificates
