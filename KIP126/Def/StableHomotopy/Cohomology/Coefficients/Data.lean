import KIP126.Def.StableHomotopy.Cohomology.Coefficients.Basic.Proofs
import Mathlib.Algebra.Category.ModuleCat.Basic
import Mathlib.Algebra.Module.ZMod

/-! Mod-two scalar structures derived from the specified H-ring and additive tensor.
No page, differential, scalar action, or Milnor coordinates are postulated. -/

namespace KIP126.StableHomotopy.Cohomology

noncomputable section

open CategoryTheory MonoidalCategory KIP126.Classical.Adams

universe u v

set_option backward.isDefEq.respectTransparency false

variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  (H : Mod2EilenbergMacLane (C := C))

variable [MonoidalPreadditive C] (R : Mod2RingStructure H)

/-- The canonical F₂ action on the existing homology group, derived from two-torsion.
This is an explicit local structure, not a globally selected instance. -/
abbrev mod2HomologyModule (n : ℤ) (X : C) : Module (ZMod 2) (Mod2Homology H n X) :=
  AddCommGroup.zmodModule (mod2Homology_two_nsmul_zero H R n X)

/-- The derived F₂ action on represented cohomology, including `πₙ H` when
the source is the sphere. -/
abbrev mod2CohomologyModule (n : ℤ) (X : C) : Module (ZMod 2) (Mod2Cohomology H n X) :=
  AddCommGroup.zmodModule (mod2Cohomology_two_nsmul_zero H R n X)

/-- The specified π₀ coordinate is automatically linear for the derived scalars. -/
def mod2Pi0LinearEquiv :
    letI := mod2CohomologyModule H R 0 SphereSpectrum
    HomotopyGroup 0 H.HF2 ≃ₗ[ZMod 2] ZMod 2 :=
  letI := mod2CohomologyModule H R 0 SphereSpectrum
  { H.pi0Equiv with map_smul' := ZMod.map_smul H.pi0Equiv }

/-- The actual cooperation counit, now F₂-linear without any polynomial coordinates. -/
def cooperationCounitF2 (n : ℤ) :
    letI := mod2HomologyModule H R n H.HF2
    letI := mod2CohomologyModule H R n SphereSpectrum
    Mod2Cooperations H n →ₗ[ZMod 2] HomotopyGroup n H.HF2 :=
  letI := mod2HomologyModule H R n H.HF2
  letI := mod2CohomologyModule H R n SphereSpectrum
  (cooperationCounit H R n).toZModLinearMap 2

/-- The actual cooperation diagonal is linear before any Künneth identification. -/
def cooperationDiagonalF2 (n : ℤ) :
    letI := mod2HomologyModule H R n H.HF2
    letI := mod2HomologyModule H R n (H.HF2 ⊗ H.HF2)
    Mod2Cooperations H n →ₗ[ZMod 2] Mod2Homology H n (H.HF2 ⊗ H.HF2) :=
  letI := mod2HomologyModule H R n H.HF2
  letI := mod2HomologyModule H R n (H.HF2 ⊗ H.HF2)
  (cooperationDiagonalMap H n).toZModLinearMap 2

/-- The existing homology group bundled with its derived F₂ scalar action. -/
def mod2HomologyF2 (n : ℤ) (X : C) : ModuleCat.{v} (ZMod 2) :=
  letI := mod2HomologyModule H R n X
  ModuleCat.of (ZMod 2) (Mod2Homology H n X)

/-- The original pushforward, now F₂-linear; its underlying function is unchanged. -/
def mod2HomologyF2Map {X Y : C} (f : X ⟶ Y) (n : ℤ) :
    mod2HomologyF2 H R n X ⟶ mod2HomologyF2 H R n Y :=
  letI := mod2HomologyModule H R n X
  letI := mod2HomologyModule H R n Y
  ModuleCat.ofHom ((Mod2Homology.pushforward H f n).toZModLinearMap 2)

/-- The F₂-linear homology functor constructed from the same represented theory. -/
def mod2HomologyF2Functor (n : ℤ) : C ⥤ ModuleCat.{v} (ZMod 2) where
  obj X := mod2HomologyF2 H R n X
  map f := mod2HomologyF2Map H R f n
  map_id X := by
    apply ModuleCat.hom_ext
    ext x
    change x ≫ H.HF2 ◁ 𝟙 X = x
    simp
  map_comp f g := by
    apply ModuleCat.hom_ext
    ext x
    change x ≫ H.HF2 ◁ (f ≫ g) = (x ≫ H.HF2 ◁ f) ≫ H.HF2 ◁ g
    simp [Category.assoc]

end

end KIP126.StableHomotopy.Cohomology
