import AggregateIncomingTargetCompletion.FinalData
namespace AggregateIncomingTargetCompletion.Final
open IndexedFamilyCertificates IndexedD5Certificates
set_option maxRecDepth 20000
set_option maxHeartbeats 18000000
def family : Family := AggregateIncomingTargetCompletion.family ++ extra
theorem count : family.length = 399 := by decide
theorem unique : UniqueKeys family := by decide
theorem extends_base : Extends AggregateIncomingTargetCompletion.family family := append_extends _ _
theorem extends_original : Extends IndexedD5Certificates.family family := by
  intro key wire found
  exact extends_base _ _ (AggregateIncomingTargetCompletion.extends_old _ _ found)
theorem forward0 : ∀ a ∈ AggregateIncomingTargetCompletion.family, PairCompatible a extra[0] := by decide
theorem backward0 : ∀ b ∈ AggregateIncomingTargetCompletion.family, PairCompatible extra[0] b := by decide
theorem forward1 : ∀ a ∈ AggregateIncomingTargetCompletion.family, PairCompatible a extra[1] := by decide
theorem backward1 : ∀ b ∈ AggregateIncomingTargetCompletion.family, PairCompatible extra[1] b := by decide
theorem forward2 : ∀ a ∈ AggregateIncomingTargetCompletion.family, PairCompatible a extra[2] := by decide
theorem backward2 : ∀ b ∈ AggregateIncomingTargetCompletion.family, PairCompatible extra[2] b := by decide
theorem forward3 : ∀ a ∈ AggregateIncomingTargetCompletion.family, PairCompatible a extra[3] := by decide
theorem backward3 : ∀ b ∈ AggregateIncomingTargetCompletion.family, PairCompatible extra[3] b := by decide
theorem forward4 : ∀ a ∈ AggregateIncomingTargetCompletion.family, PairCompatible a extra[4] := by decide
theorem backward4 : ∀ b ∈ AggregateIncomingTargetCompletion.family, PairCompatible extra[4] b := by decide
theorem forward5 : ∀ a ∈ AggregateIncomingTargetCompletion.family, PairCompatible a extra[5] := by decide
theorem backward5 : ∀ b ∈ AggregateIncomingTargetCompletion.family, PairCompatible extra[5] b := by decide
theorem forward6 : ∀ a ∈ AggregateIncomingTargetCompletion.family, PairCompatible a extra[6] := by decide
theorem backward6 : ∀ b ∈ AggregateIncomingTargetCompletion.family, PairCompatible extra[6] b := by decide
theorem forward7 : ∀ a ∈ AggregateIncomingTargetCompletion.family, PairCompatible a extra[7] := by decide
theorem backward7 : ∀ b ∈ AggregateIncomingTargetCompletion.family, PairCompatible extra[7] b := by decide
theorem forward8 : ∀ a ∈ AggregateIncomingTargetCompletion.family, PairCompatible a extra[8] := by decide
theorem backward8 : ∀ b ∈ AggregateIncomingTargetCompletion.family, PairCompatible extra[8] b := by decide
theorem forward9 : ∀ a ∈ AggregateIncomingTargetCompletion.family, PairCompatible a extra[9] := by decide
theorem backward9 : ∀ b ∈ AggregateIncomingTargetCompletion.family, PairCompatible extra[9] b := by decide
theorem forward10 : ∀ a ∈ AggregateIncomingTargetCompletion.family, PairCompatible a extra[10] := by decide
theorem backward10 : ∀ b ∈ AggregateIncomingTargetCompletion.family, PairCompatible extra[10] b := by decide
theorem forward11 : ∀ a ∈ AggregateIncomingTargetCompletion.family, PairCompatible a extra[11] := by decide
theorem backward11 : ∀ b ∈ AggregateIncomingTargetCompletion.family, PairCompatible extra[11] b := by decide
theorem forward12 : ∀ a ∈ AggregateIncomingTargetCompletion.family, PairCompatible a extra[12] := by decide
theorem backward12 : ∀ b ∈ AggregateIncomingTargetCompletion.family, PairCompatible extra[12] b := by decide
theorem forward13 : ∀ a ∈ AggregateIncomingTargetCompletion.family, PairCompatible a extra[13] := by decide
theorem backward13 : ∀ b ∈ AggregateIncomingTargetCompletion.family, PairCompatible extra[13] b := by decide
theorem forward14 : ∀ a ∈ AggregateIncomingTargetCompletion.family, PairCompatible a extra[14] := by decide
theorem backward14 : ∀ b ∈ AggregateIncomingTargetCompletion.family, PairCompatible extra[14] b := by decide
theorem coherent : Coherent family := by
  apply coherent_append AggregateIncomingTargetCompletion.coherent extra_coherent unique
  · intro a ha
    unfold extra
    refine List.forall_mem_cons.mpr ⟨forward0 a ha,?_⟩
    refine List.forall_mem_cons.mpr ⟨forward1 a ha,?_⟩
    refine List.forall_mem_cons.mpr ⟨forward2 a ha,?_⟩
    refine List.forall_mem_cons.mpr ⟨forward3 a ha,?_⟩
    refine List.forall_mem_cons.mpr ⟨forward4 a ha,?_⟩
    refine List.forall_mem_cons.mpr ⟨forward5 a ha,?_⟩
    refine List.forall_mem_cons.mpr ⟨forward6 a ha,?_⟩
    refine List.forall_mem_cons.mpr ⟨forward7 a ha,?_⟩
    refine List.forall_mem_cons.mpr ⟨forward8 a ha,?_⟩
    refine List.forall_mem_cons.mpr ⟨forward9 a ha,?_⟩
    refine List.forall_mem_cons.mpr ⟨forward10 a ha,?_⟩
    refine List.forall_mem_cons.mpr ⟨forward11 a ha,?_⟩
    refine List.forall_mem_cons.mpr ⟨forward12 a ha,?_⟩
    refine List.forall_mem_cons.mpr ⟨forward13 a ha,?_⟩
    refine List.forall_mem_cons.mpr ⟨forward14 a ha,?_⟩
    intro x h
    exact False.elim (List.not_mem_nil h)
  · intro a ha
    unfold extra at ha
    simp only [List.mem_cons,List.not_mem_nil,or_false] at ha
    rcases ha with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact backward0
    · exact backward1
    · exact backward2
    · exact backward3
    · exact backward4
    · exact backward5
    · exact backward6
    · exact backward7
    · exact backward8
    · exact backward9
    · exact backward10
    · exact backward11
    · exact backward12
    · exact backward13
    · exact backward14
theorem all_95_events : ∀ e ∈ IndexedD5Certificates.events, e.Valid family := by
  intro e he
  exact bound_extension extends_original unique (IndexedD5Certificates.all_events e he)
#print axioms coherent
#print axioms all_95_events
end AggregateIncomingTargetCompletion.Final
