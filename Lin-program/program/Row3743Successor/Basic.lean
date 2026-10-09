import Row3743Successor.Data
import ActualAdamsSystemBridge.Basic

namespace Row3743Successor
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference

def successor : Matrix 1 1 := matrixOf 1 1 Data.b_S0_31_153_d4.incoming

theorem successor_identity (x : Vec 1) : eval successor x = x := by
  funext i
  have hi : i = 0 := Fin.ext (by omega)
  subst i
  simp [successor, eval, dot, matrixOf, Data.b_S0_31_153_d4]

theorem successor_injective : Function.Injective (eval successor) := by
  intro x y h
  simpa only [successor_identity] using h

/-- The complete known next differential is injective. Its square-zero law
forces every incoming value to be zero, without assuming that value. -/
theorem incoming_zero {X Y Z : Type} (incoming : X → Y) (outgoing : Y → Z)
    (coordinates : Y → Vec 1) (nextCoordinates : Z → Vec 1)
    (zeroY : Y) (zeroZ : Z) (faithful : Function.Injective coordinates)
    (zeroYMeaning : coordinates zeroY = zero)
    (zeroZMeaning : nextCoordinates zeroZ = zero)
    (successorMeaning : ∀ y, nextCoordinates (outgoing y) = eval successor (coordinates y))
    (squareZero : ∀ x, outgoing (incoming x) = zeroZ) : ∀ x, incoming x = zeroY := by
  intro x
  apply faithful
  apply successor_injective
  rw [← successorMeaning, squareZero, zeroZMeaning, zeroYMeaning, eval_zero]

theorem finite_incoming_zero (B : Matrix 1 n) (complex : IsComplex successor B) :
    ∀ x, eval B x = zero := by
  intro x
  apply successor_injective
  exact (complex x).trans (eval_zero successor).symm

abbrev sourceDegree : Bidegree := ⟨23,147⟩
abbrev middleDegree : Bidegree := AdamsTarget 4 sourceDegree
abbrev finalDegree : Bidegree := AdamsTarget 4 middleDegree

theorem exact_degrees : middleDegree = ⟨27,150⟩ ∧ finalDegree = ⟨31,153⟩ := by decide

/-- All coordinates refer to actual graded page-four groups. The full known
successor equation remains a caller proof, not an interpretation of NULL. -/
structure Meaning (S : AdamsSpectralSequence) where
  coordinates : (S.element 4 middleDegree).carrier → Vec 1
  nextCoordinates : (S.element 4 finalDegree).carrier → Vec 1
  faithful : Function.Injective coordinates
  zero : coordinates (S.zero 4 middleDegree) = LinearCertificates.zero
  nextZero : nextCoordinates (S.zero 4 finalDegree) = LinearCertificates.zero
  successorEquation : ∀ y, nextCoordinates (S.differential 4 middleDegree y) =
    eval successor (coordinates y)

theorem actual_d4_zero (S : AdamsSpectralSequence) (meaning : Meaning S)
    (x : (S.element 4 sourceDegree).carrier) :
    S.differential 4 sourceDegree x = S.zero 4 middleDegree := by
  apply incoming_zero (S.differential 4 sourceDegree) (S.differential 4 middleDegree)
    meaning.coordinates meaning.nextCoordinates (S.zero 4 middleDegree)
    (S.zero 4 finalDegree) meaning.faithful meaning.zero meaning.nextZero
    meaning.successorEquation
  intro y
  exact (S.differentialSq 4 sourceDegree y).trans (S.zero_is_zero 4 finalDegree).symm

syntax "row3743_cert" " using " term : tactic
macro_rules
  | `(tactic| row3743_cert using $c:term) =>
    `(tactic| exact Row3743Successor.actual_d4_zero _ $c _)

example (S : AdamsSpectralSequence) (meaning : Meaning S)
    (x : (S.element 4 sourceDegree).carrier) :
    S.differential 4 sourceDegree x = S.zero 4 middleDegree := by
  row3743_cert using meaning

#print axioms successor_injective
#print axioms incoming_zero
#print axioms finite_incoming_zero
#print axioms actual_d4_zero
end Row3743Successor
