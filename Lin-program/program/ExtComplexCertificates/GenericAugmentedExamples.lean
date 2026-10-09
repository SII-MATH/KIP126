import ExtComplexCertificates.GenericAugmentedExactness
import ExtComplexCertificates.GenericAugmentationExamples

namespace ExtComplexCertificates.GenericFreeComplex.GenericHom
set_option maxRecDepth 100000
set_option maxHeartbeats 0

def augmentedT0 : AugmentedCertificate := ⟨1,0,component1.incoming,[],[true]⟩
def augmentedT1 : AugmentedCertificate := ⟨1,1,component2.incoming,component2.up,component2.down⟩
def augmentedT2 : AugmentedCertificate := ⟨1,2,component3.incoming,component3.up,component3.down⟩
def augmentedT3 : AugmentedCertificate := ⟨1,3,component4.incoming,component4.up,component4.down⟩
def augmentedT4 : AugmentedCertificate := ⟨1,4,component5.incoming,component5.up,component5.down⟩

theorem augmentedT0_valid : checkAugmented producedT4.data actualAugmentation augmentedT0 = true := by decide
theorem augmentedT1_valid : checkAugmented producedT4.data actualAugmentation augmentedT1 = true := by decide
theorem augmentedT2_valid : checkAugmented producedT4.data actualAugmentation augmentedT2 = true := by decide
theorem augmentedT3_valid : checkAugmented producedT4.data actualAugmentation augmentedT3 = true := by decide
theorem augmentedT4_valid : checkAugmented producedT4.data actualAugmentation augmentedT4 = true := by decide

theorem augmentedActualExact0 (x : FreeModule 3 8) (hx : Homogeneous producedT4.data 0 0 x)
    (ha : augmentation producedT4.data actualAugmentation x = 0) :
    ∃ y : FreeModule 3 8, Homogeneous producedT4.data 1 0 y ∧ differential producedT4.data y = x :=
  checkAugmented_sound producedT4.data actualAugmentation augmentedT0 augmentedT0_valid x hx ha

example : checkAugmented producedT4.data actualAugmentation {augmentedT0 with down := [false]} = false := by decide
example : checkAugmented producedT4.data actualAugmentation {augmentedT0 with down := []} = false := by decide
example : checkAugmented producedT4.data {actualAugmentation with values := List.replicate 8 false} augmentedT0 = false := by decide

#print axioms augmentedActualExact0
end ExtComplexCertificates.GenericFreeComplex.GenericHom
