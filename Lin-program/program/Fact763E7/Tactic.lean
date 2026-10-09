import Fact763E7.Actual

namespace Fact763E7
open ManualInputObligations ManualInputObligations.Reference

def ResultValid {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {product : CertifiedAdamsProduct S} (I : Input S pages product)
    (input : (S.element 2 degree).carrier) : Prop :=
  I.previous.calculation.stage2.product.equivalence input = Fact763PageCertificates.target ∧
    Nonempty (Trace S pages degree 7 input I.value7) ∧ I.value7 ≠ 0

theorem result_sound {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {product : CertifiedAdamsProduct S} (I : Input S pages product)
    (input : (S.element 2 degree).carrier)
    (binding : I.previous.calculation.stage2.product.equivalence input = Fact763PageCertificates.target) :
    ResultValid I input := ⟨binding,I.same_input input binding⟩

syntax "fact763_e7_cert" " using " term " named " term : tactic
macro_rules
  | `(tactic| fact763_e7_cert using $certificate:term named $binding:term) =>
    `(tactic| exact Fact763E7.result_sound $certificate _ $binding)

example {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {product : CertifiedAdamsProduct S} (I : Input S pages product)
    (input : (S.element 2 degree).carrier)
    (binding : I.previous.calculation.stage2.product.equivalence input = Fact763PageCertificates.target) :
    ResultValid I input := by fact763_e7_cert using I named binding

example {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {product : CertifiedAdamsProduct S} (_I : Input S pages product) : True := by
  fail_if_success
    have : ResultValid _I 0 := by
      fact763_e7_cert using _I named
        _I.previous.calculation.stage2.product.equivalence.apply_symm_apply _
  trivial

#print axioms result_sound
end Fact763E7
