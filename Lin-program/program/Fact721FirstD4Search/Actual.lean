import Fact721FirstD4Search.Naturality
import Fact713D4SourceSearch.ActualDescent

namespace Fact721FirstD4Search.Actual
open LinearCertificates PageTransitionCertificates Row3151ActualTransport
open ManualInputObligations.Reference D3 Comparison Fact713D4SourceSearch.ActualDescent

abbrev sourceDegree : Bidegree := ⟨11,133⟩
abbrev targetDegree : Bidegree := ⟨15,136⟩

/-- The meanings identify both entire d3 complexes, their current maps, and
actual quotient transitions. No d4 value is an input. Sphere d3 columns retain
their previously proved conditional interpretations. -/
structure Meaning (sphere detector : AdamsSpectralSequence) where
  source : Coordinates sphere 3 sourceDegree sourceS.m
  imageSource : Coordinates detector 3 sourceDegree (sourceD).m
  target : Coordinates sphere 3 targetDegree targetS.m
  imageTarget : Coordinates detector 3 targetDegree (targetD).m
  lower : Input sphere detector 3 sourceDegree sourceDegree (sourceS) (sourceD) source imageSource
  upper : Input sphere detector 3 targetDegree targetDegree (targetS) (targetD) target imageTarget
  lowerMatrix : lower.matrix = sE3
  upperMatrix : upper.matrix = tE3

theorem actual_row2622_d4_zero (sphere detector : AdamsSpectralSequence)
    (M : Meaning sphere detector)
    (lowerTransition : M.lower.Transition) (upperTransition : M.upper.Transition)
    (naturality : ∀ x, detector.differential 4 sourceDegree (M.lower.nextMap x) =
      M.upper.nextMap (sphere.differential 4 sourceDegree x))
    (x : (sphere.element 4 sourceDegree).carrier) : sphere.differential 4 sourceDegree x = 0 := by
  have lowerZero : M.lower.nextMap x = 0 := by
    apply next_all_zero M.lower lowerTransition
    intro y
    rw [M.lowerMatrix]
    exact (show ∀ y : Vec 1,
      eval (coordinateMap sourceS.comparison (sourceD).comparison sE3) y = zero from by decide) y
  have upperZero : M.upper.nextMap (sphere.differential 4 sourceDegree x) = 0 :=
    (naturality x).symm.trans ((congrArg (detector.differential 4 sourceDegree) lowerZero).trans
      (detector.differential 4 sourceDegree).map_zero')
  apply next_reflects_zero M.upper upperTransition _ _ upperZero
  intro y hy
  rw [M.upperMatrix] at hy
  exact (show ∀ y : Vec 2,
    eval (coordinateMap targetS.comparison (targetD).comparison tE3) y = zero → y = zero from by decide) y hy

#print axioms actual_row2622_d4_zero
end Fact721FirstD4Search.Actual
