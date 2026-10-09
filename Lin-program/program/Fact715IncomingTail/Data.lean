import PageTransitionCertificates.Import
namespace Fact715IncomingTail.Data
open LinearCertificates PageTransitionCertificates
def source6d2 : WireComparison := page_comparison% "Fact715IncomingTail/wire/source6d2.json"
theorem source6d2_valid : source6d2.Valid := by lin_cert using ()
theorem source6d2_accepted : checkWire source6d2 = true := by decide
def source7d2 : WireComparison := page_comparison% "Fact715IncomingTail/wire/source7d2.json"
theorem source7d2_valid : source7d2.Valid := by lin_cert using ()
theorem source7d2_accepted : checkWire source7d2 = true := by decide
def source7d3 : WireComparison := page_comparison% "Fact715IncomingTail/wire/source7d3.json"
theorem source7d3_valid : source7d3.Valid := by lin_cert using ()
theorem source7d3_accepted : checkWire source7d3 = true := by decide
def source8d2 : WireComparison := page_comparison% "Fact715IncomingTail/wire/source8d2.json"
theorem source8d2_valid : source8d2.Valid := by lin_cert using ()
theorem source8d2_accepted : checkWire source8d2 = true := by decide
def source7Incoming2 : WireComparison := page_comparison% "Fact715IncomingTail/wire/source7Incoming2.json"
theorem source7Incoming2_valid : source7Incoming2.Valid := by lin_cert using ()
theorem source7Incoming2_accepted : checkWire source7Incoming2 = true := by decide
def source7Target2 : WireComparison := page_comparison% "Fact715IncomingTail/wire/source7Target2.json"
theorem source7Target2_valid : source7Target2.Valid := by lin_cert using ()
theorem source7Target2_accepted : checkWire source7Target2 = true := by decide
end Fact715IncomingTail.Data
