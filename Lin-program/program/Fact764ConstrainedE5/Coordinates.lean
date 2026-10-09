import AggregateLeibniz3564Conditional.Source
import BranchReplayCertificates.E4Descent
import BranchReplayCertificates.ProductBasisSemantics
import BranchReplayCertificates.MapBasisSemantics

namespace Fact764ConstrainedE5.Coordinates
open LinearCertificates PageTransitionCertificates BranchReplayCertificates

/-- Raw E2 basis IDs 3748,3749,3750, followed by the checked d2 and d3 projections. -/
def sourceToE4 (x : Vec 3) : Vec 2 :=
  eval AggregateLeibniz3564Conditional.Source.comparison.comparison.projection
    (eval AggregateD5Conditional.Data.b_S0_21_147_d2.comparison.projection x)

/-- Raw E2 basis IDs 3992,3993,3994,3995 in that order. -/
def targetToE4 (x : Vec 4) : Vec 3 :=
  eval AggregateD5Conditional.Data.b_S0_25_150_d3.comparison.projection
    (eval AggregateD5Conditional.Data.b_S0_25_150_d2.comparison.projection x)

def knownSource : Vec 2 := ![true,false]
def unknownSource : Vec 2 := ![false,true]
def knownBoundary : Vec 3 := ![true,false,false]
def named : Vec 3 := ![false,true,false]

theorem source_coordinates (x : Vec 3) : sourceToE4 x = ![x 1,x 0] := by
  exact (show ∀ x : Vec 3, sourceToE4 x = ![x 1,x 0] from by decide) x

theorem target_coordinates (x : Vec 4) : targetToE4 x = ![x 3,x 2,x 1] := by
  exact (show ∀ x : Vec 4, targetToE4 x = ![x 3,x 2,x 1] from by decide) x

theorem target_cycle_iff (x : Vec 4) :
    InKernel (matrixOf 2 4 AggregateD5Conditional.Data.b_S0_25_150_d2.outgoing) x ↔
      x 0 = x 1 := by
  exact (show ∀ x : Vec 4,
    InKernel (matrixOf 2 4 AggregateD5Conditional.Data.b_S0_25_150_d2.outgoing) x ↔
      x 0 = x 1 from by unfold InKernel; decide) x

theorem staircase3749_source : sourceToE4 (![false,true,false] : Vec 3) = knownSource := by decide
theorem staircase3750_source : sourceToE4 (![true,false,false] : Vec 3) = unknownSource := by decide
theorem staircase3748_boundary : sourceToE4 (![false,false,true] : Vec 3) = zero := by decide
theorem staircase3749_target : targetToE4 (vector false false false true) = knownBoundary := by decide
theorem named_target : targetToE4 (vector false false true false) = named := by decide
theorem constrained_target (b : Bool) : targetToE4 (vector true true true b) = ![b,true,true] := by
  cases b <;> decide

/-- This is basis3994, not staircase3994. Generator names require their own interpretation. -/
theorem named_monomial : ProductBasisSemantics.source25 2 = [[13,13,13,13,51]] := by decide

/-- The older local quotient used a different order; on d2 cycles the change is explicit. -/
theorem previous_quotient_permutation (x : Vec 4) (cycle : x 0 = x 1) :
    targetToE4 x = ![eval E4Descent.sphereComparison.projection x 2,
      eval E4Descent.sphereComparison.projection x 1,
      eval E4Descent.sphereComparison.projection x 0] := by
  exact (show ∀ x : Vec 4, x 0 = x 1 → targetToE4 x =
    ![eval E4Descent.sphereComparison.projection x 2,
      eval E4Descent.sphereComparison.projection x 1,
      eval E4Descent.sphereComparison.projection x 0] from by decide) x cycle

#print axioms source_coordinates
#print axioms target_coordinates
#print axioms previous_quotient_permutation
end Fact764ConstrainedE5.Coordinates
