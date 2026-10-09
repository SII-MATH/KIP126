import Fact713Row2574Continuation.Data
namespace Fact713Row2574Continuation.ZeroB0C1
open IndexedFamilyCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

theorem cross : Fact713RefinedComparisonFamily.checkCross
    (Fact713Row3005Continuation.family false) (extra true) = true := by decide
theorem coherent : Coherent (Fact713Row3005Continuation.family false ++ extra true) :=
  Fact713RefinedComparisonFamily.coherent_append _ _ (Fact713Row3005Continuation.family_coherent false)
    (extra_coherent true) cross
#print axioms cross
#print axioms coherent
end Fact713Row2574Continuation.ZeroB0C1
