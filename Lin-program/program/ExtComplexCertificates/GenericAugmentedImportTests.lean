import ExtComplexCertificates.GenericAugmentedImport
import ExtComplexCertificates.GenericAugmentedExamples

namespace ExtComplexCertificates.GenericFreeComplex.GenericHom
set_option maxRecDepth 100000
set_option maxHeartbeats 0

def importedAugmented : AugmentedCertificate :=
  generic_augmented_bundle% "ExtComplexCertificates/generic_augmented_t0.json"

theorem importedAugmented_exact : AugmentedExact producedT4.data actualAugmentation 0 := by
  lin_cert using importedAugmented

#eval diagnoseAugmented producedT4.data actualAugmentation {importedAugmented with down := [false]}
#guard match parseAugmented "{\"incoming\":null}" with | .error _ => true | .ok _ => false
#guard match parseAugmented ((Lean.toJson importedAugmented).compress.dropEnd 1 |>.toString.append ",\"version\":1}") with | .error _ => true | .ok _ => false
#print axioms importedAugmented_exact
end ExtComplexCertificates.GenericFreeComplex.GenericHom
