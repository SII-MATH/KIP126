import ExtComplexCertificates.GenericAugmentedLineImport
import GenericComponentT8.Sliced.DataOnly
namespace ExtComplexCertificates.GenericFreeComplex.GenericHom.AugmentedT8
set_option maxRecDepth 100000
set_option maxHeartbeats 0
def augmentation8 : AugmentationCertificate := generic_augmentation_bundle% "GenericFreeComplexProducer/actual_t8_augmentation.json"
def certificate8 : AugmentedCertificate := generic_augmented_line% "GenericFreeComplexProducer/actual_t8_augmented.jsonl", 9
theorem exact8 : AugmentedExact GenericComponentT8.Sliced.bundle.data augmentation8 8 := by
  lin_cert using certificate8
#print axioms exact8
end ExtComplexCertificates.GenericFreeComplex.GenericHom.AugmentedT8
