import Mathlib.Algebra.Category.ModuleCat.Subobject
import Mathlib.Algebra.Category.ModuleCat.Abelian
import Mathlib.Algebra.Category.ModuleCat.Images
import Mathlib.LinearAlgebra.Quotient.Basic

namespace KIP126.Core.SpectralSequence

open CategoryTheory CategoryTheory.Limits
universe u v
variable {R : Type u} [Ring R] {M : ModuleCat.{v} R}

/-- The categorical inclusion of subobjects is the usual submodule inclusion
under the specified representative isomorphisms. -/
theorem submodule_ofLE_underlyingIso (B Z : Submodule R M) (h : B ≤ Z) :
    Subobject.ofLE ((ModuleCat.subobjectModule M).symm B)
      ((ModuleCat.subobjectModule M).symm Z)
      ((ModuleCat.subobjectModule _).symm.monotone h) ≫
        (Subobject.underlyingIso (ModuleCat.ofHom Z.subtype)).hom =
      (Subobject.underlyingIso (ModuleCat.ofHom B.subtype)).hom ≫
        ModuleCat.ofHom (Submodule.inclusion h) := by
  change Subobject.ofLE (Subobject.mk (ModuleCat.ofHom B.subtype))
    (Subobject.mk (ModuleCat.ofHom Z.subtype)) _ ≫ _ = _
  rw [Subobject.ofLE_mk_le_mk_of_comm
    (ModuleCat.ofHom (Submodule.inclusion h)) (by rfl)]
  simp

/-- The categorical image has exactly the ordinary linear-map range. -/
theorem subobjectModule_image {L : ModuleCat.{v} R} (f : L ⟶ M) :
    (ModuleCat.subobjectModule M) (imageSubobject f) = LinearMap.range f.hom := by
  have h : imageSubobject f =
      (ModuleCat.subobjectModule M).symm (LinearMap.range f.hom) :=
    Subobject.mk_eq_mk_of_comm _ _ (ModuleCat.imageIsoRange f)
      (ModuleCat.imageIsoRange_hom_subtype f)
  rw [h, OrderIso.apply_symm_apply]

/-- The categorical kernel has exactly the ordinary linear-map kernel. -/
theorem subobjectModule_kernel {N : ModuleCat.{v} R} (f : M ⟶ N) :
    (ModuleCat.subobjectModule M) (kernelSubobject f) = LinearMap.ker f.hom := by
  have h : kernelSubobject f =
      (ModuleCat.subobjectModule M).symm (LinearMap.ker f.hom) :=
    Subobject.mk_eq_mk_of_comm _ _ (ModuleCat.kernelIsoKer f) (by simp)
  rw [h, OrderIso.apply_symm_apply]

end KIP126.Core.SpectralSequence
