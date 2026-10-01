import KIP126.Def.StableHomotopy.Source.Cofibers
import KIP126.Def.StableHomotopy.Source.Orthogonal.Suspension
import KIP126.Def.StableHomotopy.Source.ShiftComparison
import KIP126.Def.Foundation.Interfaces
import KIP126.Def.StableHomotopy.Source.Orthogonal.ShiftSmash
import KIP126.Def.StableHomotopy.Source.Orthogonal.SuspensionToShift

/-! A source realization of the abstract stable-homotopy interface.
The carrier is equivalent to the explicit HF2 localization of topological
prespectra, its unit is the image of the displayed suspension sphere, and
its shift, cofiber and tensor conventions are tied to displayed topological
operations. Constructing this witness is a model-construction debt; merely
choosing an arbitrary tensor triangulated category cannot inhabit its type.

On the bounded-below sphere, this HF2 localization is the classical
2-complete sphere used in LWX (main.tex, Conventions). No identification of
HF2 localization with Moore completion of EVERY unbounded spectrum is used.
-/
namespace KIP126.StableHomotopy.Source
open CategoryTheory CategoryTheory.MonoidalCategory CategoryTheory.Pretriangulated
open KIP126.Foundation KIP126.StableHomotopy.Cohomology
noncomputable section

variable (F : FoundationInput) [TensorInput F] (H : Mod2Source)

/-- The actual tensor comparison on cofibrant point-set spectra, followed
by the same completion and proposed monoidal realization. -/
def cofibrantTensorComparison (e : CompleteCategory H ≌ F.Spectrum)
    (m : e.functor.Monoidal) (E G : Orthogonal.Spectrum)
    (hE : Orthogonal.Cofibrant E) (hG : Orthogonal.Cofibrant G) :
    (sourceFunctor H ⋙ e.functor).obj (Orthogonal.underlying (Orthogonal.smash E G)) ≅
      (sourceFunctor H ⋙ e.functor).obj (Orthogonal.underlying E) ⊗
      (sourceFunctor H ⋙ e.functor).obj (Orthogonal.underlying G) := by
  letI := m
  let K := completeFunctor H ⋙ e.functor
  exact K.mapIso (Functor.Monoidal.μIso Orthogonal.cofibrantToStable
      (⟨E,hE⟩ : Orthogonal.CofibrantSpectra) (⟨G,hG⟩ : Orthogonal.CofibrantSpectra)).symm ≪≫
    (Functor.Monoidal.μIso K _ _).symm

/-- This map uses kification identity followed by the first-coordinate J
insertion. It is independent of any selected tensor CommShift. -/
def orthogonalSuspensionComparisonMap (e : CompleteCategory H ≌ F.Spectrum)
    (s : ∀ (E : Prespectrum) (p q : ℕ),
      (sourceFunctor H ⋙ e.functor).obj (shift E p q) ≅
        (shiftFunctor F.Spectrum ((p:ℤ)-q)).obj ((sourceFunctor H ⋙ e.functor).obj E))
    (E : Orthogonal.Spectrum) :
    (sourceFunctor H ⋙ e.functor).obj (Orthogonal.underlying (Orthogonal.suspension E)) ⟶
      (shiftFunctor F.Spectrum (1:ℤ)).obj
        ((sourceFunctor H ⋙ e.functor).obj (Orthogonal.underlying E)) := by
  simpa only [Nat.cast_one,Nat.cast_zero,sub_zero] using
    (sourceFunctor H ⋙ e.functor).map (Orthogonal.suspensionSourceShift E) ≫
      (s (Orthogonal.underlying E) 1 0).hom

/-- All comparisons concern this ONE concrete source category and one
abstract realization. Equalities include maps; labels or matching degrees
alone cannot discharge them. -/
structure Binding where
  equivalence : CompleteCategory H ≌ F.Spectrum
  sphereIso : equivalence.functor.obj (sphere H) ≅ (SphereSpectrum : F.Spectrum)
  /-- A strong symmetric monoidal comparison with the actual derived Day
  smash, on ALL source spectra, including HF2, its powers and Adams towers.
  Its associativity and both unit laws are the `Functor.Monoidal` laws. -/
  monoidal : equivalence.functor.Monoidal
  braided : letI := monoidal; equivalence.functor.Braided
  /-- The monoidal unit comparison is the very same displayed sphere
  comparison used by shifts, cofibers and the coefficient unit. -/
  monoidal_unit_eq : letI := monoidal
    Functor.LaxMonoidal.ε equivalence.functor = sphereIso.inv
  coefficientIso : equivalence.functor.obj (coefficient H) ≅ F.HF2
  /-- The coefficient unit is the image of the actual source map whose
  evaluation on the displayed sphere class is 1 in the selected F2. -/
  coefficientUnit_eq : equivalence.functor.map (Source.coefficientUnit H) ≫ coefficientIso.hom =
    sphereIso.hom ≫ F.hf2.unit
  zero : ∀ E G : Prespectrum,
    (sourceFunctor H ⋙ equivalence.functor).map (zeroMap E G) = 0
  /-- Positive tail and negative levelwise-loop representatives fix every
  integer shift. Naturality prevents an independent objectwise choice. -/
  shiftIso : ∀ (E : Prespectrum) (p q : ℕ),
    (sourceFunctor H ⋙ equivalence.functor).obj (shift E p q) ≅
      (shiftFunctor F.Spectrum ((p : ℤ)-q)).obj
        ((sourceFunctor H ⋙ equivalence.functor).obj E)
  shift_natural : ∀ {E G : Prespectrum} (f : E ⟶ G) (p q : ℕ),
    (sourceFunctor H ⋙ equivalence.functor).map (shiftMap f p q) ≫
      (shiftIso G p q).hom =
    (shiftIso E p q).hom ≫ (shiftFunctor F.Spectrum ((p : ℤ)-q)).map
      ((sourceFunctor H ⋙ equivalence.functor).map f)
  /-- The zero, addition and cancellation comparisons use actual source
  reindexing maps, preventing independent signs/units at different shifts. -/
  shift_zero : ∀ E : Prespectrum,
    (shiftIso E 0 0).hom =
      (sourceFunctor H ⋙ equivalence.functor).map (eqToHom (Source.shift_zero E)) ≫
        (shiftFunctorZero F.Spectrum ℤ).inv.app
          ((sourceFunctor H ⋙ equivalence.functor).obj E)
  shift_add : ∀ (E : Prespectrum) (p q r s : ℕ),
    (sourceFunctor H ⋙ equivalence.functor).map (eqToHom (Source.shift_comp E p q r s)) ≫
      (shiftIso E (p+r) (q+s)).hom ≫
        (shiftFunctorAdd' F.Spectrum ((p : ℤ)-q) ((r : ℤ)-s)
          (((p+r : ℕ) : ℤ)-(q+s)) (by omega)).hom.app
            ((sourceFunctor H ⋙ equivalence.functor).obj E) =
    (shiftIso (shift E p q) r s).hom ≫
      (shiftFunctor F.Spectrum ((r : ℤ)-s)).map (shiftIso E p q).hom
  shift_cancellation : ∀ E : Prespectrum,
    (sourceFunctor H ⋙ equivalence.functor).map (shiftCancellationUnit E) ≫
      (shiftIso E 1 1).hom ≫
        (shiftFunctorZero F.Spectrum ℤ).hom.app
          ((sourceFunctor H ⋙ equivalence.functor).obj E) =
    𝟙 ((sourceFunctor H ⋙ equivalence.functor).obj E)
  /-- The chosen right-tensor suspension is fixed by the actual source
  suspension-smash pairing on cofibrant presentations. This mixed square
  is necessary in addition to separate tensor and shift identifications. -/
  tensor_right_suspension : ∀ (E G : Orthogonal.Spectrum)
      (hE : Orthogonal.Cofibrant E) (hG : Orthogonal.Cofibrant G),
    (sourceFunctor H ⋙ equivalence.functor).map
        (Orthogonal.forget.map (Orthogonal.suspensionSmashMap E G)) ≫
      orthogonalSuspensionComparisonMap F H equivalence shiftIso (Orthogonal.smash E G) ≫
      (shiftFunctor F.Spectrum (1:ℤ)).map
        (cofibrantTensorComparison F H equivalence monoidal E G hE hG).hom =
    (cofibrantTensorComparison F H equivalence monoidal (Orthogonal.suspension E) G
        (Orthogonal.suspension_cofibrant E hE) hG).hom ≫
      (orthogonalSuspensionComparisonMap F H equivalence shiftIso E ⊗ₘ 𝟙 _) ≫
      ((tensorRight ((sourceFunctor H ⋙ equivalence.functor).obj
        (Orthogonal.underlying G))).commShiftIso (1:ℤ)).hom.app
          ((sourceFunctor H ⋙ equivalence.functor).obj (Orthogonal.underlying E))
  tensor_left_suspension : ∀ X Y : F.Spectrum,
    ((tensorLeft X).commShiftIso (1:ℤ)).app Y =
      (β_ X ((shiftFunctor F.Spectrum (1:ℤ)).obj Y)) ≪≫
      ((tensorRight X).commShiftIso (1:ℤ)).app Y ≪≫
      (shiftFunctor F.Spectrum (1:ℤ)).mapIso (β_ Y X)
  /-- Internal-hom's selected shift is the mate under the same closed
  adjunction. Its exactness cannot refer to another boundary-sign choice. -/
  ihom_unit_shift : ∀ W : F.Spectrum, NatTrans.CommShift (ihom.adjunction W).unit ℤ
  ihom_counit_shift : ∀ W : F.Spectrum, NatTrans.CommShift (ihom.adjunction W).counit ℤ
  /-- The topological quotient Sigma E uses the same integer +1 shift. -/
  suspensionIso : ∀ (E : Prespectrum) (_ : CellularPrespectrum E),
    (sourceFunctor H ⋙ equivalence.functor).obj (levelSuspension E) ≅
      (shiftFunctor F.Spectrum (1 : ℤ)).obj
        ((sourceFunctor H ⋙ equivalence.functor).obj E)
  suspension_natural : ∀ {E G : Prespectrum} (e : CellularPrespectrum E)
      (g : CellularPrespectrum G) (f : E ⟶ G),
    (sourceFunctor H ⋙ equivalence.functor).map (levelSuspensionMap f) ≫
      (suspensionIso G g).hom =
    (suspensionIso E e).hom ≫ (shiftFunctor F.Spectrum (1 : ℤ)).map
      ((sourceFunctor H ⋙ equivalence.functor).map f)
  /-- Agreement with the concrete enriched source suspension, on the
  cofibrant cellular presentation where raw level suspension is derived.
  The first-coordinate insertion fixes the interchange/sign convention. -/
  suspension_eq_shift : ∀ (E : Orthogonal.Spectrum) (hE : Orthogonal.Cofibrant E)
      (e : CellularPrespectrum (Orthogonal.underlying E)),
    (sourceFunctor H ⋙ equivalence.functor).map (Orthogonal.suspensionToTail E) ≫
      (shiftIso (Orthogonal.underlying E) 1 0).hom =
    (suspensionIso (Orthogonal.underlying E) e).hom
  /-- Chosen cofibers are the actual mapping cones, with both arrows. -/
  coneIso : ∀ {E G : Prespectrum} (_ : CellularPrespectrum E)
      (_ : CellularPrespectrum G) (f : E ⟶ G),
    (sourceFunctor H ⋙ equivalence.functor).obj (cone f) ≅
      HasFunctorialCofiber.cofib ((sourceFunctor H ⋙ equivalence.functor).map f)
  cone_inclusion : ∀ {E G : Prespectrum} (e : CellularPrespectrum E)
      (g : CellularPrespectrum G) (f : E ⟶ G),
    (sourceFunctor H ⋙ equivalence.functor).map (coneInclusion f) ≫ (coneIso e g f).hom =
      HasFunctorialCofiber.cofibι ((sourceFunctor H ⋙ equivalence.functor).map f)
  cone_boundary : ∀ {E G : Prespectrum} (e : CellularPrespectrum E)
      (g : CellularPrespectrum G) (f : E ⟶ G),
    (coneIso e g f).hom ≫
      HasFunctorialCofiber.cofibδ ((sourceFunctor H ⋙ equivalence.functor).map f) =
    (sourceFunctor H ⋙ equivalence.functor).map (coneProjection f) ≫ (suspensionIso E e).hom
  /-- No additional distinguished triangles are inserted in the chosen
  category: all are isomorphic to the displayed localized mapping cones. -/
  distinguished_source : ∀ T : Triangle F.Spectrum,
    T ∈ distTriang F.Spectrum ↔
      ∃ (E G : Prespectrum) (e : CellularPrespectrum E) (_ : CellularPrespectrum G) (f : E ⟶ G)
        (a : (sourceFunctor H ⋙ equivalence.functor).obj E ≅ T.obj₁)
        (b : (sourceFunctor H ⋙ equivalence.functor).obj G ≅ T.obj₂)
        (c : (sourceFunctor H ⋙ equivalence.functor).obj (cone f) ≅ T.obj₃),
        a.hom ≫ T.mor₁ = (sourceFunctor H ⋙ equivalence.functor).map f ≫ b.hom ∧
        b.hom ≫ T.mor₂ = (sourceFunctor H ⋙ equivalence.functor).map (coneInclusion f) ≫ c.hom ∧
        c.hom ≫ T.mor₃ = (sourceFunctor H ⋙ equivalence.functor).map (coneProjection f) ≫
          (suspensionIso E e).hom ≫ (shiftFunctor F.Spectrum (1 : ℤ)).map a.hom
  /-- The CW specialization is retained for the actual pointed-space
  formulas. The following equality binds it to the full derived tensor;
  it is not a second independently selected multiplication. -/
  smashIso : ∀ (X Y : BasedSpace) (_ : CellularSpace X) (_ : CellularSpace Y),
    (sourceFunctor H ⋙ equivalence.functor).obj (suspensionSpectrum (smash X Y)) ≅
      (sourceFunctor H ⋙ equivalence.functor).obj (suspensionSpectrum X) ⊗
        (sourceFunctor H ⋙ equivalence.functor).obj (suspensionSpectrum Y)
  smash_eq_derived : ∀ (X Y : BasedSpace) (x : CellularSpace X) (y : CellularSpace Y),
    letI := monoidal
    smashIso X Y x y =
      equivalence.functor.mapIso (Source.suspensionSmashIso H X Y x y) ≪≫
        (Functor.Monoidal.μIso equivalence.functor
          ((sourceFunctor H).obj (suspensionSpectrum X))
          ((sourceFunctor H).obj (suspensionSpectrum Y))).symm
  smash_natural : ∀ {X X' Y Y' : BasedSpace}
      (x : CellularSpace X) (x' : CellularSpace X')
      (y : CellularSpace Y) (y' : CellularSpace Y') (f : X ⟶ X') (g : Y ⟶ Y'),
    (sourceFunctor H ⋙ equivalence.functor).map (suspensionSpectrumMap (smashMap f g)) ≫
      (smashIso X' Y' x' y').hom =
    (smashIso X Y x y).hom ≫
      ((sourceFunctor H ⋙ equivalence.functor).map (suspensionSpectrumMap f) ⊗ₘ
        (sourceFunctor H ⋙ equivalence.functor).map (suspensionSpectrumMap g))
  /-- These equations bind the coherence maps too, including the actual
  symmetry; specifying only an isomorphism of tensor OBJECTS is insufficient. -/
  smash_symmetry : ∀ (X Y : BasedSpace) (x : CellularSpace X) (y : CellularSpace Y),
    (sourceFunctor H ⋙ equivalence.functor).map (suspensionSpectrumMap (smashSwap X Y)) ≫
      (smashIso Y X y x).hom =
    (smashIso X Y x y).hom ≫
      (β_ ((sourceFunctor H ⋙ equivalence.functor).obj (suspensionSpectrum X))
        ((sourceFunctor H ⋙ equivalence.functor).obj (suspensionSpectrum Y))).hom
  smash_left_unit : ∀ (X : BasedSpace) (x : CellularSpace X)
      (s : CellularSpace sphereZeroSpace),
    (smashIso sphereZeroSpace X s x).hom ≫
      (sphereIso.hom ▷ (sourceFunctor H ⋙ equivalence.functor).obj (suspensionSpectrum X)) ≫
      (λ_ ((sourceFunctor H ⋙ equivalence.functor).obj (suspensionSpectrum X))).hom =
    (sourceFunctor H ⋙ equivalence.functor).map (suspensionSpectrumMap (smashLeftUnit X))
  smash_right_unit : ∀ (X : BasedSpace) (x : CellularSpace X)
      (s : CellularSpace sphereZeroSpace),
    (smashIso X sphereZeroSpace x s).hom ≫
      ((sourceFunctor H ⋙ equivalence.functor).obj (suspensionSpectrum X) ◁ sphereIso.hom) ≫
      (ρ_ ((sourceFunctor H ⋙ equivalence.functor).obj (suspensionSpectrum X))).hom =
    (sourceFunctor H ⋙ equivalence.functor).map (suspensionSpectrumMap (smashRightUnit X))
  smash_associativity : ∀ (X Y Z : BasedSpace)
      (x : CellularSpace X) (y : CellularSpace Y) (z : CellularSpace Z)
      (xy : CellularSpace (smash X Y)) (yz : CellularSpace (smash Y Z))
      (cx : CompactSpace X) (cy : CompactSpace Y) (cz : CompactSpace Z),
    letI := cx; letI := cy; letI := cz
    letI := x.hausdorff; letI := y.hausdorff; letI := z.hausdorff
    (smashIso (smash X Y) Z xy z).hom ≫
      ((smashIso X Y x y).hom ▷
        (sourceFunctor H ⋙ equivalence.functor).obj (suspensionSpectrum Z)) ≫
      (α_ ((sourceFunctor H ⋙ equivalence.functor).obj (suspensionSpectrum X))
        ((sourceFunctor H ⋙ equivalence.functor).obj (suspensionSpectrum Y))
        ((sourceFunctor H ⋙ equivalence.functor).obj (suspensionSpectrum Z))).hom =
    (sourceFunctor H ⋙ equivalence.functor).map (suspensionSpectrumMap (smashAssociator X Y Z)) ≫
      (smashIso X (smash Y Z) x yz).hom ≫
      ((sourceFunctor H ⋙ equivalence.functor).obj (suspensionSpectrum X) ◁ (smashIso Y Z y z).hom)

/-- The one model-construction object. Both the witness and its source
binding are retained; consumers do not choose a second foundation. -/
structure RealizedFoundation where
  foundation : FoundationInput
  tensor : TensorInput foundation
  coefficientSource : Mod2Source
  binding : letI := tensor; Binding foundation coefficientSource

/-- Construction of the concrete topological source and its small-Hom
realization. This is deliberately a MODEL proof debt. Its result type now
fixes the source, sphere, HF2, shifts, cones, and smash comparisons; it is
not an unconstrained FoundationInput and contains no Section 7 result. -/
def standardRealization : RealizedFoundation := by
  sorry
end
end KIP126.StableHomotopy.Source
