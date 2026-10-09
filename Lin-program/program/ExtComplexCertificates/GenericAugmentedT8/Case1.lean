import ExtComplexCertificates.GenericAugmentedLineImport
import GenericComponentT8.Sliced.DataOnly
namespace ExtComplexCertificates.GenericFreeComplex.GenericHom.AugmentedT8
set_option maxRecDepth 100000
set_option maxHeartbeats 0
def augmentation1 : AugmentationCertificate := generic_augmentation_bundle% "GenericFreeComplexProducer/actual_t8_augmentation.json"
def certificate1 : AugmentedCertificate := generic_augmented_line% "GenericFreeComplexProducer/actual_t8_augmented.jsonl", 2
theorem exact1 : AugmentedExact GenericComponentT8.Sliced.bundle.data augmentation1 1 := by
  lin_cert using certificate1
#print axioms exact1
end ExtComplexCertificates.GenericFreeComplex.GenericHom.AugmentedT8
