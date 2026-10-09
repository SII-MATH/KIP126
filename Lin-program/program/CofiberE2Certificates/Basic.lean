import DerivedMapCertificates.Import
namespace CofiberE2Certificates
open LinearCertificates ResolutionCertificates
structure Wire where
  version : Nat
  name : String
  position : Nat
  middleS : Int
  middleT : Int
  inputS : Int
  inputT : Int
  outputS : Int
  outputT : Int
  incomingShiftS : Int
  incomingShiftT : Int
  outgoingShiftS : Int
  outgoingShiftT : Int
  inputDimension : Nat
  middleDimension : Nat
  outputDimension : Nat
  incoming : List Bool
  outgoing : List Bool
  up : List Bool
  down : List Bool
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

def Wire.a (w : Wire) : Matrix w.middleDimension w.inputDimension :=
  fun i j => w.incoming[i.val*w.inputDimension+j.val]?.getD false
def Wire.b (w : Wire) : Matrix w.outputDimension w.middleDimension :=
  fun i j => w.outgoing[i.val*w.middleDimension+j.val]?.getD false
def Wire.witness (w : Wire) : Contraction w.outputDimension w.middleDimension w.inputDimension :=
  ⟨fun i j => w.up[i.val*w.middleDimension+j.val]?.getD false,
   fun i j => w.down[i.val*w.outputDimension+j.val]?.getD false⟩
def Wire.shape (w : Wire) : Prop :=
  w.version=1 ∧ w.position<3 ∧
  w.middleS=w.inputS+w.incomingShiftS ∧ w.middleT=w.inputT+w.incomingShiftT ∧
  w.outputS=w.middleS+w.outgoingShiftS ∧ w.outputT=w.middleT+w.outgoingShiftT ∧
  w.incoming.length=w.middleDimension*w.inputDimension ∧
  w.outgoing.length=w.outputDimension*w.middleDimension ∧
  w.up.length=w.inputDimension*w.middleDimension ∧
  w.down.length=w.middleDimension*w.outputDimension
instance (w : Wire) : Decidable w.shape := inferInstanceAs (Decidable (_ ∧ _))
def Wire.Valid (w : Wire) : Prop := w.shape ∧ ExactAt w.b w.a
def check (w : Wire) : Bool := decide w.shape && checkContraction w.b w.a w.witness

theorem check_sound (w : Wire) (h : check w=true) : w.Valid := by
  simp only [check, Bool.and_eq_true] at h
  exact ⟨of_decide_eq_true h.1, checkContraction_sound _ _ _ h.2⟩
instance (w : Wire) : LinProgramCertificates.CertificateVerifier w.Valid where
  Cert := Unit
  check := fun _ => check w
  sound := fun _ => check_sound w

def parse (text : String) : Except String Wire := do
  let w : Wire ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson w).compress != text then throw "noncanonical/duplicate/unknown cofiber matrix JSON"
  if !decide w.shape then throw "degree, position or matrix dimensions invalid"
  return w

def diagnose (w : Wire) : Option String := Id.run do
  if !decide w.shape then return some s!"{w.name}, position {w.position}: degree/shape mismatch"
  for i in List.finRange w.outputDimension do
    for j in List.finRange w.inputDimension do
      if compose w.b w.a i j then
        return some s!"{w.name}, position {w.position}: nonzero composite at row {i.val}, column {j.val}"
  for i in List.finRange w.middleDimension do
    for j in List.finRange w.middleDimension do
      if matrixAdd (compose w.a w.witness.up) (compose w.witness.down w.b) i j != identityMatrix _ i j then
        return some s!"{w.name}, position {w.position}: contraction mismatch at row {i.val}, column {j.val}"
  return none

elab "cofiber_e2% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parse text.trimAscii.toString with
  | .error e => throwError "{path.getString}: {e}"
  | .ok w => return Lean.toExpr w
end CofiberE2Certificates
