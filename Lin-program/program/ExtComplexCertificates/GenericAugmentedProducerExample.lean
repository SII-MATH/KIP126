import ExtComplexCertificates.GenericAugmentedImportTests

namespace ExtComplexCertificates.GenericFreeComplex.GenericHom
set_option maxRecDepth 100000
set_option maxHeartbeats 0

def generatedAugmentation : AugmentationCertificate :=
  generic_augmentation_bundle% "GenericFreeComplexProducer/actual_t4_augmentation.json"
def generatedAugmented : AugmentedCertificate :=
  generic_augmented_bundle% "GenericFreeComplexProducer/actual_t4_augmented_t0.json"

theorem generatedAugmentation_eq : generatedAugmentation = actualAugmentation := rfl

theorem generatedAugmented_eq : generatedAugmented = importedAugmented := rfl

theorem generatedAugmented_exact : AugmentedExact producedT4.data generatedAugmentation 0 := by
  lin_cert using generatedAugmented

#print axioms generatedAugmented_exact
end ExtComplexCertificates.GenericFreeComplex.GenericHom
