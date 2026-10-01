import KIP126.Def.Kervaire.Inputs.Literature.Realization
import KIP126.Def.Comparison.ClassicalSynthetic.RealizationWeights

/-! Canonical realization coordinates are internal model data, not an
extra BHS theorem. The diagonal sphere comparison is pinned at zero and
at every integer successor by the already specified nu suspension map;
all other weights are pinned by actual lambda and nu recovery. -/
namespace KIP126.Literature.Route
open CategoryTheory CategoryTheory.Functor
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology KIP126.Classical.Adams
open KIP126.Synthetic.Context KIP126.Kervaire.Route
open KIP126.Comparison.ClassicalSynthetic
universe u v w
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u,v} C] [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w,v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H} (D : Model H M Syn)

def nuSphereZero : D.nu.functor.obj (Sphere (C := C) 0) ≅ Smn (Syn := Syn) 0 0 :=
  D.nu.functor.mapIso ((shiftFunctorZero C ℤ).app SphereSpectrum) ≪≫
    D.nu.unitIso ≪≫ (SyntheticCategory.biShift_zero.app S00).symm

def nuSphereSuccessor (m : ℤ)
    (e : D.nu.functor.obj (Sphere (C := C) m) ≅ Smn (Syn := Syn) m m) :
    D.nu.functor.obj (Sphere (C := C) (m+1)) ≅ Smn (Syn := Syn) (m+1) (m+1) :=
  D.nu.functor.mapIso ((shiftFunctorAdd C m 1).app SphereSpectrum) ≪≫
    D.nu.suspensionIso (Sphere (C := C) m) ≪≫
    (SyntheticCategory.biShift (1,1)).mapIso e ≪≫
    (SyntheticCategory.biShift_comp (m,m) (1,1)).app S00

structure NuSphereCoordinates where
  iso : ∀ m : ℤ, D.nu.functor.obj (Sphere (C := C) m) ≅ Smn (Syn := Syn) m m
  zero : iso 0 = nuSphereZero D
  successor : ∀ m, iso (m+1) = nuSphereSuccessor D m (iso m)

theorem NuSphereCoordinates.unique (A B : NuSphereCoordinates D) : A = B := by sorry

theorem nuSphereCoordinates_exists : Nonempty (NuSphereCoordinates D) := by sorry

def nuSphereCoordinates : NuSphereCoordinates D := Classical.choice (nuSphereCoordinates_exists D)

/-- Only the index identity (m,m)+(0,w-m)=(m,w) is transported. -/
def weightSphereRegrade (m w : ℤ) : Smn (Syn := Syn) m w ≅
    (SyntheticCategory.biShift (0,w-m)).obj (Smn (Syn := Syn) m m) :=
  (eqToIso (by congr 1 <;> dsimp <;> omega) : Smn (Syn := Syn) m w ≅
      (SyntheticCategory.biShift ((m,m)+(0,w-m))).obj (S00 : Syn)) ≪≫
    ((SyntheticCategory.biShift_comp (m,m) (0,w-m)).app S00).symm

def sourceSphereRealizationIso (m w : ℤ) :
    D.recovery.realization.obj (Smn (Syn := Syn) m w) ≅ Sphere (C := C) m :=
  D.recovery.realization.mapIso (weightSphereRegrade m w) ≪≫
    D.recovery.realization.mapIso ((SyntheticCategory.biShift (0,w-m)).mapIso
      ((nuSphereCoordinates D).iso m).symm) ≪≫
    (realizationWeights D.nu D.recovery D.shiftCoherence).iso (Sphere (C := C) m) (w-m)

/-- The coordinates passed to the BHS detection leaf are fixed by maps,
not selected independently by their degrees. -/
def sourceRealizationCoordinates : RealizationCoordinates D where
  sphere m w := (sourceSphereRealizationIso D m w).symm
  unit := by sorry
  lambda := by sorry

end
end KIP126.Literature.Route
