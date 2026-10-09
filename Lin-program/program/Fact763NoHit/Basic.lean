import Fact763Continuation.Tactic
import Fact715IncomingTail.Basic
import ActualFiniteNoHit.Basic

namespace Fact763NoHit
open ManualInputObligations ManualInputObligations.Reference Row3151ActualTransport
open ActualAdamsSystemBridge ActualAdamsFiltration
open Fact763Continuation.Actual

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}

structure EmptySources (S : AdamsSpectralSequence) where
  source6 : Coordinates S 2 ⟨4,129⟩ 0
  source7 : Coordinates S 2 ⟨3,128⟩ 0
  source8 : Coordinates S 2 ⟨2,127⟩ 0
  source9 : Coordinates S 2 ⟨1,126⟩ 0
  source10 : Coordinates S 2 ⟨0,125⟩ 0

theorem EmptySources.zero (E : EmptySources S) (zeros : ZeroMeaning S pages)
    (r : Nat) (lower : 6 ≤ r) (x : ActualAdamsIncomingBridge.Source S r degree) :
    ActualAdamsIncomingBridge.differential S r degree x = 0 := by
  by_cases legal : r ≤ degree.filtration
  · have hx : x legal = 0 := by
      have choices : r = 6 ∨ r = 7 ∨ r = 8 ∨ r = 9 ∨ r = 10 := by
        change r ≤ 10 at legal
        omega
      rcases choices with rfl | rfl | rfl | rfl | rfl
      · exact Fact715IncomingTail.empty_later S pages zeros ⟨4,129⟩ 2
          (Fact715IncomingTail.coordinate_empty E.source6) 6 (by decide) _
      · exact Fact715IncomingTail.empty_later S pages zeros ⟨3,128⟩ 2
          (Fact715IncomingTail.coordinate_empty E.source7) 7 (by decide) _
      · exact Fact715IncomingTail.empty_later S pages zeros ⟨2,127⟩ 2
          (Fact715IncomingTail.coordinate_empty E.source8) 8 (by decide) _
      · exact Fact715IncomingTail.empty_later S pages zeros ⟨1,126⟩ 2
          (Fact715IncomingTail.coordinate_empty E.source9) 9 (by decide) _
      · exact Fact715IncomingTail.empty_later S pages zeros ⟨0,125⟩ 2
          (Fact715IncomingTail.coordinate_empty E.source10) 10 (by decide) _
    unfold ActualAdamsIncomingBridge.differential
    rw [dif_pos legal,hx,(S.differential r _).map_zero',ActualAdamsIncomingBridge.cast_zero]
  · simp only [ActualAdamsIncomingBridge.differential,dif_neg legal]

theorem full_incoming_zero (E : EmptySources S) (zeros : ZeroMeaning S pages)
    (n : Nat) (lower : 4 ≤ n) (y : ActualAdamsSystemBridge.Incoming S (n+2) degree) :
    incoming S (n+2) degree y = S.zero (n+2) degree := by
  have boundary := (incoming_image S (n+2) degree (incoming S (n+2) degree y)).mp ⟨y,rfl⟩
  obtain ⟨x,hx⟩ := (ActualAdamsIncomingBridge.differential_image S (n+2) degree _).mpr boundary
  exact hx.symm.trans ((E.zero zeros (n+2) (by omega) x).trans (S.zero_is_zero _ _).symm)

def NotHit (zeros : ZeroMeaning S pages) (input : (S.element 2 degree).carrier) : Prop :=
  ¬ (filtration (system S pages zeros degree) (differentialLaws S pages zeros degree)).BInfinity input

variable {product : CertifiedAdamsProduct S}

theorem named_not_hit (D : Fact763Continuation.Actual.Input S pages product)
    (E : EmptySources S) (zeros : ZeroMeaning S pages)
    (input : (S.element 2 degree).carrier)
    (binding : D.calculation.stage2.product.equivalence input = Fact763PageCertificates.target) :
    NotHit zeros input := by
  obtain ⟨⟨trace⟩,nonzero⟩ := Fact763Continuation.Actual.same_input_E6 D input binding
  apply ActualFiniteNoHit.no_boundary_ever (actualRealization S pages zeros degree)
    (differentialLaws S pages zeros degree) 4 (full_incoming_zero E zeros)
    input (cycles_from_trace S pages zeros degree trace 4 rfl)
  change (system S pages zeros degree).at input 4 ≠ S.zero 6 degree
  rw [← trace_at S pages zeros degree trace,S.zero_is_zero]
  exact nonzero

#print axioms EmptySources.zero
#print axioms full_incoming_zero
#print axioms named_not_hit
end Fact763NoHit
