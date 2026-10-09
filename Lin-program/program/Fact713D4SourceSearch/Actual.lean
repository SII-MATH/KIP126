import Fact713D4SourceSearch.Incoming
import Fact713D4SourceSearch.ActualDescent

namespace Fact713D4SourceSearch.Actual
open LinearCertificates PageTransitionCertificates Row3151ActualTransport
open ManualInputObligations.Reference Parameters Comparison ActualDescent

abbrev sourceDegree : Bidegree := ⟨12,134⟩
abbrev targetDegree : Bidegree := ⟨16,137⟩

/-- Parameters are actual unknown coefficients, not values chosen by the checker.
The two input meanings identify entire d3 complexes with actual homology. -/
structure Meaning (sphere detector : AdamsSpectralSequence) (a b c u v : Bool) where
  source : Coordinates sphere 3 sourceDegree sourceS.m
  imageSource : Coordinates detector 3 sourceDegree (sourceD a b c).m
  target : Coordinates sphere 3 targetDegree targetS.m
  imageTarget : Coordinates detector 3 targetDegree (targetD u v).m
  lower : Input sphere detector 3 sourceDegree sourceDegree (sourceS) (sourceD a b c) source imageSource
  upper : Input sphere detector 3 targetDegree targetDegree (targetS) (targetD u v) target imageTarget
  lowerMatrix : lower.matrix = sE3
  upperMatrix : upper.matrix = tE3

theorem actual_row2684_d4_zero (sphere detector : AdamsSpectralSequence)
    (a b c u v : Bool) (M : Meaning sphere detector a b c u v)
    (lowerTransition : M.lower.Transition) (upperTransition : M.upper.Transition)
    (naturality : ∀ x, detector.differential 4 sourceDegree (M.lower.nextMap x) =
      M.upper.nextMap (sphere.differential 4 sourceDegree x))
    (x : (sphere.element 4 sourceDegree).carrier) : sphere.differential 4 sourceDegree x = 0 := by
  have lowerZero : M.lower.nextMap x = 0 := by
    apply next_all_zero M.lower lowerTransition
    intro y
    rw [M.lowerMatrix]
    exact (show ∀ (a b c : Bool) (y : Vec 1),
      eval (coordinateMap sourceS.comparison (sourceD a b c).comparison sE3) y = zero from by decide) a b c y
  have upperZero : M.upper.nextMap (sphere.differential 4 sourceDegree x) = 0 :=
    (naturality x).symm.trans ((congrArg (detector.differential 4 sourceDegree) lowerZero).trans
      (detector.differential 4 sourceDegree).map_zero')
  apply next_reflects_zero M.upper upperTransition _ _ upperZero
  intro y hy
  rw [M.upperMatrix] at hy
  exact (show ∀ (u v : Bool) (y : Vec 1),
    eval (coordinateMap targetS.comparison (targetD u v).comparison tE3) y = zero → y = zero from by decide) u v y hy

#print axioms actual_row2684_d4_zero
end Fact713D4SourceSearch.Actual
