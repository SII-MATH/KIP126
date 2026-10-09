import Fact713E12Search.Successor
namespace Fact713E12Search.SuccessorData
open LinearCertificates PageTransitionCertificates Data Successor
def b_S0_21_143_d2 : WireComparison := page_comparison% "Fact713E12Search/wires/b_S0_21_143_d2.json"
theorem b_S0_21_143_d2_valid : b_S0_21_143_d2.Valid := by lin_cert using ()
def b_S0_23_143_d2 : WireComparison := page_comparison% "Fact713E12Search/wires/b_S0_23_143_d2.json"
theorem b_S0_23_143_d2_valid : b_S0_23_143_d2.Valid := by lin_cert using ()
def b_S0_16_138_d3 : WireComparison := page_comparison% "Fact713E12Search/wires/b_S0_16_138_d3.json"
theorem b_S0_16_138_d3_valid : b_S0_16_138_d3.Valid := by lin_cert using ()
def b_S0_20_141_d3 : WireComparison := page_comparison% "Fact713E12Search/wires/b_S0_20_141_d3.json"
theorem b_S0_20_141_d3_valid : b_S0_20_141_d3.Valid := by lin_cert using ()
def b_S0_24_144_d3 : WireComparison := page_comparison% "Fact713E12Search/wires/b_S0_24_144_d3.json"
theorem b_S0_24_144_d3_valid : b_S0_24_144_d3.Valid := by lin_cert using ()
def b_S0_24_145_d3 : WireComparison := page_comparison% "Fact713E12Search/wires/b_S0_24_145_d3.json"
theorem b_S0_24_145_d3_valid : b_S0_24_145_d3.Valid := by lin_cert using ()
def b_S0_20_141_d4 : WireComparison := page_comparison% "Fact713E12Search/wires/b_S0_20_141_d4.json"
theorem b_S0_20_141_d4_valid : b_S0_20_141_d4.Valid := by lin_cert using ()
theorem row3242_column : matrixOf 2 1 b_S0_20_141_d4.outgoing = successor := by
  funext i j; exact (show ∀ i j, matrixOf 2 1 b_S0_20_141_d4.outgoing i j = successor i j from by decide) i j
theorem row3551_column : matrixOf 2 1 b_S0_24_145_d3.outgoing = successor := by
  funext i j; exact (show ∀ i j, matrixOf 2 1 b_S0_24_145_d3.outgoing i j = successor i j from by decide) i j
theorem row2999_zero_column : b_S0_20_141_d4.incoming = [false] := by decide
theorem row3386_zero_column : b_S0_24_145_d3.incoming = [false] := by decide
#print axioms row3242_column
#print axioms row3551_column
theorem row2999_from_actual_successor {X Y Z : Type}
    (incoming : X → Y) (outgoing : Y → Z)
    (coordinates : Y → Vec 1) (nextCoordinates : Z → Vec 2)
    (zeroY : Y) (zeroZ : Z) (faithful : Function.Injective coordinates)
    (zeroYMeaning : coordinates zeroY = zero) (zeroZMeaning : nextCoordinates zeroZ = zero)
    (successorMeaning : ∀ y, nextCoordinates (outgoing y) =
      eval (matrixOf 2 1 b_S0_20_141_d4.outgoing) (coordinates y))
    (squareZero : ∀ x, outgoing (incoming x) = zeroZ) : ∀ x, incoming x = zeroY := by
  apply incoming_zero incoming outgoing coordinates nextCoordinates zeroY zeroZ faithful
    zeroYMeaning zeroZMeaning
  · simpa only [row3242_column] using successorMeaning
  · exact squareZero
#print axioms row2999_from_actual_successor
theorem row3386_from_actual_successor {X Y Z : Type}
    (incoming : X → Y) (outgoing : Y → Z)
    (coordinates : Y → Vec 1) (nextCoordinates : Z → Vec 2)
    (zeroY : Y) (zeroZ : Z) (faithful : Function.Injective coordinates)
    (zeroYMeaning : coordinates zeroY = zero) (zeroZMeaning : nextCoordinates zeroZ = zero)
    (successorMeaning : ∀ y, nextCoordinates (outgoing y) =
      eval (matrixOf 2 1 b_S0_24_145_d3.outgoing) (coordinates y))
    (squareZero : ∀ x, outgoing (incoming x) = zeroZ) : ∀ x, incoming x = zeroY := by
  apply incoming_zero incoming outgoing coordinates nextCoordinates zeroY zeroZ faithful
    zeroYMeaning zeroZMeaning
  · simpa only [row3551_column] using successorMeaning
  · exact squareZero
#print axioms row3386_from_actual_successor
end Fact713E12Search.SuccessorData
