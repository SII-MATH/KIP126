import Fact715Source2574.Tactic
import Fact715Source2574.Semantics

namespace Fact715Source2574
open LinearCertificates PageTransitionCertificates ManualInputObligations.Reference

theorem wrong_target_is_boundary :
    InImage (matrixOf Data.target.m Data.target.n Data.target.incoming)
      (fun i => i.val == 2) := ⟨(fun i => i.val == 1), by decide⟩
theorem raw_target_not_boundary :
    ¬ InImage (matrixOf Data.target.m Data.target.n Data.target.incoming) Finite.rawTarget :=
  Finite.target_nonboundary
theorem boundary_source_not_named :
    eval Data.source.comparison.projection (fun i => i.val == 1) ≠ (fun _ => true) := by decide
theorem factor_target_empty : Data.factorTarget.m = 0 ∧ Data.factorTarget.h = 0 := by decide

example {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S} {P : CertifiedAdamsProduct S}
    (_c : Certificate S pages P) : True := by
  fail_if_success source2574_cert using _c
  trivial

theorem named_not_cycle {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {P : CertifiedAdamsProduct S} (C : Certificate S pages P) :
    S.differential 3 Actual.sourceDegree C.stage.value3 ≠ 0 :=
  C.stage.named_d3_nonzero (C.stage.recordedKnown C.recorded)

#print axioms wrong_target_is_boundary
#print axioms raw_target_not_boundary
#print axioms boundary_source_not_named
#print axioms factor_target_empty
#print axioms named_not_cycle
#print axioms Certificate.sound
#print axioms Certificate.source_empty
end Fact715Source2574
