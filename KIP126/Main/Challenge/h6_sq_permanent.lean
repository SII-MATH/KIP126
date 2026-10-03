import KIP126.Interface.Solution.StageInput.StandardSphere.Classes.Data
import KIP126.Def.SpectralSequence.Permanence.Predicates

/-! T(M): the standard h₆² survives on M's internal sphere Adams sequence.
Source: Lin–Wang–Xu, Theorem 1.4 / 7.1 (local main.tex labels thm:h62 and
thm:126survives). Both the sequence and the specified Milnor class come from
the same foundation. The statement imports no C(M), Lin data, or SS adapter.
The selected foundation/Milnor data still use the Challenge1 stage input;
independence of C(M) is not a claim that this fixed specialization is axiom-free.
-/
namespace KIP126.Challenge.Final.H6SquarePermanent

open KIP126.Classical.Adams KIP126.Core.SpectralSequence

/-- The standard h₆² has a common Z∞ representative projecting to it on E₂,
whose E∞ image is nonzero, in bidegree (s,t) = (2,128). -/
theorem h6_sq_permanent :
    NonzeroSurvival sphereAdamsData (2, 128) standardH6Square := by
  sorry

end KIP126.Challenge.Final.H6SquarePermanent
