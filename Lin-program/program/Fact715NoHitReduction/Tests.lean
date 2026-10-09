import Fact715NoHitReduction.Tactic
import ActualAdamsFiltration.Examples

namespace Fact715NoHitReduction.Tests
open PermanentCycleCertificates OutgoingCycleFiltrationCertificates ActualAdamsFiltration

noncomputable def stableRealization := realization ActualAdamsFiltration.Examples.stable
  ActualAdamsFiltration.Examples.stableLaws ActualAdamsFiltration.Examples.stableComplete

theorem stable_no_exceptional_hit : ¬ ExceptionalHit stableRealization 7 true := by
  rw [← boundary_iff_exceptional_hit stableRealization ActualAdamsFiltration.Examples.stableLaws
    3 7 (by decide) (by intros; rfl) true]
  exact ActualAdamsFiltration.Examples.stable_no_boundary

theorem stable_exceptional_image_nonzero (h :
    (filtration ActualAdamsFiltration.Examples.stable ActualAdamsFiltration.Examples.stableLaws).Z 7 true) :
    stableRealization.image 7 true h ≠ false := by
  apply exceptional_image_nonzero stableRealization ActualAdamsFiltration.Examples.stableLaws
    3 7 (by decide) (by intros; rfl) true
  · change true ≠ false
    decide
  · intro k hk
    rfl

open OutgoingCycleFiltrationCertificates.Examples in
theorem real_exceptional_hit : ExceptionalHit killedRealization 0 true :=
  (killedRealization.next_boundary_iff_incoming ActualAdamsFiltration.Examples.killedLaws 0 true).mp
    later_boundary

open OutgoingCycleFiltrationCertificates.Examples in
theorem exceptional_exclusion_cannot_be_dropped :
    (∃ h : killedFiltration.Z 0 true, killedRealization.image 0 true h ≠ killedSystem.zero 0) ∧
      killedFiltration.BInfinity true :=
  ⟨⟨trivial,initially_nonzero⟩,⟨1,later_boundary⟩⟩

open ManualInputObligations.Reference in
example {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
    {product : CertifiedAdamsProduct S}
    {initial : Fact715ConstructedActual.AdditiveCoordinates S 2 5}
    (C : ReductionInput S pages product initial) (unavailable : False) :
    ResultValid C.zeros initial (Fact715ConstructedActual.raw initial) := by
  fail_if_success fact715_nohit_cert using C with ()
  fail_if_success fact715_nohit_reduction using C
  exact unavailable.elim

#print axioms stable_no_exceptional_hit
#print axioms stable_exceptional_image_nonzero
#print axioms real_exceptional_hit
#print axioms exceptional_exclusion_cannot_be_dropped
end Fact715NoHitReduction.Tests
