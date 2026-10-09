import FilteredMapCokernelGraded.Conditions
import RepresentativeSquareCertificates.Basic

namespace FilteredMapCokernelGraded.Examples
open FilteredRepresentativeCrossing FilteredMapExtension FilteredMapGradedComparison
open RepresentativeSquareCertificates (Vector)

def short [AddCommGroup A] (H : AddSubgroup A) : Filtration A where
  group t := if t = 0 then H else ⊥
  decreasing := by
    intro i j hij
    by_cases hj : j = 0
    · subst j
      have hi : i = 0 := by omega
      subst i
      exact le_rfl
    · simp only [hj,if_false]
      exact bot_le

def full : Filtration (Vector 1) := short ⊤
def zero : Filtration (Vector 1) := short ⊥

def restrictedIdentity : FilteredMap zero full where
  hom := AddMonoidHom.id _
  preserves := by
    intro t x hx
    have hz : x = 0 := by simpa [zero,short] using hx
    subst x
    exact (full.group t).zero_mem

def nonzero : Vector 1 := ⟨fun _ => true⟩

/-- Without F_0 = A, restricting the identity to F_0 = 0 leaves a nonzero
cokernel, even though the full identity map has zero cokernel. -/
theorem restricted_identity_cokernel_nonzero :
    quotientMap zero full restrictedIdentity nonzero ≠ 0 := by
  intro h
  have mem := (QuotientAddGroup.eq_zero_iff nonzero).mp h
  obtain ⟨x,hx,eq⟩ := mem
  have hx0 : x = 0 := by simpa [zero,short] using hx
  have bad : (0 : Vector 1) = nonzero := by simpa [restrictedIdentity,hx0] using eq
  have bits := congrArg (fun v : Vector 1 => v.bits (0 : Fin 1)) bad
  cases bits

theorem full_identity_cokernel_zero (y : Vector 1) :
    QuotientAddGroup.mk' (AddMonoidHom.id (Vector 1)).range y = 0 := by
  exact (QuotientAddGroup.eq_zero_iff y).mpr ⟨y,rfl⟩

def zeroMap : FilteredMap zero zero where
  hom := 0
  preserves := by intro t x hx; exact (zero.group t).zero_mem

/-- An unfilled zeroth target filtration need not exhaust the cokernel. -/
theorem target_not_exhaustive :
    ¬ (∀ q : Cokernel zero zero zeroMap,
      ∃ t, q ∈ (cokernelFiltration zero zero zeroMap).group t) := by
  intro all
  obtain ⟨t,x,hx,eq⟩ := all (quotientMap zero zero zeroMap nonzero)
  have hx0 : x = 0 := by simpa [zero,short] using hx
  have killed : quotientMap zero zero zeroMap nonzero = 0 := by
    simpa [hx0] using eq.symm
  have mem := (QuotientAddGroup.eq_zero_iff nonzero).mp killed
  obtain ⟨x,_,eq⟩ := mem
  have bad : (0 : Vector 1) = nonzero := by simpa [zeroMap] using eq
  have bits := congrArg (fun v : Vector 1 => v.bits (0 : Fin 1)) bad
  cases bits

noncomputable def actual_final_identification :
    AllTargetPage zero full restrictedIdentity 0 1 ≃+
      Graded (cokernelFiltration zero full restrictedIdentity) 0 :=
  allTargetsEquivCokernelGraded zero full restrictedIdentity 0

#print axioms restricted_identity_cokernel_nonzero
#print axioms full_identity_cokernel_zero
#print axioms target_not_exhaustive
#print axioms actual_final_identification
end FilteredMapCokernelGraded.Examples
