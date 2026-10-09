import Fact713DC2h6ComparisonFamily.GraphPartitions
import Fact713DC2h6ComparisonFamily.GraphDisjoint

namespace Fact713DC2h6ComparisonFamily.GraphCoverage
open IndexedFamilyCertificates
set_option maxRecDepth 100000
set_option maxHeartbeats 16000000

theorem available_covered : CoversKeys family available := by
  intro key member
  have hf : key ∈ familyKeys :=
    (family_partition key).mpr
      (List.mem_append_left outside member)
  rw [familyKeys_eq] at hf
  exact List.mem_map.mp hf

theorem missing_absent : ∀ key ∈ missing, ¬ ∃ entry ∈ family, entry.key = key := by
  intro key member ⟨entry,hentry,hkey⟩
  have keys : key ∈ familyKeys := by
    rw [familyKeys_eq]
    exact List.mem_map.mpr ⟨entry,hentry,hkey⟩
  exact (List.nodup_append.mp missing_family_nodup).2.2 key member key keys rfl

theorem requested_exact_partition (key : Key) :
    key ∈ requested ↔ key ∈ available ∨ key ∈ missing := by
  simpa only [List.mem_append] using
    request_partition key

theorem available_missing_disjoint : ∀ key ∈ available, key ∉ missing := by
  intro key availableMember missingMember
  exact missing_absent key missingMember (available_covered key availableMember)

theorem outside_keys : outside =
    [⟨"S0",4,28,147⟩,⟨"S0",3,32,150⟩,⟨"S0",2,35,152⟩] := by decide

theorem outside_not_requested : ∀ key ∈ outside, key ∉ requested := by
  intro key ho hr
  exact (List.nodup_append.mp outside_requested_nodup).2.2 key ho key hr rfl

theorem outside_covered : CoversKeys family outside := by
  intro key member
  apply List.mem_map.mp
  rw [← familyKeys_eq]
  exact (family_partition key).mpr
    (List.mem_append_right available member)

theorem exact_counts : requested.length = 1420 ∧ available.length = 1269 ∧
    missing.length = 151 ∧ outside.length = 3 := by decide

theorem named_d7_missing : (⟨"S0",7,9,132⟩ : Key) ∈ missing := by decide

/-- Every listed requested key is either actually supplied or actually absent. -/
theorem exact_requested_coverage (key : Key) (member : key ∈ requested) :
    (key ∈ available ↔ ∃ entry ∈ family, entry.key = key) ∧
    (key ∈ missing ↔ ¬ ∃ entry ∈ family, entry.key = key) := by
  have partition := (requested_exact_partition key).mp member
  constructor
  · constructor
    · exact available_covered key
    · intro supplied
      rcases partition with ha | hm
      · exact ha
      · exact False.elim (missing_absent key hm supplied)
  · constructor
    · exact missing_absent key
    · intro absent
      rcases partition with ha | hm
      · exact False.elim (absent (available_covered key ha))
      · exact hm

theorem missing_exact_difference (key : Key) :
    key ∈ missing ↔ key ∈ requested ∧ ¬ ∃ entry ∈ family, entry.key = key := by
  constructor
  · intro hm
    exact ⟨(requested_exact_partition key).mpr (Or.inr hm),missing_absent key hm⟩
  · rintro ⟨hr,ha⟩
    exact ((exact_requested_coverage key hr).2).mpr ha

theorem outside_exact_difference (key : Key) :
    key ∈ outside ↔ (∃ entry ∈ family, entry.key = key) ∧ key ∉ requested := by
  constructor
  · intro ho
    exact ⟨outside_covered key ho,outside_not_requested key ho⟩
  · rintro ⟨hf,hr⟩
    have hm : key ∈ familyKeys := by
      rw [familyKeys_eq]
      exact List.mem_map.mpr hf
    rcases List.mem_append.mp ((family_partition key).mp hm) with ha | ho
    · exact False.elim (hr ((requested_exact_partition key).mpr (Or.inl ha)))
    · exact ho

#print axioms available_covered
#print axioms missing_absent
#print axioms requested_exact_partition
#print axioms available_missing_disjoint
#print axioms outside_covered
#print axioms outside_not_requested
#print axioms exact_counts
#print axioms named_d7_missing
#print axioms exact_requested_coverage
#print axioms missing_exact_difference
#print axioms outside_exact_difference
end Fact713DC2h6ComparisonFamily.GraphCoverage
