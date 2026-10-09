import Row2708KernelConditional.Conflict
import Fact762Source7Certificates.Finite

namespace Fact762Source4Certificates
open LinearCertificates ResolutionCertificates PageTransitionCertificates
open Fact762IncomingCertificates

def sourceD2 := AggregateD5Conditional.Data.b_S0_10_136_d2
def zeroClass (outgoing : Matrix k 1) (incoming : Matrix 1 2) :
    Homology outgoing incoming := Quot.mk _ ⟨zero,eval_zero _⟩

/-- Every class in the full next-page quotient vanishes if the entire middle
space is an incoming image. The complex law is retained as semantic input. -/
theorem quotient_zero_of_full_incoming (outgoing : Matrix k 1) (incoming : Matrix 1 2)
    (_complex : IsComplex outgoing incoming) (covers : ∀ x, InImage incoming x)
    (x : Homology outgoing incoming) : x = zeroClass outgoing incoming := by
  induction x using Quot.inductionOn with
  | h x =>
    apply Quot.sound
    change InImage incoming (add x.val zero)
    rw [add_zero]
    exact covers x.val

/-- The row2708 complete-kernel premise forces its d3 onto the full source
of the putative d4. No old next-page representative is retained. -/
theorem sourceE4_zero_under_complete_kernel (outgoing : Matrix k 1) (d3 : Matrix 1 2)
    (complex : IsComplex outgoing d3)
    (survivorCycle : InKernel d3 (fun i => i.val == 0))
    (complete : AffineRemainingSearch.Kernel.KernelSpanned d3
      AffineRemainingSearch.Kernel.incoming AffineRemainingSearch.Kernel.survivor)
    (x : Homology outgoing d3) : x = zeroClass outgoing d3 :=
  quotient_zero_of_full_incoming outgoing d3 complex
    (Row2708KernelConditional.target_incoming_surjective d3 survivorCycle complete) x

theorem d3_outgoing_zero_under_complete_kernel (outgoing : Matrix k 1) (d3 : Matrix 1 2)
    (complex : IsComplex outgoing d3)
    (survivorCycle : InKernel d3 (fun i => i.val == 0))
    (complete : AffineRemainingSearch.Kernel.KernelSpanned d3
      AffineRemainingSearch.Kernel.incoming AffineRemainingSearch.Kernel.survivor) :
    outgoing = Fact762Source7Certificates.zeroMatrix k 1 := by
  apply Fact762Source7Certificates.matrix_zero_from_named
  obtain ⟨x,hx⟩ := Row2708KernelConditional.target_incoming_surjective d3 survivorCycle complete (fun _ => true)
  rw [← hx]
  exact complex x

/-- Faithful full source coordinates carry the zero quotient to the actual
page4 source. This is an alternative conditional route to the page4 map-zero
obligation; the row2708 complete-kernel premise is not derived from NULL. -/
theorem page4_incoming_vanishes (sys : IncomingSystem)
    (outgoing : Matrix k 1) (d3 : Matrix 1 2) (complex : IsComplex outgoing d3)
    (survivorCycle : InKernel d3 (fun i => i.val == 0))
    (complete : AffineRemainingSearch.Kernel.KernelSpanned d3
      AffineRemainingSearch.Kernel.incoming AffineRemainingSearch.Kernel.survivor)
    (coordinates : sys.Source 4 → Homology outgoing d3)
    (faithful : Function.Injective coordinates)
    (zeroMeaning : coordinates (sys.zeroSource 4) = zeroClass outgoing d3) :
    VanishesAt (sys.differential 4) (sys.zeroTarget 4) := by
  have hz : ∀ x : sys.Source 4, x = sys.zeroSource 4 :=
    zero_from_coordinates coordinates faithful _ _ zeroMeaning
      (sourceE4_zero_under_complete_kernel outgoing d3 complex survivorCycle complete)
  intro x
  rw [hz x]
  exact sys.preservesZero 4

#print axioms sourceE4_zero_under_complete_kernel
#print axioms d3_outgoing_zero_under_complete_kernel
#print axioms page4_incoming_vanishes
end Fact762Source4Certificates
