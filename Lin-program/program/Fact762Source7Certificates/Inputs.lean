import Fact762Source7Certificates.Semantics

namespace Fact762Source7Certificates.Inputs
open LinearCertificates PageTransitionCertificates

def source : WireComparison := page_comparison% "Fact762Source7Certificates/source-d2.json"
def input5 : WireComparison := page_comparison% "Fact762Source7Certificates/incoming5.json"
def input6 : WireComparison := page_comparison% "Fact762Source7Certificates/incoming6.json"
theorem source_valid : source.Valid := by lin_cert using ()
theorem input5_valid : input5.Valid := by lin_cert using ()
theorem input6_valid : input6.Valid := by lin_cert using ()

theorem source_full_matrices_match : source.k = 5 ∧ source.m = 2 ∧ source.n = 1 ∧
    source.outgoing = sourceE2.outgoing ∧ source.incoming = sourceE2.incoming := by decide
theorem incoming5_full_matrices_match : input5.k = 2 ∧ input5.m = 1 ∧ input5.n = 0 ∧
    input5.outgoing = incoming5.outgoing ∧ input5.incoming = incoming5.incoming := by decide
theorem incoming6_full_matrices_match : input6.k = 1 ∧ input6.m = 1 ∧ input6.n = 0 ∧
    input6.outgoing = incoming6.outgoing ∧ input6.incoming = incoming6.incoming := by decide
theorem dimensions : source.h = 1 ∧ input5.h = 0 ∧ input6.h = 0 := by decide

#print axioms source_valid
#print axioms input5_valid
#print axioms input6_valid
end Fact762Source7Certificates.Inputs
