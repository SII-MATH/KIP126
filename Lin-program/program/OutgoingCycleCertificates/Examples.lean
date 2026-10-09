import OutgoingCycleCertificates.Basic
import ActualPermanenceBoundary.Cases

namespace OutgoingCycleCertificates
open PermanentCycleCertificates ActualPermanenceBoundary

/-- A class killed by an incoming differential still supports no outgoing one. -/
def killed : System where
  Page := fun _ => Bool
  Incoming := fun _ => Bool
  Outgoing := fun _ => Unit
  zero := fun _ => false
  zeroIncoming := fun _ => false
  zeroOutgoing := fun _ => ()
  incoming := fun _ x => x
  outgoing := fun _ _ => ()
  advance := fun _ _ => false
  incoming_zero := fun _ => rfl
  homology_zero := by intro n x _; simp

theorem killed_always_cycle : AlwaysCycle killed true := fun _ => rfl

theorem killed_not_permanent : ¬ killed.Permanent true := by
  intro h
  exact (h 0).2 ⟨true, rfl⟩

namespace Fact762
def certificate (s : System) (x : s.Page 0)
    (c : InitialCoordinates s ActualPermanenceBoundary.Fact762.stage)
    (equations : c.page.Meaning) (named : c.current x = Fact762PageCertificates.target)
    (tail : OutgoingTail s 1) : Certificate s x where
  stages := [ActualPermanenceBoundary.Fact762.stage]
  meaning := c.meaning x equations
    (named.trans ActualPermanenceBoundary.Fact762.stage_vector.symm)
  tail := tail

/-- This matches the outgoing part of Fact7.6(2); no incoming exclusion follows. -/
theorem conditional_cycle (s : System) (x : s.Page 0)
    (c : InitialCoordinates s ActualPermanenceBoundary.Fact762.stage)
    (equations : c.page.Meaning) (named : c.current x = Fact762PageCertificates.target)
    (tail : OutgoingTail s 1) : AlwaysCycle s x := by
  outgoing_cycle_cert using (certificate s x c equations named tail)
end Fact762

#print axioms killed_always_cycle
#print axioms killed_not_permanent
#print axioms Fact762.conditional_cycle
end OutgoingCycleCertificates
