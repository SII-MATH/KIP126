import RepresentativeSquareCertificates.Import

namespace RepresentativeSquareProducer
open RepresentativeSquareCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

def firstWire : WireCertificate :=
  representative_square_certificate% "RepresentativeSquareProducer/case_f.json"
def secondWire : WireCertificate :=
  representative_square_certificate% "RepresentativeSquareProducer/case_p.json"
def zeroWire : WireCertificate :=
  representative_square_certificate% "RepresentativeSquareProducer/case_zero.json"

theorem first_valid : WireValid firstWire := by lin_cert using ()
theorem second_valid : WireValid secondWire := by lin_cert using ()
theorem zero_valid : WireValid zeroWire := by lin_cert using ()

def checkBatch (wires : List WireCertificate) : Bool :=
  wires.all fun w => match checkWire w with | .ok value => value | .error _ => false

theorem checkBatch_sound (wires : List WireCertificate) (checked : checkBatch wires = true) :
    ∀ w ∈ wires, WireValid w := by
  intro w hw
  have h := List.all_eq_true.mp checked w hw
  cases eq : checkWire w with
  | error e => simp [eq] at h
  | ok b =>
    simp only [eq] at h
    exact checkWire_sound w (eq.trans (congrArg Except.ok h))

def physicalLines (contents : String) : List String :=
  let lines := contents.splitOn "\n"
  if contents.endsWith "\n" then lines.dropLast else lines

def parseBatch (contents : String) : Except String (List WireCertificate) := do
  let mut wires : List WireCertificate := []
  for (line,i) in (physicalLines contents).zipIdx do
    if line.isEmpty then throw s!"line {i+1}: blank JSONL record"
    if line.contains '\r' then throw s!"line {i+1}: CR is not canonical JSONL; use LF"
    let wire ← match parse line with
      | .ok wire => pure wire
      | .error message => throw s!"line {i+1}: {message}"
    match diagnoseWire wire with
    | .error message => throw s!"line {i+1}: {message}"
    | .ok (some failure) => throw s!"line {i+1}: {failure.location}: {failure.message}"
    | .ok none => wires := wire :: wires
  return wires.reverse

def batchDiagnostic (contents : String) : Option String :=
  match parseBatch contents with
  | .error message => some message
  | .ok _ => none

def fixtureText : String := (Lean.toJson zeroWire).compress

#guard physicalLines "" = [""]
#guard physicalLines "\n" = [""]
#guard physicalLines "x\n" = ["x"]
#guard physicalLines "\nx\n" = ["", "x"]
#guard physicalLines "x\n\n" = ["x", ""]
#guard physicalLines "x\r\n" = ["x\r"]
#guard batchDiagnostic "" = some "line 1: blank JSONL record"
#guard batchDiagnostic "\n" = some "line 1: blank JSONL record"
#guard batchDiagnostic ("\n" ++ fixtureText ++ "\n") = some "line 1: blank JSONL record"
#guard batchDiagnostic (fixtureText ++ "\n\n" ++ fixtureText ++ "\n") = some "line 2: blank JSONL record"
#guard batchDiagnostic (fixtureText ++ "\n\n") = some "line 2: blank JSONL record"
#guard batchDiagnostic (fixtureText ++ "\n\n\n") = some "line 2: blank JSONL record"
#guard batchDiagnostic (fixtureText ++ "\r\n") = some "line 1: CR is not canonical JSONL; use LF"
#guard batchDiagnostic (fixtureText ++ "\n" ++ fixtureText ++ "\r\n") = some "line 2: CR is not canonical JSONL; use LF"
#guard batchDiagnostic fixtureText = none
#guard batchDiagnostic (fixtureText ++ "\n") = none
#guard batchDiagnostic (fixtureText ++ "\n" ++ fixtureText ++ "\n") = none

open Lean Elab Term in
elab "representative_square_batch% " path:str : term => do
  let contents ← IO.FS.readFile path.getString
  match parseBatch contents with
  | .error message => throwError "{path.getString}: {message}"
  | .ok wires => return Lean.toExpr wires

def allWires : List WireCertificate :=
  representative_square_batch% "RepresentativeSquareProducer/valid.jsonl"

theorem batch_count : allWires.length = 1480 := by decide

theorem all_valid : ∀ w ∈ allWires, WireValid w :=
  checkBatch_sound allWires (by decide)

#print axioms first_valid
#print axioms second_valid
#print axioms zero_valid
#print axioms checkBatch_sound
#print axioms batch_count
#print axioms all_valid
end RepresentativeSquareProducer
