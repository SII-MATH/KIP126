import KIP126.Def.Comparison.ClassicalSynthetic.RealizationWeights.Data

/-! Weight comparisons for the SAME lambda-inversion realization.
Their zero value and every successive weight map are fixed, so this is
not a family of unrelated isomorphisms of objects of the same dimension.
The coefficient comparison is the already specified nu-recovery map.
-/
namespace KIP126.Comparison.ClassicalSynthetic
open CategoryTheory CategoryTheory.Functor
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Synthetic.Context
open KIP126.Synthetic.SpectralSequence
universe u v w
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u,v} C]
  {Syn : Type w} [SyntheticCategory.{w,v} Syn]
  (N : NuFunctorData C Syn) (L : LambdaRecovery N)

/-- Lambda inversion and the zero normalization determine every weight.
This uniqueness is a model comparison property, independent of Adams
labels, of the Lin output, and of any high-stem theorem. -/
theorem RealizationWeightComparison.unique
    (A B : RealizationWeightComparison N L) : A = B := by sorry

/-- Existence follows from inversion of the actual lambda maps and the
specified recovery at weight zero. It requires coherent index transports. -/
theorem realizationWeightComparison_exists (coherent : BiShiftCoherence Syn) :
    Nonempty (RealizationWeightComparison N L) := by sorry

end
end KIP126.Comparison.ClassicalSynthetic
