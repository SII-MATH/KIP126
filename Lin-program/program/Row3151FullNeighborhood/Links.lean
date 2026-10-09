import Row3151FullNeighborhood.Semantics

namespace Row3151FullNeighborhood.Links
open LinearCertificates PageTransitionCertificates Semantics

theorem incoming3_outgoing (a b q : Bool) :
    matrixOf 1 2 (Data.incomingD3 a b q).outgoing = outgoing3 a := by
  cases a <;> cases b <;> cases q <;> decide

theorem incoming3_incoming (a b q : Bool) :
    matrixOf 2 1 (Data.incomingD3 a b q).incoming = (fun _ _ => false) := by
  cases a <;> cases b <;> cases q <;> decide

theorem dimension_from_checked_quotient (a b q : Bool) :
    (Data.incomingD3 a b q).h = incomingDimension a := by
  cases a <;> cases b <;> cases q <;> rfl

theorem prefix_survives_in_both_dimensions (a b q : Bool) :
    eval (matrixOf (incomingDimension a) 2 (Data.incomingD3 a b q).projection)
      (fun i => i.val == 0) = prefixVector a := by
  cases a <;> cases b <;> cases q <;> decide

theorem incoming4_same_matrix (a b q : Bool) :
    matrixOf 2 (incomingDimension a) (Data.incomingD4 a b q).outgoing = incoming4 a b q := by
  cases a <;> cases b <;> cases q <;> decide

theorem raw_prefix_is_exact :
    eval AggregateD5Conditional.Data.b_S0_7_134_d2.comparison.projection
      (fun i => i.val == 2) = (fun i => i.val == 0) := by decide

#print axioms dimension_from_checked_quotient
#print axioms prefix_survives_in_both_dimensions
#print axioms incoming4_same_matrix
#print axioms raw_prefix_is_exact
end Row3151FullNeighborhood.Links
