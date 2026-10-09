import ExtComplexCertificates.GenericAugmentedLineImport
import GenericComponentT8.Sliced.DataOnly
namespace ExtComplexCertificates.GenericFreeComplex.GenericHom.AugmentedT8
set_option maxRecDepth 100000
set_option maxHeartbeats 0
def augmentation3 : AugmentationCertificate := generic_augmentation_bundle% "GenericFreeComplexProducer/actual_t8_augmentation.json"
def certificate3 : AugmentedCertificate := generic_augmented_line% "GenericFreeComplexProducer/actual_t8_augmented.jsonl", 4
theorem exact3 : AugmentedExact GenericComponentT8.Sliced.bundle.data augmentation3 3 := by
  lin_cert using certificate3
#print axioms exact3
end ExtComplexCertificates.GenericFreeComplex.GenericHom.AugmentedT8
