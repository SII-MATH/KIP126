import Fact715NoHitReduction.Actual

namespace Fact715NoHitReduction
open ManualInputObligations.Reference ActualAdamsSystemBridge ActualAdamsFiltration
open OutgoingCycleFiltrationCertificates

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}
  {product : CertifiedAdamsProduct S}
  {initial : Fact715ConstructedActual.AdditiveCoordinates S 2 5}

structure ReductionInput (S : AdamsSpectralSequence) (pages : CertifiedAdamsPages S)
    (product : CertifiedAdamsProduct S)
    (initial : Fact715ConstructedActual.AdditiveCoordinates S 2 5) where
  zeros : ZeroMeaning S pages
  earlier : Fact715IncomingTail.EarlierSources S pages
  five : Fact715Source2574.Certificate S pages product
  prefix5 : Fact715ConstructedActual.Prefix5 S pages initial

namespace ReductionInput
variable (C : ReductionInput S pages product initial)

theorem cutoff_cycle : (actualFiltration C.zeros).Z 3 (Fact715ConstructedActual.raw initial) :=
  cycles_from_trace S pages C.zeros degree C.prefix5.endpoint5.trace 3 rfl

theorem cutoff_nonzero :
    (actualRealization S pages C.zeros degree).image 3 (Fact715ConstructedActual.raw initial)
      C.cutoff_cycle ≠ S.zero 5 degree := by
  change (system S pages C.zeros degree).at (Fact715ConstructedActual.raw initial) 3 ≠ S.zero 5 degree
  rw [← trace_at S pages C.zeros degree C.prefix5.endpoint5.trace,S.zero_is_zero]
  exact C.prefix5.nonzero5

theorem page9_nonzero (cycle : (actualFiltration C.zeros).Z 7 (Fact715ConstructedActual.raw initial)) :
    (actualRealization S pages C.zeros degree).image 7 (Fact715ConstructedActual.raw initial) cycle ≠
      S.zero 9 degree :=
  exceptional_image_nonzero (actualRealization S pages C.zeros degree)
    (differentialLaws S pages C.zeros degree) 3 7 (by decide)
    (incoming_except_nine C.zeros C.earlier C.five) (Fact715ConstructedActual.raw initial)
    C.cutoff_cycle C.cutoff_nonzero cycle

theorem raw_reduction :
    NotHit C.zeros (Fact715ConstructedActual.raw initial) ↔
      D9Exclusion C.zeros (Fact715ConstructedActual.raw initial) :=
  sole_remaining_obligation C.zeros C.earlier C.five _

theorem named_reduction (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact715PageCertificates.target) :
    NotHit C.zeros input ↔ D9Exclusion C.zeros input := by
  have same : input = Fact715ConstructedActual.raw initial :=
    initial.coordinates.equivalence.injective (binding.trans Fact715ConstructedActual.raw_coordinate.symm)
  subst input
  exact C.raw_reduction

theorem named_page9_nonzero (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact715PageCertificates.target)
    (cycle : (actualFiltration C.zeros).Z 7 input) :
    (actualRealization S pages C.zeros degree).image 7 input cycle ≠ S.zero 9 degree := by
  have same : input = Fact715ConstructedActual.raw initial :=
    initial.coordinates.equivalence.injective (binding.trans Fact715ConstructedActual.raw_coordinate.symm)
  subst input
  exact C.page9_nonzero cycle

theorem conditional_not_hit (input : (S.element 2 degree).carrier)
    (binding : initial.coordinates.equivalence input = Fact715PageCertificates.target)
    (d9 : D9Exclusion C.zeros input) :
    Fact715ConstructedActual.ResultValid S pages initial input ∧ NotHit C.zeros input :=
  ⟨Fact715ConstructedActual.result_sound C.prefix5 input binding,
    (C.named_reduction input binding).mpr d9⟩

theorem no_page9_trace_not_hit
    (missing : ¬ (actualFiltration C.zeros).Z 7 (Fact715ConstructedActual.raw initial)) :
    NotHit C.zeros (Fact715ConstructedActual.raw initial) :=
  missing_exceptional_cycle_excludes_boundaries (actualRealization S pages C.zeros degree)
    (differentialLaws S pages C.zeros degree) _ 7 missing

#print axioms cutoff_cycle
#print axioms cutoff_nonzero
#print axioms page9_nonzero
#print axioms raw_reduction
#print axioms named_reduction
#print axioms named_page9_nonzero
#print axioms conditional_not_hit
#print axioms no_page9_trace_not_hit
end ReductionInput
end Fact715NoHitReduction
