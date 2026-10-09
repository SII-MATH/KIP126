import FilteredExtensionPageBridge.Crossing
import FilteredExtensionCertificates.Import
import FilteredCrossingCertificates.Import

namespace FilteredExtensionPageBridge
open FilteredRepresentativeCrossing FilteredMapExtension FilteredMapGradedComparison
open FilteredTwoTermSequence FilteredExtensionCertificates LinProgramCertificates

/-- The complete input, map, filtration, source and target are fixed by D.
The result is an equation of the actual two-term page differential. -/
def ResultValid (D : Data) : Prop :=
  ∃ h : WellFormed D,
  ∃ hx : (⟨D.x⟩ : RepresentativeSquareCertificates.Vector D.a) ∈
    cycles (sourceFiltration D h) (targetFiltration D h) (filteredMap D h) D.s D.n,
  ∃ hy : (⟨D.y⟩ : RepresentativeSquareCertificates.Vector D.b) ∈
    (targetFiltration D h).group (D.s+D.n),
    pageD (sourceFiltration D h) (targetFiltration D h) (filteredMap D h) D.n D.s
      (sourceElement (sourceFiltration D h) (targetFiltration D h) (filteredMap D h) D.s D.n
        (sourceClass (sourceFiltration D h) (targetFiltration D h) (filteredMap D h) D.s D.n
          ⟨⟨D.x⟩,hx⟩)) =
      targetElement (sourceFiltration D h) (targetFiltration D h) (filteredMap D h) D.s D.n
        ⟨⟨D.y⟩,hy⟩

theorem resultValid_iff (D : Data) : ResultValid D ↔ FilteredExtensionCertificates.ResultValid D := by
  constructor
  · rintro ⟨h,hx,hy,eq⟩
    exact ⟨h,hx,hy,(page_equation_iff _ _ _ _ _ _ _).mp eq⟩
  · rintro ⟨h,hx,hy,eq⟩
    exact ⟨h,hx,hy,(page_equation_iff _ _ _ _ _ _ _).mpr eq⟩

theorem check_sound (D : Data) (cert : FilteredExtensionCertificates.Certificate D)
    (accepted : FilteredExtensionCertificates.check D cert = true) : ResultValid D :=
  (resultValid_iff D).mpr (FilteredExtensionCertificates.check_sound D cert accepted)

theorem page_equation (D : Data) (valid : ResultValid D) (h : WellFormed D)
    (hx : (⟨D.x⟩ : RepresentativeSquareCertificates.Vector D.a) ∈
      cycles (sourceFiltration D h) (targetFiltration D h) (filteredMap D h) D.s D.n)
    (hy : (⟨D.y⟩ : RepresentativeSquareCertificates.Vector D.b) ∈
      (targetFiltration D h).group (D.s+D.n)) :
    pageD (sourceFiltration D h) (targetFiltration D h) (filteredMap D h) D.n D.s
      (sourceElement (sourceFiltration D h) (targetFiltration D h) (filteredMap D h) D.s D.n
        (sourceClass (sourceFiltration D h) (targetFiltration D h) (filteredMap D h) D.s D.n
          ⟨⟨D.x⟩,hx⟩)) =
      targetElement (sourceFiltration D h) (targetFiltration D h) (filteredMap D h) D.s D.n
        ⟨⟨D.y⟩,hy⟩ := by
  obtain ⟨_,_,_,equation⟩ := valid
  exact equation

theorem leading_event (D : Data) (valid : ResultValid D) (h : WellFormed D)
    (hx : (⟨D.x⟩ : RepresentativeSquareCertificates.Vector D.a) ∈ (sourceFiltration D h).group D.s)
    (hy : (⟨D.y⟩ : RepresentativeSquareCertificates.Vector D.b) ∈ (targetFiltration D h).group (D.s+D.n)) :
    LeadingPageEvent (sourceFiltration D h) (targetFiltration D h) (filteredMap D h) D.s D.n
      ⟨⟨D.x⟩,hx⟩ ⟨⟨D.y⟩,hy⟩ := by
  obtain ⟨_,hcycle,_,eq⟩ := valid
  exact ⟨sourceClass (sourceFiltration D h) (targetFiltration D h) (filteredMap D h)
    D.s D.n ⟨⟨D.x⟩,hcycle⟩,rfl,eq⟩

def StableResultValid (D : Data) : Prop := ResultValid D ∧
  ∀ h : WellFormed D, NoCrossing (sourceFiltration D h) (targetFiltration D h)
    (filteredMap D h) D.s (D.s+1) (D.s+D.n+1)

theorem stableResultValid_iff (D : Data) :
    StableResultValid D ↔ FilteredCrossingCertificates.ResultValid D := by
  constructor
  · rintro ⟨event,none⟩
    exact ⟨(resultValid_iff D).mp event,fun h => (noCrossing_iff _ _ _ _ _ _).mp (none h)⟩
  · rintro ⟨event,none⟩
    exact ⟨(resultValid_iff D).mpr event,fun h => (noCrossing_iff _ _ _ _ _ _).mpr (none h)⟩

theorem check_stable_sound (D : Data) (cert : FilteredCrossingCertificates.Certificate D)
    (accepted : FilteredCrossingCertificates.check D cert = true) : StableResultValid D :=
  (stableResultValid_iff D).mpr (FilteredCrossingCertificates.check_sound D cert accepted)

instance (D : Data) : CertificateVerifier (ResultValid D) where
  Cert := FilteredExtensionCertificates.Certificate D
  check := FilteredExtensionCertificates.check D
  sound := check_sound D

instance (D : Data) : DiagnosticCertificateVerifier (ResultValid D) where
  Cert := FilteredExtensionCertificates.Certificate D
  check := FilteredExtensionCertificates.check D
  sound := check_sound D
  diagnose := FilteredExtensionCertificates.diagnose D

instance (D : Data) : CertificateVerifier (StableResultValid D) where
  Cert := FilteredCrossingCertificates.Certificate D
  check := FilteredCrossingCertificates.check D
  sound := check_stable_sound D

instance (D : Data) : DiagnosticCertificateVerifier (StableResultValid D) where
  Cert := FilteredCrossingCertificates.Certificate D
  check := FilteredCrossingCertificates.check D
  sound := check_stable_sound D
  diagnose := FilteredCrossingCertificates.diagnose D

macro "filtered_page_cert" " using " c:term : tactic => `(tactic| lin_cert using $c)
macro "filtered_page_diagnose" " using " c:term : tactic => `(tactic| lin_cert_diagnose using $c)

#print axioms resultValid_iff
#print axioms check_sound
#print axioms page_equation
#print axioms leading_event
#print axioms stableResultValid_iff
#print axioms check_stable_sound
end FilteredExtensionPageBridge
