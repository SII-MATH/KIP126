import AggregateHighD2Conditional.Matches
import AggregateTargetInventory.EventAudit.NonboundaryBasic
namespace AggregateHighD2Conditional.Pipeline.Trace7247
open LinearCertificates PageTransitionCertificates Data Events
open AggregateTargetInventory.EventAudit.NonboundaryBasic
theorem source_d2_cycle : InKernel (matrixOf 1 1 b_S0_54_180_d2.outgoing) (fun i => ([true] : List Bool)[i.val]!) := by funext i; exact (show ∀ i : Fin 1, eval (matrixOf 1 1 b_S0_54_180_d2.outgoing) (fun i => ([true] : List Bool)[i.val]!) i = false from by decide) i
theorem source_d2_nonzero_projection : eval b_S0_54_180_d2.comparison.projection (fun i => ([true] : List Bool)[i.val]!) ≠ zero := by intro h; have hi := congrFun h ⟨0,by decide⟩; contradiction
theorem source_d2_not_boundary : ¬ InImage (matrixOf 1 1 b_S0_54_180_d2.incoming) (fun i => ([true] : List Bool)[i.val]!) := nonzero_projection_not_boundary b_S0_54_180_d2.comparison b_S0_54_180_d2_complete.2 source_d2_cycle source_d2_nonzero_projection
theorem source_full_projection : (eval b_S0_54_180_d2.comparison.projection (fun i => ([true] : List Bool)[i.val]!)) = event7247Source := by decide
#print axioms source_full_projection
theorem target_d2_cycle : InKernel (matrixOf 0 1 b_S0_57_182_d2.outgoing) (fun i => ([true] : List Bool)[i.val]!) := by funext i; exact (show ∀ i : Fin 0, eval (matrixOf 0 1 b_S0_57_182_d2.outgoing) (fun i => ([true] : List Bool)[i.val]!) i = false from by decide) i
theorem target_d2_nonzero_projection : eval b_S0_57_182_d2.comparison.projection (fun i => ([true] : List Bool)[i.val]!) ≠ zero := by intro h; have hi := congrFun h ⟨0,by decide⟩; contradiction
theorem target_d2_not_boundary : ¬ InImage (matrixOf 1 1 b_S0_57_182_d2.incoming) (fun i => ([true] : List Bool)[i.val]!) := nonzero_projection_not_boundary b_S0_57_182_d2.comparison b_S0_57_182_d2_complete.2 target_d2_cycle target_d2_nonzero_projection
theorem target_full_projection : (eval b_S0_57_182_d2.comparison.projection (fun i => ([true] : List Bool)[i.val]!)) = event7247Target := by decide
#print axioms target_full_projection
end AggregateHighD2Conditional.Pipeline.Trace7247
