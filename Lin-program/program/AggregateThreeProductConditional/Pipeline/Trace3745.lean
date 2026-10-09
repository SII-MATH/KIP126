import AggregateThreeProductConditional.Matches
import AggregateTargetInventory.EventAudit.NonboundaryBasic
namespace AggregateThreeProductConditional.Pipeline.Trace3745
open LinearCertificates PageTransitionCertificates Data Events
open AggregateTargetInventory.EventAudit.NonboundaryBasic
theorem source_d2_cycle : InKernel (matrixOf 3 4 b_S0_18_144_d2.outgoing) (fun i => ([false,false,true,true] : List Bool)[i.val]!) := by funext i; exact (show ∀ i : Fin 3, eval (matrixOf 3 4 b_S0_18_144_d2.outgoing) (fun i => ([false,false,true,true] : List Bool)[i.val]!) i = false from by decide) i
theorem source_d2_nonzero_projection : eval b_S0_18_144_d2.comparison.projection (fun i => ([false,false,true,true] : List Bool)[i.val]!) ≠ zero := by intro h; have hi := congrFun h ⟨1,by decide⟩; contradiction
theorem source_d2_not_boundary : ¬ InImage (matrixOf 4 6 b_S0_18_144_d2.incoming) (fun i => ([false,false,true,true] : List Bool)[i.val]!) := nonzero_projection_not_boundary b_S0_18_144_d2.comparison b_S0_18_144_d2_complete.2 source_d2_cycle source_d2_nonzero_projection
theorem source_d3_cycle : InKernel (matrixOf 1 3 b_S0_18_144_d3.outgoing) (eval b_S0_18_144_d2.comparison.projection (fun i => ([false,false,true,true] : List Bool)[i.val]!)) := by funext i; exact (show ∀ i : Fin 1, eval (matrixOf 1 3 b_S0_18_144_d3.outgoing) (eval b_S0_18_144_d2.comparison.projection (fun i => ([false,false,true,true] : List Bool)[i.val]!)) i = false from by decide) i
theorem source_d3_nonzero_projection : eval b_S0_18_144_d3.comparison.projection (eval b_S0_18_144_d2.comparison.projection (fun i => ([false,false,true,true] : List Bool)[i.val]!)) ≠ zero := by intro h; have hi := congrFun h ⟨1,by decide⟩; contradiction
theorem source_d3_not_boundary : ¬ InImage (matrixOf 3 2 b_S0_18_144_d3.incoming) (eval b_S0_18_144_d2.comparison.projection (fun i => ([false,false,true,true] : List Bool)[i.val]!)) := nonzero_projection_not_boundary b_S0_18_144_d3.comparison b_S0_18_144_d3_complete.2 source_d3_cycle source_d3_nonzero_projection
theorem source_full_projection : (eval b_S0_18_144_d3.comparison.projection (eval b_S0_18_144_d2.comparison.projection (fun i => ([false,false,true,true] : List Bool)[i.val]!))) = event3745Source := by decide
#print axioms source_d3_not_boundary
theorem target_d2_cycle : InKernel (matrixOf 2 4 b_S0_22_147_d2.outgoing) (fun i => ([true,false,false,true] : List Bool)[i.val]!) := by funext i; exact (show ∀ i : Fin 2, eval (matrixOf 2 4 b_S0_22_147_d2.outgoing) (fun i => ([true,false,false,true] : List Bool)[i.val]!) i = false from by decide) i
theorem target_d2_nonzero_projection : eval b_S0_22_147_d2.comparison.projection (fun i => ([true,false,false,true] : List Bool)[i.val]!) ≠ zero := by intro h; have hi := congrFun h ⟨1,by decide⟩; contradiction
theorem target_d2_not_boundary : ¬ InImage (matrixOf 4 2 b_S0_22_147_d2.incoming) (fun i => ([true,false,false,true] : List Bool)[i.val]!) := nonzero_projection_not_boundary b_S0_22_147_d2.comparison b_S0_22_147_d2_complete.2 target_d2_cycle target_d2_nonzero_projection
theorem target_d3_cycle : InKernel (matrixOf 0 2 b_S0_22_147_d3.outgoing) (eval b_S0_22_147_d2.comparison.projection (fun i => ([true,false,false,true] : List Bool)[i.val]!)) := by funext i; exact (show ∀ i : Fin 0, eval (matrixOf 0 2 b_S0_22_147_d3.outgoing) (eval b_S0_22_147_d2.comparison.projection (fun i => ([true,false,false,true] : List Bool)[i.val]!)) i = false from by decide) i
theorem target_d3_nonzero_projection : eval b_S0_22_147_d3.comparison.projection (eval b_S0_22_147_d2.comparison.projection (fun i => ([true,false,false,true] : List Bool)[i.val]!)) ≠ zero := by intro h; have hi := congrFun h ⟨1,by decide⟩; contradiction
theorem target_d3_not_boundary : ¬ InImage (matrixOf 2 2 b_S0_22_147_d3.incoming) (eval b_S0_22_147_d2.comparison.projection (fun i => ([true,false,false,true] : List Bool)[i.val]!)) := nonzero_projection_not_boundary b_S0_22_147_d3.comparison b_S0_22_147_d3_complete.2 target_d3_cycle target_d3_nonzero_projection
theorem target_full_projection : (eval b_S0_22_147_d3.comparison.projection (eval b_S0_22_147_d2.comparison.projection (fun i => ([true,false,false,true] : List Bool)[i.val]!))) = event3745Target := by decide
#print axioms target_d3_not_boundary
end AggregateThreeProductConditional.Pipeline.Trace3745
