import PageTransitionCertificates.Import
namespace Fact763Continuation.Data
open LinearCertificates PageTransitionCertificates
def incoming2 : WireComparison := page_comparison% "Fact763Continuation/wire/incoming2.json"
theorem incoming2_valid : incoming2.Valid := by lin_cert using ()
#print axioms incoming2_valid
def source5 : WireComparison := page_comparison% "Fact763Continuation/wire/source5.json"
theorem source5_valid : source5.Valid := by lin_cert using ()
#print axioms source5_valid
end Fact763Continuation.Data
