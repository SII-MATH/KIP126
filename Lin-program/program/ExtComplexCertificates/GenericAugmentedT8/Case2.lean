import ExtComplexCertificates.GenericAugmentedLineImport
import GenericComponentT8.Sliced.DataOnly
namespace ExtComplexCertificates.GenericFreeComplex.GenericHom.AugmentedT8
set_option maxRecDepth 100000
set_option maxHeartbeats 0
def augmentation2 : AugmentationCertificate := generic_augmentation_bundle% "GenericFreeComplexProducer/actual_t8_augmentation.json"
def certificate2 : AugmentedCertificate := generic_augmented_line% "GenericFreeComplexProducer/actual_t8_augmented.jsonl", 3
theorem exact2 : AugmentedExact GenericComponentT8.Sliced.bundle.data augmentation2 2 := by
  lin_cert using certificate2
#print axioms exact2
end ExtComplexCertificates.GenericFreeComplex.GenericHom.AugmentedT8
