import ActualAdamsProductTraceBridge.Assembly
import ActualAdamsUniqueNext.Fact764

namespace Fact764NamedActualE5
open ManualInputObligations ManualInputObligations.Reference LinearCertificates
open ActualAdamsProductCycleBridge ActualAdamsProductTraceBridge
open Fact764ConstrainedE5 BranchReplayCertificates

/-- Every finite incoming vector is represented by an actual source, so the
actual square-zero law proves the complete finite complex law. -/
theorem coordinates_complex {S : AdamsSpectralSequence} {r : Nat} {d : Bidegree}
    {n m k : Nat} {A : Matrix k m} {B : Matrix m n}
    (c : ActualAdamsUniqueBridge.Coordinates S r d A B) : IsComplex A B := by
  intro v
  obtain ⟨x, hx⟩ := c.incoming_surjective v
  rw [← hx, ← c.incoming_all, ← c.outgoing_all,
    ActualAdamsSystemBridge.incoming_cycle, S.zero_is_zero, c.outgoing_zero]

structure Input (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  zeros : ActualAdamsSystemBridge.ZeroMeaning S pages
  product : CertifiedAdamsProduct S
  transitions : NamedTransitions S pages product
  targets : FactorTargets S
  g : (S.element 2 ActualAdamsProductCycleBridge.gDegree).carrier
  delta : (S.element 2 ActualAdamsProductCycleBridge.deltaDegree).carrier

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}

def Input.initial (I : Input S pages) : (S.element 2 namedDegree).carrier :=
  namedProduct S I.product.product 2 I.g I.delta

noncomputable def Input.endpoint4 (I : Input S pages) :
    Endpoint S pages 4 namedDegree I.initial :=
  endpoint S pages I.zeros I.product I.transitions I.targets I.g I.delta I.initial rfl

theorem Input.cycle4 (I : Input S pages) :
    S.differential 4 namedDegree I.endpoint4.value = S.zero 4 (AdamsTarget 4 namedDegree) :=
  (endpoint_cycle S pages I.zeros I.product I.transitions I.targets I.g I.delta I.initial rfl).trans
    (S.zero_is_zero 4 _).symm

/-- Full actual page coordinates and the existing two source obstructions.
No field assumes a named cycle, selected trace, nonboundary, or E5 value. -/
structure Witness (I : Input S pages) where
  outgoing : Matrix 1 3
  incoming : Matrix 3 2
  coordinates : ActualAdamsUniqueBridge.Coordinates S 4 namedDegree outgoing incoming
  named : coordinates.current I.endpoint4.value = Coordinates.named
  candidate : Vec 4
  candidateCycle : candidate 0 = candidate 1
  productLaw : ProductRefutation.Compatible candidate
  mapLaw : MapRefutation.Compatible candidate
  known : eval incoming Coordinates.knownSource = Coordinates.knownBoundary
  unknown : eval incoming Coordinates.unknownSource = Coordinates.targetToE4 candidate

theorem Witness.named_cycle {I : Input S pages} (W : Witness I) :
    InKernel W.outgoing Coordinates.named := by
  rw [InKernel, ← W.named, ← W.coordinates.outgoing_all, I.cycle4,
    S.zero_is_zero, W.coordinates.outgoing_zero]

theorem Witness.finite_unique {I : Input S pages} (W : Witness I) :
    UniqueHomologyCertificates.IsUniqueNonzeroClass W.outgoing W.incoming Coordinates.named :=
  Conclusion.unique_from_named_cycle W.outgoing W.incoming W.candidate W.candidateCycle
    W.productLaw W.mapLaw W.known W.unknown (coordinates_complex W.coordinates) W.named_cycle

theorem Witness.actual_unique {I : Input S pages} (W : Witness I) :
    ActualAdamsUniqueBridge.IsUnique S 4 namedDegree I.endpoint4.value := by
  apply ActualAdamsUniqueBridge.transport W.coordinates
  rw [W.named]
  exact W.finite_unique

#print axioms coordinates_complex
#print axioms Input.endpoint4
#print axioms Input.cycle4
#print axioms Witness.named_cycle
#print axioms Witness.finite_unique
#print axioms Witness.actual_unique
end Fact764NamedActualE5
