import ExtComplexCertificates.GenericFreeComplex
import Lean.Data.Json

namespace ExtComplexCertificates.GenericFreeComplex
open MilnorCertificates

deriving instance Lean.ToExpr for Window
deriving instance Lean.ToExpr for MilnorCertificates.Certificate
deriving instance Lean.ToExpr for AllCertificate

/-- Dense, row-major wire format; indices are positions, not external IDs. -/
structure Wire where
  version : Nat
  rank : Nat
  n : Nat
  homological : List Nat
  internal : List Nat
  edges : List Polynomial
  products : List Polynomial
  witnesses : List AllCertificate
  deriving Lean.ToJson, Lean.FromJson, Lean.ToExpr

def Wire.data (w : Wire) : Data w.rank w.n where
  homological i := w.homological[i.val]?.getD 0
  internal i := w.internal[i.val]?.getD 0
  edge i j := w.edges[i.val * w.n + j.val]?.getD []

def Wire.certificate (w : Wire) : Certificate w.n where
  products i j k := w.products[(i.val * w.n + j.val) * w.n + k.val]?.getD []
  witnesses i j k := w.witnesses[(i.val * w.n + j.val) * w.n + k.val]?.getD
    ⟨⟨0,⟨0,0⟩,[]⟩,0,0⟩

def checkDimensions (w : Wire) : Bool := decide
  (w.version = 1 ∧ w.homological.length = w.n ∧ w.internal.length = w.n ∧
   w.edges.length = w.n*w.n ∧ w.products.length = w.n*w.n*w.n ∧
   w.witnesses.length = w.n*w.n*w.n)

def checkWire (w : Wire) : Bool := checkDimensions w && check w.data w.certificate

def Wire.Valid (w : Wire) : Prop :=
  w.version = 1 ∧ w.homological.length = w.n ∧ w.internal.length = w.n ∧
  w.edges.length = w.n*w.n ∧ w.products.length = w.n*w.n*w.n ∧
  w.witnesses.length = w.n*w.n*w.n ∧ GenericFreeComplex.Valid w.data

theorem checkWire_sound (w : Wire) (h : checkWire w = true) : w.Valid := by
  simp only [checkWire,Bool.and_eq_true,checkDimensions,decide_eq_true_eq] at h
  exact ⟨h.1.1,h.1.2.1,h.1.2.2.1,h.1.2.2.2.1,h.1.2.2.2.2.1,h.1.2.2.2.2.2,
    check_sound w.data w.certificate h.2⟩

instance (w : Wire) : LinProgramCertificates.CertificateVerifier w.Valid where
  Cert := Unit
  check _ := checkWire w
  sound _ := checkWire_sound w

def diagnoseWire (w : Wire) : List String := Id.run do
  let mut errors := []
  if w.version != 1 then errors := errors ++ ["version: expected 1"]
  if w.homological.length != w.n then errors := errors ++ ["homological: expected n entries"]
  if w.internal.length != w.n then errors := errors ++ ["internal: expected n entries"]
  if w.edges.length != w.n*w.n then errors := errors ++ ["edges: expected n*n entries"]
  if w.products.length != w.n*w.n*w.n then errors := errors ++ ["products: expected n*n*n entries"]
  if w.witnesses.length != w.n*w.n*w.n then errors := errors ++ ["witnesses: expected n*n*n entries"]
  if !checkDimensions w then return errors
  for i in List.finRange w.n do
    for j in List.finRange w.n do
      for m in w.data.edge i j do
        if m.length != w.rank then errors := errors ++ [s!"edge ({i.val},{j.val}): monomial rank mismatch"]
        if w.data.homological j + 1 != w.data.homological i then
          errors := errors ++ [s!"edge ({i.val},{j.val}): homological degree mismatch"]
        if weight m + w.data.internal j != w.data.internal i then
          errors := errors ++ [s!"edge ({i.val},{j.val}): internal degree mismatch"]
      for k in List.finRange w.n do
        let details := diagnoseAll w.rank (w.data.edge i j) (w.data.edge j k)
          (w.certificate.products i j k) (w.certificate.witnesses i j k)
        errors := errors ++ details.map (fun e => s!"product ({i.val},{j.val},{k.val}): {e}")
      if !checkCancellation w.certificate i j then
        errors := errors ++ [s!"composite ({i.val},{j.val}): polynomial coefficients do not cancel"]
  return errors

/-- Exact round-trip rejects duplicate/unknown keys, including nested witness
keys. Whitespace and field order follow Lean's canonical compressed JSON. -/
def parseWire (text : String) : Except String Wire := do
  let w : Wire ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson w).compress != text then throw "noncanonical JSON or duplicate/unknown field"
  if !checkDimensions w then throw (String.intercalate "; " (diagnoseWire w))
  return w

def decodeWire (text : String) : Except String Wire :=
  match parseWire text with
  | .error e => .error e
  | .ok w => if checkWire w then .ok w else .error (String.intercalate "; " (diagnoseWire w))

theorem decodeWire_sound (text : String) (w : Wire) (h : decodeWire text = .ok w) : w.Valid := by
  unfold decodeWire at h
  split at h <;> try contradiction
  split at h <;> try contradiction
  rename_i hc
  cases h
  exact checkWire_sound _ hc

open Lean Elab Term
elab "generic_complex_json% " text:str : term => do
  match decodeWire text.getString with
  | .error e => throwError "generic free complex: {e}"
  | .ok w => return toExpr w

elab "generic_complex_bundle% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match decodeWire text.trimAscii.toString with
  | .error e => throwError "{path.getString}: {e}"
  | .ok w => return toExpr w

#print axioms checkWire_sound
#print axioms decodeWire_sound
end ExtComplexCertificates.GenericFreeComplex
