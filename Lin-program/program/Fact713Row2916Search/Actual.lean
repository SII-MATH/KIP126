import Fact713Row2916Search.Naturality
import Fact713D4SourceSearch.ActualDescent

namespace Fact713Row2916Search.Actual
open LinearCertificates PageTransitionCertificates Row3151ActualTransport
open ManualInputObligations.Reference Comparison Fact713D4SourceSearch.ActualDescent

abbrev sourceDegree : Bidegree := ⟨13,137⟩
abbrev targetDegree : Bidegree := ⟨16,139⟩
def named3 : Vec 3 := fun i => i.val == 1

/-- Both complete d2 complexes and current maps have actual meanings.
The next maps are constrained by their quotient transition laws separately. -/
structure Meaning (sphere detector : AdamsSpectralSequence) where
  source : Coordinates sphere 2 sourceDegree Comparison.source.m
  imageSource : Coordinates detector 2 sourceDegree Comparison.target.m
  target : Coordinates sphere 2 targetDegree upperSource.m
  imageTarget : Coordinates detector 2 targetDegree upperTarget.m
  lower : Input sphere detector 2 sourceDegree sourceDegree
    Comparison.source Comparison.target source imageSource
  upper : Input sphere detector 2 targetDegree targetDegree
    upperSource upperTarget target imageTarget
  lowerMatrix : lower.matrix = middleMap
  upperMatrix : upper.matrix = upperMiddleMap

theorem actual_row2916_d3_zero (sphere detector : AdamsSpectralSequence)
    (M : Meaning sphere detector)
    (lowerTransition : M.lower.Transition) (upperTransition : M.upper.Transition)
    (naturality : ∀ x, detector.differential 3 sourceDegree (M.lower.nextMap x) =
      M.upper.nextMap (sphere.differential 3 sourceDegree x))
    (x : (sphere.element 3 sourceDegree).carrier)
    (named : M.lower.nextSource.equivalence x = named3) :
    sphere.differential 3 sourceDegree x = 0 := by
  have lowerZero : M.lower.nextMap x = 0 := by
    apply M.lower.nextTarget.equivalence.injective
    rw [next_map_coordinates M.lower lowerTransition, named, M.lowerMatrix]
    exact (show eval (coordinateMap Comparison.source.comparison
      Comparison.target.comparison middleMap) named3 = zero from by decide).trans
      M.lower.nextTarget.zero_value.symm
  have upperZero : M.upper.nextMap (sphere.differential 3 sourceDegree x) = 0 :=
    (naturality x).symm.trans ((congrArg (detector.differential 3 sourceDegree) lowerZero).trans
      (detector.differential 3 sourceDegree).map_zero')
  apply next_reflects_zero M.upper upperTransition _ _ upperZero
  intro y hy
  rw [M.upperMatrix] at hy
  exact (show ∀ y : Vec 1,
    eval (coordinateMap upperSource.comparison upperTarget.comparison upperMiddleMap) y = zero →
      y = zero from by decide) y hy

theorem named_nonzero (M : Meaning sphere detector)
    (x : (sphere.element 3 sourceDegree).carrier)
    (named : M.lower.nextSource.equivalence x = named3) : x ≠ 0 := by
  intro hx
  rw [hx, M.lower.nextSource.zero_value] at named
  exact (show (zero : Vec 3) ≠ named3 from by decide) named

#print axioms actual_row2916_d3_zero
#print axioms named_nonzero
end Fact713Row2916Search.Actual
