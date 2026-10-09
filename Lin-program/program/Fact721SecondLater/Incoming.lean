import Fact721SecondLater.Targets

namespace Fact721SecondLater
open ManualInputObligations.Reference Row3151ActualTransport
open Fact721ConstructedActual.Second

variable {S : AdamsSpectralSequence} {pages : CertifiedAdamsPages S}

/-- The full list of remaining legal incoming E2 degrees is empty. -/
structure Incoming (S : AdamsSpectralSequence) where
  source8 : Coordinates S 2 ⟨4,127⟩ 0
  source9 : Coordinates S 2 ⟨3,126⟩ 0
  source10 : Coordinates S 2 ⟨2,125⟩ 0
  source11 : Coordinates S 2 ⟨1,124⟩ 0
  source12 : Coordinates S 2 ⟨0,123⟩ 0

theorem Incoming.zero (I : Incoming S) (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages)
    (r : Nat) (lower : 8 ≤ r) (x : ActualAdamsIncomingBridge.Source S r degree) :
    ActualAdamsIncomingBridge.differential S r degree x = 0 := by
  by_cases legal : r ≤ degree.filtration
  · have hx : x legal = 0 := by
      have cases : r = 8 ∨ r = 9 ∨ r = 10 ∨ r = 11 ∨ r = 12 := by
        change r ≤ 12 at legal
        omega
      rcases cases with rfl | rfl | rfl | rfl | rfl
      · exact Fact715IncomingTail.empty_later S pages zeros ⟨4,127⟩ 2
          (Fact761ConstructedActual.Local.empty_zero I.source8) 8 (by decide) _
      · exact Fact715IncomingTail.empty_later S pages zeros ⟨3,126⟩ 2
          (Fact761ConstructedActual.Local.empty_zero I.source9) 9 (by decide) _
      · exact Fact715IncomingTail.empty_later S pages zeros ⟨2,125⟩ 2
          (Fact761ConstructedActual.Local.empty_zero I.source10) 10 (by decide) _
      · exact Fact715IncomingTail.empty_later S pages zeros ⟨1,124⟩ 2
          (Fact761ConstructedActual.Local.empty_zero I.source11) 11 (by decide) _
      · exact Fact715IncomingTail.empty_later S pages zeros ⟨0,123⟩ 2
          (Fact761ConstructedActual.Local.empty_zero I.source12) 12 (by decide) _
    unfold ActualAdamsIncomingBridge.differential
    rw [dif_pos legal,hx,(S.differential r _).map_zero',ActualAdamsIncomingBridge.cast_zero]
  · simp only [ActualAdamsIncomingBridge.differential,dif_neg legal]

theorem Incoming.no_boundary (I : Incoming S) (zeros : ActualAdamsSystemBridge.ZeroMeaning S pages)
    (r : Nat) (lower : 8 ≤ r) (x : (S.element r degree).carrier) (nonzero : x ≠ 0) :
    ¬ PageBoundary S r degree x := by
  intro boundary
  obtain ⟨y,hy⟩ := (ActualAdamsIncomingBridge.differential_image S r degree x).mpr boundary
  exact nonzero (hy.symm.trans (I.zero zeros r lower y))

#print axioms Incoming.zero
#print axioms Incoming.no_boundary
end Fact721SecondLater
