import CofiberE2Certificates.Basic

namespace CofiberE2Certificates
open LinearCertificates

/-- Interpreting a checked finite sequence in actual pointed spaces. Coordinate
surjectivity at the middle and injectivity at the target are the comparison
hypotheses; no actual exactness statement is assumed. -/
theorem Wire.exact_under_interpretation (w : Wire) (h : w.Valid)
    {A B C : Type} [Zero A] [Zero B] [Zero C]
    (source : Vec w.inputDimension → A)
    (middle : Vec w.middleDimension → B)
    (target : Vec w.outputDimension → C)
    (incoming : A → B) (outgoing : B → C)
    (middle_surjective : Function.Surjective middle)
    (target_injective : Function.Injective target)
    (target_zero : target LinearCertificates.zero = 0)
    (incoming_compatible : ∀ x, middle (eval w.a x) = incoming (source x))
    (outgoing_compatible : ∀ x, target (eval w.b x) = outgoing (middle x)) :
    ∀ y, outgoing y = 0 → ∃ x, incoming x = y := by
  intro y hy
  obtain ⟨v, hv⟩ := middle_surjective y
  have hk : InKernel w.b v := by
    apply target_injective
    rw [outgoing_compatible, hv, hy, target_zero]
  obtain ⟨u, hu⟩ := h.2.2 v hk
  refine ⟨source u, ?_⟩
  rw [← incoming_compatible, hu, hv]

/-- Coordinate equivalences transport both the complex and exactness conclusions.
Only the two coordinate compatibility squares and preservation of target zero
are required; actual kernel/image equality is a conclusion. -/
theorem Wire.transport_exact (w : Wire) (h : w.Valid)
    {A B C : Type} [Zero C]
    (source : Vec w.inputDimension ≃ A)
    (middle : Vec w.middleDimension ≃ B)
    (target : Vec w.outputDimension ≃ C)
    (incoming : A → B) (outgoing : B → C)
    (target_zero : target LinearCertificates.zero = 0)
    (incoming_compatible : ∀ x, middle (eval w.a x) = incoming (source x))
    (outgoing_compatible : ∀ x, target (eval w.b x) = outgoing (middle x)) :
    (∀ x, outgoing (incoming x) = 0) ∧
    (∀ y, outgoing y = 0 ↔ ∃ x, incoming x = y) := by
  have hc (x : A) : outgoing (incoming x) = 0 := by
    obtain ⟨u, rfl⟩ := source.surjective x
    rw [← incoming_compatible, ← outgoing_compatible, h.2.1 u, target_zero]
  refine ⟨hc, fun y => ⟨?_, ?_⟩⟩
  · intro hy
    obtain ⟨v, hv⟩ := middle.surjective y
    have hk : InKernel w.b v := by
      apply target.injective
      rw [outgoing_compatible, hv, hy, target_zero]
    obtain ⟨u, hu⟩ := h.2.2 v hk
    exact ⟨source u, (incoming_compatible u).symm.trans ((congrArg middle hu).trans hv)⟩
  · rintro ⟨x, rfl⟩
    exact hc x

end CofiberE2Certificates
