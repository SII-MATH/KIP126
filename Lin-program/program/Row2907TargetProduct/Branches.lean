import Row2907TargetProduct.Actual
import Fact713FourBranchContinuation.Branches

namespace Row2907TargetProduct.Branches
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference
open Row3151ActualTransport (Coordinates)
open Row2907PDeltaDetection.Descent Row2907PDeltaDetection.Branches
open Actual

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {P : CertifiedAdamsProduct S} {W : Witness S pages P}

theorem only_zero_families {r a : Bool} (T : TargetMeaning W r a) :
    a = false ∧ IndexedFamilyCertificates.Coherent (Fact713FourBranchContinuation.family r false) :=
  ⟨parameter_zero T,Fact713FourBranchContinuation.family_coherent r false⟩

theorem zero_target_dimension (r : Bool) : (comparison r false).h = if r then 1 else 2 := by
  cases r <;> rfl

noncomputable def residualTarget (T : TargetMeaning W true false) : Coordinates S 4 targetDegree 1 :=
  T.page4

theorem residual_whole_d4 (T : TargetMeaning W true false)
    (x : (S.element 4 sourceDegree).carrier) :
    (residualTarget T).equivalence (S.differential 4 sourceDegree x) =
      eval (matrixOf 1 1 [true]) (W.data.source4.equivalence x) :=
  one_target_whole_column W (residualTarget T) x

theorem residual_named_d4 (T : TargetMeaning W true false) :
    (residualTarget T).equivalence (S.differential 4 sourceDegree W.next) = fun _ => true :=
  one_target_named_value W (residualTarget T)

theorem zero_branch_named_nonzero (T : TargetMeaning W false false) :
    T.page4.equivalence (S.differential 4 sourceDegree W.next) ≠ zero :=
  target_coordinate_nonzero W T.page4

#print axioms only_zero_families
#print axioms zero_target_dimension
#print axioms residualTarget
#print axioms residual_whole_d4
#print axioms residual_named_d4
#print axioms zero_branch_named_nonzero
end Row2907TargetProduct.Branches
