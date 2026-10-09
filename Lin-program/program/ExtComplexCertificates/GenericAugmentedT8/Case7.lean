import ExtComplexCertificates.GenericAugmentedLineImport
import GenericComponentT8.Sliced.DataOnly
namespace ExtComplexCertificates.GenericFreeComplex.GenericHom.AugmentedT8
set_option maxRecDepth 100000
set_option maxHeartbeats 0
def augmentation7 : AugmentationCertificate := generic_augmentation_bundle% "GenericFreeComplexProducer/actual_t8_augmentation.json"
def certificate7 : AugmentedCertificate := generic_augmented_line% "GenericFreeComplexProducer/actual_t8_augmented.jsonl", 8
theorem exact7 : AugmentedExact GenericComponentT8.Sliced.bundle.data augmentation7 7 := by
  lin_cert using certificate7
#print axioms exact7
end ExtComplexCertificates.GenericFreeComplex.GenericHom.AugmentedT8
