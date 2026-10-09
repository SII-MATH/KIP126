import FilteredMapCokernelGraded.Basic

namespace FilteredMapCokernelGraded
open FilteredRepresentativeCrossing FilteredMapExtension FilteredMapGradedComparison
variable {A B : Type*} [AddCommGroup A] [AddCommGroup B]
variable (F : Filtration A) (G : Filtration B) (f : FilteredMap F G)

theorem imageZero_eq_range (sourceTop : F.group 0 = ⊤) : imageZero F G f = f.hom.range := by
  ext y
  constructor
  · rintro ⟨x,_,rfl⟩
    exact ⟨x,rfl⟩
  · rintro ⟨x,rfl⟩
    exact ⟨x,by rw [sourceTop]; trivial,rfl⟩

/-- Fullness of F_0 is a sufficient condition identifying the restricted
cokernel with the full cokernel; it is not silently assumed. -/
def fullCokernelEquiv (sourceTop : F.group 0 = ⊤) : Cokernel F G f ≃+ B ⧸ f.hom.range :=
  QuotientAddGroup.quotientAddEquivOfEq (imageZero_eq_range F G f sourceTop)

theorem fullCokernelEquiv_class (sourceTop : F.group 0 = ⊤) (y : B) :
    fullCokernelEquiv F G f sourceTop (quotientMap F G f y) =
      QuotientAddGroup.mk' f.hom.range y := rfl

def fullCokernelFiltration : Filtration (B ⧸ f.hom.range) where
  group t := (G.group t).map (QuotientAddGroup.mk' f.hom.range)
  decreasing := fun _ _ h => AddSubgroup.map_mono (G.decreasing h)

theorem fullCokernelEquiv_filtration (sourceTop : F.group 0 = ⊤) (t : Nat) :
    ((cokernelFiltration F G f).group t).map (fullCokernelEquiv F G f sourceTop).toAddMonoidHom =
      (fullCokernelFiltration F G f).group t := by
  ext y
  constructor
  · rintro ⟨z,⟨a,ha,rfl⟩,rfl⟩
    exact ⟨a,ha,rfl⟩
  · rintro ⟨a,ha,rfl⟩
    exact ⟨quotientMap F G f a,⟨a,ha,rfl⟩,rfl⟩

/-- Zeroth target fullness is a separate, sufficient exhaustion condition. -/
theorem cokernelFiltration_zero_eq_top (targetTop : G.group 0 = ⊤) :
    (cokernelFiltration F G f).group 0 = ⊤ := by
  change (G.group 0).map (quotientMap F G f) = ⊤
  rw [targetTop]
  exact AddSubgroup.map_top_of_surjective _ (quotientMap_surjective F G f)

theorem cokernelFiltration_exhaustive (targetTop : G.group 0 = ⊤) :
    ∀ q : Cokernel F G f, ∃ t, q ∈ (cokernelFiltration F G f).group t := by
  intro q
  exact ⟨0,by rw [cokernelFiltration_zero_eq_top F G f targetTop]; trivial⟩

/-- The quotient condition before using filtration preservation. -/
theorem cokernelFiltration_zero_eq_top_iff :
    (cokernelFiltration F G f).group 0 = ⊤ ↔ G.group 0 ⊔ imageZero F G f = ⊤ := by
  constructor
  · intro top
    apply top_unique
    intro y _
    have hy : quotientMap F G f y ∈ (cokernelFiltration F G f).group 0 := by rw [top]; trivial
    obtain ⟨z,hz,eq⟩ := hy
    have difference := (quotientMap_eq F G f _ _).mp eq.symm
    exact AddSubgroup.mem_sup.mpr ⟨z,hz,y-z,difference,by abel⟩
  · intro top
    apply top_unique
    intro q _
    obtain ⟨y,rfl⟩ := quotientMap_surjective F G f q
    have hy : y ∈ G.group 0 ⊔ imageZero F G f := by rw [top]; trivial
    obtain ⟨z,hz,k,hk,eq⟩ := AddSubgroup.mem_sup.mp hy
    refine ⟨z,hz,?_⟩
    apply (quotientMap_eq F G f _ _).mpr
    rw [← eq]
    convert (imageZero F G f).neg_mem hk using 1
    abel

theorem imageZero_le_target_zero : imageZero F G f ≤ G.group 0 := by
  rintro y ⟨x,hx,rfl⟩
  exact f.preserves 0 hx

/-- Preservation puts f(F_0) inside G_0, so induced exhaustion is equivalent
to the actual zeroth target subgroup being all of B. -/
theorem cokernelFiltration_zero_eq_top_iff_target :
    (cokernelFiltration F G f).group 0 = ⊤ ↔ G.group 0 = ⊤ := by
  rw [cokernelFiltration_zero_eq_top_iff, sup_eq_left.mpr (imageZero_le_target_zero F G f)]

theorem cokernelFiltration_exhaustive_iff_target :
    (∀ q : Cokernel F G f, ∃ t, q ∈ (cokernelFiltration F G f).group t) ↔
      G.group 0 = ⊤ := by
  constructor
  · intro all
    apply (cokernelFiltration_zero_eq_top_iff_target F G f).mp
    apply top_unique
    intro q _
    obtain ⟨t,ht⟩ := all q
    exact (cokernelFiltration F G f).decreasing (Nat.zero_le t) ht
  · exact cokernelFiltration_exhaustive F G f

#print axioms imageZero_eq_range
#print axioms fullCokernelEquiv
#print axioms fullCokernelEquiv_filtration
#print axioms cokernelFiltration_zero_eq_top
#print axioms cokernelFiltration_exhaustive
#print axioms cokernelFiltration_zero_eq_top_iff
#print axioms cokernelFiltration_zero_eq_top_iff_target
#print axioms cokernelFiltration_exhaustive_iff_target
end FilteredMapCokernelGraded
