import KIP126.Def.Kervaire.Inputs.Literature.Moss
import KIP126.Def.Kervaire.Route.Triangles.Predicates

/-! Explicit source-to-model binding obligations. Existence of a good
geometric lift does not imply that an arbitrary previously selected lift
has that property. These conditions accompany A(M) instead of being
silently added to the frozen M, or asserted for every abstract model. -/
namespace KIP126.Literature.Route
open CategoryTheory CategoryTheory.Pretriangulated KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
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

/-- The compatibility premise is applicable: its exponent equation is
proved from the three source-bound exponents, not left as a vacuous ∀. -/
theorem NuCofiberApplicability.exponent_sum (P : NuCofiberApplicability D) :
    (normalizedExponent H D.auxiliary.nuRouteTriangle.f : ℤ) +
      normalizedExponent H D.auxiliary.nuRouteTriangle.g +
      normalizedExponent H D.auxiliary.nuRouteTriangle.h = 1 := by
  change (normalizedExponent H D.auxiliary.nuMap : ℤ) + _ + _ = 1
  rw [P.nu_exponent, P.bottom_exponent, P.top_exponent]
  norm_num

/-- The three lifts supplied by the Pstragowski/BHS geometric construction
for the actual nu cofiber. They are independent of D's later selected
normalized maps. Existence of this source data does not validate arbitrary
choices in D. -/
structure NuCofiberSourceData where
  nuLift : NormalizedSyntheticMap H D.nu D.auxiliary.nuMap
  bottomLift : NormalizedSyntheticMap H D.nu D.auxiliary.nuRouteTriangle.g
  topLift : NormalizedSyntheticMap H D.nu D.auxiliary.nuRouteTriangle.h

/-- The source top lift has exactly the same landing convention as the
route's normalized connecting arrow. -/
def sourceNormalizedConnecting (S : NuCofiberSourceData D)
    (he : (normalizedExponent H D.auxiliary.nuRouteTriangle.f : ℤ) +
      normalizedExponent H D.auxiliary.nuRouteTriangle.g +
      normalizedExponent H D.auxiliary.nuRouteTriangle.h = 1) :=
  let T := D.auxiliary.nuRouteTriangle
  let eg : ℤ := normalizedExponent H T.g
  let eh : ℤ := normalizedExponent H T.h
  let X := D.nu.functor.obj (T.X.obj D.auxiliary)
  (SyntheticCategory.biShift (0,-eg)).map
      (negativeLift (normalizedExponent H T.h) S.topLift.map) ≫
    (SyntheticCategory.biShift (0,-eg)).map
      ((SyntheticCategory.biShift (0,-eh)).map (D.nu.suspensionIso (T.X.obj D.auxiliary)).hom) ≫
    (SyntheticCategory.biShift (0,-eg)).map
      ((SyntheticCategory.biShift_comp (1,1) (0,-eh)).hom.app X) ≫
    (SyntheticCategory.biShift_comp ((1,1)+(0,-eh)) (0,-eg)).hom.app X ≫
    eqToHom (congrArg (fun p => (SyntheticCategory.biShift p).obj X)
      (show ((1,1)+(0,-eh))+(0,-eg) = (0,(normalizedExponent H T.f : ℤ))+(1,0) from by
        dsimp [eg, eh, T]; ext <;> simp only [Prod.fst_add, Prod.snd_add, Prod.fst, Prod.snd] <;> omega)) ≫
    (SyntheticCategory.biShift_comp (0,(normalizedExponent H T.f : ℤ)) (1,0)).inv.app X ≫
    (SyntheticCategory.biShift_compat (Syn := Syn) 1).hom.app _

def sourceNormalizedTriangle (S : NuCofiberSourceData D)
    (he : (normalizedExponent H D.auxiliary.nuRouteTriangle.f : ℤ) +
      normalizedExponent H D.auxiliary.nuRouteTriangle.g +
      normalizedExponent H D.auxiliary.nuRouteTriangle.h = 1) : Triangle Syn :=
  Triangle.mk S.nuLift.map
    (negativeLift (normalizedExponent H D.auxiliary.nuRouteTriangle.g) S.bottomLift.map)
    (sourceNormalizedConnecting D S he)

def sourceNormalizedNu (S : NuCofiberSourceData D)
    (he : normalizedExponent H D.auxiliary.nuMap = 1) : BiHom 3 4 (S00 : Syn) := by
  let e : (SyntheticCategory.biShift (0, (normalizedExponent H D.auxiliary.nuMap : ℤ))).obj
      (D.nu.functor.obj (Sphere (C := C) 3)) ≅ Smn (Syn := Syn) 3 4 := by
    rw [he]
    exact (SyntheticCategory.biShift (0,1)).mapIso (nuSphereThree D) ≪≫
      (SyntheticCategory.biShift_comp (3,3) (0,1)).app S00
  exact e.inv ≫ S.nuLift.map ≫ D.nu.unitIso.hom

/-- Internal construction target for a compatible triple, with cofiber
maps and the h2 label. Pstragowski Lemma 4.23 and BHS Lemma 9.15 supply
the separate exactness and divisibility leaves; neither is quoted as
the full compatible-three-lifts-and-label statement below. The assembly
must also use actual Hopf detection and the first-quotient comparison.
This asserts nothing about arbitrary selected lifts. -/
structure NuCofiberSourceResults (S : NuCofiberSourceData D) : Prop where
  nu_exponent : normalizedExponent H D.auxiliary.nuMap = 1
  bottom_exponent : normalizedExponent H D.auxiliary.nuRouteTriangle.g = 0
  top_exponent : normalizedExponent H D.auxiliary.nuRouteTriangle.h = 0
  normalized_label :
    D.sphereFirstQuotient 1 4 (quotientClass 1 (sourceNormalizedNu D S nu_exponent)) =
      Sphere.Internal.hi H M 2
  triangle : ∀ he, sourceNormalizedTriangle D S he ∈ distTriang Syn

/-- Internal model-adaptation target for the identified nu background.
It is not a permissible replacement for the separate Pstragowski/BHS
source leaves in Main/Axiom. Its construction and the subsequent binding
of D's normalized maps remain separate proof responsibilities. -/
def NuCofiberSourceExistence : Prop :=
  ∃ S : NuCofiberSourceData D, NuCofiberSourceResults D S

/-- Binding the three actually selected route arrows to one compatible
source triple. This is model realization data, not the source theorem and
not a consequence of normalized-lift factorization alone. -/
structure NuCofiberLiftBinding (S : NuCofiberSourceData D) : Prop where
  nu : S.nuLift.map =
    (D.normalizedMap (.shift 3 .sphere) .sphere D.auxiliary.nuMap).map
  bottom : S.bottomLift.map =
    (D.normalizedMap D.auxiliary.nuRouteTriangle.Y D.auxiliary.nuRouteTriangle.Z
      D.auxiliary.nuRouteTriangle.g).map
  top : S.topLift.map =
    (D.normalizedMap D.auxiliary.nuRouteTriangle.Z (.shift 1 D.auxiliary.nuRouteTriangle.X)
      D.auxiliary.nuRouteTriangle.h).map

theorem NuCofiberSourceResults.exponent_sum {S : NuCofiberSourceData D}
    (P : NuCofiberSourceResults D S) :
    (normalizedExponent H D.auxiliary.nuRouteTriangle.f : ℤ) +
      normalizedExponent H D.auxiliary.nuRouteTriangle.g +
      normalizedExponent H D.auxiliary.nuRouteTriangle.h = 1 := by
  change (normalizedExponent H D.auxiliary.nuMap : ℤ) + _ + _ = 1
  rw [P.nu_exponent, P.bottom_exponent, P.top_exponent]
  norm_num

/-- Source applicability records model comparisons only. The actual
compatible source triple and its theorem are separate Inputs fields. -/
structure Applicability (S : NuCofiberSourceData D) : Prop where
  moss : MossTowerApplicability (H := H)
  nuCofiber : NuCofiberLiftBinding D S
end
end KIP126.Literature.Route
