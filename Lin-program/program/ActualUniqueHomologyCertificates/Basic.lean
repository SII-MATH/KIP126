import UniqueHomologyCertificates.Import
import Stem125HomologyCertificates.Meaning

namespace ActualUniqueHomologyCertificates
open LinearCertificates PageTransitionCertificates SemanticTrajectoryCertificates
open Stem125HomologyCertificates

/-- Uniqueness in the full actual cycle quotient, with the named input fixed. -/
def IsUnique (w : WireComparison) (p : PageData w)
    (plus : p.Current → p.Current → p.Current) (x : p.Current) : Prop :=
  (∀ y, p.outgoing (p.incoming y) = p.zeroOutgoing) ∧
  p.outgoing x = p.zeroOutgoing ∧ (¬ ∃ y, p.incoming y = x) ∧
  ∀ y, p.outgoing y = p.zeroOutgoing →
    (∃ z, p.incoming z = y) ∨ (∃ z, p.incoming z = plus y x)

theorem image_iff (w : WireComparison) (p : PageData w)
    (meaning : p.CompleteMeaning) (x : p.Current) :
    (∃ y, p.incoming y = x) ↔
      InImage (matrixOf w.m w.n w.incoming) (p.currentCoordinates x) := by
  constructor
  · rintro ⟨y, hy⟩
    exact ⟨p.incomingCoordinates y, (meaning.incoming_all y).symm.trans (congrArg _ hy)⟩
  · rintro ⟨v, hv⟩
    obtain ⟨y, hy⟩ := meaning.incoming_surjective v
    refine ⟨y, meaning.current_injective ?_⟩
    rw [meaning.incoming_all, hy, hv]

theorem transport (w : WireComparison) (p : PageData w)
    (plus : p.Current → p.Current → p.Current) (meaning : WholeMeaning p plus)
    (x : p.Current)
    (finite : UniqueHomologyCertificates.IsUniqueNonzeroClass
      (matrixOf w.k w.m w.outgoing) (matrixOf w.m w.n w.incoming)
      (p.currentCoordinates x)) : IsUnique w p plus x := by
  refine ⟨?_, (actual_cycle_iff p meaning.toMeaning x).mpr finite.2.1, ?_, ?_⟩
  · intro y
    apply meaning.outgoing_injective
    rw [meaning.outgoing_all, meaning.incoming_all, meaning.outgoing_zero]
    exact finite.1 _
  · intro boundary
    exact finite.2.2.1 ((image_iff w p meaning.toCompleteMeaning x).mp boundary)
  · intro y cycle
    rcases finite.2.2.2 (p.currentCoordinates y)
      ((actual_cycle_iff p meaning.toMeaning y).mp cycle) with hz | hz
    · exact Or.inl ((image_iff w p meaning.toCompleteMeaning y).mpr hz)
    · apply Or.inr
      apply (image_iff w p meaning.toCompleteMeaning (plus y x)).mpr
      rw [meaning.current_add]
      exact hz

structure Certificate (w : WireComparison) (p : PageData w)
    (plus : p.Current → p.Current → p.Current) (x : p.Current) where
  representative : List Bool
  meaning : WholeMeaning p plus
  named : p.currentCoordinates x = (Stage.mk w representative).vector

theorem check_sound (w : WireComparison) (p : PageData w)
    (plus : p.Current → p.Current → p.Current) (x : p.Current)
    (c : Certificate w p plus x)
    (checked : UniqueHomologyCertificates.check w c.representative = true) :
    IsUnique w p plus x := by
  apply transport w p plus c.meaning x
  rw [c.named]
  exact UniqueHomologyCertificates.sound w c.representative checked

instance (w : WireComparison) (p : PageData w)
    (plus : p.Current → p.Current → p.Current) (x : p.Current) :
    LinProgramCertificates.CertificateVerifier (IsUnique w p plus x) where
  Cert := Certificate w p plus x
  check := fun c => UniqueHomologyCertificates.check w c.representative
  sound := check_sound w p plus x

syntax "actual_unique_homology_cert" " using " term : tactic
macro_rules
  | `(tactic| actual_unique_homology_cert using $c:term) => `(tactic|
      exact LinProgramCertificates.CertificateVerifier.sound $c
        (by first | rfl | decide))

#print axioms image_iff
#print axioms transport
#print axioms check_sound
end ActualUniqueHomologyCertificates
