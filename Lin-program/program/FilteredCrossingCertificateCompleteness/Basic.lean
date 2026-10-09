import FilteredCrossingCertificates.Basic
import FilteredExtensionCertificateCompleteness.Basic

namespace FilteredCrossingCertificateCompleteness
open LinearCertificates RepresentativeSquareCertificates FilteredMapExtension
open FilteredExtensionCertificates GeneralizedLeibnizAudit

def Stable (D : FilteredExtensionCertificates.Data) : Prop :=
  higher (D.sourceAt (D.s+1)) ≤ (higher (D.targetAt (D.s+D.n+1))).comap (hom D.f)

/-- This exact page-crossing predicate includes inessential classes and
length-zero cases. It is not identified with every paper no-crossing rule. -/
theorem result_iff_extension_and_stable (D : FilteredExtensionCertificates.Data) :
    FilteredCrossingCertificates.ResultValid D ↔ ResultValid D ∧ Stable D := by
  constructor
  · rintro ⟨valid,none⟩
    have saved := valid
    obtain ⟨h,_,_,_⟩ := valid
    exact ⟨saved,(noPageCrossing_iff_higher (sourceFiltration D h) (targetFiltration D h)
      (filteredMap D h) D.s (D.s+D.n) (by omega)).mp (none h)⟩
  · rintro ⟨valid,stable⟩
    refine ⟨valid,?_⟩
    intro h
    exact (noPageCrossing_iff_higher (sourceFiltration D h) (targetFiltration D h)
      (filteredMap D h) D.s (D.s+D.n) (by omega)).mpr stable

theorem check_complete (D : FilteredExtensionCertificates.Data) (valid : FilteredCrossingCertificates.ResultValid D) :
    ∃ cert : FilteredCrossingCertificates.Certificate D,
      FilteredCrossingCertificates.check D cert = true := by
  obtain ⟨extension,stable⟩ := (result_iff_extension_and_stable D).mp valid
  obtain ⟨base,hbase⟩ := FilteredExtensionCertificateCompleteness.check_complete D extension
  obtain ⟨factor,hfactor⟩ := FilteredExtensionCertificateCompleteness.checkPreserves_complete
    D.f (D.sourceAt (D.s+1)) (D.targetAt (D.s+D.n+1)) stable
  exact ⟨⟨base,factor⟩,by simp only [FilteredCrossingCertificates.check,hbase,hfactor,Bool.and_self]⟩

theorem check_exists_iff (D : FilteredExtensionCertificates.Data) :
    (∃ cert : FilteredCrossingCertificates.Certificate D,
      FilteredCrossingCertificates.check D cert = true) ↔ FilteredCrossingCertificates.ResultValid D := by
  constructor
  · rintro ⟨cert,hcert⟩
    exact FilteredCrossingCertificates.check_sound D cert hcert
  · exact check_complete D

def AllRepresentatives (D : FilteredExtensionCertificates.Data) : Prop :=
  ∀ a : Vector D.a, SameLeading (higher (D.sourceAt (D.s+1))) a ⟨D.x⟩ →
    SameLeading (higher (D.targetAt (D.s+D.n+1))) (hom D.f a) ⟨D.y⟩

theorem result_iff_all_representatives (D : FilteredExtensionCertificates.Data) :
    FilteredCrossingCertificates.ResultValid D ↔ ResultValid D ∧ AllRepresentatives D := by
  rw [result_iff_extension_and_stable]
  constructor
  · rintro ⟨valid,stable⟩
    have saved := valid
    obtain ⟨h,hx,hy,eq⟩ := valid
    have ext := (differential_eq_iff_leading_extension (sourceFiltration D h)
      (targetFiltration D h) (filteredMap D h) D.s D.n ⟨⟨D.x⟩,hx⟩ ⟨⟨D.y⟩,hy⟩).mp eq
    exact ⟨saved,(representative_stability_iff _ _ _ _ _ ext).mp stable⟩
  · rintro ⟨valid,all⟩
    have saved := valid
    obtain ⟨h,hx,hy,eq⟩ := valid
    have ext := (differential_eq_iff_leading_extension (sourceFiltration D h)
      (targetFiltration D h) (filteredMap D h) D.s D.n ⟨⟨D.x⟩,hx⟩ ⟨⟨D.y⟩,hy⟩).mp eq
    exact ⟨saved,(representative_stability_iff _ _ _ _ _ ext).mpr all⟩

#print axioms result_iff_extension_and_stable
#print axioms check_complete
#print axioms check_exists_iff
#print axioms result_iff_all_representatives
end FilteredCrossingCertificateCompleteness
