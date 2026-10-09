import PageTransitionCertificates.Import
namespace PageTransitionCertificates
open LinProgramCertificates

def imported : WireComparison := page_comparison% "PageTransitionCertificates/sample.json"
example : imported.Valid := by lin_cert using ()
example : checkWire { imported with up := [] } = false := by decide
example : checkWire { imported with version := 2 } = false := by decide
example : checkWire { imported with inclusion := [false,false,false,false,false,false,false,false] } = false := by decide
#print axioms checkWire_sound
end PageTransitionCertificates
