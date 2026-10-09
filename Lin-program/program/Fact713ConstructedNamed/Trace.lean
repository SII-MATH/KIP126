import Fact713ConstructedNamed.Basic

namespace Fact713ConstructedNamed
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open ManualInputObligations
open Row3151ActualTransport Row3151ActualTransport.Named

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}

noncomputable def Prefix6.raw (P : Prefix6 S pages) : (S.element 2 degree).carrier :=
  P.previous.previous.previous.initial.coordinates.equivalence.symm Fact713NamedActual.vector2

theorem Prefix6.raw_coordinate (P : Prefix6 S pages) :
    P.previous.previous.previous.initial.coordinates.equivalence P.raw =
      Fact713PageCertificates.target :=
  P.previous.previous.previous.initial.coordinates.equivalence.apply_symm_apply _

noncomputable def Prefix6.endpoint6 (P : Prefix6 S pages) :
    Endpoint S pages 6 degree P.raw := Fact713NamedActual.endpoint6 S pages P.meanings

theorem Prefix6.coordinate6 (P : Prefix6 S pages) :
    P.page6.coordinates.equivalence P.endpoint6.value = Fact713NamedActual.vector6 :=
  Fact713NamedActual.coordinate6 S pages P.meanings

theorem Prefix6.named_E6 (P : Prefix6 S pages) :
    ∃ x : (S.element 6 degree).carrier,
      Nonempty (Trace S pages degree 6 P.raw x) ∧ x ≠ 0 ∧
        P.page6.coordinates.equivalence x = Fact713NamedActual.vector6 :=
  Fact713NamedActual.named_E6 S pages P.meanings

def vector7 : Vec 1 := fun _ => true

theorem finite6 :
    eval (matrixOf wire6.k wire6.m wire6.outgoing) Fact713NamedActual.vector6 = zero ∧
    eval wire6.comparison.projection Fact713NamedActual.vector6 = vector7 ∧
    ¬ InImage (matrixOf wire6.m wire6.n wire6.incoming) Fact713NamedActual.vector6 := by
  unfold InImage
  decide

theorem Prefix7.cycle6 (P : Prefix7 S pages) :
    S.differential 6 degree P.previous.endpoint6.value = S.zero 6 (AdamsTarget 6 degree) :=
  cycle S pages 6 degree wire6 P.previous.page6.coordinates P.page7.coordinates
    (P.step6.stepMeaning accepted6) _ (by
      erw [P.previous.coordinate6]
      exact finite6.1)

theorem Prefix7.nonboundary6 (P : Prefix7 S pages) :
    ¬ PageBoundary S 6 degree P.previous.endpoint6.value := by
  intro h
  have finite := (boundary_iff S pages 6 degree wire6 P.previous.page6.coordinates
    P.page7.coordinates (P.step6.stepMeaning accepted6) _).mp h
  erw [P.previous.coordinate6] at finite
  exact finite6.2.2 finite

noncomputable def Prefix7.endpoint7 (P : Prefix7 S pages) :
    Endpoint S pages 7 degree P.previous.raw :=
  advance S pages 6 degree wire6 P.previous.page6.coordinates P.page7.coordinates
    (P.step6.stepMeaning accepted6) _ P.previous.endpoint6 (by
      erw [P.previous.coordinate6]
      exact finite6.1)

theorem Prefix7.coordinate7 (P : Prefix7 S pages) :
    P.page7.coordinates.equivalence P.endpoint7.value = vector7 := by
  calc
    _ = eval wire6.comparison.projection
        (P.previous.page6.coordinates.equivalence P.previous.endpoint6.value) :=
      (P.step6.stepMeaning accepted6).quotient _ _
    _ = vector7 := (congrArg (eval wire6.comparison.projection)
      P.previous.coordinate6).trans finite6.2.1

theorem Prefix7.nonzero7 (P : Prefix7 S pages) : P.endpoint7.value ≠ 0 := by
  intro h
  have coordinates := P.coordinate7
  rw [h, P.page7.coordinates.zero_value] at coordinates
  exact (show (zero : Vec 1) ≠ vector7 from by decide) coordinates

/-- A fixed raw E2 vector is advanced through the actual quotients. All
later coordinates are derived. Actual neighboring differential meanings
and local homology identification laws remain caller proofs. -/
theorem Prefix7.named_E7 (P : Prefix7 S pages) :
    ∃ x : (S.element 7 degree).carrier,
      Nonempty (Trace S pages degree 7 P.previous.raw x) ∧ x ≠ 0 ∧
        P.page7.coordinates.equivalence x = vector7 :=
  ⟨P.endpoint7.value, ⟨P.endpoint7.trace⟩, P.nonzero7, P.coordinate7⟩

#print axioms Prefix6.raw_coordinate
#print axioms Prefix6.coordinate6
#print axioms Prefix6.named_E6
#print axioms finite6
#print axioms Prefix7.cycle6
#print axioms Prefix7.nonboundary6
#print axioms Prefix7.coordinate7
#print axioms Prefix7.nonzero7
#print axioms Prefix7.named_E7
end Fact713ConstructedNamed
