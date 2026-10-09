import Fact713Row3005Continuation.Constructed
import Fact761ConstructedActual.Local

namespace Fact713Row3005Continuation.Constructed
open LinearCertificates PageTransitionCertificates IndexedFamilyCertificates
open ManualInputObligations.Reference Row3151ActualTransport ActualAdamsHomologyCoordinates
open ActualAdamsHomologyCoordinates.Meaning
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

abbrev targetDegree : Bidegree := ⟨19,141⟩
def target2 : WireComparison := page_comparison% "Fact713Row3005Continuation/source-wire/target2.json"
theorem target2_valid : target2.Valid := by lin_cert using ()
theorem target2_bound (b : Bool) : lookup (family b) ⟨"S0",2,19,141⟩ = some target2 := by
  cases b <;> decide

structure TargetInput (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  initial : Coordinates S 2 targetDegree 2
  meaning2 : Meaning S 2 targetDegree target2 initial
  zero2 : LocalZeroMeaning pages 2 targetDegree
  zeros : ∀ r, LocalZeroMeaning pages r targetDegree

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
noncomputable def TargetInput.page3 (I : TargetInput S pages) : Coordinates S 3 targetDegree 0 :=
  I.meaning2.nextCoordinates pages target2_valid I.zero2

noncomputable def TargetInput.page (I : TargetInput S pages) :
    (n : Nat) → Coordinates S (n+3) targetDegree 0
  | 0 => I.page3
  | n+1 => Fact761ConstructedActual.Local.emptyNext pages (I.page n) (I.zeros (n+3))

noncomputable def TargetInput.page10 (I : TargetInput S pages) : Coordinates S 10 targetDegree 0 :=
  I.page 7

theorem TargetInput.zero10 (I : TargetInput S pages) (x : (S.element 10 targetDegree).carrier) : x = 0 :=
  Fact761ConstructedActual.Local.empty_zero I.page10 x

noncomputable def assembleFromE2 (P : Fact713Row3143Continuation.Constructed.Prefix10 S pages)
    (target : TargetInput S pages)
    (zeroMeaning : LocalZeroMeaning pages 10 Fact713ConstructedNamed.degree)
    (addMeaning : LocalAddMeaning pages 10 Fact713ConstructedNamed.degree) : Prefix11 S pages :=
  assemble P target.page10 zeroMeaning addMeaning

theorem same_input_E11_from_E2 (P : Fact713Row3143Continuation.Constructed.Prefix10 S pages)
    (target : TargetInput S pages)
    (zeroMeaning : LocalZeroMeaning pages 10 Fact713ConstructedNamed.degree)
    (addMeaning : LocalAddMeaning pages 10 Fact713ConstructedNamed.degree) :
    ∃ x : (S.element 11 Fact713ConstructedNamed.degree).carrier,
      Nonempty (ManualInputObligations.Trace S pages Fact713ConstructedNamed.degree 11 P.raw x) ∧
      x ≠ 0 ∧ (assembleFromE2 P target zeroMeaning addMeaning).page11.coordinates.equivalence x = vector11 :=
  (assembleFromE2 P target zeroMeaning addMeaning).named_E11

#print axioms target2_valid
#print axioms target2_bound
#print axioms TargetInput.page3
#print axioms TargetInput.page
#print axioms TargetInput.page10
#print axioms TargetInput.zero10
#print axioms assembleFromE2
#print axioms same_input_E11_from_E2
end Fact713Row3005Continuation.Constructed
