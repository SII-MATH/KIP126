import Fact713Row3005Continuation.Branches
import Row3005D4Search.Actual

namespace Fact713Row3005Continuation
open PageTransitionCertificates IndexedFamilyCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

def incoming2 : WireComparison := page_comparison% "Fact713Row3005Continuation/source-wire/incoming2.json"
theorem incoming2_valid : incoming2.Valid := by lin_cert using ()
theorem incoming2_bound (b : Bool) : lookup (family b) ⟨"S0",2,10,135⟩ = some incoming2 := by
  cases b <;> decide
theorem sphere3_bound (b : Bool) : lookup (family b) ⟨"S0",3,14,138⟩ =
    some Row3005D4Search.Data.sphere3 := by cases b <;> decide

#print axioms incoming2_valid
#print axioms incoming2_bound
#print axioms sphere3_bound
end Fact713Row3005Continuation
