import ActualAdamsProductCycleBridge.Zero

namespace ActualAdamsProductCycleBridge
open ManualInputObligations.Reference LinearCertificates
open Fact764ConstrainedE5 BranchReplayCertificates

/-- These are interpretations of every element of the actual named source and
target groups. The target coordinate map preserves zero. -/
structure DifferentialCoordinates (S : AdamsSpectralSequence) (A : Matrix 1 3) where
  source : (S.element 4 namedDegree).carrier → Vec 3
  target : (S.element 4 (AdamsTarget 4 namedDegree)).carrier → Vec 1
  targetZero : target 0 = zero
  allDifferentials : ∀ x, target (S.differential 4 namedDegree x) = eval A (source x)

theorem finite_cycle (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages) (P : CertifiedAdamsProduct S)
    (emptyCoordinates : (S.element 2 ⟨13,57⟩).carrier → Vec 0)
    (emptyFaithful : Function.Injective emptyCoordinates)
    (g : (S.element 4 gDegree).carrier) (delta : (S.element 4 deltaDegree).carrier)
    (A : Matrix 1 3) (coordinates : DifferentialCoordinates S A)
    (named : coordinates.source (namedProduct S P.product 4 g delta) = Coordinates.named) :
    InKernel A Coordinates.named := by
  rw [InKernel, ← named, ← coordinates.allDifferentials,
    named_cycle_from_empty_target S pages zeros P emptyCoordinates emptyFaithful g delta,
    coordinates.targetZero]

/-- The same typed Adams system supplies the product, differential and empty
target interpretation. Incoming compatibility hypotheses are still explicit. -/
theorem unique_finite (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages) (P : CertifiedAdamsProduct S)
    (emptyCoordinates : (S.element 2 ⟨13,57⟩).carrier → Vec 0)
    (emptyFaithful : Function.Injective emptyCoordinates)
    (g : (S.element 4 gDegree).carrier) (delta : (S.element 4 deltaDegree).carrier)
    (A : Matrix 1 3) (B : Matrix 3 2) (coordinates : DifferentialCoordinates S A)
    (named : coordinates.source (namedProduct S P.product 4 g delta) = Coordinates.named)
    (candidate : Vec 4) (cycle : candidate 0 = candidate 1)
    (productLaw : ProductRefutation.Compatible candidate)
    (mapLaw : MapRefutation.Compatible candidate)
    (known : eval B Coordinates.knownSource = Coordinates.knownBoundary)
    (unknown : eval B Coordinates.unknownSource = Coordinates.targetToE4 candidate)
    (complex : IsComplex A B) :
    UniqueHomologyCertificates.IsUniqueNonzeroClass A B Coordinates.named :=
  Conclusion.unique_from_named_cycle A B candidate cycle productLaw mapLaw known unknown complex
    (finite_cycle S pages zeros P emptyCoordinates emptyFaithful g delta A coordinates named)

/-- No rank assumption on the outgoing map is needed; the derived named cycle
and the constrained full incoming map force every outgoing value to vanish. -/
theorem outgoing_zero (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages) (P : CertifiedAdamsProduct S)
    (emptyCoordinates : (S.element 2 ⟨13,57⟩).carrier → Vec 0)
    (emptyFaithful : Function.Injective emptyCoordinates)
    (g : (S.element 4 gDegree).carrier) (delta : (S.element 4 deltaDegree).carrier)
    (A : Matrix 1 3) (b : Bool) (coordinates : DifferentialCoordinates S A)
    (named : coordinates.source (namedProduct S P.product 4 g delta) = Coordinates.named)
    (complex : IsComplex A (Conclusion.incoming b)) :
    A = Conclusion.outgoing :=
  Conclusion.named_cycle_forces_full_zero A b complex
    (finite_cycle S pages zeros P emptyCoordinates emptyFaithful g delta A coordinates named)

#print axioms finite_cycle
#print axioms unique_finite
#print axioms outgoing_zero
end ActualAdamsProductCycleBridge
