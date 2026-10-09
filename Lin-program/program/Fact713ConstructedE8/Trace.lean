import Fact713ConstructedE8.Basic

namespace Fact713ConstructedE8
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open ManualInputObligations Fact713ConstructedNamed
open Row3151ActualTransport Row3151ActualTransport.Named

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}

noncomputable def Prefix8.raw (P : Prefix8 S pages) : (S.element 2 degree).carrier :=
  P.previous.previous.raw

theorem Prefix8.raw_coordinate (P : Prefix8 S pages) :
    P.previous.previous.previous.previous.previous.initial.coordinates.equivalence P.raw =
      Fact713PageCertificates.target := P.previous.previous.raw_coordinate

theorem Prefix8.cycle7 (P : Prefix8 S pages) :
    S.differential 7 degree P.previous.endpoint7.value = S.zero 7 (AdamsTarget 7 degree) :=
  cycle S pages 7 degree wire7 P.previous.page7.coordinates P.page8.coordinates
    (P.step7.stepMeaning accepted7) _ (by
      erw [P.previous.coordinate7]
      exact finite7.1)

theorem Prefix8.nonboundary7 (P : Prefix8 S pages) :
    ¬ PageBoundary S 7 degree P.previous.endpoint7.value := by
  intro h
  have finite := (boundary_iff S pages 7 degree wire7 P.previous.page7.coordinates
    P.page8.coordinates (P.step7.stepMeaning accepted7) _).mp h
  erw [P.previous.coordinate7] at finite
  exact finite7.2.2 finite

noncomputable def Prefix8.endpoint8 (P : Prefix8 S pages) :
    Endpoint S pages 8 degree P.raw :=
  advance S pages 7 degree wire7 P.previous.page7.coordinates P.page8.coordinates
    (P.step7.stepMeaning accepted7) _ P.previous.endpoint7 (by
      erw [P.previous.coordinate7]
      exact finite7.1)

theorem Prefix8.coordinate8 (P : Prefix8 S pages) :
    P.page8.coordinates.equivalence P.endpoint8.value = vector8 := by
  calc
    _ = eval wire7.comparison.projection
        (P.previous.page7.coordinates.equivalence P.previous.endpoint7.value) :=
      (P.step7.stepMeaning accepted7).quotient _ _
    _ = vector8 := (congrArg (eval wire7.comparison.projection)
      P.previous.coordinate7).trans finite7.2.1

theorem Prefix8.nonzero8 (P : Prefix8 S pages) : P.endpoint8.value ≠ 0 := by
  intro h
  have coordinates := P.coordinate8
  rw [h, P.page8.coordinates.zero_value] at coordinates
  exact (show (zero : Vec 1) ≠ vector8 from by decide) coordinates

/-- This traces the fixed named E2 vector through one actual system. No
later tracked coordinates or endpoint are supplied. The whole neighboring
differential meanings are not established for the sphere by this theorem. -/
theorem Prefix8.named_E8 (P : Prefix8 S pages) :
    ∃ x : (S.element 8 degree).carrier,
      Nonempty (Trace S pages degree 8 P.raw x) ∧ x ≠ 0 ∧
        P.page8.coordinates.equivalence x = vector8 :=
  ⟨P.endpoint8.value, ⟨P.endpoint8.trace⟩, P.nonzero8, P.coordinate8⟩

#print axioms Prefix8.raw_coordinate
#print axioms Prefix8.cycle7
#print axioms Prefix8.nonboundary7
#print axioms Prefix8.coordinate8
#print axioms Prefix8.nonzero8
#print axioms Prefix8.named_E8
end Fact713ConstructedE8
