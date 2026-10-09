import AggregateD5Conditional.Data
import Fact762PageCertificates.Survivor
import AllClaimZeroTargetCertificates.Basic
import Row2574Detector.Quotient
namespace Fact762IncomingCertificates.Data
open LinearCertificates PageTransitionCertificates
def source5 : WireComparison := AggregateD5Conditional.Data.b_S0_9_135_d4
theorem source5_checked : source5.Valid := AggregateD5Conditional.Data.b_S0_9_135_d4_complete
theorem source5_zero (x : Homology (matrixOf 2 2 source5.outgoing) (matrixOf 2 0 source5.incoming)) : x = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := AllClaimZeroTargetCertificates.zero_quotient source5.comparison source5_checked.2 x
def source9 : WireComparison := AggregateD5Conditional.Data.b_S0_5_131_d2
theorem source9_checked : source9.Valid := AggregateD5Conditional.Data.b_S0_5_131_d2_complete
theorem source9_zero (x : Homology (matrixOf 1 1 source9.outgoing) (matrixOf 1 2 source9.incoming)) : x = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := AllClaimZeroTargetCertificates.zero_quotient source9.comparison source9_checked.2 x
def source10 : WireComparison := AggregateD5Conditional.Data.b_S0_4_130_d3
theorem source10_checked : source10.Valid := AggregateD5Conditional.Data.b_S0_4_130_d3_complete
theorem source10_zero (x : Homology (matrixOf 1 1 source10.outgoing) (matrixOf 1 0 source10.incoming)) : x = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := AllClaimZeroTargetCertificates.zero_quotient source10.comparison source10_checked.2 x
def source11 : WireComparison := AggregateD5Conditional.Data.b_S0_3_129_d2
theorem source11_checked : source11.Valid := AggregateD5Conditional.Data.b_S0_3_129_d2_complete
theorem source11_zero (x : Homology (matrixOf 1 1 source11.outgoing) (matrixOf 1 1 source11.incoming)) : x = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := AllClaimZeroTargetCertificates.zero_quotient source11.comparison source11_checked.2 x
theorem page2_nonimage : ¬ InImage Fact762PageCertificates.incoming Fact762PageCertificates.target := Fact762PageCertificates.target_not_boundary
def page3out : Matrix 1 2 := matrixOf 1 2 AggregateD5Conditional.Data.b_S0_11_137_d3.outgoing
theorem page3_all_zero : ∀ v : Vec 2, eval page3out v = zero := by decide
theorem page3_nonimage : ¬ InImage page3out (fun _ => true) := by rintro ⟨v,hv⟩; rw [page3_all_zero] at hv; have h := congrFun hv 0; contradiction
theorem page3_target_projection : eval AggregateD5Conditional.Data.b_S0_14_139_d2.comparison.projection (fun i => i.val == 1) = (fun _ => true) := by decide
def source8 (value : Vec 3) : Matrix 3 1 := fun i _ => value i
theorem source8_kernel_zero (value : Vec 3) (nonzero : value ≠ zero) (x : Vec 1) (cycle : InKernel (source8 value) x) : x = zero := by
  change eval (source8 value) x = zero at cycle
  exact (show ∀ (v : Vec 3) (x : Vec 1), v ≠ zero → eval (source8 v) x = zero → x = zero from by decide) value x nonzero cycle
theorem source8_quotient_zero (value : Vec 3) (nonzero : value ≠ zero)
    (incoming : Matrix 1 n) (x : Homology (source8 value) incoming) :
    x = Quot.mk _ (⟨zero,eval_zero _⟩ : Cycle _) := by
  induction x using Quot.inductionOn with
  | h x =>
    apply congrArg (Quot.mk _)
    apply Subtype.ext
    exact source8_kernel_zero value nonzero x.val x.property
theorem source13_E2_zero (v : Vec 0) : v = zero := by funext i; exact Fin.elim0 i
theorem source14_E2_zero (v : Vec 0) : v = zero := source13_E2_zero v
#print axioms page2_nonimage
#print axioms page3_nonimage
#print axioms source8_quotient_zero
end Fact762IncomingCertificates.Data
