import ExtComplexCertificates.GenericAugmentedLineImport
import GenericComponentT8.Sliced.DataOnly
namespace ExtComplexCertificates.GenericFreeComplex.GenericHom.AugmentedT8
set_option maxRecDepth 100000
set_option maxHeartbeats 0
def augmentation6 : AugmentationCertificate := generic_augmentation_bundle% "GenericFreeComplexProducer/actual_t8_augmentation.json"
def certificate6 : AugmentedCertificate := generic_augmented_line% "GenericFreeComplexProducer/actual_t8_augmented.jsonl", 7
theorem exact6 : AugmentedExact GenericComponentT8.Sliced.bundle.data augmentation6 6 := by
  lin_cert using certificate6
#print axioms exact6
end ExtComplexCertificates.GenericFreeComplex.GenericHom.AugmentedT8
