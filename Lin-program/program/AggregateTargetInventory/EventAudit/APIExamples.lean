import AggregateTargetInventory.EventAudit.Certificates
import AggregateTargetInventory.EventAudit.SamePage
namespace AggregateTargetInventory.EventAudit.APIExamples
open FiniteAPI Certificates

example : FiniteEventValid input2435 := by
  finite_event_cert using certificate2435

example : FiniteEventValid input2783 := by
  finite_event_cert using certificate2783

example : FiniteEventValid input3010 := by
  finite_event_cert using certificate3010

example : FiniteEventValid input2492 := by
  finite_event_cert using certificate2492

example : ¬ LinearCertificates.InImage
    (PageTransitionCertificates.matrixOf Data.b_S0_6_131_d4.m Data.b_S0_6_131_d4.n
      Data.b_S0_6_131_d4.incoming) Events.event2492Source :=
  SamePage.row2492_not_hit_same_page
end AggregateTargetInventory.EventAudit.APIExamples
