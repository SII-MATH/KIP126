import FilteredSquarePageBridge.Basic

namespace FilteredSquarePageBridge
open LinProgramCertificates

def WireValid (w : FiniteFilteredSquareCertificates.WireCertificate) : Prop :=
  ∃ parsed, FiniteFilteredSquareCertificates.decode w = .ok parsed ∧ ResultValid parsed.1

theorem of_wire_valid (w : FiniteFilteredSquareCertificates.WireCertificate)
    (valid : FiniteFilteredSquareCertificates.WireValid w) : WireValid w := by
  obtain ⟨parsed,eq,result⟩ := valid
  exact ⟨parsed,eq,(resultValid_iff _).mpr result⟩

theorem checkWire_sound (w : FiniteFilteredSquareCertificates.WireCertificate)
    (accepted : FiniteFilteredSquareCertificates.checkWire w = .ok true) : WireValid w :=
  of_wire_valid w (FiniteFilteredSquareCertificates.checkWire_sound w accepted)

theorem checkBatch_sound (ws : List FiniteFilteredSquareCertificates.WireCertificate)
    (accepted : FiniteFilteredSquareCertificates.checkBatch ws = true) :
    ∀ w ∈ ws, WireValid w :=
  fun w hw => of_wire_valid w (FiniteFilteredSquareCertificates.checkBatch_sound ws accepted w hw)

/-- Transport an already kernel-checked batch without re-running a large
Boolean reduction. No imported Boolean or external claim supplies this proof. -/
theorem of_batch_valid (ws : List FiniteFilteredSquareCertificates.WireCertificate)
    (valid : ∀ w ∈ ws, FiniteFilteredSquareCertificates.WireValid w) : ∀ w ∈ ws, WireValid w :=
  fun w hw => of_wire_valid w (valid w hw)

instance (w : FiniteFilteredSquareCertificates.WireCertificate) : CertificateVerifier (WireValid w) where
  Cert := Unit
  check := fun _ => match FiniteFilteredSquareCertificates.checkWire w with | .ok b => b | .error _ => false
  sound := by
    intro _ h
    cases he : FiniteFilteredSquareCertificates.checkWire w with
    | error e => simp [he] at h
    | ok b =>
      simp only [he] at h
      exact checkWire_sound w (he.trans (congrArg Except.ok h))

#print axioms of_wire_valid
#print axioms checkWire_sound
#print axioms checkBatch_sound
#print axioms of_batch_valid
end FilteredSquarePageBridge
