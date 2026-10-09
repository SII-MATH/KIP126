import AggregateIncomingTargetCompletion.Data
namespace AggregateIncomingTargetCompletion
open IndexedFamilyCertificates IndexedD5Certificates
set_option maxRecDepth 20000
set_option maxHeartbeats 18000000
def family : Family := IndexedD5Certificates.family ++ extra
theorem count : family.length = 384 := by decide
theorem unique : UniqueKeys family := by decide
theorem extends_old : Extends IndexedD5Certificates.family family := append_extends _ _
theorem forward0 : ∀ a ∈ IndexedD5Certificates.family, PairCompatible a extra[0] := by decide
theorem backward0 : ∀ b ∈ IndexedD5Certificates.family, PairCompatible extra[0] b := by decide
theorem forward1 : ∀ a ∈ IndexedD5Certificates.family, PairCompatible a extra[1] := by decide
theorem backward1 : ∀ b ∈ IndexedD5Certificates.family, PairCompatible extra[1] b := by decide
theorem forward2 : ∀ a ∈ IndexedD5Certificates.family, PairCompatible a extra[2] := by decide
theorem backward2 : ∀ b ∈ IndexedD5Certificates.family, PairCompatible extra[2] b := by decide
theorem forward3 : ∀ a ∈ IndexedD5Certificates.family, PairCompatible a extra[3] := by decide
theorem backward3 : ∀ b ∈ IndexedD5Certificates.family, PairCompatible extra[3] b := by decide
theorem forward4 : ∀ a ∈ IndexedD5Certificates.family, PairCompatible a extra[4] := by decide
theorem backward4 : ∀ b ∈ IndexedD5Certificates.family, PairCompatible extra[4] b := by decide
theorem forward5 : ∀ a ∈ IndexedD5Certificates.family, PairCompatible a extra[5] := by decide
theorem backward5 : ∀ b ∈ IndexedD5Certificates.family, PairCompatible extra[5] b := by decide
theorem forward6 : ∀ a ∈ IndexedD5Certificates.family, PairCompatible a extra[6] := by decide
theorem backward6 : ∀ b ∈ IndexedD5Certificates.family, PairCompatible extra[6] b := by decide
theorem forward7 : ∀ a ∈ IndexedD5Certificates.family, PairCompatible a extra[7] := by decide
theorem backward7 : ∀ b ∈ IndexedD5Certificates.family, PairCompatible extra[7] b := by decide
theorem forward8 : ∀ a ∈ IndexedD5Certificates.family, PairCompatible a extra[8] := by decide
theorem backward8 : ∀ b ∈ IndexedD5Certificates.family, PairCompatible extra[8] b := by decide
theorem forward9 : ∀ a ∈ IndexedD5Certificates.family, PairCompatible a extra[9] := by decide
theorem backward9 : ∀ b ∈ IndexedD5Certificates.family, PairCompatible extra[9] b := by decide
theorem forward10 : ∀ a ∈ IndexedD5Certificates.family, PairCompatible a extra[10] := by decide
theorem backward10 : ∀ b ∈ IndexedD5Certificates.family, PairCompatible extra[10] b := by decide
theorem forward11 : ∀ a ∈ IndexedD5Certificates.family, PairCompatible a extra[11] := by decide
theorem backward11 : ∀ b ∈ IndexedD5Certificates.family, PairCompatible extra[11] b := by decide
theorem forward12 : ∀ a ∈ IndexedD5Certificates.family, PairCompatible a extra[12] := by decide
theorem backward12 : ∀ b ∈ IndexedD5Certificates.family, PairCompatible extra[12] b := by decide
theorem forward13 : ∀ a ∈ IndexedD5Certificates.family, PairCompatible a extra[13] := by decide
theorem backward13 : ∀ b ∈ IndexedD5Certificates.family, PairCompatible extra[13] b := by decide
theorem forward14 : ∀ a ∈ IndexedD5Certificates.family, PairCompatible a extra[14] := by decide
theorem backward14 : ∀ b ∈ IndexedD5Certificates.family, PairCompatible extra[14] b := by decide
theorem forward15 : ∀ a ∈ IndexedD5Certificates.family, PairCompatible a extra[15] := by decide
theorem backward15 : ∀ b ∈ IndexedD5Certificates.family, PairCompatible extra[15] b := by decide
theorem forward16 : ∀ a ∈ IndexedD5Certificates.family, PairCompatible a extra[16] := by decide
theorem backward16 : ∀ b ∈ IndexedD5Certificates.family, PairCompatible extra[16] b := by decide
theorem forward17 : ∀ a ∈ IndexedD5Certificates.family, PairCompatible a extra[17] := by decide
theorem backward17 : ∀ b ∈ IndexedD5Certificates.family, PairCompatible extra[17] b := by decide
theorem forward18 : ∀ a ∈ IndexedD5Certificates.family, PairCompatible a extra[18] := by decide
theorem backward18 : ∀ b ∈ IndexedD5Certificates.family, PairCompatible extra[18] b := by decide
theorem forward19 : ∀ a ∈ IndexedD5Certificates.family, PairCompatible a extra[19] := by decide
theorem backward19 : ∀ b ∈ IndexedD5Certificates.family, PairCompatible extra[19] b := by decide
theorem forward20 : ∀ a ∈ IndexedD5Certificates.family, PairCompatible a extra[20] := by decide
theorem backward20 : ∀ b ∈ IndexedD5Certificates.family, PairCompatible extra[20] b := by decide
theorem forward21 : ∀ a ∈ IndexedD5Certificates.family, PairCompatible a extra[21] := by decide
theorem backward21 : ∀ b ∈ IndexedD5Certificates.family, PairCompatible extra[21] b := by decide
theorem forward22 : ∀ a ∈ IndexedD5Certificates.family, PairCompatible a extra[22] := by decide
theorem backward22 : ∀ b ∈ IndexedD5Certificates.family, PairCompatible extra[22] b := by decide
theorem forward23 : ∀ a ∈ IndexedD5Certificates.family, PairCompatible a extra[23] := by decide
theorem backward23 : ∀ b ∈ IndexedD5Certificates.family, PairCompatible extra[23] b := by decide
theorem forward24 : ∀ a ∈ IndexedD5Certificates.family, PairCompatible a extra[24] := by decide
theorem backward24 : ∀ b ∈ IndexedD5Certificates.family, PairCompatible extra[24] b := by decide
theorem forward25 : ∀ a ∈ IndexedD5Certificates.family, PairCompatible a extra[25] := by decide
theorem backward25 : ∀ b ∈ IndexedD5Certificates.family, PairCompatible extra[25] b := by decide
theorem coherent : Coherent family := by
  apply coherent_append IndexedD5Certificates.family_coherent extra_coherent unique
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
    refine List.forall_mem_cons.mpr ⟨forward15 a ha,?_⟩
    refine List.forall_mem_cons.mpr ⟨forward16 a ha,?_⟩
    refine List.forall_mem_cons.mpr ⟨forward17 a ha,?_⟩
    refine List.forall_mem_cons.mpr ⟨forward18 a ha,?_⟩
    refine List.forall_mem_cons.mpr ⟨forward19 a ha,?_⟩
    refine List.forall_mem_cons.mpr ⟨forward20 a ha,?_⟩
    refine List.forall_mem_cons.mpr ⟨forward21 a ha,?_⟩
    refine List.forall_mem_cons.mpr ⟨forward22 a ha,?_⟩
    refine List.forall_mem_cons.mpr ⟨forward23 a ha,?_⟩
    refine List.forall_mem_cons.mpr ⟨forward24 a ha,?_⟩
    refine List.forall_mem_cons.mpr ⟨forward25 a ha,?_⟩
    intro x h
    exact False.elim (List.not_mem_nil h)
  · intro a ha
    unfold extra at ha
    simp only [List.mem_cons,List.not_mem_nil,or_false] at ha
    rcases ha with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
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
    · exact backward15
    · exact backward16
    · exact backward17
    · exact backward18
    · exact backward19
    · exact backward20
    · exact backward21
    · exact backward22
    · exact backward23
    · exact backward24
    · exact backward25
theorem all_95_events : ∀ e ∈ IndexedD5Certificates.events, e.Valid family := by
  intro e he
  exact bound_extension extends_old unique (IndexedD5Certificates.all_events e he)
#print axioms coherent
#print axioms all_95_events
end AggregateIncomingTargetCompletion
