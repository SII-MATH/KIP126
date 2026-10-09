import PageTransitionCertificates.Import
namespace Fact721SecondE6.Data
open LinearCertificates PageTransitionCertificates
def d6target2 : WireComparison := page_comparison% "Fact721SecondE6/wire/d6target2.json"
theorem d6target2_valid : d6target2.Valid := by lin_cert using ()
#print axioms d6target2_valid
def d6incoming2 : WireComparison := page_comparison% "Fact721SecondE6/wire/d6incoming2.json"
theorem d6incoming2_valid : d6incoming2.Valid := by lin_cert using ()
#print axioms d6incoming2_valid
def d6outgoing2 : WireComparison := page_comparison% "Fact721SecondE6/wire/d6outgoing2.json"
theorem d6outgoing2_valid : d6outgoing2.Valid := by lin_cert using ()
#print axioms d6outgoing2_valid
def d7target2 : WireComparison := page_comparison% "Fact721SecondE6/wire/d7target2.json"
theorem d7target2_valid : d7target2.Valid := by lin_cert using ()
#print axioms d7target2_valid
def d6target3 : WireComparison := page_comparison% "Fact721SecondE6/wire/d6target3.json"
theorem d6target3_valid : d6target3.Valid := by lin_cert using ()
#print axioms d6target3_valid
end Fact721SecondE6.Data
