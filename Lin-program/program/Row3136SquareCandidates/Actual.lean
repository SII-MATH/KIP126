import Row3136SquareCandidates.Basic
import Row3135H0Leibniz.Actual
import Row3151ActualTransport.Basic

namespace Row3136SquareCandidates.Actual
open LinearCertificates ManualInputObligations.Reference Row3151ActualTransport

abbrev sourceDegree : Bidegree := ⟨20,140⟩
abbrev targetDegree : Bidegree := ⟨23,142⟩
abbrev nextDegree : Bidegree := ⟨26,144⟩

/-- u is the unassigned actual row3305 coefficient. The whole target map,
including the known row3306 column, is required before using square zero. -/
structure TargetMeaning (S : AdamsSpectralSequence) (u : Bool) where
  target : Coordinates S 3 targetDegree 2
  next : Coordinates S 3 nextDegree 1
  differential : ∀ x, next.equivalence (S.differential 3 targetDegree x) =
    eval (targetDifferential u) (target.equivalence x)

theorem actual_candidates (S : AdamsSpectralSequence) (u : Bool) (M : TargetMeaning S u)
    (x : (S.element 3 sourceDegree).carrier) :
    M.target.equivalence (S.differential 3 sourceDegree x) = zero ∨
    M.target.equivalence (S.differential 3 sourceDegree x) = candidate u true := by
  apply two_candidates
  have equation := M.differential (S.differential 3 sourceDegree x)
  exact equation.symm.trans
    ((congrArg M.next.equivalence (S.differentialSq 3 sourceDegree x)).trans M.next.zero_value)

theorem actual_complete_source_square (S : AdamsSpectralSequence) (u a b : Bool)
    (M : TargetMeaning S u) (source : Coordinates S 3 sourceDegree 2)
    (meaning : ∀ x, M.target.equivalence (S.differential 3 sourceDegree x) =
      eval (sourceDifferential a b) (source.equivalence x)) : b = (u && a) := by
  apply (square_iff u a b).mp
  intro v
  let x := source.equivalence.symm v
  have hx : source.equivalence x = v := source.equivalence.apply_symm_apply v
  have equation := M.differential (S.differential 3 sourceDegree x)
  rw [meaning, hx] at equation
  exact equation.symm.trans
    ((congrArg M.next.equivalence (S.differentialSq 3 sourceDegree x)).trans M.next.zero_value)

#print axioms actual_candidates
#print axioms actual_complete_source_square
end Row3136SquareCandidates.Actual
