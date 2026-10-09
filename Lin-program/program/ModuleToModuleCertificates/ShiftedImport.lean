import ModuleToModuleCertificates.WireSemantics
namespace ModuleToModuleCertificates

structure ShiftedWire where
  version : Nat
  filtration : Int
  suspension : Int
  sourceS : Int
  sourceT : Int
  targetS : Int
  targetT : Int
  algebra : Wire
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

/-- The nested algebra wire uses normalized equal degrees; the outer signed
bidegrees carry the actual map shift, checked explicitly. -/
def ShiftedWire.degrees (w : ShiftedWire) : Prop :=
  w.version=1 ∧ w.targetS=w.sourceS+w.filtration ∧
  w.targetT=w.sourceT+w.filtration-w.suspension
instance (w : ShiftedWire) : Decidable w.degrees := inferInstanceAs (Decidable (_ ∧ _))
def ShiftedWire.Valid (w : ShiftedWire) : Prop := w.degrees ∧ w.algebra.Valid
def checkShifted (w : ShiftedWire) : Bool := decide w.degrees && checkWire w.algebra

theorem checkShifted_sound (w : ShiftedWire) (h : checkShifted w=true) : w.Valid := by
  simp only [checkShifted, Bool.and_eq_true] at h
  exact ⟨of_decide_eq_true h.1,checkWire_sound _ h.2⟩
instance (w : ShiftedWire) : LinProgramCertificates.CertificateVerifier w.Valid where
  Cert := Unit
  check := fun _ => checkShifted w
  sound := fun _ => checkShifted_sound w

def parseShifted (text : String) : Except String ShiftedWire := do
  let w : ShiftedWire ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson w).compress != text then throw "noncanonical/duplicate/unknown JSON"
  if !decide w.degrees then throw "declared filtration/suspension bidegree mismatch"
  if !w.algebra.shape then throw "algebra expression shape invalid"
  return w
elab "shifted_module_map% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parseShifted text.trimAscii.toString with
  | .error e => throwError "{path.getString}: {e}"
  | .ok w => return Lean.toExpr w
end ModuleToModuleCertificates
