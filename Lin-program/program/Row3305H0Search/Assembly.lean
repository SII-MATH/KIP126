import Row3305H0Search.Actual
import Row3136SquareCandidates.Actual

namespace Row3305H0Search.Assembly
open LinearCertificates ManualInputObligations.Reference

/-- The parameter belongs to the full target differential meaning. The
binding identifies its first coordinate with the already derived h0 product. -/
theorem actual_parameter_zero (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    (M : Actual.Meaning S P) (u : Bool) (T : Row3136SquareCandidates.Actual.TargetMeaning S u)
    (a : (S.element 3 Actual.h0Degree).carrier)
    (b : (S.element 3 Actual.rightDegree).carrier)
    (x : (S.element 3 Actual.sourceDegree).carrier)
    (namedA : M.h0 a = namedH0) (namedB : M.right b = namedRight)
    (namedX : M.source x = namedSource)
    (binding : T.target.equivalence x = fun i => i.val == 0) : u = false := by
  have hz := Actual.actual_row3305_d3_zero S P M a b x namedA namedB namedX
  have equation := T.differential x
  have zeroValue := (congrArg (fun y : (S.element 3 Actual.targetDegree).carrier =>
    T.next.equivalence y) hz).trans T.next.zero_value
  have finite : eval (Row3136SquareCandidates.targetDifferential u)
      (fun i => i.val == 0) = zero := by
    exact (congrArg (eval (Row3136SquareCandidates.targetDifferential u)) binding).symm.trans
      (equation.symm.trans zeroValue)
  exact (show ∀ u : Bool, eval (Row3136SquareCandidates.targetDifferential u)
    (fun i => i.val == 0) = zero → u = false from by decide) u finite

theorem actual_two_candidates (S : AdamsSpectralSequence) (P : CertifiedAdamsProduct S)
    (M : Actual.Meaning S P) (u : Bool) (T : Row3136SquareCandidates.Actual.TargetMeaning S u)
    (a : (S.element 3 Actual.h0Degree).carrier)
    (b : (S.element 3 Actual.rightDegree).carrier)
    (x : (S.element 3 Actual.sourceDegree).carrier)
    (namedA : M.h0 a = namedH0) (namedB : M.right b = namedRight)
    (namedX : M.source x = namedSource)
    (binding : T.target.equivalence x = fun i => i.val == 0)
    (y : (S.element 3 Row3136SquareCandidates.Actual.sourceDegree).carrier) :
    T.target.equivalence (S.differential 3 Row3136SquareCandidates.Actual.sourceDegree y) = zero ∨
    T.target.equivalence (S.differential 3 Row3136SquareCandidates.Actual.sourceDegree y) =
      (fun i => i.val == 0) := by
  have hu := actual_parameter_zero S P M u T a b x namedA namedB namedX binding
  have choices := Row3136SquareCandidates.Actual.actual_candidates S u T y
  have vector : Row3136SquareCandidates.candidate u true = (fun i => i.val == 0) := by
    rw [hu]
    decide
  rcases choices with h | h
  · exact Or.inl h
  · exact Or.inr (h.trans vector)

#print axioms actual_parameter_zero
#print axioms actual_two_candidates
end Row3305H0Search.Assembly
