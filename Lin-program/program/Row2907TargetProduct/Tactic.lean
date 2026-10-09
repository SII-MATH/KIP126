import Row2907TargetProduct.Branches
import Row2907PDeltaDetection.Tactic

namespace Row2907TargetProduct.Request
open ManualInputObligations.Reference Row2907PDeltaDetection.Branches
open Row2907TargetProduct.Actual Row2907TargetProduct.Branches

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {P : CertifiedAdamsProduct S}

abbrev RequestedValid (W : Witness S pages P) (T : TargetMeaning W true false)
    (source output : List Bool) : Prop :=
  Row2907PDeltaDetection.Request.RequestedValid W (residualTarget T) source output

theorem check_sound (W : Witness S pages P) (T : TargetMeaning W true false)
    (source output : List Bool)
    (accepted : Row2907PDeltaDetection.Request.check source output = true) :
    RequestedValid W T source output :=
  Row2907PDeltaDetection.Request.check_sound W (residualTarget T) source output accepted
theorem checkBatch_sound (W : Witness S pages P) (T : TargetMeaning W true false)
    (requests : List (List Bool × List Bool))
    (accepted : Row2907PDeltaDetection.Request.checkBatch requests = true) :
    ∀ request ∈ requests, RequestedValid W T request.1 request.2 :=
  Row2907PDeltaDetection.Request.checkBatch_sound W (residualTarget T) requests accepted

syntax "row2907_target_cert" " using " term " with " term : tactic
macro_rules
  | `(tactic| row2907_target_cert using $witness:term with $targetMeaning:term) =>
    `(tactic| first
      | exact check_sound $witness $targetMeaning _ _ (by decide)
      | exact checkBatch_sound $witness $targetMeaning _ (by decide))

example (W : Witness S pages P) (T : TargetMeaning W true false) :
    RequestedValid W T [true,false] [true] := by row2907_target_cert using W with T
example (W : Witness S pages P) (T : TargetMeaning W true false) :
    ∀ request ∈ [([true,false],[true]),([true,false],[true])],
      RequestedValid W T request.1 request.2 := by row2907_target_cert using W with T
example (W : Witness S pages P) (T : TargetMeaning W true false) : True := by
  fail_if_success
    have : RequestedValid W T [false,true] [true] := by row2907_target_cert using W with T
  fail_if_success
    have : RequestedValid W T [true,false] [false] := by row2907_target_cert using W with T
  fail_if_success
    have : RequestedValid W T [true,false,true] [true] := by row2907_target_cert using W with T
  fail_if_success
    have : RequestedValid W T [true,false] [true,false] := by row2907_target_cert using W with T
  trivial

#print axioms check_sound
#print axioms checkBatch_sound
end Row2907TargetProduct.Request
