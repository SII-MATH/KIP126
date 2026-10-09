import FiniteFilteredSquareCertificates.Basic

namespace FiniteFilteredSquareCompletenessLimit
open LinearCertificates RepresentativeSquareCertificates
open FiniteFilteredSquareCertificates

/-- All maps are zero and all actual filtration subgroups are zero. The
unused first source input is nonzero, while the requested fourth equation is zero. -/
def input : FiniteFilteredSquareCertificates.Data where
  a := 1
  b := 1
  c := 1
  d := 1
  ha := 0
  hb := 0
  hc := 0
  hd := 0
  depth := 1
  s := 0
  n := 0
  m := 0
  l := 0
  f := fun _ _ => false
  p := fun _ _ => false
  q := fun _ _ => false
  g := fun _ _ => false
  sourceA := fun _ _ j => Fin.elim0 j
  sourceB := fun _ _ j => Fin.elim0 j
  sourceC := fun _ _ j => Fin.elim0 j
  sourceD := fun _ _ j => Fin.elim0 j
  x := fun _ => true
  y := fun _ => false
  z := fun _ => false
  w := fun _ => false

theorem empty_higher (M : Matrix a 0) : higher M = ⊥ := by
  ext x
  constructor
  · rintro ⟨v,rfl⟩
    apply RepresentativeSquareCertificates.Vector.ext
    funext i
    rfl
  · intro hx
    have hx0 : x = 0 := hx
    subst x
    exact ⟨0,map_zero _⟩

theorem input_wellFormed : WellFormed input := by
  have decreasing (M : Fin input.depth → Matrix 1 0) :
      Antitone (fun i => higher (FilteredExtensionCertificates.level M i)) := by
    intro i j h
    change higher (FilteredExtensionCertificates.level M j) ≤
      higher (FilteredExtensionCertificates.level M i)
    rw [empty_higher,empty_higher]
  have preserves (f : Matrix 1 1) (M N : Fin input.depth → Matrix 1 0) :
      ∀ i, higher (FilteredExtensionCertificates.level M i) ≤
        (higher (FilteredExtensionCertificates.level N i)).comap (hom f) := by
    intro i
    rw [empty_higher]
    exact bot_le
  refine ⟨decreasing _,decreasing _,decreasing _,decreasing _,
    preserves _ _ _,preserves _ _ _,preserves _ _ _,preserves _ _ _,?_⟩
  intro v
  rfl

theorem result_valid : ResultValid input := by
  refine ⟨by decide,input_wellFormed,?_⟩
  apply (FilteredExtensionSquare.hasExtension_iff _ _ _ _ _ _ _).mpr
  refine ⟨?_,?_,0,?_,?_⟩
  · exact (higher (input.B 0)).zero_mem
  · exact (higher (input.E 0)).zero_mem
  · exact GeneralizedLeibnizAudit.SameLeading.refl _ _
  · exact GeneralizedLeibnizAudit.SameLeading.refl _ _

/-- Extracting memberX, rather than using soundness backwards, proves that
every certificate is rejected for this semantically valid fourth equation. -/
theorem no_certificate : ¬ ∃ cert : Certificate input, check input cert = true := by
  rintro ⟨cert,accepted⟩
  simp only [FiniteFilteredSquareCertificates.check,Bool.and_eq_true] at accepted
  have memberships := accepted.1.2
  simp only [checkMembership,Bool.and_eq_true] at memberships
  have hx := of_decide_eq_true memberships.1.1.1
  have impossible := hx (0 : Fin 1)
  change false = true at impossible
  cases impossible

theorem not_complete : ¬ (∀ D : FiniteFilteredSquareCertificates.Data, ResultValid D →
    ∃ cert : Certificate D, check D cert = true) := by
  intro complete
  exact no_certificate (complete input result_valid)

#print axioms input_wellFormed
#print axioms result_valid
#print axioms no_certificate
#print axioms not_complete
end FiniteFilteredSquareCompletenessLimit
