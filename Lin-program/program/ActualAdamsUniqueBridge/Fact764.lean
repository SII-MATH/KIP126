import ActualAdamsUniqueBridge.Quotient
import Fact764ConstrainedE5.Actual

namespace ActualAdamsUniqueBridge.Fact764
open ManualInputObligations.Reference LinearCertificates PageTransitionCertificates

abbrev degree : Bidegree := ⟨25,150⟩

def certificate (S : AdamsSpectralSequence) (b : Bool)
    (x : (S.element 4 degree).carrier)
    (coordinates : Coordinates S 4 degree
      (matrixOf (Fact764ConstrainedE5.Actual.wire b).comparison.k
        (Fact764ConstrainedE5.Actual.wire b).comparison.m
        (Fact764ConstrainedE5.Actual.wire b).comparison.outgoing)
      (matrixOf (Fact764ConstrainedE5.Actual.wire b).comparison.m
        (Fact764ConstrainedE5.Actual.wire b).comparison.n
        (Fact764ConstrainedE5.Actual.wire b).comparison.incoming))
    (named : coordinates.current x =
      (Stage.mk (Fact764ConstrainedE5.Actual.wire b).comparison
        (Fact764ConstrainedE5.Actual.wire b).named).vector) : Certificate S 4 degree x :=
  ⟨Fact764ConstrainedE5.Actual.wire b,coordinates,named⟩

/-- Both allowed incoming ambiguities retain the same unique actual
nonzero E5 class, if the complete matrices have the supplied actual meaning. -/
theorem unique (S : AdamsSpectralSequence) (b : Bool)
    (x : (S.element 4 degree).carrier)
    (c : Certificate S 4 degree x)
    (wire : c.wire = Fact764ConstrainedE5.Actual.wire b) : IsUnique S 4 degree x := by
  apply check_sound S 4 degree x c
  rw [wire]
  cases b <;> decide

theorem unique_by_tactic (S : AdamsSpectralSequence)
    (x : (S.element 4 degree).carrier)
    (c : Certificate S 4 degree x)
    (wire : c.wire = Fact764ConstrainedE5.Actual.wire false) : IsUnique S 4 degree x := by
  rcases c with ⟨w,coordinates,named⟩
  change w = Fact764ConstrainedE5.Actual.wire false at wire
  subst w
  adams_unique_cert using certificate S false x coordinates named

theorem actual_e5_cardinality (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (b : Bool) (x : (S.element 4 degree).carrier) (c : Certificate S 4 degree x)
    (wire : c.wire = Fact764ConstrainedE5.Actual.wire b) :
    Nat.card (S.element 5 degree).carrier = 2 :=
  actual_next_cardinality S pages 4 degree x (unique S b x c wire)

#print axioms unique
#print axioms unique_by_tactic
#print axioms actual_e5_cardinality
end ActualAdamsUniqueBridge.Fact764
