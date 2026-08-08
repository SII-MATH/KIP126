import KIP126.Comparison.ClassicalSynthetic.Basic
import KIP126.External.Claims

/-!
# AIM-6 classical--synthetic regression

The examples below consume the existing catalogue wrapper and check the
concrete grading, page, and differential interfaces without postulating a
particular synthetic spectrum.
-/

namespace KIP126.Comparison.ClassicalSynthetic.Regression

open CategoryTheory
open KIP126.Classical.Adams
open KIP126.External
open KIP126.Synthetic.SpectralSequence

example (r : ℕ) (i : Tridegree) :
    forgetWeight (syntheticAdamsTarget r i) =
      classicalAdamsTarget r (forgetWeight i) :=
  forgetWeight_add_shift r i

example (r : ℕ) (i : Tridegree) :
    (syntheticAdamsShape r).Rel i (syntheticAdamsTarget r i) :=
  syntheticAdamsShape_rel r i

example (A : SyntheticAdamsSS) (r : ℕ) (i : Tridegree)
    (hr : 2 ≤ r)
    (h : (A.sequence.page (r : ℤ)).d i (syntheticAdamsTarget r i) ≠ 0) :
    i.2.2 = (syntheticAdamsTarget r i).2.2 :=
  weightPreserving_differential A r hr i h

example : forgetWeight syntheticH₄Degree = classicalH₄Degree :=
  synthetic_h₄_degree_forgets

example : syntheticH₄TargetDegree =
    lambdaTarget syntheticH₀H₃SquaredDegree :=
  synthetic_h₄_target_is_lambda_target

example {stable : StableHomotopyContext}
    {classical : ClassicalAdamsSS stable stable.sphere}
    {synthetic : SyntheticAdamsSS}
    {P : SphereAdamsPresentation classical}
    (comparison : H₄DifferentialComparison synthetic P) :
    comparison.classicalStatement.source.degree = classicalH₄Degree ∧
      comparison.classicalStatement.target.degree = classicalH₀H₃SquaredDegree :=
  comparison.classical_degrees

example {stable : StableHomotopyContext}
    {classical : ClassicalAdamsSS stable stable.sphere}
    {synthetic : SyntheticAdamsSS}
    {P : SphereAdamsPresentation classical}
    (comparison : H₄DifferentialComparison synthetic P) :
    ∃ statement : AdamsD₂Statement classical,
      statement.source = P.h 4 ∧
      statement.target = sphereProduct P (P.h 0)
        (sphereProduct P (P.h 3) (P.h 3)) ∧
      statement.source.degree = classicalH₄Degree ∧
      statement.target.degree = classicalH₀H₃SquaredDegree :=
  comparison.catalogued_classical_degrees

example {stable : StableHomotopyContext}
    {classical : ClassicalAdamsSS stable stable.sphere}
    {synthetic : SyntheticAdamsSS}
    {P : SphereAdamsPresentation classical}
    (comparison : H₄DifferentialComparison synthetic P) :
    (synthetic.d₂ syntheticH₄Degree).hom synthetic.h₄ =
      (synthetic.lambdaMap syntheticH₀H₃SquaredDegree).hom
        synthetic.h₀h₃Squared :=
  comparison.synthetic_lambda_regression

example :
    (externalClaimLedger.lookup .adamsOneLine).owner =
      `KIP126.Classical.adamsOneLineDifferentials := rfl

end KIP126.Comparison.ClassicalSynthetic.Regression

#print axioms KIP126.Synthetic.SpectralSequence.syntheticAdamsShift
#print axioms KIP126.Synthetic.SpectralSequence.syntheticAdamsTarget
#print axioms KIP126.Synthetic.SpectralSequence.nuDegree
#print axioms KIP126.Synthetic.SpectralSequence.lambdaTarget
#print axioms KIP126.Comparison.ClassicalSynthetic.forgetWeightComparison
#print axioms KIP126.Comparison.ClassicalSynthetic.H₄DifferentialComparison.classical_degrees
#print axioms KIP126.Comparison.ClassicalSynthetic.H₄DifferentialComparison.catalogued_classical_degrees
#print axioms KIP126.Comparison.ClassicalSynthetic.H₄DifferentialComparison.synthetic_lambda_regression
