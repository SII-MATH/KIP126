import KIP126.Def.ClassicalAdams.SphereClasses.Hi.Data
import KIP126.Def.ClassicalAdams.TowerSSData.Sequence.Data

/-!
# Standard `hᵢ` classes on the internal tower spectral sequence

The existing quotient-page class is transported through the already constructed
isomorphism from internal `SSData` pages to the same tower's actual quotients.
This does not introduce a comparison of independently chosen spectral sequences,
and the Milnor input is the same one used to construct the representative.
-/

namespace KIP126.Classical.Adams.Sphere.Internal

noncomputable section

open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology

universe u v

variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  (H : Mod2EilenbergMacLane (C := C)) (M : MilnorCooperations H)

/-- The standard `hᵢ` on the internal second page of the actual sphere tower. -/
def hi (i : ℕ) :
    (adamsTowerInternalSpectralSequence H.unit SphereSpectrum).Page 2
      (1, ((2 ^ i : ℕ) : ℤ)) :=
  (adamsTowerSSDataPageIso H.unit SphereSpectrum 1 ((2 ^ i : ℕ) : ℤ) 0).inv
    (Sphere.hi H M i)

/-- The actual Milnor concatenation square on the same internal second page. -/
def hiSquare (i : ℕ) :
    (adamsTowerInternalSpectralSequence H.unit SphereSpectrum).Page 2
      (2, ((2 ^ (i + 1) : ℕ) : ℤ)) :=
  (adamsTowerSSDataPageIso H.unit SphereSpectrum 2 ((2 ^ (i + 1) : ℕ) : ℤ) 0).inv
    (Sphere.hiSquare H M i)

end

end KIP126.Classical.Adams.Sphere.Internal
