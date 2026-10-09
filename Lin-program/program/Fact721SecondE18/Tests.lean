import Fact721SecondE18.Tactic
namespace Fact721SecondE18.Tests
open LinearCertificates PageTransitionCertificates

theorem row3311_source : eval (matrixOf 1 3 Data.i11d2.projection)
    (fun i => i.val == 0) = (fun i => i.val == 0) := by decide
theorem row3311_target : eval (matrixOf 2 4 Data.t11d2.projection)
    (fun i => i.val == 0) = (fun i => i.val == 0) := by decide
theorem row3551_source : eval (matrixOf 1 2 Data.t12d2.projection)
    (fun i => i.val == 0) = (fun i => i.val == 0) := by decide
theorem row3551_target : eval (matrixOf 2 3 Data.t4d2.projection)
    (fun i => i.val == 0 || i.val == 2) = (fun _ => true) := by decide
theorem row3482_source : eval (matrixOf 2 3 Data.i13d2.projection)
    (fun i => i.val == 0) = (fun i => i.val == 0) := by decide
theorem row3482_target : eval (matrixOf 1 2 Data.t13d2.projection)
    (fun i => i.val == 1) = (fun _ => true) := by decide
theorem row3553_source : eval (matrixOf 2 2 Data.i14d2.projection)
    (fun i => i.val == 1) = (fun i => i.val == 1) := by decide
theorem row3553_target : eval (matrixOf 1 3 Data.t14d2.projection)
    (fun i => i.val == 2) = (fun _ => true) := by decide
theorem row3479_source : eval (matrixOf 1 2 Data.t11d3.projection)
    (eval (matrixOf 2 4 Data.t11d2.projection) (fun i => i.val == 3)) = (fun _ => true) := by decide
theorem row3479_target : eval (matrixOf 1 2 Data.t4d3.projection)
    (eval (matrixOf 2 3 Data.t4d2.projection) (fun i => i.val == 0)) = (fun _ => true) := by decide
theorem row3736_source : eval (matrixOf 1 1 Data.i17d3.projection)
    (eval (matrixOf 1 2 Data.i17d2.projection) (fun i => i.val == 1)) = (fun _ => true) := by decide
theorem row3736_target : eval (matrixOf 1 1 Data.t17d3.projection)
    (eval (matrixOf 1 2 Data.t17d2.projection) (fun i => i.val == 0)) = (fun _ => true) := by decide
theorem source17_incoming_empty : Data.ii17d2.m = 0 ∧ Data.it17d2.m = 0 := by decide
theorem outgoing_targets_empty : Data.o11d2.h = 0 ∧ Data.o4d2.h = 0 ∧ Data.t16d2.h = 0 ∧ Data.o17d2.h = 0 := by decide
theorem missing_d3_image_rejected : checkWire { Data.t11d3 with incoming := [false,false] } = false := by decide
#print axioms row3311_source
#print axioms row3311_target
#print axioms row3551_source
#print axioms row3551_target
#print axioms row3482_source
#print axioms row3482_target
#print axioms row3553_source
#print axioms row3553_target
#print axioms row3479_source
#print axioms row3479_target
#print axioms row3736_source
#print axioms row3736_target
#print axioms source17_incoming_empty
#print axioms outgoing_targets_empty
#print axioms missing_d3_image_rejected
end Fact721SecondE18.Tests
