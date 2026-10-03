import KIP126.Def.SpectralSequence.ModuleQuotient.Data

namespace KIP126.Core.SpectralSequence

open CategoryTheory CategoryTheory.Limits
universe u v
variable {R : Type u} [Ring R] {M : ModuleCat.{v} R}

/-- Inclusions preserve the specified concrete representatives. -/
@[reassoc] theorem submoduleUnderlyingIso_inv_ofLE (B Z : Submodule R M) (h : B ≤ Z) :
    (submoduleUnderlyingIso B).inv ≫
      Subobject.ofLE ((ModuleCat.subobjectModule M).symm B)
        ((ModuleCat.subobjectModule M).symm Z)
        ((ModuleCat.subobjectModule M).symm.monotone h) =
    ModuleCat.ofHom (Submodule.inclusion h) ≫ (submoduleUnderlyingIso Z).inv := by
  apply (cancel_mono (submoduleUnderlyingIso Z).hom).mp
  simp only [Category.assoc, Iso.inv_hom_id, Category.comp_id]
  unfold submoduleUnderlyingIso
  rw [submodule_ofLE_underlyingIso B Z h]
  exact Iso.inv_hom_id_assoc _ _

set_option backward.isDefEq.respectTransparency false in
/-- The cokernel comparison sends each actual representative to its quotient class. -/
@[reassoc] theorem submoduleCokernelIso_π (B Z : Submodule R M) (h : B ≤ Z) :
    (Subobject.underlyingIso (ModuleCat.ofHom Z.subtype)).inv ≫
      cokernel.π (Subobject.ofLE ((ModuleCat.subobjectModule M).symm B)
        ((ModuleCat.subobjectModule M).symm Z)
        ((ModuleCat.subobjectModule M).symm.monotone h)) ≫
      (submoduleCokernelIso B Z h).hom =
        ModuleCat.ofHom (B.comap Z.subtype).mkQ := by
  simp only [submoduleCokernelIso, Iso.trans_hom, cokernel.mapIso_hom,
    cokernel.map, Category.assoc, cokernel.π_desc_assoc, Iso.inv_hom_id_assoc]
  rw [← Category.assoc, ModuleCat.cokernel_π_cokernelIsoRangeQuotient_hom]
  ext x
  exact Submodule.quotEquivOfEq_mk _ _ (Submodule.range_inclusion B Z h) x

end KIP126.Core.SpectralSequence
