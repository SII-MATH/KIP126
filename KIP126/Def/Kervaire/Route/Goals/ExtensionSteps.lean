import KIP126.LinProgram.Route.Data
import KIP126.Def.Kervaire.Route.Extensions.Stretching.Predicates
import KIP126.Def.Kervaire.Route.Massey.Predicates
import KIP126.Def.Kervaire.Route.Conditions.Predicates

/-! Local Section 7 obligations. These are predicates, not inputs: no
extension, local Toda consequence, or choice independence is assumed.
All detections use the same D and all computed labels the same R. -/
namespace KIP126.Kervaire.Route
open CategoryTheory
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology KIP126.Classical.Adams
open KIP126.Synthetic.Context KIP126.Synthetic.SpectralSequence
open KIP126.Computation KIP126.Computation.Route KIP126.LinE2

attribute [local irreducible] KIP126.LinE2.homogeneousPart
set_option maxHeartbeats 800000
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}
  (D : Model H M Syn) (R : Realization D)

/-- The shifted source of the actual nu triangle, with all three tower
suspensions displayed. This is the same comparison used in TopCorrect. -/
def NuShiftedX (x3 : E2 H (Sphere 3) 8 133) : Prop :=
  ∃ (a2 : E2 H (Sphere 2) 8 132) (a1 : E2 H (Sphere 1) 8 131),
    (D.classicalSuspension (.shift 2 .sphere)).DesuspendsClass 8 133
      (adamsInternalE2Induced H.unit
        ((shiftFunctorAdd' C (2 : ℤ) 1 3 (by decide)).hom.app SphereSpectrum)
        (8,133) x3) a2 ∧
    (D.classicalSuspension (.shift 1 .sphere)).DesuspendsClass 8 132
      (adamsInternalE2Induced H.unit
        ((shiftFunctorAdd' C (1 : ℤ) 1 2 (by decide)).hom.app SphereSpectrum)
        (8,132) a2) a1 ∧
    (D.classicalSuspension .sphere).DesuspendsClass 8 131 a1
      (R.sphere 8 130 Near126.X)

/-- Lemma 7.20 after the finite lift and the lambda^4 map to Q9.
The two homotopy classes are existentially chosen. The target detection
retains its full higher-filtration indeterminacy. -/
def NuQuotientRelation (nu : BiHom 3 4 (S00 : Syn)) : Prop :=
  ∃ (x : BiHom 122 126 (XModLambdaN (S00 : Syn) 9))
    (y : BiHom 125 131 (XModLambdaN (S00 : Syn) 9)),
    DetectsNonzero (D.quotientConvergence 9 (by decide)) (8,130,126)
      (D.quotientLabel 9 8 130 4 (R.sphere 8 130 Near126.X)) x ∧
    DetectsNonzero (D.quotientConvergence 9 (by decide)) (11,136,131)
      (D.quotientLabel 9 11 136 5 (R.sphere 11 136 Near126.Y)) y ∧
    sphereAction nu x = lambdaMultiply 1 y

/-- Lemma 7.14. The same alpha1 works for every admissible U lift;
alpha2 and alpha3 may depend on that lift. Exact equations are stated
only after existential choices, not for arbitrary chosen representatives. -/
def AlphaOneRelations (L : Labels H) (eta : BiHom 1 2 (S00 : Syn))
    (h0 : BiHom 0 1 (S00 : Syn)) : Prop :=
  ∃ a11 : BiHom 123 132 (XModLambdaN (S00 : Syn) 11),
    DetectsNonzero (D.quotientConvergence 11 (by decide)) (9,132,132)
      (D.quotientLabel 11 9 132 0 (R.sphere 9 132 Near126.V)) a11 ∧
    let a1 := a11 ≫ (D.quotientTower S00).rho 9 11 (by decide)
    DetectsNonzero (D.quotientConvergence 9 (by decide)) (9,132,132)
      (D.quotientLabel 9 9 132 0 (R.sphere 9 132 Near126.V)) a1 ∧
    (∀ u : BiHom 124 134 (S00 : Syn), UChoice M D.toModelData L u →
      ∃ (a2 : BiHom 124 137 (XModLambdaN (S00 : Syn) 9))
        (a3 : BiHom 125 140 (XModLambdaN (S00 : Syn) 9)),
        lambdaMultiply 3 (sphereAction eta a1) =
          (show BiHom 124 131 (XModLambdaN (S00 : Syn) 9) from
            lambdaMultiply 3 (quotientClass 9 u)) +
          (show BiHom 124 131 (XModLambdaN (S00 : Syn) 9) from
            lambdaMultiply 6 a2) ∧
        sphereAction eta a2 = lambdaMultiply 1 a3) ∧
    lambdaMultiply 3 (sphereAction h0 a1) = 0

/-- The exact low-filtration exhaustion in Lemma 7.16. It is an additive
statement modulo the actual F13, not an F2-vector-space structure on
homotopy. Zero contributions are allowed; nonzero terms retain detection. -/
def Quotient125LowFiltrationGeneration : Prop :=
  ∀ a : BiHom 125 132 (XModLambdaN (S00 : Syn) 9),
    ∃ p q y : BiHom 125 132 (XModLambdaN (S00 : Syn) 9),
      (p = 0 ∨ DetectsNonzero (D.quotientConvergence 9 (by decide)) (7,132,132)
        (D.quotientLabel 9 7 132 0 (R.sphere 7 132 (mulAt Near126.h0Sq (Near126.atom .x125_5)))) p) ∧
      (q = 0 ∨ DetectsNonzero (D.quotientConvergence 9 (by decide)) (9,134,132)
        (D.quotientLabel 9 9 134 2 (R.sphere 9 134 (mulAt dataH6 Near126.B))) q) ∧
      (y = 0 ∨ DetectsNonzero (D.quotientConvergence 9 (by decide)) (11,136,132)
        (D.quotientLabel 9 11 136 4 (R.sphere 11 136 Near126.Y)) y) ∧
      FiltrationAtLeast (nuCoefficientUnit H.unit D.nu) 13 (a - p - q - y)

/-- The part of Corollary 7.18 required by the route: there are actual
Y lifts, and EVERY such lift has the same nonzero AF14 leading term
under h0. Higher-filtration ambiguity is retained. No assertion that
h0*y is lambda^6 times a selected unweighted T lift is included. -/
def H0ExtensionForAllY (L : Labels H) (h0 : BiHom 0 1 (S00 : Syn)) : Prop :=
  (∃ y : BiHom 125 132 (XModLambdaN (S00 : Syn) 9),
    DetectsNonzero (D.quotientConvergence 9 (by decide)) (11,136,132)
      (D.quotientLabel 9 11 136 4 (R.sphere 11 136 Near126.Y)) y) ∧
  ∀ y : BiHom 125 132 (XModLambdaN (S00 : Syn) 9),
    DetectsNonzero (D.quotientConvergence 9 (by decide)) (11,136,132)
      (D.quotientLabel 9 11 136 4 (R.sphere 11 136 Near126.Y)) y →
    DetectsNonzero (D.quotientConvergence 9 (by decide)) (14,139,133)
      (D.quotientLabel 9 14 139 6 (L.target M)) (sphereAction h0 y)
end KIP126.Kervaire.Route
