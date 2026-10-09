import FilteredExtensionPageBridge.Basic
import FiniteFilteredSquareCertificates.Import

namespace FilteredSquarePageBridge
open FilteredRepresentativeCrossing FilteredMapExtension FilteredMapGradedComparison
open FilteredTwoTermSequence FilteredExtensionPageBridge FiniteFilteredSquareCertificates
open GeneralizedLeibnizAudit LinProgramCertificates

/-- The actual square extension is exactly a leading event of the constructed
two-term page. Membership proofs are part of the conclusion, not assumptions
that the original source is already a cycle. -/
theorem hasExtension_iff_page {A B : Type*} [AddCommGroup A] [AddCommGroup B]
    (F : Filtration A) (G : Filtration B) (f : FilteredMap F G)
    (s n : Nat) (x : A) (y : B) :
    FilteredExtensionSquare.HasExtension F G f s n x y ↔
      ∃ hx : x ∈ F.group s, ∃ hy : y ∈ G.group (s+n),
        LeadingPageEvent F G f s n ⟨x,hx⟩ ⟨y,hy⟩ := by
  constructor
  · intro extension
    obtain ⟨hx,hy,eq⟩ := (FilteredExtensionSquare.hasExtension_iff F G f s n x y).mp extension
    exact ⟨hx,hy,(leadingPageEvent_iff_extension F G f s n _ _).mpr eq⟩
  · rintro ⟨hx,hy,event⟩
    apply (FilteredExtensionSquare.hasExtension_iff F G f s n x y).mpr
    exact ⟨hx,hy,(leadingPageEvent_iff_extension F G f s n _ _).mp event⟩

def fourthSource (D : Data) : Nat := D.s+D.n
def fourthLength (D : Data) : Nat := D.m+D.l-D.n

theorem fourth_degree (D : Data) (length : D.n ≤ D.m+D.l) :
    fourthSource D + fourthLength D = D.s+D.m+D.l := by
  unfold fourthSource fourthLength
  omega

/-- All four groups, maps, complete filtrations and requested inputs/outputs
are fixed in D. Only the fourth source representative may be corrected. -/
def ResultValid (D : Data) : Prop :=
  D.n ≤ D.m+D.l ∧ ∃ h : WellFormed D,
    ∃ hy : (⟨D.y⟩ : RepresentativeSquareCertificates.Vector D.b) ∈
      (filtrationB D h).group (fourthSource D),
    ∃ hw : (⟨D.w⟩ : RepresentativeSquareCertificates.Vector D.d) ∈
      (filtrationD D h).group (fourthSource D + fourthLength D),
    LeadingPageEvent (filtrationB D h) (filtrationD D h) (mapQ D h)
      (fourthSource D) (fourthLength D) ⟨⟨D.y⟩,hy⟩ ⟨⟨D.w⟩,hw⟩

theorem resultValid_iff (D : Data) : ResultValid D ↔ FiniteFilteredSquareCertificates.ResultValid D := by
  constructor
  · rintro ⟨length,h,event⟩
    exact ⟨length,h,(hasExtension_iff_page _ _ _ _ _ _ _).mpr event⟩
  · rintro ⟨length,h,extension⟩
    exact ⟨length,h,(hasExtension_iff_page _ _ _ _ _ _ _).mp extension⟩

theorem check_sound (D : Data) (cert : Certificate D)
    (accepted : FiniteFilteredSquareCertificates.check D cert = true) : ResultValid D :=
  (resultValid_iff D).mpr (FiniteFilteredSquareCertificates.check_sound D cert accepted)

theorem fourth_event (D : Data) (valid : ResultValid D) (h : WellFormed D)
    (hy : (⟨D.y⟩ : RepresentativeSquareCertificates.Vector D.b) ∈
      (filtrationB D h).group (fourthSource D))
    (hw : (⟨D.w⟩ : RepresentativeSquareCertificates.Vector D.d) ∈
      (filtrationD D h).group (fourthSource D + fourthLength D)) :
    LeadingPageEvent (filtrationB D h) (filtrationD D h) (mapQ D h)
      (fourthSource D) (fourthLength D) ⟨⟨D.y⟩,hy⟩ ⟨⟨D.w⟩,hw⟩ := by
  obtain ⟨_,_,_,_,event⟩ := valid
  exact event

/-- Unpack the actual corrected cycle and its full-page equation. There is
no assertion that the raw y itself belongs to this cycle subgroup. -/
theorem corrected_fourth (D : Data) (valid : ResultValid D) (h : WellFormed D) :
    ∃ hw : (⟨D.w⟩ : RepresentativeSquareCertificates.Vector D.d) ∈
      (filtrationD D h).group (fourthSource D + fourthLength D),
    ∃ a : cycles (filtrationB D h) (filtrationD D h) (mapQ D h)
      (fourthSource D) (fourthLength D),
    SameLeading ((filtrationB D h).group (fourthSource D+1)) a.val ⟨D.y⟩ ∧
      pageD (filtrationB D h) (filtrationD D h) (mapQ D h) (fourthLength D) (fourthSource D)
        (sourceElement (filtrationB D h) (filtrationD D h) (mapQ D h)
          (fourthSource D) (fourthLength D)
          (sourceClass (filtrationB D h) (filtrationD D h) (mapQ D h)
            (fourthSource D) (fourthLength D) a)) =
        targetElement (filtrationB D h) (filtrationD D h) (mapQ D h)
          (fourthSource D) (fourthLength D) ⟨⟨D.w⟩,hw⟩ := by
  obtain ⟨_,_,_,hw,a,same,eq⟩ := (resultValid_iff D).mp valid
  exact ⟨hw,a,same,(page_equation_iff _ _ _ _ _ _ _).mpr eq⟩

instance (D : Data) : CertificateVerifier (ResultValid D) where
  Cert := Certificate D
  check := FiniteFilteredSquareCertificates.check D
  sound := check_sound D

instance (D : Data) : DiagnosticCertificateVerifier (ResultValid D) where
  Cert := Certificate D
  check := FiniteFilteredSquareCertificates.check D
  sound := check_sound D
  diagnose := FiniteFilteredSquareCertificates.diagnose D

macro "filtered_square_page_cert" " using " c:term : tactic => `(tactic| lin_cert using $c)
macro "filtered_square_page_diagnose" " using " c:term : tactic => `(tactic| lin_cert_diagnose using $c)

#print axioms hasExtension_iff_page
#print axioms fourth_degree
#print axioms resultValid_iff
#print axioms check_sound
#print axioms fourth_event
#print axioms corrected_fourth
end FilteredSquarePageBridge
