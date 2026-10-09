import ExtComplexCertificates.GenericAugmentedLineImport
import GenericComponentT8.Sliced.DataOnly
namespace ExtComplexCertificates.GenericFreeComplex.GenericHom.AugmentedT8
set_option maxRecDepth 100000
set_option maxHeartbeats 0
def augmentation4 : AugmentationCertificate := generic_augmentation_bundle% "GenericFreeComplexProducer/actual_t8_augmentation.json"
def certificate4 : AugmentedCertificate := generic_augmented_line% "GenericFreeComplexProducer/actual_t8_augmented.jsonl", 5
theorem exact4 : AugmentedExact GenericComponentT8.Sliced.bundle.data augmentation4 4 := by
  lin_cert using certificate4
#print axioms exact4
end ExtComplexCertificates.GenericFreeComplex.GenericHom.AugmentedT8
