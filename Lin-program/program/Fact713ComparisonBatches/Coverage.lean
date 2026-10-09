import Fact713ComparisonBatches.Coherence

namespace Fact713ComparisonBatches
open IndexedFamilyCertificates IndexedFamilyNeighborCheck
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- The claim's named class at (9,132) requires all ten steps, d2 through d11. -/
def namedRoots : List Key := (List.range 10).map (fun i => ⟨"S0",i+2,9,132⟩)

theorem named_prefix_covered : CoversKeys family [⟨"S0",2,9,132⟩,⟨"S0",3,9,132⟩] :=
  checkCoverage_sound _ _ (by decide)

theorem named_d4_missing : lookup family ⟨"S0",4,9,132⟩ = none := by decide

/-- Coherence of every available block cannot supply an absent requested page. -/
theorem named_roots_not_covered : ¬ CoversKeys family namedRoots := by
  intro covered
  obtain ⟨entry,member,key⟩ := covered ⟨"S0",4,9,132⟩ (by decide)
  have found := lookup_member family family_unique entry member
  rw [key,named_d4_missing] at found
  cases found

theorem coherent_but_incomplete : Coherent family ∧ ¬ CoversKeys family namedRoots :=
  ⟨family_coherent,named_roots_not_covered⟩

#print axioms named_prefix_covered
#print axioms named_roots_not_covered
#print axioms coherent_but_incomplete
end Fact713ComparisonBatches
