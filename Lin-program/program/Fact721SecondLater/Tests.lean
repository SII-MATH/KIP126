import Fact721SecondLater.Tactic

namespace Fact721SecondLater.Tests
open LinearCertificates PageTransitionCertificates

theorem target8_dimensions : Data.t8d2.h = 1 ∧ Data.t8d3.h = 1 := by decide
theorem target4_dimensions : Data.t4d2.h = 2 ∧ Data.t4d3.h = 2 := by decide
theorem outgoing3_targets_empty : Data.o8d2.h = 0 ∧ Data.o4d2.h = 0 := by decide
theorem target10_empty : Data.t10d2.h = 0 := by decide

theorem row2913_source : eval (matrixOf 2 3 Data.ii8d2.projection)
    (fun i => i.val == 0) = (fun i => i.val == 0) := by decide
theorem row2912_source : eval (matrixOf 2 3 Data.ii8d2.projection)
    (fun i => i.val == 1) = (fun i => i.val == 1) := by decide
theorem row3140_source : eval (matrixOf 3 3 Data.i9d2.projection)
    (fun i => i.val == 0) = (fun i => i.val == 0) := by decide
theorem row3140_target : eval (matrixOf 1 2 Data.t9d2.projection)
    (fun i => i.val == 1) = (fun _ => true) := by decide
theorem row3242_source : eval (matrixOf 1 1 Data.t8d3.projection)
    (eval (matrixOf 1 2 Data.t8d2.projection) (fun i => i.val == 0)) = (fun _ => true) := by decide
theorem row3242_target : eval (matrixOf 2 2 Data.t4d3.projection)
    (eval (matrixOf 2 3 Data.t4d2.projection) (fun i => i.val == 1)) = (fun i => i.val == 1) := by decide

def corrupt : WireComparison := { Data.t4d3 with incoming := [true,false] }
theorem corrupt_rejected : checkWire corrupt = false := by decide

#print axioms target8_dimensions
#print axioms target4_dimensions
#print axioms outgoing3_targets_empty
#print axioms target10_empty
#print axioms row2913_source
#print axioms row2912_source
#print axioms row3140_source
#print axioms row3140_target
#print axioms row3242_source
#print axioms row3242_target
#print axioms corrupt_rejected
end Fact721SecondLater.Tests
