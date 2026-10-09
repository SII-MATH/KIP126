import AggregateTargetInventory.EventAudit.Events
import AllClaimLeibnizConditionalCertificates.Matches
namespace AggregateTargetInventory.EventAudit.Matches
open LinearCertificates PageTransitionCertificates Data

/-- Coefficient equality only. SemanticLinks composes these equalities with
the conditional quotient APIs; this identity alone transports no premise. -/
theorem ceta_column : ∀ i : Fin 1,
  matrixOf 1 2 b_S0_15_139_d3.outgoing i 1 =
  matrixOf 1 2 AllClaimLeibnizConditionalCertificates.Data.b_S0_15_139_d3.outgoing i 1 := by decide

theorem c2_column : ∀ i : Fin 1,
  matrixOf 1 1 b_S0_17_140_d3.outgoing i 0 =
  matrixOf 1 1 AllClaimLeibnizConditionalCertificates.Data.b_S0_17_140_d3.outgoing i 0 := by decide

theorem prefix_out_column : ∀ i : Fin 1,
  matrixOf 1 1 b_S0_14_138_d3.outgoing i 0 =
  matrixOf 1 1 AllClaimLeibnizConditionalCertificates.Data.b_S0_14_138_d3.outgoing i 0 := by decide

theorem prefix_in_column : ∀ i : Fin 1,
  matrixOf 1 1 b_S0_17_140_d3.incoming i 0 =
  matrixOf 1 1 AllClaimLeibnizConditionalCertificates.Data.b_S0_17_140_d3.incoming i 0 := by decide

theorem h0h2_column : ∀ i : Fin 2,
  matrixOf 2 4 b_S0_10_134_d3.outgoing i 2 =
  matrixOf 2 4 AllClaimLeibnizConditionalCertificates.Data.b_S0_10_134_d3.outgoing i 2 := by decide

open PageProductCertificates.Row2858 in
theorem row2858_column (d : Initial → Source)
    (h : NamedPageComparison.ConditionalHigher.CertifiedOverride d) :
    d named = zeroSource ∧ ∀ i : Fin 3,
      matrixOf 3 1 b_S0_13_138_d3.incoming i 0 =
      (homologyEquivalence sourceOut sourceIn
        NamedPageComparison.Row2858.Boundaries.Target.comparison
        NamedPageComparison.Row2858.Boundaries.Target_complete.2).toCoordinates (d named) i := by
  refine ⟨h.quotientZero, ?_⟩
  rw [h.quotientZero]
  intro i
  change _ = eval NamedPageComparison.Row2858.Boundaries.Target.comparison.projection zero i
  rw [eval_zero]
  exact (show ∀ i : Fin 3, matrixOf 3 1 b_S0_13_138_d3.incoming i 0 = zero i from by decide) i
end AggregateTargetInventory.EventAudit.Matches
