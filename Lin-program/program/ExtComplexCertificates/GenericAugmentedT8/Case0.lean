import ExtComplexCertificates.GenericAugmentedLineImport
import GenericComponentT8.Sliced.DataOnly
namespace ExtComplexCertificates.GenericFreeComplex.GenericHom.AugmentedT8
set_option maxRecDepth 100000
set_option maxHeartbeats 0
def augmentation0 : AugmentationCertificate := generic_augmentation_bundle% "GenericFreeComplexProducer/actual_t8_augmentation.json"
def certificate0 : AugmentedCertificate := generic_augmented_line% "GenericFreeComplexProducer/actual_t8_augmented.jsonl", 1
theorem exact0 : AugmentedExact GenericComponentT8.Sliced.bundle.data augmentation0 0 := by
  lin_cert using certificate0
#print axioms exact0
end ExtComplexCertificates.GenericFreeComplex.GenericHom.AugmentedT8
