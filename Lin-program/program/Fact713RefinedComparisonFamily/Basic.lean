import IndexedFamilyCertificates.Coherence

namespace Fact713RefinedComparisonFamily
open IndexedFamilyCertificates

/-- Check only pairs joining two already coherent supplied families.
The implications in PairCompatible test keys before comparing matrix data. -/
def checkCross (base extra : Family) : Bool :=
  extra.all (fun b => base.all (fun a =>
    decide (a.key ≠ b.key) && decide (PairCompatible a b) &&
      decide (PairCompatible b a)))

theorem checkCross_sound (base extra : Family) (h : checkCross base extra = true) :
    ∀ a ∈ base, ∀ b ∈ extra,
      a.key ≠ b.key ∧ PairCompatible a b ∧ PairCompatible b a := by
  simp only [checkCross, List.all_eq_true, Bool.and_eq_true, decide_eq_true_eq] at h
  intro a ha b hb
  exact ⟨(h b hb a ha).1.1, (h b hb a ha).1.2, (h b hb a ha).2⟩

theorem unique_append (base extra : Family) (hb : UniqueKeys base)
    (he : UniqueKeys extra)
    (disjoint : ∀ a ∈ base, ∀ b ∈ extra, a.key ≠ b.key) :
    UniqueKeys (base ++ extra) := by
  change ((base ++ extra).map Entry.key).Nodup
  rw [List.map_append, List.nodup_append]
  refine ⟨hb, he, ?_⟩
  intro ka ha kb hk
  obtain ⟨a, hma, rfl⟩ := List.mem_map.mp ha
  obtain ⟨b, hmb, rfl⟩ := List.mem_map.mp hk
  exact disjoint a hma b hmb

theorem coherent_append (base extra : Family) (hb : Coherent base)
    (he : Coherent extra) (checked : checkCross base extra = true) :
    Coherent (base ++ extra) := by
  have cross := checkCross_sound base extra checked
  refine ⟨unique_append base extra hb.unique he.unique
    (fun a ha b hb => (cross a ha b hb).1), ?_, ?_⟩
  · intro e member
    rcases List.mem_append.mp member with member | member
    · exact hb.entries e member
    · exact he.entries e member
  · intro a ha b hb'
    rcases List.mem_append.mp ha with ha | ha <;>
      rcases List.mem_append.mp hb' with hb' | hb'
    · exact hb.pairs a ha b hb'
    · exact (cross a ha b hb').2.1
    · exact (cross b hb' a ha).2.2
    · exact he.pairs a ha b hb'

#print axioms checkCross_sound
#print axioms unique_append
#print axioms coherent_append
end Fact713RefinedComparisonFamily
