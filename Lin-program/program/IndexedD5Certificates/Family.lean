import IndexedD5Certificates.Extension
import IndexedHighD2Certificates.GeneratedCoherence
import AggregateD5Conditional.Data
set_option maxRecDepth 8192
set_option maxHeartbeats 8000000
namespace IndexedD5Certificates
open IndexedFamilyCertificates
def extra : Family := family_input% "IndexedFamilyProducer/D5/extra.json"
def family : Family := IndexedHighD2Certificates.family ++ extra
theorem length : family.length = 358 := by decide
theorem unique : UniqueKeys family := by decide
theorem extends_old : Extends IndexedHighD2Certificates.family family := append_extends _ _
theorem extra_entries : ∀ e ∈ extra, KeyValid e.key ∧ e.wire.Valid := by
  unfold extra
  refine List.forall_mem_cons.mpr ⟨⟨by decide, AggregateD5Conditional.Data.b_S0_12_136_d3_complete⟩, ?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide, AggregateD5Conditional.Data.b_S0_13_139_d4_complete⟩, ?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide, AggregateD5Conditional.Data.b_S0_13_139_d5_complete⟩, ?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide, AggregateD5Conditional.Data.b_S0_14_140_d3_complete⟩, ?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide, AggregateD5Conditional.Data.b_S0_18_143_d4_complete⟩, ?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide, AggregateD5Conditional.Data.b_S0_3_129_d5_complete⟩, ?_⟩
  refine List.forall_mem_cons.mpr ⟨⟨by decide, AggregateD5Conditional.Data.b_S0_8_133_d4_complete⟩, ?_⟩
  intro x h
  exact False.elim (List.not_mem_nil h)
theorem extra_coherent : Coherent extra := by
  exact ⟨by decide, extra_entries, by decide⟩
theorem forward0 : ∀ a ∈ IndexedHighD2Certificates.family, PairCompatible a extra[0] := by decide
theorem backward0 : ∀ b ∈ IndexedHighD2Certificates.family, PairCompatible extra[0] b := by decide
theorem forward1 : ∀ a ∈ IndexedHighD2Certificates.family, PairCompatible a extra[1] := by decide
theorem backward1 : ∀ b ∈ IndexedHighD2Certificates.family, PairCompatible extra[1] b := by decide
theorem forward2 : ∀ a ∈ IndexedHighD2Certificates.family, PairCompatible a extra[2] := by decide
theorem backward2 : ∀ b ∈ IndexedHighD2Certificates.family, PairCompatible extra[2] b := by decide
theorem forward3 : ∀ a ∈ IndexedHighD2Certificates.family, PairCompatible a extra[3] := by decide
theorem backward3 : ∀ b ∈ IndexedHighD2Certificates.family, PairCompatible extra[3] b := by decide
theorem forward4 : ∀ a ∈ IndexedHighD2Certificates.family, PairCompatible a extra[4] := by decide
theorem backward4 : ∀ b ∈ IndexedHighD2Certificates.family, PairCompatible extra[4] b := by decide
theorem forward5 : ∀ a ∈ IndexedHighD2Certificates.family, PairCompatible a extra[5] := by decide
theorem backward5 : ∀ b ∈ IndexedHighD2Certificates.family, PairCompatible extra[5] b := by decide
theorem forward6 : ∀ a ∈ IndexedHighD2Certificates.family, PairCompatible a extra[6] := by decide
theorem backward6 : ∀ b ∈ IndexedHighD2Certificates.family, PairCompatible extra[6] b := by decide
theorem family_coherent : Coherent family := by
  apply coherent_append IndexedHighD2Certificates.family_coherent extra_coherent unique
  · intro a ha
    unfold extra
    refine List.forall_mem_cons.mpr ⟨forward0 a ha, ?_⟩
    refine List.forall_mem_cons.mpr ⟨forward1 a ha, ?_⟩
    refine List.forall_mem_cons.mpr ⟨forward2 a ha, ?_⟩
    refine List.forall_mem_cons.mpr ⟨forward3 a ha, ?_⟩
    refine List.forall_mem_cons.mpr ⟨forward4 a ha, ?_⟩
    refine List.forall_mem_cons.mpr ⟨forward5 a ha, ?_⟩
    refine List.forall_mem_cons.mpr ⟨forward6 a ha, ?_⟩
    intro x h
    exact False.elim (List.not_mem_nil h)
  · unfold extra
    refine List.forall_mem_cons.mpr ⟨backward0, ?_⟩
    refine List.forall_mem_cons.mpr ⟨backward1, ?_⟩
    refine List.forall_mem_cons.mpr ⟨backward2, ?_⟩
    refine List.forall_mem_cons.mpr ⟨backward3, ?_⟩
    refine List.forall_mem_cons.mpr ⟨backward4, ?_⟩
    refine List.forall_mem_cons.mpr ⟨backward5, ?_⟩
    refine List.forall_mem_cons.mpr ⟨backward6, ?_⟩
    intro x h
    exact False.elim (List.not_mem_nil h)
#print axioms family_coherent
end IndexedD5Certificates
