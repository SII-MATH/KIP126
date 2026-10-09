import FilteredExtensionCertificates.Basic
import FilteredMapExtension.Crossing

namespace FilteredCrossingCertificates
open LinearCertificates RepresentativeSquareCertificates FilteredMapExtension
open FilteredExtensionCertificates

/-- The extra factor covers the entire higher-source subgroup. -/
structure Certificate (D : FilteredExtensionCertificates.Data) where
  extension : FilteredExtensionCertificates.Certificate D
  stability : Matrix D.hb D.ha

def check (D : FilteredExtensionCertificates.Data) (cert : Certificate D) : Bool :=
  FilteredExtensionCertificates.check D cert.extension &&
  checkPreserves D.f (D.sourceAt (D.s+1)) (D.targetAt (D.s+D.n+1)) cert.stability

/-- Both the specified quotient equation and absence of every crossing in
the relevant filtration interval, independent of the chosen witnesses. -/
def ResultValid (D : FilteredExtensionCertificates.Data) : Prop :=
  FilteredExtensionCertificates.ResultValid D ∧
  ∀ h : WellFormed D, NoPageCrossing (sourceFiltration D h) (targetFiltration D h)
    (filteredMap D h) D.s (D.s+1) (D.s+D.n+1)

theorem check_sound (D : FilteredExtensionCertificates.Data) (cert : Certificate D) (accepted : check D cert = true) :
    ResultValid D := by
  simp only [check, Bool.and_eq_true] at accepted
  refine ⟨FilteredExtensionCertificates.check_sound D cert.extension accepted.1, ?_⟩
  intro h
  apply (noPageCrossing_iff_higher (sourceFiltration D h) (targetFiltration D h)
    (filteredMap D h) D.s (D.s+D.n) (by omega)).mpr
  exact checkPreserves_sound _ _ _ _ accepted.2

/-- The checked absence of crossings makes every representative valid. -/
theorem all_representatives (D : FilteredExtensionCertificates.Data) (cert : Certificate D)
    (accepted : check D cert = true) (a : RepresentativeSquareCertificates.Vector D.a)
    (same : GeneralizedLeibnizAudit.SameLeading (higher (D.sourceAt (D.s+1))) a ⟨D.x⟩) :
    GeneralizedLeibnizAudit.SameLeading (higher (D.targetAt (D.s+D.n+1)))
      (hom D.f a) ⟨D.y⟩ := by
  have hs := accepted
  simp only [check, Bool.and_eq_true] at hs
  have he := hs.1
  simp only [FilteredExtensionCertificates.check, Bool.and_eq_true] at he
  have extension := checkExtension_sound _ _ _ _ _ _ _ _ he.2
  exact (GeneralizedLeibnizAudit.representative_stability_iff _ _ _ _ _ extension).mp
    (checkPreserves_sound _ _ _ _ hs.2) a same

instance (D : FilteredExtensionCertificates.Data) : LinProgramCertificates.CertificateVerifier (ResultValid D) where
  Cert := Certificate D
  check := check D
  sound := check_sound D

macro "filtered_stable_cert" " using " c:term : tactic => `(tactic| lin_cert using $c)

#print axioms check_sound
#print axioms all_representatives
end FilteredCrossingCertificates
