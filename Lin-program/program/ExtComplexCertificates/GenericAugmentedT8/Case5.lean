import ExtComplexCertificates.GenericAugmentedLineImport
import GenericComponentT8.Sliced.DataOnly
namespace ExtComplexCertificates.GenericFreeComplex.GenericHom.AugmentedT8
set_option maxRecDepth 100000
set_option maxHeartbeats 0
def augmentation5 : AugmentationCertificate := generic_augmentation_bundle% "GenericFreeComplexProducer/actual_t8_augmentation.json"
def certificate5 : AugmentedCertificate := generic_augmented_line% "GenericFreeComplexProducer/actual_t8_augmented.jsonl", 6
theorem exact5 : AugmentedExact GenericComponentT8.Sliced.bundle.data augmentation5 5 := by
  lin_cert using certificate5
#print axioms exact5
end ExtComplexCertificates.GenericFreeComplex.GenericHom.AugmentedT8
