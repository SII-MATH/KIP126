import AggregateTargetInventory.EventAudit.TrajectoryCycles
namespace AggregateTargetInventory.EventAudit.NonboundaryBasic
open LinearCertificates PageTransitionCertificates ResolutionCertificates

theorem nonzero_projection_not_boundary {outgoing : Matrix k m} {incoming : Matrix m n}
    (c : Comparison k m n h) (hc : HomologyComparison outgoing incoming c)
    {x : Vec m} (hx : InKernel outgoing x) (hn : eval c.projection x ≠ zero) :
    ¬ InImage incoming x := by
  intro hb
  have hxy : InImage incoming (add x zero) := by simpa only [add_zero] using hb
  have he := (hc.2.2.2.2 x zero hx (eval_zero _)).mpr hxy
  rw [eval_zero] at he
  exact hn he
end AggregateTargetInventory.EventAudit.NonboundaryBasic
