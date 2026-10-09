import Fact721FirstD6DC2h6.MapCoordinates

namespace Fact721FirstD6DC2h6.Reflection
open ManualInputObligations.Reference

variable {S T : AdamsSpectralSequence} {sp : CertifiedAdamsPages S} {tp : CertifiedAdamsPages T}

theorem boundary_zero (r : Nat) (d : Bidegree)
    (incoming : ∀ y, ActualAdamsIncomingBridge.differential T r d y = 0)
    (x : (T.element r d).carrier) (boundary : PageBoundary T r d x) : x = 0 := by
  obtain ⟨y,hy⟩ := (ActualAdamsIncomingBridge.differential_image T r d x).mpr boundary
  exact hy.symm.trans (incoming y)

/-- Reflection descends through the actual quotient whenever the detector
has no incoming image. Its outgoing differential remains unrestricted. -/
theorem next_reflects (F : PageMap.Map S T sp tp) (r : Nat) (d : Bidegree)
    (sz : ActualAdamsSystemBridge.ZeroMeaning S sp)
    (tz : ActualAdamsSystemBridge.ZeroMeaning T tp)
    (reflect : ∀ x, F.map r d x = 0 → x = 0)
    (incoming : ∀ y, ActualAdamsIncomingBridge.differential T r d y = 0)
    (x : (S.element (r+1) d).carrier) (hx : F.map (r+1) d x = 0) : x = 0 := by
  obtain ⟨q,rfl⟩ := Row2773D4Leibniz.Descent.next_surjective S sp r d x
  have hq := (ActualAdamsSystemBridge.quotient_zero_iff T tp tz r d (F.cycle r d q)).mp
    (((F.quotient_cycle r d q).symm.trans hx).trans (T.zero_is_zero _ _).symm)
  have zero : q.val = 0 := reflect q.val (boundary_zero r d incoming _ hq)
  have same : q = ActualAdamsSystemBridge.zeroCycle S r d := Subtype.ext zero
  rw [same,sz,S.zero_is_zero]

/-- Coordinate-zero incoming maps cover every legal source degree. -/
theorem indexed_zero (r : Nat) (d : Bidegree) (legal : r ≤ d.filtration)
    (allZero : ∀ x, T.differential r (ActualAdamsIncomingBridge.sourceDegree r d) x = 0)
    (x : ActualAdamsIncomingBridge.Source T r d) :
    ActualAdamsIncomingBridge.differential T r d x = 0 := by
  simp only [ActualAdamsIncomingBridge.differential,dif_pos legal,allZero,ActualAdamsIncomingBridge.cast_zero]

#print axioms boundary_zero
#print axioms next_reflects
#print axioms indexed_zero
end Fact721FirstD6DC2h6.Reflection
