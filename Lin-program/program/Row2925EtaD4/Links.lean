import Row2925EtaD4.Restriction

namespace Row2925EtaD4.Links
open LinearCertificates PageTransitionCertificates

def raw3152 : Vec 5 := fun i => decide (i.val = 2)

theorem event3152_projection :
    eval Higher.upperSource.comparison.projection
      (eval Comparison.targetS.comparison.projection raw3152) =
      RemainingThreeAudit.event3152Source := by decide

theorem source_d3_same_comparison : Higher.source =
    AggregateD5Conditional.Data.b_S0_11_137_d3 := by decide

theorem target_d3_same_comparison : Higher.upperSource =
    AggregateD5Conditional.Data.b_S0_15_140_d3 := by decide

/-- The full outgoing d3 matrix has no rows. Its unique value does not
need the later d5 event or a prefix inferred from that event. -/
theorem target_d3_zero_for_dimension (d : Matrix 0 2) (x : Vec 2) :
    eval d x = zero := by
  funext i
  exact Fin.elim0 i

theorem target_d3_codomain_zero : Higher.upperSource.k = 0 := rfl

#print axioms event3152_projection
#print axioms source_d3_same_comparison
#print axioms target_d3_same_comparison
#print axioms target_d3_zero_for_dimension
end Row2925EtaD4.Links
