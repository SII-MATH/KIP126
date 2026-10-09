import FilteredExtensionCertificateCompleteness.Linear

namespace FilteredExtensionCertificateCompleteness
open LinearCertificates RepresentativeSquareCertificates FilteredRepresentativeCrossing
open FilteredExtensionCertificates FilteredMapExtension

theorem checkDecreasing_complete (M : Fin depth → Matrix a h)
    (decreasing : Antitone (fun i => higher (level M i))) :
    ∃ factors : Fin depth → Matrix h h, checkDecreasing M factors = true := by
  classical
  have existsFactors : ∀ i : Fin depth, ∃ factor : Matrix h h,
      checkFactor (level M (i.val+1)) (level M i.val) factor = true := by
    intro i
    exact checkFactor_complete _ _ (decreasing (by omega))
  choose factors equations using existsFactors
  exact ⟨factors,decide_eq_true_eq.mpr equations⟩

theorem checkDecreasing_exists_iff (M : Fin depth → Matrix a h) :
    (∃ factors : Fin depth → Matrix h h, checkDecreasing M factors = true) ↔
      Antitone (fun i => higher (level M i)) := by
  constructor
  · rintro ⟨factors,accepted⟩
    exact checkDecreasing_sound M factors accepted
  · exact checkDecreasing_complete M

/-- All certificate fields exist for the original semantic statement, including
the entire filtrations and the quotient differential's representative equation. -/
theorem check_complete (D : FilteredExtensionCertificates.Data)
    (valid : ResultValid D) :
    ∃ cert : FilteredExtensionCertificates.Certificate D,
      FilteredExtensionCertificates.check D cert = true := by
  classical
  obtain ⟨h,hx,hy,equation⟩ := valid
  obtain ⟨sourceFactors,hs⟩ := checkDecreasing_complete D.source h.sourceDecreasing
  obtain ⟨targetFactors,ht⟩ := checkDecreasing_complete D.target h.targetDecreasing
  have existsMapFactors : ∀ i : Fin D.depth, ∃ factor : Matrix D.hb D.ha,
      checkPreserves D.f (D.sourceAt i.val) (D.targetAt i.val) factor = true := by
    intro i
    exact checkPreserves_complete _ _ _ (h.preserves i.val)
  choose mapFactors hm using existsMapFactors
  obtain ⟨sourceMember,hsource⟩ := checkImage_complete (D.sourceAt D.s) D.x hx.1
  obtain ⟨imageMember,himage⟩ :=
    checkImage_complete (D.targetAt (D.s+D.n)) (eval D.f D.x) hx.2
  obtain ⟨targetMember,htarget⟩ := checkImage_complete (D.targetAt (D.s+D.n)) D.y hy
  have extension := (differential_eq_iff_leading_extension
    (sourceFiltration D h) (targetFiltration D h) (filteredMap D h) D.s D.n
    ⟨⟨D.x⟩,hx⟩ ⟨⟨D.y⟩,hy⟩).mp equation
  obtain ⟨representative,sourceCorrection,targetCorrection,he⟩ :=
    checkExtension_complete D.f (D.sourceAt (D.s+1)) (D.targetAt (D.s+D.n+1))
      D.x D.y extension
  let cert : FilteredExtensionCertificates.Certificate D :=
    ⟨sourceFactors,targetFactors,mapFactors,sourceMember,imageMember,targetMember,
      representative,sourceCorrection,targetCorrection⟩
  have hmap : checkMap D cert = true := decide_eq_true_eq.mpr hm
  refine ⟨cert,?_⟩
  simp only [FilteredExtensionCertificates.check,Bool.and_eq_true]
  exact ⟨⟨⟨⟨⟨⟨hs,ht⟩,hmap⟩,hsource⟩,himage⟩,htarget⟩,he⟩

theorem check_exists_iff (D : FilteredExtensionCertificates.Data) :
    (∃ cert : FilteredExtensionCertificates.Certificate D,
      FilteredExtensionCertificates.check D cert = true) ↔ ResultValid D := by
  constructor
  · rintro ⟨cert,accepted⟩
    exact FilteredExtensionCertificates.check_sound D cert accepted
  · exact check_complete D

/-- A semantic witness can select a certificate, but this choice is not the
executable producer. Computable finite search is supplied separately. -/
noncomputable def chooseCertificate (D : FilteredExtensionCertificates.Data)
    (valid : ResultValid D) : FilteredExtensionCertificates.Certificate D :=
  Classical.choose (check_complete D valid)

theorem chooseCertificate_accepted (D : FilteredExtensionCertificates.Data)
    (valid : ResultValid D) :
    FilteredExtensionCertificates.check D (chooseCertificate D valid) = true :=
  Classical.choose_spec (check_complete D valid)

#print axioms checkDecreasing_complete
#print axioms checkDecreasing_exists_iff
#print axioms check_complete
#print axioms check_exists_iff
#print axioms chooseCertificate_accepted
end FilteredExtensionCertificateCompleteness
