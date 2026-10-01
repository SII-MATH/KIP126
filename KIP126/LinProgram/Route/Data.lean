import KIP126.LinProgram.Route.Selected
import KIP126.Def.References.Literature.Near126.Classes.Data
import KIP126.Def.Kervaire.Inputs.Literature.Tmf
import KIP126.Def.AdamsE2.LinBasisTable.Data
import KIP126.Def.ClassicalAdams.TowerNaturality.Page.Data
import KIP126.Def.SpectralSequence.Computation.State.Predicates

/-!
# C(M): selected computational results on the SAME route model

`Inputs D L G` is a delivery obligation, not an axiom, instance or proof.
No `computation interpretation` witness or bulk differential axiom is used. The parameter
`M : MilnorCooperations H` is only one component of the project's mathematical M.

The coordinates are bound to the sphere and the actual cofiber of D.auxiliary.nuMap.
Every equation uses their existing tower differential and common representatives.
The finite C(M) slice retains unknown entries, complete local additive bases,
and root-trial refutations. It does not assume propositions 7.8/7.9, a synthetic
extension, Toda detection, or the final theorem. See docs/C_INPUT_FREEZE.md.
-/
namespace KIP126.Computation.Route
open CategoryTheory
open KIP126.StableHomotopy KIP126.StableHomotopy.Cohomology KIP126.Classical.Adams
open KIP126.Core.SpectralSequence KIP126.Synthetic.Context KIP126.Kervaire.Route
open KIP126.LinE2
universe u v w
noncomputable section
variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn] [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {M : MilnorCooperations H}

/-- Only the two actual objects needed to consume the computation results.
The other 47 spectra belong to certification dependencies, not this input. -/
def object (D : Model H M Syn) : Raw.Spectrum → C
  | .sphere => SphereSpectrum
  | .nuCofiber => HasFunctorialCofiber.cofib D.auxiliary.nuMap

abbrev sequence (D : Model H M Syn) (o : Raw.Spectrum) :=
  adamsTowerInternalSpectralSequence H.unit (object D o)
abbrev Page (D : Model H M Syn) (o : Raw.Spectrum) (s t : Nat) :=
  (sequence D o).Page 2 ((s : ℤ), (t : ℤ))

/-- A comparison choice, with no truth claims. Outside the finite catalogue
its basis function has no computational meaning. No unrelated SS is a field. -/
structure Realization (D : Model H M Syn) where
  sphere : ∀ s t, E2At s t →ₗ[ℤ] E2 H SphereSpectrum s t
  basis : ∀ o s t, Nat → Page D o s t

/-- Fail closed: a missing degree or out-of-range local index has no meaning,
including a zero coordinate list at a missing degree. Unknown is never zero. -/
def Realization.decode {D : Model H M Syn} (R : Realization D)
    (o : Raw.Spectrum) (s t : Nat) (indices : List Nat) : Option (Page D o s t) :=
  if Raw.coordinatesValid Raw.degrees o s t indices then
    some ((indices.map (R.basis o s t)).sum)
  else none

/-- Mathematical interpretation, including successful coordinate decoding.
Nonzero on E₂ is never substituted for nonzero on a later page. -/
def Statement {D : Model H M Syn} (R : Realization D) (c : Raw.Claim) : Prop :=
  ∃ x, R.decode c.spectrum c.s c.t c.x = some x ∧
    match c.kind with
    | .reaches => ReachesPage (sequence D c.spectrum) c.r (c.s,c.t) x
    | .boundaryBy => IsBoundaryBy (sequence D c.spectrum) c.r (c.s,c.t) x
    | .equation => ∃ y, R.decode c.spectrum c.ts c.tt c.y = some y ∧
        HasDifferential (sequence D c.spectrum) c.r (c.s,c.t) (c.ts,c.tt) x y
    | .refutation => ∃ y, R.decode c.spectrum c.ts c.tt c.y = some y ∧
        ¬ HasDifferential (sequence D c.spectrum) c.r (c.s,c.t) (c.ts,c.tt) x y

/-- Explicit additive bases, including empty degrees and ALL linear combinations.
An integer-linear equivalence to F₂ coordinates uses the actual additive group;
it neither chooses a second group law nor postulates a new scalar action. -/
def BasisCorrect {D : Model H M Syn} (R : Realization D) (d : Raw.Degree) : Prop :=
  ∃ e : Page D d.spectrum d.s d.t ≃ₗ[ℤ]
      (Fin d.monomials.length →₀ KIP126.Core.Algebra.F2),
    ∀ i, e.symm (Finsupp.single i 1) = R.basis d.spectrum d.s d.t i.val

/-- Each selected sphere basis value is the specified CSV monomial, interpreted
through the same comparison used for named elements and products. Homogeneity
is a required witness; no invalid monomial is silently mapped to zero. -/
def SphereBasisValue {D : Model H M Syn} (R : Realization D)
    (d : Raw.Degree) : Prop :=
  d.spectrum = .sphere → ∀ i : Fin d.monomials.length,
    ∃ z : E2At d.s d.t,
      z.val = projection (monomialOfString d.monomials[i]) ∧
      R.sphere d.s d.t z = R.basis .sphere d.s d.t i.val

/-- Only the selected product degrees, using the relation quotient, not a stored
multiplication table. Both operations are fixed before this condition is stated. -/
def ProductCorrect {D : Model H M Syn} (R : Realization D) (p : Raw.Product) : Prop :=
  ∀ (x : E2At p.s p.t) (y : E2At p.sp p.tp),
    R.sphere (p.s+p.sp) (p.t+p.tp) (mulAt x y) =
      Sphere.Internal.product H M (R.sphere p.s p.t x) (R.sphere p.sp p.tp y)

/-- Bottom-cell labels are images under the actual inclusion of the same cofiber. -/
def BottomCorrect {D : Model H M Syn} (R : Realization D) (p : Raw.BottomMap) : Prop :=
  ∃ x y, R.decode .sphere p.s p.t p.x = some x ∧
    R.decode .nuCofiber p.s p.t p.y = some y ∧
    adamsInternalE2Induced H.unit (HasFunctorialCofiber.cofibι D.auxiliary.nuMap)
      (p.s,p.t) x = y

/-- The top-cell value is compared via D's actual tower suspension data, not
an arbitrary degree-shifted linear map. Two canonical shift-addition maps
and four one-fold desuspensions identify Σ(S³) with S⁰ in degree t-4. -/
def TopCorrect {D : Model H M Syn} (R : Realization D) : Prop :=
  ∃ (x : Page D .nuCofiber 8 134) (y : Page D .sphere 8 130)
    (a3 : E2 H (Sphere 3) 8 133)
    (a2 : E2 H (Sphere 2) 8 132)
    (a1 : E2 H (Sphere 1) 8 131),
    R.decode .nuCofiber 8 134 [0] = some x ∧
    R.decode .sphere 8 130 [0] = some y ∧
    (D.classicalSuspension (.shift 3 .sphere)).DesuspendsClass 8 134
      (adamsInternalE2Induced H.unit (HasFunctorialCofiber.cofibδ D.auxiliary.nuMap)
        (8,134) x) a3 ∧
    (D.classicalSuspension (.shift 2 .sphere)).DesuspendsClass 8 133
      (adamsInternalE2Induced H.unit
        ((shiftFunctorAdd' C (2 : ℤ) 1 3 (by decide)).hom.app SphereSpectrum)
        (8,133) a3) a2 ∧
    (D.classicalSuspension (.shift 1 .sphere)).DesuspendsClass 8 132
      (adamsInternalE2Induced H.unit
        ((shiftFunctorAdd' C (1 : ℤ) 1 2 (by decide)).hom.app SphereSpectrum)
        (8,132) a2) a1 ∧
    (D.classicalSuspension .sphere).DesuspendsClass 8 131 a1 y

/-- Standard Milnor classes and all public route/literature names refer to the
same comparison. These are E₂ identifications, never permanence assumptions. -/
structure LabelsCorrect {D : Model H M Syn} (R : Realization D)
    (L : Labels H) (G : KIP126.Literature.Route.TmfLabels H) : Prop where
  h0 : R.sphere 1 1 dataH0 = Sphere.Internal.hi H M 0
  h1 : R.sphere 1 2 dataH1 = Sphere.Internal.hi H M 1
  h2 : R.sphere 1 4 (Near126.atom .h2) = Sphere.Internal.hi H M 2
  h4 : R.sphere 1 16 (Near126.atom .h4) = Sphere.Internal.hi H M 4
  h5 : R.sphere 1 32 (Near126.atom .h5) = Sphere.Internal.hi H M 5
  h6 : R.sphere 1 64 dataH6 = Sphere.Internal.hi H M 6
  h0_square : R.sphere 2 2 Near126.h0Sq = Sphere.Internal.hiSquare H M 0
  h5_square : R.sphere 2 64 Near126.h5Sq = Sphere.Internal.hiSquare H M 5
  h6_square : R.sphere 2 128 dataH6Sq = Sphere.Internal.hiSquare H M 6
  x1268_4 : R.sphere 8 134 (Near126.atom .x126_8_4) = L.x1268_4
  x1268 : R.sphere 8 134 (Near126.atom .x126_8) = L.x1268
  x1248 : R.sphere 8 132 (Near126.atom .x124_8) = L.x1248
  x10912 : R.sphere 12 121 (Near126.atom .x109_12) = L.x10912
  g : R.sphere 4 24 (Near126.atom .g) = G.g
  deltaH1g : R.sphere 9 54 (Near126.atom .deltaH1g) = G.deltaH1g

/-- Stage-1 delivery type. Supplying a value requires proving the selected
computation claims and their interpretation on D. Stage 2 can instead accept
this type as an explicit hypothesis, without invoking bulk/global axioms. -/
structure Inputs (D : Model H M Syn) (L : Labels H)
    (G : KIP126.Literature.Route.TmfLabels H) where
  realization : Realization D
  basis : ∀ d ∈ Raw.degrees, BasisCorrect realization d
  csv : ∀ d ∈ Raw.degrees, SphereBasisValue realization d
  products : ∀ p ∈ Raw.products, ProductCorrect realization p
  labels : LabelsCorrect realization L G
  results : ∀ c ∈ Raw.claims, Statement realization c
  bottom : ∀ p ∈ Raw.bottomMaps, BottomCorrect realization p
  top : TopCorrect realization

end
end KIP126.Computation.Route
