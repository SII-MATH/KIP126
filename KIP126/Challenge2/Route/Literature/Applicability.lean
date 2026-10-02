import KIP126.Challenge2.Route.Literature.Moss
import KIP126.Def.Kervaire.Route.Triangles.Predicates

/-! Explicit source-to-model binding obligations. Existence of a good
geometric lift does not imply that an arbitrary previously selected lift
has that property. These conditions accompany A(M) instead of being
silently added to the frozen M, or asserted for every abstract model. -/
namespace KIP126.Literature.Route
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Synthetic.Context KIP126.Kervaire.Route
universe u v w
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H} (D : Model H M Syn)

/-- The first three sphere comparisons are CONSTRUCTED from the frozen ν
unit/suspension comparisons, rather than freely postulated isomorphisms. -/
def nuSphereOne : D.nu.functor.obj (Sphere (C := C) 1) ≅ Smn (Syn := Syn) 1 1 :=
  D.nu.suspensionIso SphereSpectrum ≪≫
    (SyntheticCategory.biShift (1,1)).mapIso D.nu.unitIso

def nuSphereTwo : D.nu.functor.obj (Sphere (C := C) 2) ≅ Smn (Syn := Syn) 2 2 :=
  D.nu.functor.mapIso ((shiftFunctorAdd' C 1 1 2 (by norm_num)).app SphereSpectrum) ≪≫
    D.nu.suspensionIso (Sphere (C := C) 1) ≪≫
    (SyntheticCategory.biShift (1,1)).mapIso (nuSphereOne D) ≪≫
    (SyntheticCategory.biShift_comp (1,1) (1,1)).app S00

def nuSphereThree : D.nu.functor.obj (Sphere (C := C) 3) ≅ Smn (Syn := Syn) 3 3 :=
  D.nu.functor.mapIso ((shiftFunctorAdd' C 2 1 3 (by norm_num)).app SphereSpectrum) ≪≫
    D.nu.suspensionIso (Sphere (C := C) 2) ≪≫
    (SyntheticCategory.biShift (1,1)).mapIso (nuSphereTwo D) ≪≫
    (SyntheticCategory.biShift_comp (2,2) (1,1)).app S00

/-- The normalized Hopf ν is the map already selected by D. -/
def normalizedNu (he : normalizedExponent H D.auxiliary.nuMap = 1) :
    BiHom 3 4 (S00 : Syn) := by
  let e : (SyntheticCategory.biShift (0, (normalizedExponent H D.auxiliary.nuMap : ℤ))).obj
      (D.nu.functor.obj (Sphere (C := C) 3)) ≅ Smn (Syn := Syn) 3 4 := by
    rw [he]
    exact (SyntheticCategory.biShift (0,1)).mapIso (nuSphereThree D) ≪≫
      (SyntheticCategory.biShift_comp (3,3) (0,1)).app S00
  exact e.inv ≫ (D.normalizedMap (.shift 3 .sphere) .sphere D.auxiliary.nuMap).map ≫
    D.nu.unitIso.hom

/-- Required binding to the actual Cν triangle. The source is the BHS
geometric triangle construction, with rotations, applied to the SAME maps.
Only this triangle is required; no assertion about all chosen lifts is made.
The distinguished condition is an explicit realization obligation, not a
new theorem of LWX or a consequence of the lift factorization alone. -/
structure NuCofiberApplicability : Prop where
  nu_exponent : normalizedExponent H D.auxiliary.nuMap = 1
  bottom_exponent : normalizedExponent H D.auxiliary.nuRouteTriangle.g = 0
  top_exponent : normalizedExponent H D.auxiliary.nuRouteTriangle.h = 0
  normalized_label :
    D.sphereFirstQuotient 1 4 (quotientClass 1 (normalizedNu D nu_exponent)) =
      Sphere.Internal.hi H M 2
  triangle : ∀ he :
      (normalizedExponent H D.auxiliary.nuRouteTriangle.f : ℤ) +
        normalizedExponent H D.auxiliary.nuRouteTriangle.g +
        normalizedExponent H D.auxiliary.nuRouteTriangle.h = 1,
    NormalizedTriangleCompatible D.toModelData D.auxiliary.nuRouteTriangle he

/-- These are model applicability obligations, recorded separately from
the source statements. They neither assert no-crossing computations nor
the ν-extension constructed in LWX Lemma 7.19. -/
structure Applicability : Prop where
  moss : MossTowerApplicability (H := H)
  nuCofiber : NuCofiberApplicability D
end
end KIP126.Literature.Route
