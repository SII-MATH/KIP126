import AggregateTargetInventory.EventAudit.EliminationStage
namespace AggregateTargetInventory.EventAudit.SamePage
open LinearCertificates PageTransitionCertificates Data Events EliminationStage

/-- Every incoming image is a cycle, so a noncycle cannot be hit on that page. -/
theorem noncycle_not_incoming {A : Matrix k m} {B : Matrix m n}
    (hc : IsComplex A B) {x : Vec m} (hn : ¬ InKernel A x) : ¬ InImage B x := by
  rintro ⟨y,hy⟩
  apply hn
  rw [← hy]
  exact hc y

theorem row2492_not_hit_same_page :
    ¬ InImage (matrixOf b_S0_6_131_d4.m b_S0_6_131_d4.n b_S0_6_131_d4.incoming) event2492Source :=
  noncycle_not_incoming b_S0_6_131_d4_complete.2.1 event2492_source_not_kernel

theorem row2493_not_hit_same_page :
    ¬ InImage (matrixOf b_S0_6_131_d4.m b_S0_6_131_d4.n b_S0_6_131_d4.incoming) event2493Source :=
  noncycle_not_incoming b_S0_6_131_d4_complete.2.1 event2493_source_not_kernel
#print axioms row2492_not_hit_same_page
end AggregateTargetInventory.EventAudit.SamePage
