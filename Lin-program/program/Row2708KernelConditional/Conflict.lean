import AggregateD5Conditional.Data
import AffineRemainingSearch.Links

namespace Row2708KernelConditional
open LinearCertificates PageTransitionCertificates
open AggregateD5Conditional.Data

theorem source_d2_exact :
    b_S0_7_134_d2 = AffineRemainingSearch.Data.d2source2708 := rfl

theorem target_d2_exact :
    b_S0_10_136_d2 = AffineRemainingSearch.Data.d2target2708 := rfl

theorem named_target_coordinates :
    eval b_S0_10_136_d2.comparison.projection (fun i => i.val == 2) =
      (fun _ => true) := by decide

/-- This is a consequence of a supplied complete-kernel premise, not NULL9997. -/
theorem actual_d3_unique (d : Matrix 1 2)
    (survivorCycle : InKernel d (fun i => i.val == 0))
    (complete : AffineRemainingSearch.Kernel.KernelSpanned d
      AffineRemainingSearch.Kernel.incoming AffineRemainingSearch.Kernel.survivor) :
    d = matrixOf 1 2 AffineRemainingSearch.Data.choice1.outgoing :=
  AffineRemainingSearch.Kernel.row2708_unique_matrix d survivorCycle complete

theorem target_incoming_surjective (d : Matrix 1 2)
    (survivorCycle : InKernel d (fun i => i.val == 0))
    (complete : AffineRemainingSearch.Kernel.KernelSpanned d
      AffineRemainingSearch.Kernel.incoming AffineRemainingSearch.Kernel.survivor)
    (x : Vec 1) : InImage d x := by
  rw [actual_d3_unique d survivorCycle complete]
  refine ⟨fun j => j.val == 1 && x 0, ?_⟩
  funext i
  exact (show ∀ (x : Vec 1) (i : Fin 1),
    eval (matrixOf 1 2 AffineRemainingSearch.Data.choice1.outgoing)
      (fun j => j.val == 1 && x 0) i = x i from by decide) x i

/-- The proposed sole next-page target representative is already a boundary. -/
theorem target_survivor_is_boundary (d : Matrix 1 2)
    (survivorCycle : InKernel d (fun i => i.val == 0))
    (complete : AffineRemainingSearch.Kernel.KernelSpanned d
      AffineRemainingSearch.Kernel.incoming AffineRemainingSearch.Kernel.survivor) :
    InImage d (eval b_S0_10_136_d2.comparison.projection (fun i => i.val == 2)) :=
  target_incoming_surjective d survivorCycle complete _

theorem incompatible_with_nonboundary (d : Matrix 1 2)
    (survivorCycle : InKernel d (fun i => i.val == 0))
    (complete : AffineRemainingSearch.Kernel.KernelSpanned d
      AffineRemainingSearch.Kernel.incoming AffineRemainingSearch.Kernel.survivor)
    (nonboundary : ¬ InImage d
      (eval b_S0_10_136_d2.comparison.projection (fun i => i.val == 2))) : False :=
  nonboundary (target_survivor_is_boundary d survivorCycle complete)

#print axioms actual_d3_unique
#print axioms incompatible_with_nonboundary
end Row2708KernelConditional
