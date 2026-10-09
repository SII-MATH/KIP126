import Fact721SecondE6.Tactic

namespace Fact721SecondE6.Tests
open LinearCertificates PageTransitionCertificates

theorem target6_complete_zero : Data.d6target3.h = 0 := rfl
theorem target7_complete_zero : Data.d7target2.h = 0 := rfl
theorem target6_one_incoming_one_outgoing :
    (∀ x : Vec 1, eval (matrixOf 2 1 Data.d6target3.incoming) x = (fun i => if i.val == 0 then x 0 else false)) ∧
    (∀ x : Vec 2, eval (matrixOf 3 2 Data.d6target3.outgoing) x = (fun i => if i.val == 2 then x 1 else false)) := by decide

def wrongIncoming : WireComparison := { Data.d6target3 with incoming := [false,false] }
theorem incomplete_incoming_rejected : checkWire wrongIncoming = false := by decide

theorem source_basis_not_square_before_quotient :
    Row2684D5Search.Data.sourceVector ≠ Row2684D5Search.Data.squareVector := by decide
theorem source_is_square_after_quotient :
    eval Row2684D5Search.Data.source2.comparison.projection Row2684D5Search.Data.sourceVector =
      eval Row2684D5Search.Data.source2.comparison.projection Row2684D5Search.Data.squareVector := by decide

#print axioms target6_complete_zero
#print axioms target7_complete_zero
#print axioms target6_one_incoming_one_outgoing
#print axioms incomplete_incoming_rejected
#print axioms source_basis_not_square_before_quotient
#print axioms source_is_square_after_quotient
#print axioms Fact721SecondE6.e6_sound
#print axioms Fact721SecondE6.e8_sound
end Fact721SecondE6.Tests
