import Fact713RefinedComparisonFamily.Coherence

namespace Fact713RefinedComparisonFamily
open IndexedFamilyCertificates IndexedFamilyNeighborCheck
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

/-- These are the two additions inside the original finite E12 dependency graph. -/
def extraE12Keys : List Key := [⟨"S0", 5, 19, 140⟩, ⟨"S0", 4, 24, 144⟩]

/-- Three additional comparisons close the successor argument outside that graph. -/
def successorKeys : List Key :=
  [⟨"S0", 4, 28, 147⟩, ⟨"S0", 3, 32, 150⟩, ⟨"S0", 2, 35, 152⟩]

theorem extra_keys_partition : extra.map Entry.key = extraE12Keys ++ successorKeys := rfl

theorem added_keys_covered : CoversKeys family (extraE12Keys ++ successorKeys) := by
  intro key member
  rw [← extra_keys_partition] at member
  obtain ⟨entry, hentry, hkey⟩ := List.mem_map.mp member
  exact ⟨entry, extra_preserved entry hentry, hkey⟩

def namedRoots : List Key := (List.range 10).map (fun i => ⟨"S0", i + 2, 9, 132⟩)

theorem named_prefix_covered : CoversKeys family [⟨"S0", 2, 9, 132⟩, ⟨"S0", 3, 9, 132⟩] :=
  checkCoverage_sound _ _ (by decide)

theorem named_d4_missing : lookup family ⟨"S0", 4, 9, 132⟩ = none := by decide

theorem named_roots_not_covered : ¬ CoversKeys family namedRoots := by
  intro covered
  obtain ⟨entry, member, key⟩ := covered ⟨"S0", 4, 9, 132⟩ (by decide)
  have found := lookup_member family family_unique entry member
  rw [key, named_d4_missing] at found
  cases found

theorem coherent_but_incomplete : Coherent family ∧ ¬ CoversKeys family namedRoots :=
  ⟨family_coherent, named_roots_not_covered⟩

#print axioms added_keys_covered
#print axioms named_prefix_covered
#print axioms named_roots_not_covered
#print axioms coherent_but_incomplete
end Fact713RefinedComparisonFamily
