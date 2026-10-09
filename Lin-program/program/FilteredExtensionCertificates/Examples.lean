import FilteredExtensionCertificates.Batch00
import FilteredExtensionCertificates.Batch01
import FilteredExtensionCertificates.Batch02
import FilteredExtensionCertificates.Batch03
import FilteredExtensionCertificates.Batch04
import FilteredExtensionCertificates.Batch05
import FilteredExtensionCertificates.Batch06
import FilteredExtensionCertificates.Batch07
import FilteredExtensionCertificates.Batch08
import FilteredExtensionCertificates.Batch09
import FilteredExtensionCertificates.Batch10
import FilteredExtensionCertificates.Batch11
import FilteredExtensionCertificates.Batch12
import FilteredExtensionCertificates.Batch13
import FilteredExtensionCertificates.Batch14
import FilteredExtensionCertificates.Batch15

namespace FilteredExtensionCertificates.Examples
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

def correction : WireCertificate :=
  filtered_extension_certificate% "FilteredExtensionProducer/case_correction.json"
def nonzero : WireCertificate :=
  filtered_extension_certificate% "FilteredExtensionProducer/case_nonzero.json"
def empty : WireCertificate :=
  filtered_extension_certificate% "FilteredExtensionProducer/case_empty.json"
def batch : List WireCertificate := batch00 ++ batch01 ++ batch02 ++ batch03 ++ batch04 ++ batch05 ++ batch06 ++ batch07 ++ batch08 ++ batch09 ++ batch10 ++ batch11 ++ batch12 ++ batch13 ++ batch14 ++ batch15

theorem correction_valid : WireValid correction := by filtered_extension_cert using ()
theorem nonzero_valid : WireValid nonzero := by filtered_extension_cert using ()
theorem empty_valid : WireValid empty := by filtered_extension_cert using ()
theorem batch_count : batch.length = 604 := by decide
private theorem append_valid {xs ys : List WireCertificate}
    (hx : ∀ w ∈ xs, WireValid w) (hy : ∀ w ∈ ys, WireValid w) :
    ∀ w ∈ xs ++ ys, WireValid w := by
  intro w hw
  exact (List.mem_append.mp hw).elim (hx w) (hy w)

theorem all_valid : ∀ w ∈ batch, WireValid w :=
  (append_valid (append_valid (append_valid (append_valid (append_valid (append_valid (append_valid (append_valid (append_valid (append_valid (append_valid (append_valid (append_valid (append_valid (append_valid batch00_valid batch01_valid) batch02_valid) batch03_valid) batch04_valid) batch05_valid) batch06_valid) batch07_valid) batch08_valid) batch09_valid) batch10_valid) batch11_valid) batch12_valid) batch13_valid) batch14_valid) batch15_valid)

/-- The fixed representative needs a nonzero higher-source correction. -/
theorem correction_changed : correction.representative ≠ correction.data.x := by decide

def diagnostic (text : String) : Option String :=
  match parseBatch text with
  | .ok _ => none
  | .error e => some e

def fixtureText : String := (Lean.toJson empty).compress
#guard physicalLines "" = [""]
#guard physicalLines "\n" = [""]
#guard physicalLines "x\n" = ["x"]
#guard physicalLines "\nx\n" = ["", "x"]
#guard physicalLines "x\n\n" = ["x", ""]
#guard diagnostic "" = some "line 1: empty record"
#guard diagnostic "\n" = some "line 1: empty record"
#guard diagnostic ("\n" ++ fixtureText ++ "\n") = some "line 1: empty record"
#guard diagnostic (fixtureText ++ "\n\n" ++ fixtureText) = some "line 2: empty record"
#guard diagnostic (fixtureText ++ "\r\n") = some "line 1: CR is not canonical; use LF"
#guard diagnostic (fixtureText ++ "\n" ++ fixtureText ++ "\r\n") =
  some "line 2: CR is not canonical; use LF"
#guard diagnostic fixtureText = none
#guard diagnostic (fixtureText ++ "\n") = none
#guard diagnostic (fixtureText ++ "\n" ++ fixtureText ++ "\n") = none

#guard checkWire {correction with representative := correction.data.x} = .ok false
#guard checkWire {correction with data := {correction.data with y := [true]}} = .ok false
#guard checkWire {correction with sourceFactors := [[false,false,false,false],[false,false,false,false]]}
  = .ok false
#guard checkWire {correction with targetFactors := [[false],[false]]} = .ok false
#guard checkWire {correction with mapFactors := [[false,false],[false,false]]} = .ok false
#guard checkWire {correction with sourceMember := [false,false]} = .ok false
#guard checkWire {correction with imageMember := [false]} = .ok false
#guard checkWire {correction with targetMember := [true]} = .ok false
#guard checkWire {correction with sourceCorrection := [false,false]} = .ok false

#print axioms correction_valid
#print axioms nonzero_valid
#print axioms empty_valid
#print axioms batch_count
#print axioms all_valid
#print axioms correction_changed
end FilteredExtensionCertificates.Examples
