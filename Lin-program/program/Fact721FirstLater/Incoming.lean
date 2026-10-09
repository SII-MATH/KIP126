import Fact721FirstD4Search.Constructed
import Fact715IncomingTail.Basic

namespace Fact721FirstLater
open ManualInputObligations.Reference Row3151ActualTransport
open Fact721ConstructedActual.First

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}

structure Incoming (S : AdamsSpectralSequence) where
  source5 : Coordinates S 2 ⟨6,129⟩ 0
  source6 : Coordinates S 2 ⟨5,128⟩ 0
  source7 : Coordinates S 2 ⟨4,127⟩ 0
  source8 : Coordinates S 2 ⟨3,126⟩ 0
  source9 : Coordinates S 2 ⟨2,125⟩ 0
  source10 : Coordinates S 2 ⟨1,124⟩ 0
  source11 : Coordinates S 2 ⟨0,123⟩ 0

theorem Incoming.zero (I : Incoming S) (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages)
    (r : Nat) (lower : 5 ≤ r) (x : ActualAdamsIncomingBridge.Source S r degree) :
    ActualAdamsIncomingBridge.differential S r degree x = 0 := by
  by_cases legal : r ≤ degree.filtration
  · have hx : x legal = 0 := by
      have cases : r = 5 ∨ r = 6 ∨ r = 7 ∨ r = 8 ∨ r = 9 ∨ r = 10 ∨ r = 11 := by
        change r ≤ 11 at legal
        omega
      rcases cases with rfl | rfl | rfl | rfl | rfl | rfl | rfl
      · exact Fact715IncomingTail.empty_later S pages zeros ⟨6,129⟩ 2
          (Fact715IncomingTail.coordinate_empty I.source5) 5 (by decide) _
      · exact Fact715IncomingTail.empty_later S pages zeros ⟨5,128⟩ 2
          (Fact715IncomingTail.coordinate_empty I.source6) 6 (by decide) _
      · exact Fact715IncomingTail.empty_later S pages zeros ⟨4,127⟩ 2
          (Fact715IncomingTail.coordinate_empty I.source7) 7 (by decide) _
      · exact Fact715IncomingTail.empty_later S pages zeros ⟨3,126⟩ 2
          (Fact715IncomingTail.coordinate_empty I.source8) 8 (by decide) _
      · exact Fact715IncomingTail.empty_later S pages zeros ⟨2,125⟩ 2
          (Fact715IncomingTail.coordinate_empty I.source9) 9 (by decide) _
      · exact Fact715IncomingTail.empty_later S pages zeros ⟨1,124⟩ 2
          (Fact715IncomingTail.coordinate_empty I.source10) 10 (by decide) _
      · exact Fact715IncomingTail.empty_later S pages zeros ⟨0,123⟩ 2
          (Fact715IncomingTail.coordinate_empty I.source11) 11 (by decide) _
    unfold ActualAdamsIncomingBridge.differential
    rw [dif_pos legal,hx,(S.differential r _).map_zero',ActualAdamsIncomingBridge.cast_zero]
  · simp only [ActualAdamsIncomingBridge.differential,dif_neg legal]

theorem Incoming.no_boundary (I : Incoming S) (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages)
    (r : Nat) (lower : 5 ≤ r) (x : (S.element r degree).carrier) (nonzero : x ≠ 0) :
    ¬ PageBoundary S r degree x := by
  intro boundary
  obtain ⟨y,hy⟩ := (ActualAdamsIncomingBridge.differential_image S r degree x).mpr boundary
  exact nonzero (hy.symm.trans (I.zero zeros r lower y))

#print axioms Incoming.zero
#print axioms Incoming.no_boundary
end Fact721FirstLater
