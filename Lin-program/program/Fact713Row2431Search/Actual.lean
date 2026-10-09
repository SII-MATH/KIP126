import Fact713Row2431Search.Naturality
import Fact713D4SourceSearch.ActualDescent

namespace Fact713Row2431Search.Actual
open LinearCertificates PageTransitionCertificates Row3151ActualTransport
open ManualInputObligations.Reference Comparison Fact713D4SourceSearch.ActualDescent

abbrev sourceDegree : Bidegree := ⟨9,130⟩
abbrev targetDegree : Bidegree := ⟨12,132⟩
def named3 : Vec 1 := fun _ => true

/-- Complete meanings of both d2 complexes, maps and quotient transitions.
All three possible target coordinates are covered by the upper map. -/
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

theorem actual_row2431_whole_d3_zero (sphere detector : AdamsSpectralSequence)
    (M : Meaning sphere detector)
    (lowerTransition : M.lower.Transition) (upperTransition : M.upper.Transition)
    (naturality : ∀ x, detector.differential 3 sourceDegree (M.lower.nextMap x) =
      M.upper.nextMap (sphere.differential 3 sourceDegree x))
    (x : (sphere.element 3 sourceDegree).carrier) :
    sphere.differential 3 sourceDegree x = 0 := by
  have lowerZero : M.lower.nextMap x = 0 := by
    apply next_all_zero M.lower lowerTransition
    intro y
    rw [M.lowerMatrix]
    exact (show ∀ y : Vec 1,
      eval (coordinateMap Comparison.source.comparison Comparison.target.comparison middleMap) y = zero from by decide) y
  have upperZero : M.upper.nextMap (sphere.differential 3 sourceDegree x) = 0 :=
    (naturality x).symm.trans ((congrArg (detector.differential 3 sourceDegree) lowerZero).trans
      (detector.differential 3 sourceDegree).map_zero')
  apply next_reflects_zero M.upper upperTransition _ _ upperZero
  intro y hy
  rw [M.upperMatrix] at hy
  exact (show ∀ y : Vec 3,
    eval (coordinateMap upperSource.comparison upperTarget.comparison upperMiddleMap) y = zero →
      y = zero from by decide) y hy

theorem named_nonzero (M : Meaning sphere detector)
    (x : (sphere.element 3 sourceDegree).carrier)
    (named : M.lower.nextSource.equivalence x = named3) : x ≠ 0 := by
  intro hx
  rw [hx, M.lower.nextSource.zero_value] at named
  exact (show (zero : Vec 1) ≠ named3 from by decide) named

#print axioms actual_row2431_whole_d3_zero
#print axioms named_nonzero
end Fact713Row2431Search.Actual
