import ExtComplexCertificates.GenericAugmentationImport
import ExtComplexCertificates.GenericComponentExamples

namespace ExtComplexCertificates.GenericFreeComplex.GenericHom
set_option maxRecDepth 100000
set_option maxHeartbeats 0

def actualAugmentation : AugmentationCertificate := generic_augmentation_json%
  "{\"values\":[true,false,false,false,false,false,false,false],\"version\":1}"

theorem actualAugmentation_valid : AugmentationValid producedT4.data actualAugmentation := by
  lin_cert using ()

theorem actualHom_zero (f : Hom 3 8) : f.comp (differential producedT4.data) = 0 :=
  hom_differential_zero producedT4.data (by decide) f

theorem actualExactHom : ComponentExact producedT4.data component15.s component15.t ∧
    ∀ f : Hom 3 8, f.comp (differential producedT4.data) = 0 :=
  exact_minimal_hom producedT4.data component15 (by decide) (by decide)

example : checkAugmentation producedT4.data {actualAugmentation with values := []} = false := by decide
example : checkAugmentation producedT4.data {actualAugmentation with values := List.replicate 8 false} = false := by decide
example : checkAugmentation producedT4.data
    {actualAugmentation with values := [false,true,false,false,false,false,false,false]} = false := by decide
example : checkMinimal (⟨fun _ => 1,fun _ => 0,fun _ _ => [[0]]⟩ : Data 1 1) = false := by decide

private def rejected (s : String) : Bool :=
  match parseAugmentation s with | .error _ => true | .ok _ => false
#guard rejected "{\"values\":[null],\"version\":1}"
#guard rejected "{\"values\":[true],\"version\":1,\"version\":1}"
#guard rejected "{\"status\":\"unknown\",\"values\":[true],\"version\":1}"
#guard !(diagnoseAugmentation producedT4.data {actualAugmentation with values := []}).isEmpty

#print axioms actualAugmentation_valid
#print axioms actualExactHom
end ExtComplexCertificates.GenericFreeComplex.GenericHom
