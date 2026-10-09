import Row3152BranchCertificates.Branch0
import Row3152BranchCertificates.Branch1

namespace Row3152BranchCertificates.Semantics
open LinearCertificates PageTransitionCertificates

def path (b : Bool) : PathEvent := if b then Branch1.path else Branch0.path
def sourceD4 (b : Bool) : WireComparison := if b then Branch1.sourceD4 else Branch0.sourceD4

def Pinned (w : PathEvent) (b : Bool) : Prop :=
  w.sourceStages.map Stage.wire =
    [AggregateD5Conditional.Data.b_S0_15_140_d2,AggregateD5Conditional.Data.b_S0_15_140_d3,sourceD4 b] ∧
  w.targetStages.map Stage.wire =
    [AggregateD5Conditional.Data.b_S0_20_144_d2,AggregateD5Conditional.Data.b_S0_20_144_d3,
      AggregateD5Conditional.Data.b_S0_20_144_d4]

theorem both_pinned (b : Bool) : Pinned (path b) b := by
  cases b <;> exact ⟨rfl,rfl⟩

theorem both_paths (b : Bool) : (path b).Valid := by
  cases b
  · exact Branch0.path_valid
  · exact Branch1.path_valid

theorem both_comparisons (b : Bool) : (sourceD4 b).Valid := by
  cases b
  · exact Branch0.source_d4_complete
  · exact Branch1.source_d4_complete

theorem incoming_exact (b : Bool) : matrixOf 2 2 (sourceD4 b).incoming =
    Row3151BranchCertificates.Semantics.outgoing b false := by
  cases b
  · exact Branch0.source_d4_incoming
  · exact Branch1.source_d4_incoming

theorem both_source_projection (b : Bool) :
    eval (matrixOf 1 2 (sourceD4 b).projection) RemainingThreeAudit.event3152Source =
      (fun _ => true) := by
  cases b <;> decide

theorem full_source_projection (b : Bool) (v : Vec 2) :
    eval (matrixOf 1 2 (sourceD4 b).projection) v = (fun _ => v 1) := by
  cases b
  · exact (show ∀ v : Vec 2,
      eval (matrixOf 1 2 (sourceD4 false).projection) v = (fun _ => v 1) from by decide) v
  · exact (show ∀ v : Vec 2,
      eval (matrixOf 1 2 (sourceD4 true).projection) v = (fun _ => v 1) from by decide) v

theorem source_boundary_killed (b : Bool) (d : Matrix 1 2)
    (squareZero : IsComplex d
      (Row3151BranchCertificates.Semantics.outgoing b false)) :
    eval d (fun i => i.val == 0) = zero := by
  have h := squareZero (fun i => i.val == 1)
  have known : eval (Row3151BranchCertificates.Semantics.outgoing b false)
      (fun i => i.val == 1) = (fun i => i.val == 0) := by cases b <;> decide
  rw [known] at h
  exact h

/-- The known d4 boundary and the separately supplied d4 prefix cover the
entire source; the d5 target value is not needed to fill this matrix. -/
theorem source_d4_zero (b : Bool) (d : Matrix 1 2)
    (squareZero : IsComplex d
      (Row3151BranchCertificates.Semantics.outgoing b false))
    (prefixCycle : InKernel d RemainingThreeAudit.event3152Source) : d = fun _ _ => false := by
  have first := source_boundary_killed b d squareZero
  change eval d RemainingThreeAudit.event3152Source = zero at prefixCycle
  exact (show ∀ d : Matrix 1 2,
      eval d (fun i => i.val == 0) = zero →
      eval d RemainingThreeAudit.event3152Source = zero → d = (fun _ _ => false)
    from by decide) d first prefixCycle

#print axioms both_paths
#print axioms both_comparisons
#print axioms source_d4_zero
#print axioms both_pinned
end Row3152BranchCertificates.Semantics
