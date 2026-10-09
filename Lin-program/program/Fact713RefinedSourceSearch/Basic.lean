import ActualAdamsIncomingBridge.Basic
import PageTransitionCertificates.Import

namespace Fact713RefinedSourceSearch
open LinearCertificates ResolutionCertificates ManualInputObligations.Reference

def successor : Matrix 1 1 := identityMatrix 1

theorem successor_injective : Function.Injective (eval successor) := by
  intro x y h
  simpa only [successor, eval_identity] using h

/-- This quantifies over every incoming vector, without guessing its value. -/
theorem finite_incoming_zero (incoming : Matrix 1 n)
    (complex : IsComplex successor incoming) :
    ∀ x, eval incoming x = zero := by
  intro x
  apply successor_injective
  rw [complex, eval_zero]

abbrev sourceDegree : Bidegree := ⟨24, 144⟩
abbrev middleDegree : Bidegree := ⟨28, 147⟩
abbrev nextDegree : Bidegree := ⟨32, 150⟩

/-- Interpretation of the complete stored successor map, supplied by the
caller. No incoming-zero equation or source dimension is a premise. -/
structure SuccessorMeaning (S : AdamsSpectralSequence) where
  middle : (S.element 4 middleDegree).carrier → Vec 1
  next : (S.element 4 nextDegree).carrier → Vec 1
  middleFaithful : Function.Injective middle
  values : ∀ y, next (S.differential 4 middleDegree y) = eval successor (middle y)

theorem actual_successor_injective (S : AdamsSpectralSequence)
    (meaning : SuccessorMeaning S) :
    Function.Injective (S.differential 4 middleDegree) := by
  intro x y h
  apply meaning.middleFaithful
  apply successor_injective
  rw [← meaning.values, ← meaning.values, h]

/-- The conclusion is the whole actual d4 map, including the unnamed source
elements. Actual square zero supplies the missing incoming constraint. -/
theorem actual_source_d4_zero (S : AdamsSpectralSequence)
    (meaning : SuccessorMeaning S) (x : (S.element 4 sourceDegree).carrier) :
    S.differential 4 sourceDegree x = 0 := by
  apply actual_successor_injective S meaning
  exact (S.differentialSq 4 sourceDegree x).trans
    (S.differential 4 (AdamsTarget 4 sourceDegree)).map_zero'.symm

theorem all_actual_incoming_zero (S : AdamsSpectralSequence)
    (meaning : SuccessorMeaning S)
    (x : ActualAdamsIncomingBridge.Source S 4 middleDegree) :
    ActualAdamsIncomingBridge.differential S 4 middleDegree x = 0 := by
  change S.differential 4 sourceDegree (x (by decide)) = 0
  exact actual_source_d4_zero S meaning _

#print axioms successor_injective
#print axioms finite_incoming_zero
#print axioms actual_successor_injective
#print axioms actual_source_d4_zero
#print axioms all_actual_incoming_zero
end Fact713RefinedSourceSearch
