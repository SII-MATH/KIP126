import DerivedMapCertificates.Basic
namespace DerivedMapCertificates

def parseFactor (text : String) : Except String FactorWire := do
  let w : FactorWire ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson w).compress != text then throw "noncanonical/duplicate/unknown factor JSON"
  if !w.shape then throw "factor image, truncation, sentinel or dimensions invalid"
  if !w.algebra.shape then throw "nested algebra shape invalid"
  return w

def parseComposition (text : String) : Except String CompositionWire := do
  let w : CompositionWire ← Lean.fromJson? (← Lean.Json.parse text)
  if (Lean.toJson w).compress != text then throw "noncanonical/duplicate/unknown composition JSON"
  if !decide w.shape then throw "matrix dimensions or intermediate truncation invalid"
  return w

def diagnoseFactor (w : FactorWire) : Option String :=
  if !w.shape then some s!"{w.name}: factor image/shape/truncation mismatch"
  else ModuleToModuleCertificates.diagnose w.algebra

def diagnoseComposition (w : CompositionWire) : Option String := Id.run do
  if !decide w.shape then return some s!"{w.name}: shape or intermediate truncation invalid"
  for i in List.finRange w.rows do
    for j in List.finRange w.cols do
      if w.c i j != ResolutionCertificates.compose w.b w.a i j then
        return some s!"{w.name}: output row {i.val}, column {j.val} disagrees with composition"
  return none

elab "derived_factor% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parseFactor text.trimAscii.toString with
  | .error e => throwError "{path.getString}: {e}"
  | .ok w => return Lean.toExpr w

elab "derived_composition% " path:str : term => do
  let text ← IO.FS.readFile path.getString
  match parseComposition text.trimAscii.toString with
  | .error e => throwError "{path.getString}: {e}"
  | .ok w => return Lean.toExpr w
end DerivedMapCertificates
