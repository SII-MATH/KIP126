import FilteredMapGradedComparison.AllTargets

namespace FilteredMapCokernelGraded
open FilteredRepresentativeCrossing FilteredMapExtension FilteredMapGradedComparison

variable {A B : Type*} [AddCommGroup A] [AddCommGroup B]
variable (F : Filtration A) (G : Filtration B) (f : FilteredMap F G)

/-- The input homomorphism restricted to the actual zeroth source subgroup. -/
def restrictedHom : F.group 0 →+ B := f.hom.comp (F.group 0).subtype

def imageZero : AddSubgroup B := (F.group 0).map f.hom

theorem restrictedHom_range : (restrictedHom F G f).range = imageZero F G f := by
  ext y
  constructor
  · rintro ⟨x,rfl⟩
    exact ⟨x.val,x.property,rfl⟩
  · rintro ⟨x,hx,rfl⟩
    exact ⟨⟨x,hx⟩,rfl⟩

/-- This is the cokernel of `f` restricted to F_0, not an assumed page limit. -/
abbrev Cokernel := B ⧸ imageZero F G f

def quotientMap : B →+ Cokernel F G f := QuotientAddGroup.mk' (imageZero F G f)

theorem quotientMap_surjective : Function.Surjective (quotientMap F G f) :=
  QuotientAddGroup.mk'_surjective _

theorem quotientMap_eq (x y : B) : quotientMap F G f x = quotientMap F G f y ↔
    x-y ∈ imageZero F G f := QuotientAddGroup.eq_iff_sub_mem

/-- The filtration on the actual cokernel is the image of each target subgroup. -/
def cokernelFiltration : Filtration (Cokernel F G f) where
  group t := (G.group t).map (quotientMap F G f)
  decreasing := fun _ _ h => AddSubgroup.map_mono (G.decreasing h)

def levelMap (t : Nat) : G.group t →+ (cokernelFiltration F G f).group t where
  toFun y := ⟨quotientMap F G f y.val,⟨y.val,y.property,rfl⟩⟩
  map_zero' := Subtype.ext (map_zero _)
  map_add' _ _ := Subtype.ext (map_add _ _ _)

theorem levelMap_surjective (t : Nat) : Function.Surjective (levelMap F G f t) := by
  rintro ⟨y,z,hz,eq⟩
  exact ⟨⟨z,hz⟩,Subtype.ext eq⟩

def imageAt (t : Nat) : AddSubgroup (G.group t) :=
  (imageZero F G f).addSubgroupOf (G.group t)

theorem levelMap_kernel (t : Nat) : (levelMap F G f t).ker = imageAt F G f t := by
  ext y
  change levelMap F G f t y = 0 ↔ y.val ∈ imageZero F G f
  constructor
  · intro h
    exact (QuotientAddGroup.eq_zero_iff y.val).mp (congrArg Subtype.val h)
  · intro h
    exact Subtype.ext ((QuotientAddGroup.eq_zero_iff y.val).mpr h)

noncomputable def levelQuotientEquiv (t : Nat) :
    (G.group t ⧸ imageAt F G f t) ≃+ (cokernelFiltration F G f).group t :=
  QuotientAddGroup.liftEquiv (imageAt F G f t)
    (levelMap_surjective F G f t) (levelMap_kernel F G f t).symm

def toGraded (t : Nat) : G.group t →+ Graded (cokernelFiltration F G f) t :=
  (gradedClass (cokernelFiltration F G f) t).comp (levelMap F G f t)

theorem toGraded_surjective (t : Nat) : Function.Surjective (toGraded F G f t) := by
  intro q
  obtain ⟨y,rfl⟩ := QuotientAddGroup.mk'_surjective
    (gradedRelations (cokernelFiltration F G f) t) q
  obtain ⟨z,rfl⟩ := levelMap_surjective F G f t y
  exact ⟨z,rfl⟩

def finalRelations (t : Nat) : AddSubgroup B :=
  G.group (t+1) ⊔ (imageZero F G f ⊓ G.group t)

def finalSubgroup (t : Nat) : AddSubgroup (G.group t) :=
  (finalRelations F G f t).addSubgroupOf (G.group t)

theorem finalRelations_le (t : Nat) : finalRelations F G f t ≤ G.group t :=
  sup_le (G.decreasing (by omega)) inf_le_right

theorem imageAt_le_final (t : Nat) : imageAt F G f t ≤ finalSubgroup F G f t := by
  intro y hy
  exact AddSubgroup.mem_sup_right ⟨hy,y.property⟩

theorem toGraded_kernel (t : Nat) : (toGraded F G f t).ker = finalSubgroup F G f t := by
  ext y
  change gradedClass (cokernelFiltration F G f) t (levelMap F G f t y) = 0 ↔
    y.val ∈ finalRelations F G f t
  change ((levelMap F G f t y : (cokernelFiltration F G f).group t) :
    Graded (cokernelFiltration F G f) t) = 0 ↔ _
  rw [QuotientAddGroup.eq_zero_iff]
  change quotientMap F G f y.val ∈ (G.group (t+1)).map (quotientMap F G f) ↔ _
  constructor
  · rintro ⟨z,hz,eq⟩
    have hk : y.val-z ∈ imageZero F G f := (quotientMap_eq F G f _ _).mp eq.symm
    have ht : y.val-z ∈ G.group t :=
      (G.group t).sub_mem y.property (G.decreasing (by omega) hz)
    exact AddSubgroup.mem_sup.mpr ⟨z,hz,y.val-z,⟨hk,ht⟩,by abel⟩
  · intro hy
    obtain ⟨z,hz,k,⟨hk,_⟩,eq⟩ := AddSubgroup.mem_sup.mp hy
    refine ⟨z,hz,?_⟩
    apply (quotientMap_eq F G f _ _).mpr
    rw [← eq]
    convert (imageZero F G f).neg_mem hk using 1
    abel

/-- First isomorphism theorem applied to the explicitly constructed map to
the associated graded of the actual cokernel filtration. -/
noncomputable def finalQuotientEquivGraded (t : Nat) :
    (G.group t ⧸ finalSubgroup F G f t) ≃+ Graded (cokernelFiltration F G f) t :=
  QuotientAddGroup.liftEquiv (finalSubgroup F G f t)
    (toGraded_surjective F G f t) (toGraded_kernel F G f t).symm

theorem finalQuotientEquivGraded_class (t : Nat) (y : G.group t) :
    finalQuotientEquivGraded F G f t (QuotientAddGroup.mk' _ y) =
      gradedClass (cokernelFiltration F G f) t (levelMap F G f t y) := rfl

/-- Under the actual map onto the cokernel level, the final relations are
exactly the next induced filtration subgroup. -/
theorem finalSubgroup_image (t : Nat) :
    (finalSubgroup F G f t).map (levelMap F G f t) =
      gradedRelations (cokernelFiltration F G f) t := by
  ext y
  constructor
  · rintro ⟨x,hx,rfl⟩
    have hk : x ∈ (toGraded F G f t).ker := by
      rw [toGraded_kernel]
      exact hx
    exact (QuotientAddGroup.eq_zero_iff _).mp hk
  · intro hy
    obtain ⟨x,rfl⟩ := levelMap_surjective F G f t y
    refine ⟨x,?_,rfl⟩
    rw [← toGraded_kernel]
    exact (QuotientAddGroup.eq_zero_iff _).mpr hy

/-- Quotient first by the image already in G_t, then by the higher target
relations. This explicit third-isomorphism model has no convergence premise. -/
def iteratedQuotientEquivFinal (t : Nat) :
    ((G.group t ⧸ imageAt F G f t) ⧸
      (finalSubgroup F G f t).map (QuotientAddGroup.mk' (imageAt F G f t))) ≃+
    (G.group t ⧸ finalSubgroup F G f t) :=
  QuotientAddGroup.quotientQuotientEquivQuotient
    (imageAt F G f t) (finalSubgroup F G f t) (imageAt_le_final F G f t)

noncomputable def iteratedQuotientEquivGraded (t : Nat) :
    ((G.group t ⧸ imageAt F G f t) ⧸
      (finalSubgroup F G f t).map (QuotientAddGroup.mk' (imageAt F G f t))) ≃+
    Graded (cokernelFiltration F G f) t :=
  (iteratedQuotientEquivFinal F G f t).trans (finalQuotientEquivGraded F G f t)

theorem finalTargetRelations (t : Nat) :
    allTargetRelations F G f t (t+1) = finalRelations F G f t :=
  allTargetRelations_final F G f t

/-- The stabilized target quotient is the associated graded of the actual
cokernel of `f` restricted to F_0. -/
noncomputable def allTargetsEquivCokernelGraded (t : Nat) :
    AllTargetPage F G f t (t+1) ≃+ Graded (cokernelFiltration F G f) t :=
  (QuotientAddGroup.equivQuotientAddSubgroupOfOfEq
    (finalTargetRelations F G f t) rfl).trans (finalQuotientEquivGraded F G f t)

theorem allTargetsEquivCokernelGraded_class (t : Nat) (y : G.group t) :
    allTargetsEquivCokernelGraded F G f t (QuotientAddGroup.mk' _ y) =
      gradedClass (cokernelFiltration F G f) t (levelMap F G f t y) := rfl

#print axioms restrictedHom_range
#print axioms levelMap_kernel
#print axioms levelQuotientEquiv
#print axioms toGraded_kernel
#print axioms finalQuotientEquivGraded
#print axioms finalSubgroup_image
#print axioms iteratedQuotientEquivGraded
#print axioms allTargetsEquivCokernelGraded
#print axioms allTargetsEquivCokernelGraded_class
end FilteredMapCokernelGraded
