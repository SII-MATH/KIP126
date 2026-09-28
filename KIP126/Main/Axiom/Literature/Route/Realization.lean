import KIP126.Main.Axiom.Literature.Route.Synthetic

namespace KIP126.Literature.Route
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Core.SpectralSequence
open KIP126.Synthetic.Context KIP126.Synthetic.SpectralSequence KIP126.Kervaire.Route
universe u v w
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H} (D : Model H M Syn)

/-- Pstrągowski's realization comparison on bigraded spheres, using the
existing functor, ν-unit and λ powers. These are comparison witnesses for
an external existence result, not a second realization or arbitrary maps
on homotopy groups. The base unit and weight changes are pinned down. -/
structure RealizationCoordinates where
  sphere : ∀ m w : ℤ, Sphere (C := C) m ≅ D.recovery.realization.obj (Smn (Syn := Syn) m w)
  unit : (sphere 0 0).hom ≫ D.recovery.realization.map
      (SyntheticCategory.biShift_zero.hom.app (S00 : Syn)) =
    (shiftFunctorZero C ℤ).hom.app SphereSpectrum ≫
      D.recovery.nuRealizationIso.inv.app SphereSpectrum ≫
      D.recovery.realization.map D.nu.unitIso.hom
  lambda : ∀ (m w : ℤ) (k : ℕ),
    (sphere m (w-k)).hom ≫
      D.recovery.realization.map (lambdaMultiply k (𝟙 (Smn (Syn := Syn) m w))) =
        (sphere m w).hom

def realizeNu (R : RealizationCoordinates D) (X : ClassicalObject) {m w : ℤ}
    (a : BiHom m w (D.nu.functor.obj (X.obj D.auxiliary))) :
    HomotopyGroup m (X.obj D.auxiliary) :=
  (R.sphere m w).hom ≫ D.recovery.realization.map a ≫
    D.recovery.nuRealizationIso.hom.app (X.obj D.auxiliary)

def realizeNuZero (R : RealizationCoordinates D) (X : ClassicalObject) {m w : ℤ}
    (a : BiHom m w (nuZero D X)) : HomotopyGroup m (X.obj D.auxiliary) :=
  realizeNu D R X (a ≫ SyntheticCategory.biShift_zero.hom.app _)

/-- BHS A.1(2b),(3b). The same standard E₂ label detects the realized
class, and every specified detected class has an appropriate lift.
Neither clause replaces an arbitrary E₂ class by a later-page element. -/
structure RealizationDetection (R : RealizationCoordinates D) : Prop where
  /-- BHS A.1(2a): nonzero survival to E_(r+1) controls the lifetime
  of EVERY lift of a permanent cycle. The exponent is r-1, not r. -/
  lifetime : ∀ (X : ClassicalObject) (s t : ℤ) (r : ℕ), 1 ≤ r →
    ∀ (x : E2 H (X.obj D.auxiliary) s t) (a : BiHom (t-s) t (nuZero D X)),
    x ∈ PageRepresentatives.permanentCycles H (X.obj D.auxiliary) (s,t) →
    SurvivesTo (adamsTowerInternalSpectralSequence H.unit (X.obj D.auxiliary))
      (r+1) (s,t) x → quotientClass 1 a = firstLabel D X s t x →
    lambdaMultiply (r-1) a ≠ 0
  detection : ∀ (X : ClassicalObject) (s t : ℤ)
    (x : E2 H (X.obj D.auxiliary) s t) (a : BiHom (t-s) t (nuZero D X)),
    NonzeroSurvival (adamsTowerInternalSpectralSequence H.unit (X.obj D.auxiliary))
      (s,t) x → quotientClass 1 a = firstLabel D X s t x →
    TowerDetection.Detects (D.classicalConvergence X) (s,t) x (realizeNuZero D R X a)
  prescribed_lift : ∀ (X : ClassicalObject) (s t : ℤ)
    (x : E2 H (X.obj D.auxiliary) s t) (α : HomotopyGroup (t-s) (X.obj D.auxiliary)),
    NonzeroSurvival (adamsTowerInternalSpectralSequence H.unit (X.obj D.auxiliary))
      (s,t) x → TowerDetection.Detects (D.classicalConvergence X) (s,t) x α →
    ∃ a : BiHom (t-s) t (nuZero D X),
      quotientClass 1 a = firstLabel D X s t x ∧ realizeNuZero D R X a = α
  /-- BHS A.1(3a): only SOME lift of a permanent boundary is torsion.
  It would be wrong to demand this of every lift. -/
  boundary_lift : ∀ (X : ClassicalObject) (s t : ℤ) (r : ℕ), 2 ≤ r →
    ∀ (y : E2 H (X.obj D.auxiliary) s t),
    y ∈ PageRepresentatives.permanentCycles H (X.obj D.auxiliary) (s,t) →
    HitOnPage (adamsTowerInternalSpectralSequence H.unit (X.obj D.auxiliary)) r (s,t) y →
    ∃ a : BiHom (t-s) t (nuZero D X),
      quotientClass 1 a = firstLabel D X s t y ∧ lambdaMultiply (r-1) a = 0

/-- The comparison data and laws travel together in A(M). -/
structure RealizationInput where
  coordinates : RealizationCoordinates D
  detection : RealizationDetection D coordinates
end
end KIP126.Literature.Route
