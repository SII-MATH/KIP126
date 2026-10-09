import PermanentCycleCertificates.Import
import PermanentCycleCertificates.Examples

namespace PermanentCycleCertificates.ImportExamples
open PageTransitionCertificates

def imported : PrefixWire := permanent_prefix% "PermanentCycleCertificates/stable-prefix.json"
theorem imported_stages : imported.stages = [Examples.stage] := rfl
theorem imported_valid : imported.Valid := checkPrefixWire_sound imported (by decide)

def certificate : Certificate Examples.stable true :=
  assemble Examples.stable true imported Examples.meaning Examples.certificate.tail

theorem imported_permanence : Examples.stable.Permanent true := by
  permanent_cert using certificate

example : checkPrefixWire imported = true := by decide
example : checkPrefixWire { imported with schema := "inventory_only" } = false := by decide
example : checkPrefixWire { imported with version := 2 } = false := by decide
example : checkPrefixWire { imported with firstPage := 3 } = false := by decide
example : checkPrefixWire { imported with stages := [] } = false := by decide
example : checkPrefixWire { imported with stages :=
    [{ Examples.stage with representative := [false] }] } = false := by decide

#print axioms imported_permanence
end PermanentCycleCertificates.ImportExamples
