import Fact713E12Search.Data
import Mathlib.Logic.Function.Basic

namespace Fact713E12Search.Successor
open LinearCertificates

/-- The complete successor column is injective; no source value is assumed. -/
def successor : Matrix 2 1 := fun i _ => i.val == 0

theorem successor_injective : Function.Injective (eval successor) := by
  intro x y h
  funext i
  have hi : i = 0 := Fin.ext (by omega)
  subst i
  have h0 := congrFun h (0 : Fin 2)
  simpa [successor, eval, dot] using h0

/-- Faithful full successor coordinates and actual square zero force the
entire incoming map to vanish, without a desired-zero premise. -/
theorem incoming_zero {X Y Z : Type} (incoming : X → Y) (outgoing : Y → Z)
    (coordinates : Y → Vec 1) (nextCoordinates : Z → Vec 2)
    (zeroY : Y) (zeroZ : Z)
    (faithful : Function.Injective coordinates)
    (zeroYMeaning : coordinates zeroY = zero)
    (zeroZMeaning : nextCoordinates zeroZ = zero)
    (successorMeaning : ∀ y, nextCoordinates (outgoing y) = eval successor (coordinates y))
    (squareZero : ∀ x, outgoing (incoming x) = zeroZ) : ∀ x, incoming x = zeroY := by
  intro x
  apply faithful
  apply successor_injective
  rw [← successorMeaning, squareZero, zeroZMeaning, zeroYMeaning, eval_zero]

theorem finite_incoming_zero (B : Matrix 1 1) (complex : IsComplex successor B) :
    B = (fun _ _ => false) := by
  funext i j
  have hi : i = 0 := Fin.ext (by omega)
  have hj : j = 0 := Fin.ext (by omega)
  subst i
  subst j
  have h := successor_injective ((complex (fun _ => true)).trans (eval_zero successor).symm)
  have hh := congrFun h (0 : Fin 1)
  simpa [eval, dot, zero] using hh

#print axioms incoming_zero
#print axioms finite_incoming_zero
end Fact713E12Search.Successor
