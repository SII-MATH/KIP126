import AggregateHighD2Conditional.Matches
import AggregateTargetInventory.EventAudit.NonboundaryBasic
namespace AggregateHighD2Conditional.Pipeline.Trace7162
open LinearCertificates PageTransitionCertificates Data Events
open AggregateTargetInventory.EventAudit.NonboundaryBasic
theorem source_full_projection : (fun i => ([true] : List Bool)[i.val]!) = event7162Source := by decide
#print axioms source_full_projection
theorem target_full_projection : (fun i => ([true] : List Bool)[i.val]!) = event7162Target := by decide
#print axioms target_full_projection
end AggregateHighD2Conditional.Pipeline.Trace7162
