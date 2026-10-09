import Fact761ConstructedActual.Local

namespace Fact761ConstructedActual.Row2858
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport ActualAdamsHomologyCoordinates
open ActualAdamsHomologyCoordinates.Meaning Local
open PageProductCertificates.Row2858

abbrev sourceDegree : Bidegree := ⟨10,136⟩
abbrev targetDegree : Bidegree := ⟨13,138⟩
abbrev sourceWire := NamedPageComparison.ConditionalHigherData.b10_136_2
abbrev targetWire := NamedPageComparison.ConditionalHigherData.b13_138_2
theorem sourceAccepted : checkWire sourceWire = true := by decide
theorem targetAccepted : checkWire targetWire = true := by decide

structure D2Input (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S) where
  source : Chart sourceDegree S 2 5
  target : Chart targetDegree S 2 5
  sourceStep : Step sourceDegree S pages 2 sourceWire source
  targetStep : Step targetDegree S pages 2 targetWire target

namespace D2Input

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S} (I : D2Input S pages)

noncomputable def source3 : Chart sourceDegree S 3 1 := I.sourceStep.next sourceAccepted
noncomputable def target3 : Chart targetDegree S 3 3 := I.targetStep.next targetAccepted

noncomputable def sourceEquiv : (S.element 3 sourceDegree).carrier ≃ Initial :=
  toFinite sourceWire (checkWire_sound _ sourceAccepted) I.source3.coordinates

noncomputable def targetEquiv : (S.element 3 targetDegree).carrier ≃ Source :=
  toFinite targetWire (checkWire_sound _ targetAccepted) I.target3.coordinates

noncomputable def differential : Initial → Source := fun x =>
  I.targetEquiv (S.differential 3 sourceDegree (I.sourceEquiv.symm x))

theorem source_name : I.sourceEquiv (I.source3.coordinates.equivalence.symm (fun _ => true)) = named := by
  apply (finiteEquiv sourceWire (checkWire_sound _ sourceAccepted)).injective
  change finiteEquiv sourceWire (checkWire_sound _ sourceAccepted)
    ((finiteEquiv sourceWire (checkWire_sound _ sourceAccepted)).symm
      (I.source3.coordinates.equivalence (I.source3.coordinates.equivalence.symm (fun _ => true)))) = _
  rw [(finiteEquiv sourceWire _).apply_symm_apply,
    I.source3.coordinates.equivalence.apply_symm_apply]
  funext i
  exact (show ∀ i, true = finiteEquiv sourceWire (checkWire_sound _ sourceAccepted) named i from by decide) i

theorem target_zero : I.targetEquiv 0 = zeroSource :=
  toFinite_zero targetWire (checkWire_sound _ targetAccepted) I.target3.coordinates

/-- These are full quotient Leibniz squares for the actual differential
transported through the two constructed E3 charts. -/
structure Leibniz where
  dg : Homology (targetOut anng) (targetIn anng) → Homology (targetOut gWire) (targetIn gWire)
  d1 : Homology (targetOut annh1) (targetIn annh1) → Homology (targetOut h1Wire) (targetIn h1Wire)
  d3 : Homology (targetOut annh3) (targetIn annh3) → Homology (targetOut h3Wire) (targetIn h3Wire)
  zg : dg (targetZero anng) = targetZero gWire
  z1 : d1 (targetZero annh1) = targetZero h1Wire
  z3 : d3 (targetZero annh3) = targetZero h3Wire
  lg : ∀ x, dg (annMapg x) = gMap (I.differential x)
  l1 : ∀ x, d1 (annMaph1 x) = h1Map (I.differential x)
  l3 : ∀ x, d3 (annMaph3 x) = h3Map (I.differential x)

theorem named_zero (L : Leibniz I) :
    S.differential 3 sourceDegree (I.source3.coordinates.equivalence.symm (fun _ => true)) = 0 := by
  have finite := differential_named_zero I.differential L.dg L.d1 L.d3 L.zg L.z1 L.z3 L.lg L.l1 L.l3
  apply I.targetEquiv.injective
  erw [I.target_zero]
  rw [← I.source_name] at finite
  change I.targetEquiv (S.differential 3 sourceDegree
    (I.sourceEquiv.symm (I.sourceEquiv _))) = zeroSource at finite
  rw [I.sourceEquiv.symm_apply_apply] at finite
  exact finite

theorem whole_zero (L : Leibniz I) (x : (S.element 3 sourceDegree).carrier) :
    S.differential 3 sourceDegree x = 0 :=
  one_dimensional_zero I.source3.coordinates (I.named_zero L) x

theorem incoming_zero (L : Leibniz I)
    (x : ActualAdamsIncomingBridge.Source S 3 targetDegree) :
    ActualAdamsIncomingBridge.differential S 3 targetDegree x = 0 := by
  unfold ActualAdamsIncomingBridge.differential
  rw [dif_pos (show 3 ≤ targetDegree.filtration from by decide)]
  change ManualInputObligations.Reference.pageCast S 3 _ (S.differential 3 sourceDegree _) = 0
  rw [I.whole_zero L, ActualAdamsIncomingBridge.cast_zero]

#print axioms source_name
#print axioms target_zero
#print axioms named_zero
#print axioms whole_zero
#print axioms incoming_zero
end D2Input
end Fact761ConstructedActual.Row2858
