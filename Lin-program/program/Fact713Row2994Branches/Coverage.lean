import Fact713Row2994Branches.Coherence

namespace Fact713Row2994Branches
open IndexedFamilyCertificates IndexedFamilyNeighborCheck
set_option maxRecDepth 100000
set_option maxHeartbeats 8000000

def addedKeys : List Key := extra.map Entry.key

theorem added_keys_covered : CoversKeys family addedKeys := by
  intro key member
  obtain ⟨entry, hentry, hkey⟩ := List.mem_map.mp member
  exact ⟨entry, extra_preserved entry hentry, hkey⟩

def namedPrefix : List Key := (List.range 6).map (fun i => ⟨"S0", i + 2, 9, 132⟩)
def namedRoots : List Key := (List.range 10).map (fun i => ⟨"S0", i + 2, 9, 132⟩)

theorem named_prefix_covered : CoversKeys family namedPrefix :=
  checkCoverage_sound _ _ (by decide)

theorem named_d8_missing : lookup family ⟨"S0", 8, 9, 132⟩ = none := by decide

theorem named_roots_not_covered : ¬ CoversKeys family namedRoots := by
  intro covered
  obtain ⟨entry, member, key⟩ := covered ⟨"S0", 8, 9, 132⟩ (by decide)
  have found := lookup_member family family_unique entry member
  rw [key, named_d8_missing] at found
  cases found

theorem coherent_with_named_prefix : Coherent family ∧ CoversKeys family namedPrefix :=
  ⟨family_coherent, named_prefix_covered⟩

theorem coherent_but_incomplete : Coherent family ∧ ¬ CoversKeys family namedRoots :=
  ⟨family_coherent, named_roots_not_covered⟩

#print axioms added_keys_covered
#print axioms named_prefix_covered
#print axioms named_roots_not_covered
#print axioms coherent_with_named_prefix
#print axioms coherent_but_incomplete
end Fact713Row2994Branches
