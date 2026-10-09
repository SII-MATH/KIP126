import Row3743Successor.Links

namespace Row3743Successor
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference

/-- In a faithful one-dimensional middle page, the known named nonzero
differential determines the whole successor, including every unnamed input. -/
def meaningFromNamed (S : AdamsSpectralSequence)
    (coordinates : (S.element 4 middleDegree).carrier → Vec 1)
    (nextCoordinates : (S.element 4 finalDegree).carrier → Vec 1)
    (faithful : Function.Injective coordinates)
    (zero : coordinates (S.zero 4 middleDegree) = LinearCertificates.zero)
    (nextZero : nextCoordinates (S.zero 4 finalDegree) = LinearCertificates.zero)
    (named : (S.element 4 middleDegree).carrier)
    (image : (S.element 4 finalDegree).carrier)
    (namedMeaning : coordinates named =
      eval Data.b_S0_27_150_d3.comparison.projection Links.source3.vector)
    (imageMeaning : nextCoordinates image =
      eval Data.b_S0_31_153_d3.comparison.projection Links.target3.vector)
    (known : S.differential 4 middleDegree named = image) : Meaning S where
  coordinates := coordinates
  nextCoordinates := nextCoordinates
  faithful := faithful
  zero := zero
  nextZero := nextZero
  successorEquation := by
    intro y
    rcases Links.all_middle_coordinates (coordinates y) with hy | hy
    · have eq : y = S.zero 4 middleDegree := faithful (hy.trans zero.symm)
      rw [eq,S.zero_is_zero,(S.differential 4 middleDegree).map_zero']
      have hz : nextCoordinates (0 : (S.element 4 finalDegree).carrier) =
          LinearCertificates.zero := (S.zero_is_zero 4 finalDegree) ▸ nextZero
      have hz' : coordinates (0 : (S.element 4 middleDegree).carrier) =
          LinearCertificates.zero := (S.zero_is_zero 4 middleDegree) ▸ zero
      rw [hz,hz',eval_zero]
    · have eq : y = named := faithful (hy.trans namedMeaning.symm)
      rw [eq,known,imageMeaning,namedMeaning]
      exact Links.raw_successor_projection.symm

theorem from_named_event (S : AdamsSpectralSequence)
    (coordinates : (S.element 4 middleDegree).carrier → Vec 1)
    (nextCoordinates : (S.element 4 finalDegree).carrier → Vec 1)
    (faithful : Function.Injective coordinates)
    (zero : coordinates (S.zero 4 middleDegree) = LinearCertificates.zero)
    (nextZero : nextCoordinates (S.zero 4 finalDegree) = LinearCertificates.zero)
    (named : (S.element 4 middleDegree).carrier)
    (image : (S.element 4 finalDegree).carrier)
    (namedMeaning : coordinates named =
      eval Data.b_S0_27_150_d3.comparison.projection Links.source3.vector)
    (imageMeaning : nextCoordinates image =
      eval Data.b_S0_31_153_d3.comparison.projection Links.target3.vector)
    (known : S.differential 4 middleDegree named = image)
    (x : (S.element 4 sourceDegree).carrier) :
    S.differential 4 sourceDegree x = S.zero 4 middleDegree :=
  actual_d4_zero S (meaningFromNamed S coordinates nextCoordinates faithful zero nextZero
    named image namedMeaning imageMeaning known) x

#print axioms meaningFromNamed
#print axioms from_named_event
end Row3743Successor
