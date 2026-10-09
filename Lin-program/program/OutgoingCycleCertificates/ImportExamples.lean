import OutgoingCycleCertificates.Import
import OutgoingCycleCertificates.Examples

namespace OutgoingCycleCertificates.ImportExamples
open PermanentCycleCertificates PageTransitionCertificates LinearCertificates

def imported : Wire := outgoing_prefix% "OutgoingCycleCertificates/killed-prefix.json"
theorem imported_valid : imported.Valid := checkWire_sound imported (by decide)

example : PermanentCycleCertificates.checkPrefix imported.stages = false := by decide
example : checkPrefix imported.stages = true := by decide
example : (imported.stages[0]'(by decide)).vector = (fun _ => true) := by
  have h : ∀ i, (imported.stages[0]'(by decide)).vector i = true := by decide
  exact funext h
example : (imported.stages[1]'(by decide)).wire.m = 0 := by decide
example : checkWire { imported with schema := "lin.permanent-prefix" } = false := by decide

#print axioms imported_valid
end OutgoingCycleCertificates.ImportExamples
