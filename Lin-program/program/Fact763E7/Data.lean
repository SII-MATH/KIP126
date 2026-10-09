import Fact763NoHit.Basic
import PageTransitionCertificates.Import

namespace Fact763E7.Data
open LinearCertificates PageTransitionCertificates

def source2 : WireComparison := page_comparison% "Fact763E7/wire/source2.json"
def target2 : WireComparison := page_comparison% "Fact763E7/wire/target2.json"
theorem source2_valid : source2.Valid := by lin_cert using ()
theorem target2_valid : target2.Valid := by lin_cert using ()

def namedSource2 : Vec 4 := fun i => i.val == 2
def namedSource3 : Vec 3 := fun i => i.val == 2
def namedTarget2 : Vec 3 := fun i => i.val == 0
theorem source_cycle : eval (matrixOf source2.k source2.m source2.outgoing) namedSource2 = zero := by decide
theorem source_projection : eval source2.comparison.projection namedSource2 = namedSource3 := by decide
theorem target_projection : eval target2.comparison.projection namedTarget2 = (fun _ => true) := by decide

#print axioms source2_valid
#print axioms target2_valid
#print axioms source_cycle
#print axioms source_projection
#print axioms target_projection
end Fact763E7.Data
