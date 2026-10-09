import Fact713ConstructedE9.Basic

namespace Fact713ConstructedE9
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open ManualInputObligations Fact713ConstructedNamed Fact713ConstructedE8
open Row3151ActualTransport Row3151ActualTransport.Named

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}

noncomputable def Prefix9.raw (P : Prefix9 S pages) : (S.element 2 degree).carrier :=
  P.previous.raw

theorem Prefix9.raw_coordinate (P : Prefix9 S pages) :
    P.previous.previous.previous.previous.previous.previous.initial.coordinates.equivalence P.raw =
      Fact713PageCertificates.target := P.previous.raw_coordinate

theorem Prefix9.cycle8 (P : Prefix9 S pages) :
    S.differential 8 degree P.previous.endpoint8.value = S.zero 8 (AdamsTarget 8 degree) :=
  cycle S pages 8 degree wire8 P.previous.page8.coordinates P.page9.coordinates
    (P.step8.stepMeaning accepted8) _ (by
      erw [P.previous.coordinate8]
      exact finite8.1)

theorem Prefix9.nonboundary8 (P : Prefix9 S pages) :
    ¬ PageBoundary S 8 degree P.previous.endpoint8.value := by
  intro h
  have finite := (boundary_iff S pages 8 degree wire8 P.previous.page8.coordinates
    P.page9.coordinates (P.step8.stepMeaning accepted8) _).mp h
  erw [P.previous.coordinate8] at finite
  exact finite8.2.2 finite

noncomputable def Prefix9.endpoint9 (P : Prefix9 S pages) :
    Endpoint S pages 9 degree P.raw :=
  advance S pages 8 degree wire8 P.previous.page8.coordinates P.page9.coordinates
    (P.step8.stepMeaning accepted8) _ P.previous.endpoint8 (by
      erw [P.previous.coordinate8]
      exact finite8.1)

theorem Prefix9.coordinate9 (P : Prefix9 S pages) :
    P.page9.coordinates.equivalence P.endpoint9.value = vector9 := by
  calc
    _ = eval wire8.comparison.projection
        (P.previous.page8.coordinates.equivalence P.previous.endpoint8.value) :=
      (P.step8.stepMeaning accepted8).quotient _ _
    _ = vector9 := (congrArg (eval wire8.comparison.projection)
      P.previous.coordinate8).trans finite8.2.1

theorem Prefix9.nonzero9 (P : Prefix9 S pages) : P.endpoint9.value ≠ 0 := by
  intro h
  have coordinates := P.coordinate9
  rw [h, P.page9.coordinates.zero_value] at coordinates
  exact (show (zero : Vec 1) ≠ vector9 from by decide) coordinates

/-- This traces the fixed named E2 vector through one actual system. No
later tracked coordinates or endpoint are supplied. The whole neighboring
differential meanings are not established for the sphere by this theorem. -/
theorem Prefix9.named_E9 (P : Prefix9 S pages) :
    ∃ x : (S.element 9 degree).carrier,
      Nonempty (Trace S pages degree 9 P.raw x) ∧ x ≠ 0 ∧
        P.page9.coordinates.equivalence x = vector9 :=
  ⟨P.endpoint9.value, ⟨P.endpoint9.trace⟩, P.nonzero9, P.coordinate9⟩

#print axioms Prefix9.raw_coordinate
#print axioms Prefix9.cycle8
#print axioms Prefix9.nonboundary8
#print axioms Prefix9.coordinate9
#print axioms Prefix9.nonzero9
#print axioms Prefix9.named_E9
end Fact713ConstructedE9
