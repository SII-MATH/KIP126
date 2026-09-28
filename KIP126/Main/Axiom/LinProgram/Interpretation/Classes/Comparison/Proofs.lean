import KIP126.Main.Solution.Computation.Dimension
import KIP126.Interface.Axiom.StandardSphere.Classes.Proofs
import KIP126.Def.SpectralSequence.Permanence.Predicates

namespace KIP126.Classical.Adams

/-- C(M)'s specified CSV square and M's standard Milnor square are equal on
the very same internal E₂ page. The proof uses the Lin presentation's exhaustive
two-element description and independent standard nonvanishing, not a match of
names and not the final theorem. The presentation remains a stage input. -/
theorem computedH6Square_eq_standardH6Square : computedH6Square = standardH6Square :=
  (sphereAdamsData_eq_computedH6Square_of_ne_zero standardH6Square
    standardH6Square_ne_zero).symm

/-- Rewriting T(M) using a computational label needs only
the equality of labels on M's sequence, not a change of spectral sequence. -/
theorem computedH6Square_nonzeroSurvival_iff_standard :
    KIP126.Core.SpectralSequence.NonzeroSurvival sphereAdamsData (2, 128) computedH6Square ↔
      KIP126.Core.SpectralSequence.NonzeroSurvival sphereAdamsData (2, 128) standardH6Square := by
  rw [computedH6Square_eq_standardH6Square]

end KIP126.Classical.Adams
