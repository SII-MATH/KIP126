import FilteredExtensionPageBridge.Certificate

namespace FilteredExtensionPageBridge
open LinProgramCertificates

/-- The existing strict JSON decoder fixes all input data; only the verified
mathematical conclusion changes from the local quotient to the full page. -/
def WireValid (w : FilteredExtensionCertificates.WireCertificate) : Prop :=
  ∃ parsed, FilteredExtensionCertificates.decode w = .ok parsed ∧ ResultValid parsed.1

theorem checkWire_sound (w : FilteredExtensionCertificates.WireCertificate)
    (h : FilteredExtensionCertificates.checkWire w = .ok true) : WireValid w := by
  obtain ⟨parsed,eq,valid⟩ := FilteredExtensionCertificates.checkWire_sound w h
  exact ⟨parsed,eq,(resultValid_iff _).mpr valid⟩

theorem checkBatch_sound (ws : List FilteredExtensionCertificates.WireCertificate)
    (h : FilteredExtensionCertificates.checkBatch ws = true) : ∀ w ∈ ws, WireValid w := by
  intro w hw
  obtain ⟨parsed,eq,valid⟩ := FilteredExtensionCertificates.checkBatch_sound ws h w hw
  exact ⟨parsed,eq,(resultValid_iff _).mpr valid⟩

def StableWireValid (w : FilteredCrossingCertificates.WireCertificate) : Prop :=
  ∃ parsed, FilteredCrossingCertificates.decode w = .ok parsed ∧ StableResultValid parsed.1

theorem checkStableWire_sound (w : FilteredCrossingCertificates.WireCertificate)
    (h : FilteredCrossingCertificates.checkWire w = .ok true) : StableWireValid w := by
  obtain ⟨parsed,eq,valid⟩ := FilteredCrossingCertificates.checkWire_sound w h
  exact ⟨parsed,eq,(stableResultValid_iff _).mpr valid⟩

theorem checkStableBatch_sound (ws : List FilteredCrossingCertificates.WireCertificate)
    (h : FilteredCrossingCertificates.checkBatch ws = true) : ∀ w ∈ ws, StableWireValid w := by
  intro w hw
  obtain ⟨parsed,eq,valid⟩ := FilteredCrossingCertificates.checkBatch_sound ws h w hw
  exact ⟨parsed,eq,(stableResultValid_iff _).mpr valid⟩

instance (w : FilteredExtensionCertificates.WireCertificate) : CertificateVerifier (WireValid w) where
  Cert := Unit
  check := fun _ => match FilteredExtensionCertificates.checkWire w with | .ok b => b | .error _ => false
  sound := by
    intro _ h
    cases he : FilteredExtensionCertificates.checkWire w with
    | error e => simp [he] at h
    | ok b =>
      simp only [he] at h
      exact checkWire_sound w (he.trans (congrArg Except.ok h))

instance (w : FilteredCrossingCertificates.WireCertificate) : CertificateVerifier (StableWireValid w) where
  Cert := Unit
  check := fun _ => match FilteredCrossingCertificates.checkWire w with | .ok b => b | .error _ => false
  sound := by
    intro _ h
    cases he : FilteredCrossingCertificates.checkWire w with
    | error e => simp [he] at h
    | ok b =>
      simp only [he] at h
      exact checkStableWire_sound w (he.trans (congrArg Except.ok h))

#print axioms checkWire_sound
#print axioms checkBatch_sound
#print axioms checkStableWire_sound
#print axioms checkStableBatch_sound
end FilteredExtensionPageBridge
