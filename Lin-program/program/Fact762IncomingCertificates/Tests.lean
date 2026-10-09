import Fact762IncomingCertificates.Incoming

namespace Fact762IncomingCertificates.Tests
open LinearCertificates

/-- Missing page4 cannot be filled by the same zero map on every page. -/
def page4Countermodel : IncomingSystem where
  Source := fun _ => Bool
  Target := fun _ => Bool
  zeroSource := fun _ => false
  zeroTarget := fun _ => false
  differential := fun q x => if q = 4 then x else false
  target := fun _ => true
  preservesZero := by intro q; simp

theorem page4_can_hit : page4Countermodel.HitAt 4 := ⟨true,rfl⟩
theorem page4_not_allowed : ¬ AllowedPage 4 := by unfold AllowedPage; decide
theorem page4_not_vanishing : ¬ VanishesAt (page4Countermodel.differential 4)
    (page4Countermodel.zeroTarget 4) := by
  intro h
  have hh := h true
  contradiction

def page7Countermodel : IncomingSystem where
  Source := fun _ => Bool
  Target := fun _ => Bool
  zeroSource := fun _ => false
  zeroTarget := fun _ => false
  differential := fun q x => if q = 7 then x else false
  target := fun _ => true
  preservesZero := by intro q; simp

theorem page7_can_hit : page7Countermodel.HitAt 7 := ⟨true,rfl⟩
theorem page7_not_allowed : ¬ AllowedPage 7 := by unfold AllowedPage; decide

theorem source_filtration_negative (q : Nat) (h : 14 < q) :
    (14 : Int) - (q : Int) < 0 := by omega

example : ¬ ProvedZeroSourcePage 6 := by unfold ProvedZeroSourcePage; decide
example : ¬ ProvedZeroSourcePage 12 := by unfold ProvedZeroSourcePage; decide

#print axioms page4_can_hit
#print axioms page7_can_hit
end Fact762IncomingCertificates.Tests
