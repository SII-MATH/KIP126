import KIP126.Challenge2.Route.Literature.DependencyTypes

/-! Classical literature inputs on the frozen route's actual Adams tower.
These are explicit hypotheses, not instances or proved theorems. See
`docs/A_INPUT_FREEZE.md` for source locators and the scope of this package. -/
namespace KIP126.Literature.Route
open CategoryTheory KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology
open KIP126.Classical.Adams KIP126.Core.SpectralSequence
open KIP126.Synthetic.Context KIP126.Kervaire.Route
universe u v w
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H} (D : Model H M Syn)

/-- A classical θ₅ means detection by the standard Milnor square, on D's
classical convergence. It is not identified with a CSV coordinate. -/
def ClassicalTheta (θ : HomotopyGroup (C := C) 62 SphereSpectrum) : Prop :=
  TowerDetection.Detects (D.classicalConvergence .sphere) (2,64)
    (Sphere.Internal.hiSquare H M 5) θ

/-- BJM (1984), or Xu Corollary 1.3: an order-two θ₅ exists.
The nonzero-survival clause prevents a zero representative from fulfilling
existence merely because `Detects` permits a zero associated-graded class. -/
def Theta5Existence : Prop :=
  NonzeroSurvival (adamsTowerInternalSpectralSequence H.unit SphereSpectrum)
    (2,64) (Sphere.Internal.hiSquare H M 5) ∧
  ∃ θ, ClassicalTheta D θ ∧ θ + θ = 0

/-- IWX's classical 62-stem computation: every element has exponent two.
Xu's existence of ONE order-two θ₅ alone does not imply this assertion. -/
abbrev Stem62ExponentTwo := KIP126.Main.Solution.Route.OrderTwo62 (C := C)

/-- The exact part of IWX's Adams filtration calculation used in LWX
Lemma 7.10: two classical h₅²-detected choices differ in filtration ≥ 6.
This is a consequence of the PREVIOUSLY published 62-stem computation,
not the synthetic choice-independence lemma proved in the present paper. -/
def Theta5FiltrationGap : Prop :=
  ∀ θ θ' : HomotopyGroup (C := C) 62 SphereSpectrum,
    ClassicalTheta D θ → ClassicalTheta D θ' →
    θ - θ' ∈ TowerDetection.filtrationSubmodule H.unit SphereSpectrum 6 62

/-- Detection of the actual degree-zero multiplication-by-two map. Source:
the classical Adams 0-stem, with h₀ the standard Milnor generator. -/
def TwoDetection : Prop :=
  TowerDetection.Detects (D.classicalConvergence .sphere) (1,1)
    (Sphere.Internal.hi H M 0)
    ((shiftFunctorZero C ℤ).hom.app SphereSpectrum ≫ (2 • 𝟙 _))

/-- Adams' Hopf classes, including identification of the selected synthetic
η with the SAME normalized geometric η map. The equality is a model/source
comparison obligation; the name of `etaMap` alone proves nothing. -/
def HopfInput (η : BiHom 1 2 (S00 : Syn)) : Prop :=
  EtaChoice M D.toModelData η ∧ KIP126.Main.Solution.Route.HopfBindings D η ∧
  NonzeroSurvival (adamsTowerInternalSpectralSequence H.unit SphereSpectrum)
    (1,2) (Sphere.Internal.hi H M 1) ∧
  NonzeroSurvival (adamsTowerInternalSpectralSequence H.unit SphereSpectrum)
    (1,4) (Sphere.Internal.hi H M 2)

/-- The finite set of classical inputs consumed by the selected §7 route.
No h₆² differential or survival conclusion is a field. -/
structure ClassicalInputs (η : BiHom 1 2 (S00 : Syn)) : Prop where
  theta5_exists : Theta5Existence D
  stem62_exponent_two : Stem62ExponentTwo (C := C)
  theta5_filtration_gap : Theta5FiltrationGap D
  two_detection : TwoDetection D
  hopf : HopfInput D η
end KIP126.Literature.Route
