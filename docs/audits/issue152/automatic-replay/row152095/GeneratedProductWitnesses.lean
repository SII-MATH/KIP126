import Mathlib.RingTheory.MvPolynomial.Basic
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic.Ring
-- Generated from log products. Polynomial identities only, not a row proof.
open MvPolynomial
namespace Replay152095
abbrev P := MvPolynomial (Fin 4096) (ZMod 2)
theorem productWitness0 :
    (X 0 * X 1 * X 2 * X 18 : P) = (0) + ((X 2 * X 18) * (X 0 * X 1)) := by
  have htwo : (2 : P) = 0 := by
    simpa only [map_ofNat, map_zero] using
      congrArg (C : ZMod 2 →+* P) (show (2 : ZMod 2) = 0 from rfl)
  ring_nf <;> simp only [htwo, mul_zero, add_zero]
#print axioms productWitness0
theorem productWitness1 :
    (X 1 * X 44 : P) = (X 1 * X 44) + (0) := by
  have htwo : (2 : P) = 0 := by
    simpa only [map_ofNat, map_zero] using
      congrArg (C : ZMod 2 →+* P) (show (2 : ZMod 2) = 0 from rfl)
  ring_nf <;> simp only [htwo, mul_zero, add_zero]
#print axioms productWitness1
end Replay152095
