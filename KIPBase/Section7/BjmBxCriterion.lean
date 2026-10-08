import KIPBase.multiplicativeSS.Adams
import KIPBase.multiplicativeSS.adamsdata.adamsE2
import KIPBase.multiplicativeSS.AdamsDetection
import KIPBase.Synthetic.Sphere
import KIPBase.Synthetic.ExtensionSS
import KIPBase.E2page

set_option maxRecDepth 16384


namespace KIPBase.Section7

open CategoryTheory KIPBase.StableHomotopy

universe u v
variable (𝒮 : Type u) [StableHomotopyCategory.{u, v} 𝒮]

noncomputable def pageProduct (s t s' t' : ℕ)
    (x : (AdamsSS 𝒮 SphereSpectrum).Page 2 ((s : ℤ), (t : ℤ)))
    (y : (AdamsSS 𝒮 SphereSpectrum).Page 2 ((s' : ℤ), (t' : ℤ))) :
    (AdamsSS 𝒮 SphereSpectrum).Page 2 (((s + s' : ℕ) : ℤ), ((t + t' : ℕ) : ℤ)) := by
  let p := (sphereAdamsMultiplication (𝒮 := 𝒮)).ssPairing.pair 2
    ((s : ℤ), (t : ℤ)) ((s' : ℤ), (t' : ℤ))
  let z := p ((sphereAdamsPageTransfer (𝒮 := 𝒮) 2 ((s : ℤ), (t : ℤ)) x) ⊗ₜ
    (sphereAdamsPageTransfer (𝒮 := 𝒮) 2 ((s' : ℤ), (t' : ℤ)) y))
  have h := sphereAdamsConvergingSS_ss (𝒮 := 𝒮)
  exact (eqToHom (congrArg (fun E => E.Page 2
    (((s + s' : ℕ) : ℤ), ((t + t' : ℕ) : ℤ))) h)) z

noncomputable def h5Square [AdamsE2Data 𝒮] :
    (AdamsSS 𝒮 SphereSpectrum).Page 2 (2, 64) :=
  pageProduct 𝒮 1 32 1 32 (AdamsE2Data.hi 5) (AdamsE2Data.hi 5)

noncomputable def h6Square [AdamsE2Data 𝒮] :
    (AdamsSS 𝒮 SphereSpectrum).Page 2 (2, 128) :=
  pageProduct 𝒮 1 64 1 64 (AdamsE2Data.hi 6) (AdamsE2Data.hi 6)

noncomputable def h6Permanent [AdamsE2Data 𝒮] : Prop :=
  AdamsDetection.PermanentCycle
    (⟨SphereSpectrum, IsFiniteSpectrum.sphere⟩ : FiniteSpectra 𝒮)
    (⟨SphereSpectrum, IsFiniteSpectrum.sphere⟩ : FiniteSpectra 𝒮)
    2 (2, 128)
    (sphereAdamsPageTransfer (𝒮 := 𝒮) 2 (2, 128) (h6Square 𝒮))

namespace Near126E2

open KIPBase.SphereE2

/-- A named CSV generator, regarded as an element of its homogeneous E₂ part. -/
private theorem generator_mem (i : Generator) :
    generator i ∈ homogeneousPart (generatorDegree i).1 (generatorDegree i).2 := by
  apply Submodule.subset_span
  refine ⟨Finsupp.single i 1, ?_, rfl⟩
  simp [monomialDegree]

noncomputable def generatorClass (i : Generator) (s t : ℕ)
    (hdegree : generatorDegree i = (s, t)) : E2At s t :=
  ⟨generator i, by simpa only [hdegree] using generator_mem i⟩

/-- `h₀ ∈ Ext_A^(1,1)`. -/
noncomputable def h0 : E2At 1 1 :=
  generatorClass ⟨0, by decide⟩ 1 1 (by decide)

/-- `h₁ ∈ Ext_A^(1,2)`. -/
noncomputable def h1 : E2At 1 2 :=
  generatorClass ⟨1, by decide⟩ 1 2 (by decide)

/-- `h₄ ∈ Ext_A^(1,16)`. -/
noncomputable def h4 : E2At 1 16 :=
  generatorClass ⟨7, by decide⟩ 1 16 (by decide)

/-- `g ∈ Ext_A^(4,24)`. -/
noncomputable def g : E2At 4 24 :=
  generatorClass ⟨13, by decide⟩ 4 24 (by decide)

/-- `Δh₁g ∈ Ext_A^(9,54)`. -/
noncomputable def deltaH1g : E2At 9 54 :=
  generatorClass ⟨51, by decide⟩ 9 54 (by decide)

/-- `x_{109,12} ∈ Ext_A^(12,121)`. -/
noncomputable def x109_12 : E2At 12 121 :=
  generatorClass ⟨275, by decide⟩ 12 121 (by decide)

/-- `x_{126,8} ∈ Ext_A^(8,134)`. -/
noncomputable def x126_8 : E2At 8 134 :=
  generatorClass ⟨392, by decide⟩ 8 134 (by decide)

/-- `x_{126,8,4} ∈ Ext_A^(8,134)`. -/
noncomputable def x126_8_4 : E2At 8 134 :=
  generatorClass ⟨395, by decide⟩ 8 134 (by decide)

/-- `x_{124,8} ∈ Ext_A^(8,132)`. -/
noncomputable def x124_8 : E2At 8 132 :=
  generatorClass ⟨367, by decide⟩ 8 132 (by decide)

/-- `h₁ h₄ x_{109,12} ∈ Ext_A^(14,139)`. -/
noncomputable def h1h4x109_12 : E2 :=
  h1.val * h4.val * x109_12.val

/-- `x_{126,8,4} + x_{126,8} ∈ Ext_A^(8,134)`. -/
noncomputable def x126_8_4_add_x126_8 : E2 :=
  x126_8_4.val + x126_8.val

/-- `h₀² x_{124,8} ∈ Ext_A^(10,134)`. -/
noncomputable def h0SqX124_8 : E2 :=
  h0.val * h0.val * x124_8.val

/-- `g⁴ Δh₁g ∈ Ext_A^(25,150)`. -/
noncomputable def gPow4DeltaH1g : E2 :=
  g.val * g.val * g.val * g.val * deltaH1g.val

/-- `h₆ ∈ Ext_A^(1,64)`. -/
noncomputable def h6 : E2At 1 64 :=
  generatorClass ⟨69, by decide⟩ 1 64 (by decide)

/-- The E₂ representative of `h₆² ∈ Ext_A^(2,128)`. -/
noncomputable def h6Sq : E2 := h6.val * h6.val

/-- `x_{126,6} ∈ Ext_A^(6,132)`, the remaining potential source discussed
in Remark 7.7. -/
noncomputable def x126_6 : E2At 6 132 :=
  generatorClass ⟨368, by decide⟩ 6 132 (by decide)

/-- The named element has a nonzero representative on the indicated Adams page. -/
opaque SurvivesToPage (x : E2) (r : ℕ) : Prop

/-- The named E₂ element supports no nonzero outgoing Adams differential. -/
opaque IsPermanentCycle (x : E2) : Prop

/-- The named E₂ element has a nonzero descendant on the Adams `E∞` page. -/
opaque SurvivesToEInfinity (x : E2) : Prop

/-- A nonzero Adams differential between the displayed E₂ representatives. -/
opaque Differential (r : ℕ) (source target : E2) : Prop

/-- The displayed element is the sole surviving element in its bidegree on page `r`. -/
opaque IsUniqueSurvivorOnPage (x : E2) (r : ℕ) : Prop

/-- The paper's Fact 7.6. The incoming-differential clause states the two
possible sources for `h₁h₄x_{109,12}`. -/
axiom fact7_6 :
    SurvivesToPage x126_8_4_add_x126_8 6 ∧
    IsPermanentCycle h1h4x109_12 ∧
    (∀ r source, Differential r source h1h4x109_12 →
      (r = 6 ∧ source = x126_8_4_add_x126_8) ∨
      (r = 12 ∧ source = h6Sq)) ∧
    SurvivesToEInfinity h0SqX124_8 ∧
    IsUniqueSurvivorOnPage gPow4DeltaH1g 5

/-- The paper's Remark 7.7: the nonzero `d₃` on `x_{126,6}` prevents it
from being an incoming differential that kills `h₁h₄x_{109,12}`. -/
axiom remark7_7 :
    ¬ ∃ r, Differential r x126_6.val h1h4x109_12

/-- The three named Ext classes occurring in Fact 7.13. -/
structure Fact7_13Classes where
  x123_9 : E2At 9 132
  x123_8 : E2At 8 131
  x125_8 : E2At 8 133

/-- The class `x_{123,9}+h₀x_{123,8}` of Fact 7.13. -/
noncomputable def Fact7_13Classes.x123_9_add_h0_x123_8
    (D : Fact7_13Classes) : E2 :=
  D.x123_9.val + h0.val * D.x123_8.val

/-- The target in the `d₂` of Fact 7.13. -/
noncomputable def Fact7_13Classes.d2Target (D : Fact7_13Classes) : E2 :=
  h1.val * D.x123_9_add_h0_x123_8 + h0SqX124_8

/-- Fact 7.13: the displayed stem-123 class reaches `E₁₂` without being
killed, and it is the indicated summand of the target of `d₂(x_{125,8})`. -/
axiom fact7_13 :
  ∃ D : Fact7_13Classes,
    SurvivesToPage D.x123_9_add_h0_x123_8 12 ∧
    (∀ r source, ¬ Differential r source D.x123_9_add_h0_x123_8) ∧
    Differential 2 D.x125_8.val D.d2Target

/-- The Ext class whose `h₀²`-multiple occurs in Fact 7.15. -/
structure Fact7_15Classes where
  x125_9_2 : E2At 9 134

/-- `h₀²x_{125,9,2} ∈ Ext_A^{11,136}`. -/
noncomputable def Fact7_15Classes.h0SqX125_9_2 (D : Fact7_15Classes) : E2 :=
  h0.val * h0.val * D.x125_9_2.val

/-- Fact 7.15: `h₀²x_{125,9,2}` survives to `E₅` and is not killed by a
classical Adams differential. -/
axiom fact7_15 :
  ∃ D : Fact7_15Classes,
    SurvivesToPage D.h0SqX125_9_2 5 ∧
      (∀ r source, ¬ Differential r source D.h0SqX125_9_2)

/-- The Ext class whose `h₁`-multiple occurs in Fact 7.19. -/
structure Fact7_19Classes where
  x121_7 : E2At 7 128

/-- `h₁x_{121,7} ∈ Ext_A^{8,130}`. -/
noncomputable def Fact7_19Classes.h1X121_7 (D : Fact7_19Classes) : E2 :=
  h1.val * D.x121_7.val

/-- Fact 7.19: `h₁x_{121,7}` survives to `E₆` and is not killed by a
classical Adams differential. -/
axiom fact7_19 :
  ∃ D : Fact7_19Classes,
    SurvivesToPage D.h1X121_7 6 ∧
      (∀ r source, ¬ Differential r source D.h1X121_7)

/-- The two Ext classes in Fact 7.21. -/
structure Fact7_21Classes where
  h6Md0 : E2At 11 133
  h5X91_11 : E2At 12 134

/-- Fact 7.21: both displayed classes are permanent cycles in the classical
Adams spectral sequence. -/
axiom fact7_21 :
  ∃ D : Fact7_21Classes,
    IsPermanentCycle D.h6Md0.val ∧ IsPermanentCycle D.h5X91_11.val

/-- Proposition 7.8(3): the possible `d₆` on
`x_{126,8,4}+x_{126,8}` vanishes. -/
opaque C3 : Prop

/-- Proposition 7.8(4): some `θ₅` has square detected by
`λ⁶ h₀²x_{124,8}`. -/
opaque C4 : Prop

/-- Proposition 7.8(5): some lift of `h₀²x_{124,8}` has the specified
`λ³η`-extension detected by `λ⁶h₁h₄x_{109,12}`. -/
opaque C5 : Prop

/-- Proposition 7.8, first conclusion: exactly one of permanent survival of
`h₆²` and the specified nonzero `d₁₂` occurs. -/
theorem proposition7_8_dichotomy :
    Xor (SurvivesToEInfinity h6Sq) (Differential 12 h6Sq h1h4x109_12) := by
  sorry

/-- Proposition 7.8, second conclusion: the specified `d₁₂` occurs exactly
when `C₃`, `C₄`, and `C₅` all hold. -/
theorem proposition7_8_d12_iff :
    Differential 12 h6Sq h1h4x109_12 ↔ C3 ∧ C4 ∧ C5 := by
  sorry

end Near126E2

end KIPBase.Section7

namespace KIPBase.Section7

open CategoryTheory CategoryTheory.Limits CategoryTheory.Pretriangulated
  CategoryTheory.MonoidalCategory
  KIPBase.StableHomotopy KIPBase.Synthetic

universe u v u' v'

variable (𝒮 : Type u) [StableHomotopyCategory.{u, v} 𝒮]
  [AdamsE2Data 𝒮]
  (Syn : Type u') [Category.{v'} Syn] [Preadditive Syn]
  [HasZeroObject Syn] [HasShift Syn ℤ]
  [∀ n : ℤ, Functor.Additive (shiftFunctor Syn n)]
  [MonoidalCategory Syn] [Pretriangulated Syn] [SyntheticCategory Syn]

noncomputable def syntheticSphereProduct {m n m' n' : ℤ}
    (f : BiHom m n (S_0_0 : Syn))
    (g : BiHom m' n' (S_0_0 : Syn)) :
    BiHom (m + m') (n + n') (S_0_0 : Syn) := by
  let e : Smn (Syn := Syn) (m + m') (n + n') ≅
      (SyntheticCategory.biShift (m', n')).obj (Smn m n) :=
    (SyntheticCategory.biShift_comp (m, n) (m', n')).symm.app S_0_0
  exact e.hom ≫ (SyntheticCategory.biShift (m', n')).map f ≫ g

/-- The action of a synthetic sphere class on a class with values in an
arbitrary synthetic object, defined by composition. -/
noncomputable def syntheticSphereAction {m n m' n' : ℤ} {X : Syn}
    (f : BiHom m n (S_0_0 : Syn)) (x : BiHom m' n' X) :
    BiHom (m + m') (n + n') X := by
  let e : Smn (Syn := Syn) (m + m') (n + n') ≅
      (SyntheticCategory.biShift (m', n')).obj (Smn m n) :=
    (SyntheticCategory.biShift_comp (m, n) (m', n')).symm.app S_0_0
  exact e.hom ≫ (SyntheticCategory.biShift (m', n')).map f ≫ x

/- Finite-page synthetic Adams detection, defined from the convergence
data of `SynAdamsSS`, rather than as an opaque predicate. -/
namespace SyntheticAdamsDetection

def HasEInftyClass (X : Syn) (r : ℤ) (k : ℤ × ℤ × ℤ)
    (x : (SynAdamsSS Syn X).Page r k)
    (e : ((SynAdamsSS Syn X).ssData k).eInfty) : Prop :=
  let D := (SynAdamsSS Syn X).ssData k
  let page : WithTop ℕ := ↑(r - (SynAdamsSS Syn X).r₀).toNat
  ∃ z : ↑(Subobject.underlying.obj (D.Z ⊤)),
    (Subobject.ofLE (D.Z ⊤) (D.Z page) (D.Z_anti le_top) ≫ D.pageπ page) z = x ∧
      D.pageπ ⊤ z = e

def EInftyDetects (X : Syn) (k : ℤ × ℤ × ℤ)
    (e : ((SynAdamsSS Syn X).ssData k).eInfty)
    (alpha : BiHom ((synAdamsConvergence Syn X).convergence.reindex k).2.1
      ((synAdamsConvergence Syn X).convergence.reindex k).2.2 X) : Prop :=
  let C := synAdamsConvergence Syn X
  let s := (C.convergence.reindex k).1
  let degree := (C.convergence.reindex k).2
  ∃ a : ↑(Subobject.underlying.obj (C.filtration.F s degree)),
    C.abutmentEquiv degree ((C.filtration.F s degree).arrow a) = alpha ∧
      (C.convergence.iso k).hom e = C.filtration.toAssociatedGraded s degree a

def DetectsAbutment (X : Syn) (r : ℤ) (k : ℤ × ℤ × ℤ)
    (x : (SynAdamsSS Syn X).Page r k)
    (alpha : BiHom ((synAdamsConvergence Syn X).convergence.reindex k).2.1
      ((synAdamsConvergence Syn X).convergence.reindex k).2.2 X) : Prop :=
  ∃ e : ((SynAdamsSS Syn X).ssData k).eInfty,
    HasEInftyClass Syn X r k x e ∧ EInftyDetects Syn X k e alpha

def PermanentCycle (X : Syn) (r : ℤ) (k : ℤ × ℤ × ℤ)
    (x : (SynAdamsSS Syn X).Page r k) : Prop :=
  ∃ e : ((SynAdamsSS Syn X).ssData k).eInfty,
    HasEInftyClass Syn X r k x e

theorem permanent_of_detects {X : Syn} {r : ℤ} {k : ℤ × ℤ × ℤ}
    {x : (SynAdamsSS Syn X).Page r k}
    {alpha : BiHom ((synAdamsConvergence Syn X).convergence.reindex k).2.1
      ((synAdamsConvergence Syn X).convergence.reindex k).2.2 X}
    (h : DetectsAbutment Syn X r k x alpha) : PermanentCycle Syn X r k x := by
  obtain ⟨e, he, _⟩ := h
  exact ⟨e, he⟩

end SyntheticAdamsDetection

/-- Comparison data from the concrete, CSV-backed sphere Adams `E₂` algebra
to the synthetic Adams `E₂` page of the synthetic sphere.  The tridegree
`(s,t,t)` is the diagonal carrying the classical `(s,t)` class. -/
structure SphereE2SyntheticE2Comparison where
  toSyntheticPage : ∀ (s t : ℕ), KIPBase.SphereE2.E2At s t →
    (SynAdamsSS Syn (S_0_0 : Syn)).Page 2 ((s : ℤ), (t : ℤ), (t : ℤ))

/-- The required comparison between the concrete sphere `E₂` model and
the synthetic sphere `E₂` page.  Its construction is the remaining
comparison theorem, not an additional axiom. -/
theorem sphereE2SyntheticE2Comparison_exists :
    Nonempty (SphereE2SyntheticE2Comparison Syn) := by
  sorry

/-- A concrete sphere `E₂` class detects a synthetic homotopy class when
its specified image on the synthetic `E₂` page detects that class through
synthetic Adams convergence. -/
def SphereE2ClassDetects (C : SphereE2SyntheticE2Comparison Syn)
    (s t : ℕ) (e : KIPBase.SphereE2.E2At s t)
    (alpha : BiHom ((synAdamsConvergence Syn (S_0_0 : Syn)).convergence.reindex
      ((s : ℤ), (t : ℤ), (t : ℤ))).2.1
      ((synAdamsConvergence Syn (S_0_0 : Syn)).convergence.reindex
        ((s : ℤ), (t : ℤ), (t : ℤ))).2.2 (S_0_0 : Syn)) : Prop :=
  SyntheticAdamsDetection.DetectsAbutment Syn (S_0_0 : Syn) 2
    ((s : ℤ), (t : ℤ), (t : ℤ)) (C.toSyntheticPage s t e) alpha

/-- Transport a class in the usual classical Adams bidegree `(t - s,t)`
to the abutment bidegree used by the synthetic Adams convergence datum. -/
noncomputable def toSyntheticAdamsReindexedBiHom (s t : ℕ)
    (alpha : BiHom ((t : ℤ) - s) (t : ℤ) (S_0_0 : Syn)) :
    BiHom ((synAdamsConvergence Syn (S_0_0 : Syn)).convergence.reindex
      ((s : ℤ), (t : ℤ), (t : ℤ))).2.1
      ((synAdamsConvergence Syn (S_0_0 : Syn)).convergence.reindex
        ((s : ℤ), (t : ℤ), (t : ℤ))).2.2 (S_0_0 : Syn) := by
  rw [(synAdamsConvergence Syn (S_0_0 : Syn)).reindex_eq]
  exact alpha

structure Theta5Bindings where
  firstQuotientTheta : BiHom 62 64 (S_0_0 : Syn) →
    (AdamsSS 𝒮 SphereSpectrum).Page 2 (2, 64)
  firstQuotientEta : BiHom 1 2 (S_0_0 : Syn) →
    (AdamsSS 𝒮 SphereSpectrum).Page 2 (1, 2)
  eta : BiHom 1 2 (S_0_0 : Syn)
  eta_detected : firstQuotientEta eta = AdamsE2Data.hi 1

noncomputable def lambdaEtaThetaSquare (D : Theta5Bindings 𝒮 Syn)
    (theta5 : BiHom 62 64 (S_0_0 : Syn)) :
    BiHom 125 129 (S_0_0 : Syn) :=
  lambdaAction Syn 125 130 S_0_0
    (syntheticSphereProduct Syn D.eta (syntheticSphereProduct Syn theta5 theta5))

noncomputable def zeroTarget : BiHom 125 129 (S_0_0 : Syn) :=
  letI : AddCommGroup (BiHom 125 129 (S_0_0 : Syn)) :=
    biHomotopyGroup 125 129 (S_0_0 : Syn)
  0

axiom selectedBindings : Theta5Bindings 𝒮 Syn

/-- A synthetic class detected by the standard classical `h₅²` label. -/
opaque Theta5Detected (theta5 : BiHom 62 64 (S_0_0 : Syn)) : Prop

/-- The synthetic class detected by the classical class `h₆`, in bidegree
`(63,64)`. -/
axiom syntheticH6 : BiHom 63 64 (S_0_0 : Syn)

/-- The comparison datum identifies the named classical `h₆` generator with
the chosen synthetic class.  This is data of the Adams comparison, rather
than a separate permanence assumption. -/
structure SphereE2SyntheticNamedBindings
    (C : SphereE2SyntheticE2Comparison Syn) where
  h6_detects : SphereE2ClassDetects Syn C 1 64 Near126E2.h6
    (toSyntheticAdamsReindexedBiHom Syn 1 64 (syntheticH6 Syn))

/-- The square of the chosen synthetic `h₆` class. -/
noncomputable def syntheticH6Square : BiHom 126 128 (S_0_0 : Syn) :=
  syntheticSphereProduct Syn (syntheticH6 Syn) (syntheticH6 Syn)

/-- The image of `h₆²` in the cofiber `S/λ`. -/
noncomputable def syntheticH6SquareModLambda :
    BiHom 126 128 (XModLambda (S_0_0 : Syn)) :=
  syntheticH6Square Syn ≫ XModLambda.incl (S_0_0 : Syn)

/-- The target of the λ-boundary is canonically `S^{1,-1}`. -/
noncomputable def lambdaBoundaryTargetIso :
    ((SyntheticCategory.biShift (0, (-1 : ℤ)) ⋙ shiftFunctor Syn (1 : ℤ)).obj
      (S_0_0 : Syn)) ≅ Smn 1 (-1 : ℤ) :=
  (Functor.isoWhiskerLeft (SyntheticCategory.biShift (0, (-1 : ℤ)))
    (SyntheticCategory.biShift_compat (Syn := Syn) 1).symm).app S_0_0 ≪≫
    (SyntheticCategory.biShift_comp (0, (-1 : ℤ)) (1, 0)).app S_0_0

/-- The connecting map `δ₁ : π_{126,128}(S/λ) → π_{125,129}S`, induced by
the boundary morphism of the λ-cofiber sequence. -/
noncomputable def delta1 :
    BiHom 126 128 (XModLambda (S_0_0 : Syn)) → BiHom 125 129 (S_0_0 : Syn) :=
  fun x => (susp_invariance (Syn := Syn) 125 129 1 (-1) S_0_0).symm
    (x ≫ XModLambda.proj (S_0_0 : Syn) ≫ (lambdaBoundaryTargetIso Syn).hom)

/-- The `δ₁`-Bockstein spectral sequence: the extension spectral sequence
of the actual boundary `S/λ → Σ^{1,-1}S`. -/
noncomputable def delta1BocksteinESS (degree : ℤ × ℤ) :=
  canonicalLambdaPowerBocksteinESS (S_0_0 : Syn) 1 degree

/-- The degree comparison in the first paragraph of page 46: the source
column `k = 1` of the `δ₁`-Bockstein ESS is placed in synthetic Adams
tridegree `(s, d+s, w)`. -/
def delta1BocksteinToSyntheticDegree (degree : ℤ × ℤ) :
    ℤ × ℤ → ℤ × ℤ × ℤ
  | (s, k) => (s, degree.1 + s + k - 1, degree.2)

/-- Under this reindexing, the `δ₁`-Bockstein degree `(r,-1)` becomes the
synthetic Adams degree `(r,r-1,0)`. -/
theorem delta1Bockstein_degree_compat (degree sk : ℤ × ℤ) (r : ℤ) :
    delta1BocksteinToSyntheticDegree degree
        (sk + (delta1BocksteinESS Syn degree).diffDeg r) =
      delta1BocksteinToSyntheticDegree degree sk +
        (SynAdamsSS Syn (S_0_0 : Syn)).diffDeg r := by
  rcases degree with ⟨d, w⟩
  rcases sk with ⟨s, k⟩
  simp [delta1BocksteinToSyntheticDegree, delta1BocksteinESS,
    canonicalLambdaPowerBocksteinESS, SyntheticExtensionCoreData.ess,
    synAdamsSS_diffDeg]
  omega

/-- The relation used in the proof of Proposition 7.8:
`δ₁(h₆²) = ληθ₅²`. -/
axiom delta1_h6Square_eq_lambdaEtaTheta5Square :
  ∀ theta5, Theta5Detected (Syn := Syn) theta5 →
    delta1 Syn (syntheticH6SquareModLambda Syn) =
      lambdaEtaThetaSquare 𝒮 Syn (selectedBindings 𝒮 Syn) theta5

/-- The if direction of Theorem 7.3(2), proved by the `δ₁`-Bockstein to
synthetic Adams degree comparison of page 46. -/
theorem theorem7_3_2_if :
    (∃ theta5 : BiHom 62 64 (S_0_0 : Syn),
      Theta5Detected (Syn := Syn) theta5 ∧
        lambdaEtaThetaSquare 𝒮 Syn (selectedBindings 𝒮 Syn) theta5 = zeroTarget Syn) →
      h6Permanent 𝒮 := by
  sorry

/-- The order-two condition on a synthetic `θ₅`. -/
noncomputable def Theta5OrderTwo (theta5 : BiHom 62 64 (S_0_0 : Syn)) : Prop :=
  letI : AddCommGroup (BiHom 62 64 (S_0_0 : Syn)) :=
    biHomotopyGroup 62 64 (S_0_0 : Syn)
  theta5 + theta5 = 0

/-- Adams-filtration membership for a synthetic sphere class. -/
opaque AdamsFiltrationAtLeast {m n : ℤ} (filtration : ℕ)
  (x : BiHom m n (S_0_0 : Syn)) : Prop

noncomputable def theta5Difference
    (theta5 theta5' : BiHom 62 64 (S_0_0 : Syn)) : BiHom 62 64 (S_0_0 : Syn) :=
  letI : AddCommGroup (BiHom 62 64 (S_0_0 : Syn)) :=
    biHomotopyGroup 62 64 (S_0_0 : Syn)
  theta5 - theta5'

noncomputable def theta5Square
    (theta5 : BiHom 62 64 (S_0_0 : Syn)) : BiHom 124 128 (S_0_0 : Syn) :=
  syntheticSphereProduct Syn theta5 theta5

noncomputable def theta5SquareDifference
    (theta5 theta5' : BiHom 62 64 (S_0_0 : Syn)) : BiHom 124 128 (S_0_0 : Syn) :=
  letI : AddCommGroup (BiHom 124 128 (S_0_0 : Syn)) :=
    biHomotopyGroup 124 128 (S_0_0 : Syn)
  theta5Square Syn theta5 - theta5Square Syn theta5'

/-- The difference of two detected `θ₅` choices has the stated Adams
filtration. -/
def Theta5IndeterminacyAtLeast (filtration : ℕ)
  (theta5 theta5' : BiHom 62 64 (S_0_0 : Syn)) : Prop :=
  AdamsFiltrationAtLeast Syn filtration (theta5Difference Syn theta5 theta5')

/-- The difference of the squares of two detected `θ₅` choices has the
stated Adams filtration. -/
def Theta5SquareIndeterminacyAtLeast (filtration : ℕ)
  (theta5 theta5' : BiHom 62 64 (S_0_0 : Syn)) : Prop :=
  AdamsFiltrationAtLeast Syn filtration (theta5SquareDifference Syn theta5 theta5')

/-- A synthetic representative of the classical class `h₀²x_{124,8}`. -/
opaque H0SquareX124_8Representative (x : BiHom 124 134 (S_0_0 : Syn)) : Prop

/-- The sixfold λ-multiple occurring in statement (4′). -/
noncomputable def lambdaSixH0Square (x : BiHom 124 134 (S_0_0 : Syn)) :
    BiHom 124 128 (S_0_0 : Syn) :=
  lambdaAction Syn 124 129 S_0_0
    (lambdaAction Syn 124 130 S_0_0
      (lambdaAction Syn 124 131 S_0_0
        (lambdaAction Syn 124 132 S_0_0
          (lambdaAction Syn 124 133 S_0_0
            (lambdaAction Syn 124 134 S_0_0 x)))))

/-- Detection of `θ₅²` by the specified filtration-ten leading class
`λ⁶ h₀²x_{124,8}`. -/
def Theta5SquareDetectedAtAF10 (theta5 : BiHom 62 64 (S_0_0 : Syn)) : Prop :=
  ∃ x : BiHom 124 134 (S_0_0 : Syn),
    H0SquareX124_8Representative (Syn := Syn) x ∧
      theta5Square Syn theta5 = lambdaSixH0Square Syn x

/-- The content of the condition in statement (4′). -/
theorem theta5Square_eq_lambdaSixH0Square_of_AF10_detection
    {theta5 : BiHom 62 64 (S_0_0 : Syn)}
    (h : Theta5SquareDetectedAtAF10 Syn theta5) :
    ∃ x : BiHom 124 134 (S_0_0 : Syn),
      H0SquareX124_8Representative (Syn := Syn) x ∧
        theta5Square Syn theta5 = lambdaSixH0Square Syn x :=
  h

/-- Iterated multiplication by the synthetic deformation parameter `λ`. -/
noncomputable def lambdaPowerAction {X : Syn} {m n : ℤ} (r : ℕ)
    (x : BiHom m n X) : BiHom m (n - r) X :=
  match r with
  | 0 => by simpa using x
  | r + 1 => by
      have y := lambdaPowerAction r x
      have hdegree : n - ((r + 1 : ℕ) : ℤ) = (n - (r : ℤ)) - 1 := by omega
      rw [hdegree]
      exact lambdaAction Syn m (n - r) X y

/-- A class is λ-torsion when a positive λ-power annihilates it. -/
def IsLambdaTorsion {m n : ℤ} (x : BiHom m n (S_0_0 : Syn)) : Prop :=
  ∃ r : ℕ, 0 < r ∧
    letI : AddCommGroup (BiHom m (n - r) (S_0_0 : Syn)) :=
      biHomotopyGroup m (n - r) (S_0_0 : Syn)
    lambdaPowerAction Syn r x = 0

/-- In the 124-stem, λ-torsion can occur only in weights at least seven
above the stem.  This is the Ext-vanishing and synthetic-rigidity estimate
used on page 46. -/
theorem stem124_lambda_torsion_lower_bound (j : ℤ)
    (x : BiHom 124 (124 + j) (S_0_0 : Syn)) :
    IsLambdaTorsion Syn x → 7 ≤ j := by
  sorry

/-- In particular, `π₁₂₄,₁₂₈` contains no λ-torsion. -/
theorem stem124_weight128_has_no_lambda_torsion
    (x : BiHom 124 128 (S_0_0 : Syn)) :
    ¬ IsLambdaTorsion Syn x := by
  intro hx
  have h := stem124_lambda_torsion_lower_bound Syn 4 x (by
    simpa using hx)
  omega

/-- The finite quotient `S/λ⁹` used in Lemma 7.14. -/
noncomputable abbrev sphereModLambdaNine : Syn := XModLambdaN (S_0_0 : Syn) 9

/-- The image of a sphere class in `S/λ⁹`. -/
noncomputable def toSphereModLambdaNine {m n : ℤ}
    (x : BiHom m n (S_0_0 : Syn)) : BiHom m n (sphereModLambdaNine Syn) :=
  x ≫ (XModLambdaN.inclNatTrans (Syn := Syn) 9).app (S_0_0 : Syn)

/-- The chosen `h₀` and the class `α₁` in Lemma 7.14.  The latter is the
synthetic lift of the Fact 7.13 class named by `fact713`. -/
structure Lemma7_14Data where
  fact713 : Near126E2.Fact7_13Classes
  h0 : BiHom 0 1 (S_0_0 : Syn)
  alpha1 : BiHom 123 132 (sphereModLambdaNine Syn)

noncomputable def lambdaThreeEtaAlpha1
    (alpha1 : BiHom 123 132 (sphereModLambdaNine Syn)) :
    BiHom 124 131 (sphereModLambdaNine Syn) := by
  convert lambdaPowerAction Syn 3
    (syntheticSphereAction Syn (selectedBindings 𝒮 Syn).eta alpha1) using 1 <;> norm_num

noncomputable def lambdaThreeModLambdaNineH0Square
    (h0SqX124_8 : BiHom 124 134 (S_0_0 : Syn)) :
    BiHom 124 131 (sphereModLambdaNine Syn) := by
  convert lambdaPowerAction Syn 3 (toSphereModLambdaNine Syn h0SqX124_8) using 1 <;> norm_num

noncomputable def lambdaSixAlpha2
    (alpha2 : BiHom 124 137 (sphereModLambdaNine Syn)) :
    BiHom 124 131 (sphereModLambdaNine Syn) := by
  convert lambdaPowerAction Syn 6 alpha2 using 1 <;> norm_num

noncomputable def etaAlpha2
    (alpha2 : BiHom 124 137 (sphereModLambdaNine Syn)) :
    BiHom 125 139 (sphereModLambdaNine Syn) := by
  convert syntheticSphereAction Syn (selectedBindings 𝒮 Syn).eta alpha2 using 1 <;> norm_num

noncomputable def lambdaAlpha3
    (alpha3 : BiHom 125 140 (sphereModLambdaNine Syn)) :
    BiHom 125 139 (sphereModLambdaNine Syn) := by
  convert lambdaPowerAction Syn 1 alpha3 using 1 <;> norm_num

noncomputable def lambdaThreeAlpha1H0
    (h0 : BiHom 0 1 (S_0_0 : Syn))
    (alpha1 : BiHom 123 132 (sphereModLambdaNine Syn)) :
    BiHom 123 130 (sphereModLambdaNine Syn) := by
  convert lambdaPowerAction Syn 3 (syntheticSphereAction Syn h0 alpha1) using 1 <;> norm_num

/-- Lemma 7.14.  The relations are stated in `S/λ⁹`; the first is supplied
for every representative of `h₀²x_{124,8}`. -/
theorem lemma7_14 :
    ∃ A : Lemma7_14Data Syn,
      (∀ h0SqX124_8 : BiHom 124 134 (S_0_0 : Syn),
        H0SquareX124_8Representative (Syn := Syn) h0SqX124_8 →
          ∃ alpha2 : BiHom 124 137 (sphereModLambdaNine Syn),
            ∃ alpha3 : BiHom 125 140 (sphereModLambdaNine Syn),
              letI : AddCommGroup (BiHom 124 131 (sphereModLambdaNine Syn)) :=
                biHomotopyGroup 124 131 (sphereModLambdaNine Syn)
              lambdaThreeEtaAlpha1 𝒮 Syn A.alpha1 =
                lambdaThreeModLambdaNineH0Square Syn h0SqX124_8 +
                  lambdaSixAlpha2 Syn alpha2 ∧
                etaAlpha2 𝒮 Syn alpha2 = lambdaAlpha3 Syn alpha3) ∧
      letI : AddCommGroup (BiHom 123 130 (sphereModLambdaNine Syn)) :=
        biHomotopyGroup 123 130 (sphereModLambdaNine Syn)
      lambdaThreeAlpha1H0 Syn A.h0 A.alpha1 = 0 := by
  sorry

/-- The stem-124 alternative from the inspection of the classical Adams
differentials on page 46: a square of a detected `θ₅` is either the
`λ⁶h₀²x_{124,8}` class, a `λ⁹`-multiple of `e₀Δh₆g`, or a `λ¹⁰`-multiple. -/
axiom theta5Square_three_possibilities :
  ∀ theta5 : BiHom 62 64 (S_0_0 : Syn),
    Theta5Detected (Syn := Syn) theta5 →
      (∃ h0SqX124_8 : BiHom 124 134 (S_0_0 : Syn),
        H0SquareX124_8Representative (Syn := Syn) h0SqX124_8 ∧
          theta5Square Syn theta5 = lambdaSixH0Square Syn h0SqX124_8) ∨
      (∃ e0DeltaH6g : BiHom 124 137 (S_0_0 : Syn),
        theta5Square Syn theta5 = lambdaPowerAction Syn 9 e0DeltaH6g) ∨
      (∃ z : BiHom 124 138 (S_0_0 : Syn),
        theta5Square Syn theta5 = lambdaPowerAction Syn 10 z)

/-- The second alternative of the stem-124 analysis.  The Ext relation
`h₁(e₀Δh₆g)=0` makes `ληθ₅²` a `λ¹⁰`-multiple. -/
theorem lambdaEtaTheta5Square_is_lambda10_multiple_of_second_alternative
    (theta5 : BiHom 62 64 (S_0_0 : Syn))
    (hsecond : ∃ e0DeltaH6g : BiHom 124 137 (S_0_0 : Syn),
      theta5Square Syn theta5 = lambdaPowerAction Syn 9 e0DeltaH6g) :
    ∃ z : BiHom 125 139 (S_0_0 : Syn),
      lambdaEtaThetaSquare 𝒮 Syn (selectedBindings 𝒮 Syn) theta5 =
        lambdaPowerAction Syn 10 z := by
  sorry

/-- The third alternative of the stem-124 analysis also makes
`ληθ₅²` a `λ¹⁰`-multiple. -/
theorem lambdaEtaTheta5Square_is_lambda10_multiple_of_third_alternative
    (theta5 : BiHom 62 64 (S_0_0 : Syn))
    (hthird : ∃ z : BiHom 124 138 (S_0_0 : Syn),
      theta5Square Syn theta5 = lambdaPowerAction Syn 10 z) :
    ∃ z : BiHom 125 139 (S_0_0 : Syn),
      lambdaEtaThetaSquare 𝒮 Syn (selectedBindings 𝒮 Syn) theta5 =
        lambdaPowerAction Syn 10 z := by
  sorry

/-- The tmf detection argument in the 125-stem: for a synthetic `θ₅`, a
`λ¹⁰`-multiple of `ληθ₅²` must vanish.  The unique possible class is the
λ-free tmf-detected class `λ²⁰g⁴Δh₁g`. -/
theorem lambdaEtaTheta5Square_eq_zero_of_lambda10_multiple
    (theta5 : BiHom 62 64 (S_0_0 : Syn))
    (htheta5 : Theta5Detected (Syn := Syn) theta5)
    (hmultiple : ∃ z : BiHom 125 139 (S_0_0 : Syn),
      lambdaEtaThetaSquare 𝒮 Syn (selectedBindings 𝒮 Syn) theta5 =
        lambdaPowerAction Syn 10 z) :
    lambdaEtaThetaSquare 𝒮 Syn (selectedBindings 𝒮 Syn) theta5 = zeroTarget Syn := by
  sorry

/-- Lemma 7.10 input: every `h₅²`-detected `θ₅` has order two. -/
axiom theta5_order_two :
  ∀ theta5, Theta5Detected (Syn := Syn) theta5 →
    Theta5OrderTwo Syn theta5

/-- Lemma 7.10 input: the indeterminacy of a `θ₅` choice has Adams
filtration at least six. -/
axiom theta5_indeterminacy_AF_ge_6 :
  ∀ theta5 theta5', Theta5Detected (Syn := Syn) theta5 →
    Theta5Detected (Syn := Syn) theta5' →
    Theta5IndeterminacyAtLeast Syn 6 theta5 theta5'

/-- For order-two classes, the difference of their squares is the square of
their difference. -/
axiom theta5_square_difference_of_order_two :
  ∀ theta5 theta5', Theta5OrderTwo Syn theta5 → Theta5OrderTwo Syn theta5' →
    theta5SquareDifference Syn theta5 theta5' =
      theta5Square Syn (theta5Difference Syn theta5 theta5')

/-- Adams filtration is additive under composition of sphere classes. -/
axiom adams_filtration_comp :
  ∀ {m n m' n' : ℤ} (p q : ℕ)
    (x : BiHom m n (S_0_0 : Syn)) (y : BiHom m' n' (S_0_0 : Syn)),
    AdamsFiltrationAtLeast Syn p x →
    AdamsFiltrationAtLeast Syn q y →
    AdamsFiltrationAtLeast Syn (p + q) (syntheticSphereProduct Syn x y)

/-- Lemma 7.10: AF≥6 indeterminacy for order-two `θ₅` classes gives AF≥12
indeterminacy for their squares. -/
theorem theta5_square_indeterminacy_AF_ge_12 :
  ∀ theta5 theta5', Theta5Detected (Syn := Syn) theta5 →
    Theta5Detected (Syn := Syn) theta5' →
    Theta5SquareIndeterminacyAtLeast Syn 12 theta5 theta5' := by
  intro theta5 theta5' htheta5 htheta5'
  unfold Theta5SquareIndeterminacyAtLeast
  rw [theta5_square_difference_of_order_two Syn theta5 theta5'
    (theta5_order_two Syn theta5 htheta5) (theta5_order_two Syn theta5' htheta5')]
  have hDifference : AdamsFiltrationAtLeast Syn 6
      (theta5Difference Syn theta5 theta5') :=
    theta5_indeterminacy_AF_ge_6 Syn theta5 theta5' htheta5 htheta5'
  have hSquare := adams_filtration_comp Syn 6 6
    (theta5Difference Syn theta5 theta5') (theta5Difference Syn theta5 theta5')
    hDifference hDifference
  norm_num [theta5Square] at hSquare ⊢
  exact hSquare

/-- An AF≥12 change cannot alter a specified nonzero AF=10 leading
detection. -/
axiom af12_indeterminacy_preserves_theta5_square_AF10_detection :
  ∀ theta5 theta5',
    Theta5SquareIndeterminacyAtLeast Syn 12 theta5 theta5' →
    Theta5SquareDetectedAtAF10 Syn theta5 →
    Theta5SquareDetectedAtAF10 Syn theta5'

/-- There is a synthetic `θ₅` detected by the classical `h₅²` class. -/
axiom theta5_detected_exists :
  ∃ theta5 : BiHom 62 64 (S_0_0 : Syn), Theta5Detected (Syn := Syn) theta5

/-- Statement (4) of Proposition 7.8. -/
def Statement7_8_4 : Prop :=
  ∃ theta5 : BiHom 62 64 (S_0_0 : Syn),
    Theta5Detected (Syn := Syn) theta5 ∧ Theta5SquareDetectedAtAF10 Syn theta5

/-- Page 47, first paragraph: if alternative (4) does not occur, then
`ληθ₅²` vanishes for every synthetic `θ₅`. -/
theorem lambdaEtaTheta5Square_eq_zero_of_not_statement7_8_4
    (hnot4 : ¬ Statement7_8_4 (Syn := Syn)) :
    ∀ theta5 : BiHom 62 64 (S_0_0 : Syn),
      Theta5Detected (Syn := Syn) theta5 →
        lambdaEtaThetaSquare 𝒮 Syn (selectedBindings 𝒮 Syn) theta5 = zeroTarget Syn := by
  intro theta5 htheta5
  rcases theta5Square_three_possibilities Syn theta5 htheta5 with hfirst | hsecond | hthird
  · exact False.elim (hnot4 ⟨theta5, htheta5, hfirst⟩)
  · exact lambdaEtaTheta5Square_eq_zero_of_lambda10_multiple 𝒮 Syn theta5 htheta5
      (lambdaEtaTheta5Square_is_lambda10_multiple_of_second_alternative 𝒮 Syn theta5 hsecond)
  · exact lambdaEtaTheta5Square_eq_zero_of_lambda10_multiple 𝒮 Syn theta5 htheta5
      (lambdaEtaTheta5Square_is_lambda10_multiple_of_third_alternative 𝒮 Syn theta5 hthird)

/-- Statement (4') of Lemma 7.10. -/
def Statement7_10_4prime : Prop :=
  ∀ theta5 : BiHom 62 64 (S_0_0 : Syn),
    Theta5Detected (Syn := Syn) theta5 → Theta5SquareDetectedAtAF10 Syn theta5

/-- Lemma 7.10: if one `θ₅²` has the specified nonzero AF=10 detection,
then every choice of `θ₅` has it. -/
theorem lemma7_10 : Statement7_8_4 (Syn := Syn) ↔
    Statement7_10_4prime (Syn := Syn) := by
  constructor
  · rintro ⟨theta5, htheta5, hdetected⟩ theta5' htheta5'
    exact af12_indeterminacy_preserves_theta5_square_AF10_detection Syn
      theta5 theta5'
      (theta5_square_indeterminacy_AF_ge_12 Syn theta5 theta5' htheta5 htheta5')
      hdetected
  · intro h
    obtain ⟨theta5, htheta5⟩ := theta5_detected_exists (Syn := Syn)
    exact ⟨theta5, htheta5, h theta5 htheta5⟩

/-- The class `λ³η[h₀²x_{124,8}]` occurring in the second equality on
page 46. -/
noncomputable def lambdaThreeEtaH0Square (x : BiHom 124 134 (S_0_0 : Syn)) :
    BiHom 125 133 (S_0_0 : Syn) :=
  lambdaAction Syn 125 134 S_0_0
    (lambdaAction Syn 125 135 S_0_0
      (lambdaAction Syn 125 136 S_0_0
        (syntheticSphereProduct Syn (selectedBindings 𝒮 Syn).eta x)))

/-- The sixfold λ-multiple of a representative of
`h₁h₄x_{109,12}`. -/
noncomputable def lambdaSixH1H4X109_12 (x : BiHom 125 139 (S_0_0 : Syn)) :
    BiHom 125 133 (S_0_0 : Syn) :=
  lambdaAction Syn 125 134 S_0_0
    (lambdaAction Syn 125 135 S_0_0
      (lambdaAction Syn 125 136 S_0_0
        (lambdaAction Syn 125 137 S_0_0
          (lambdaAction Syn 125 138 S_0_0
            (lambdaAction Syn 125 139 S_0_0 x)))))

/-- Page 46, second displayed equality. -/
axiom lambdaThreeEtaH0Square_eq_lambdaSixH1H4X109_12 :
  ∀ x, H0SquareX124_8Representative (Syn := Syn) x →
    ∃ y : BiHom 125 139 (S_0_0 : Syn),
      lambdaThreeEtaH0Square 𝒮 Syn x = lambdaSixH1H4X109_12 Syn y

/-- The specified AF=14 leading detection of `λ³η [h₀²x_{124,8}]` by
`λ⁶ h₁h₄x_{109,12}`. -/
opaque Lambda3EtaH0SquareDetectedAtAF14
  (x : BiHom 124 134 (S_0_0 : Syn)) : Prop

/-- The filtration of the difference of two `λ³η [h₀²x_{124,8}]` choices. -/
opaque Lambda3EtaH0SquareIndeterminacyAtLeast (filtration : ℕ)
  (x x' : BiHom 124 134 (S_0_0 : Syn)) : Prop

/-- Lemma 7.11 input: the difference of two representatives, after
multiplication by `λ³η`, belongs to AF≥15. -/
axiom lambda3_eta_h0Square_indeterminacy_AF_ge_15 :
  ∀ x x', H0SquareX124_8Representative (Syn := Syn) x →
    H0SquareX124_8Representative (Syn := Syn) x' →
    Lambda3EtaH0SquareIndeterminacyAtLeast Syn 15 x x'

/-- An AF≥15 change cannot alter the specified AF=14 leading detection. -/
axiom af15_indeterminacy_preserves_lambda3_eta_h0Square_AF14_detection :
  ∀ x x', Lambda3EtaH0SquareIndeterminacyAtLeast Syn 15 x x' →
    Lambda3EtaH0SquareDetectedAtAF14 Syn x →
    Lambda3EtaH0SquareDetectedAtAF14 Syn x'

/-- There is a representative of the classical `h₀²x_{124,8}` class. -/
axiom h0SquareX124_8_representative_exists :
  ∃ x : BiHom 124 134 (S_0_0 : Syn),
    H0SquareX124_8Representative (Syn := Syn) x

/-- Statement (5) of Proposition 7.8. -/
def Statement7_8_5 : Prop :=
  ∃ x : BiHom 124 134 (S_0_0 : Syn),
    H0SquareX124_8Representative (Syn := Syn) x ∧
      Lambda3EtaH0SquareDetectedAtAF14 Syn x

/-- Statement (5') of Lemma 7.11. -/
def Statement7_11_5prime : Prop :=
  ∀ x : BiHom 124 134 (S_0_0 : Syn),
    H0SquareX124_8Representative (Syn := Syn) x →
      Lambda3EtaH0SquareDetectedAtAF14 Syn x

/-- Lemma 7.11: if one representative has the specified AF=14 detection
after multiplication by `λ³η`, then every representative has it. -/
theorem lemma7_11 : Statement7_8_5 (Syn := Syn) ↔
    Statement7_11_5prime (Syn := Syn) := by
  constructor
  · rintro ⟨x, hx, hdetected⟩ x' hx'
    exact af15_indeterminacy_preserves_lambda3_eta_h0Square_AF14_detection Syn x x'
      (lambda3_eta_h0Square_indeterminacy_AF_ge_15 Syn x x' hx hx') hdetected
  · intro h
    obtain ⟨x, hx⟩ := h0SquareX124_8_representative_exists (Syn := Syn)
    exact ⟨x, hx, h x hx⟩

/-- Page 46: statements (3), (4'), and (5') force the nonzero classical
Adams differential `d₁₂(h₆²) = h₁h₄x_{109,12}`. -/
theorem d12_h6Sq_eq_h1h4x109_12_of_statement3_4prime_5prime :
    Near126E2.C3 → Statement7_10_4prime (Syn := Syn) →
      Statement7_11_5prime (Syn := Syn) →
        Near126E2.Differential 12 Near126E2.h6Sq Near126E2.h1h4x109_12 := by
  sorry

/-- Statement (3) of Proposition 7.8: the possible `d₆` is zero. -/
def Statement7_8_3 : Prop := Near126E2.C3

/-- Fact 7.6(2), together with synthetic Adams rigidity, identifies the
specified nonzero AF=14 detection with statement (3). -/
axiom fact7_6_rigidity_AF14_detection_iff_statement7_8_3 :
  ∀ x, H0SquareX124_8Representative (Syn := Syn) x →
    (Lambda3EtaH0SquareDetectedAtAF14 Syn x ↔ Statement7_8_3)

/-- Remark 7.12: statement (5') is equivalent to statement (3). -/
theorem remark7_12 : Statement7_11_5prime (Syn := Syn) ↔
    Statement7_8_3 := by
  constructor
  · intro h
    obtain ⟨x, hx⟩ := h0SquareX124_8_representative_exists (Syn := Syn)
    exact (fact7_6_rigidity_AF14_detection_iff_statement7_8_3 (Syn := Syn) x hx).mp
      (h x hx)
  · intro h x hx
    exact (fact7_6_rigidity_AF14_detection_iff_statement7_8_3 (Syn := Syn) x hx).mpr h

/-- Using Lemma 7.11, statement (5) may also be interchanged with
statement (3). -/
theorem statement7_8_5_iff_statement7_8_3 : Statement7_8_5 (Syn := Syn) ↔
    Statement7_8_3 :=
  lemma7_11 (Syn := Syn) |>.trans (remark7_12 (Syn := Syn))

/-- The first case in the last part of the proof of Proposition 7.8:
failure of (4) gives the vanishing required by Theorem 7.3(2). -/
theorem h6Permanent_of_not_statement7_8_4
    (hnot4 : ¬ Statement7_8_4 (Syn := Syn)) : h6Permanent 𝒮 := by
  obtain ⟨theta5, htheta5⟩ := theta5_detected_exists (Syn := Syn)
  apply theorem7_3_2_if 𝒮 Syn
  exact ⟨theta5, htheta5,
    lambdaEtaTheta5Square_eq_zero_of_not_statement7_8_4 𝒮 Syn hnot4 theta5 htheta5⟩

/-- Page 47, second case: under (4), failure of (5) leaves no nonzero
possibility for `λ³η[h₀²x_{124,8}]`; the tmf detection argument then gives
`ληθ₅² = 0`. -/
theorem exists_lambdaEtaTheta5Square_eq_zero_of_statement7_8_4_and_not_5
    (h4 : Statement7_8_4 (Syn := Syn))
    (hnot5 : ¬ Statement7_8_5 (Syn := Syn)) :
    ∃ theta5 : BiHom 62 64 (S_0_0 : Syn),
      Theta5Detected (Syn := Syn) theta5 ∧
        lambdaEtaThetaSquare 𝒮 Syn (selectedBindings 𝒮 Syn) theta5 = zeroTarget Syn := by
  sorry

/-- The second case of page 47, followed by Theorem 7.3(2). -/
theorem h6Permanent_of_statement7_8_4_and_not_5
    (h4 : Statement7_8_4 (Syn := Syn))
    (hnot5 : ¬ Statement7_8_5 (Syn := Syn)) : h6Permanent 𝒮 := by
  exact theorem7_3_2_if 𝒮 Syn
    (exists_lambdaEtaTheta5Square_eq_zero_of_statement7_8_4_and_not_5 𝒮 Syn h4 hnot5)

/-- Page 47, final case: if (4) and (5) hold but the possible `d₆` in
(3) is nonzero, inspection gives the alternative `d₆` and the same tmf
detection argument forces `ληθ₅² = 0`. -/
theorem exists_lambdaEtaTheta5Square_eq_zero_of_statement7_8_4_5_and_not_3
    (h4 : Statement7_8_4 (Syn := Syn))
    (h5 : Statement7_8_5 (Syn := Syn))
    (hnot3 : ¬ Statement7_8_3) :
    ∃ theta5 : BiHom 62 64 (S_0_0 : Syn),
      Theta5Detected (Syn := Syn) theta5 ∧
        lambdaEtaThetaSquare 𝒮 Syn (selectedBindings 𝒮 Syn) theta5 = zeroTarget Syn := by
  sorry

/-- The final case of page 47, followed by Theorem 7.3(2). -/
theorem h6Permanent_of_statement7_8_4_5_and_not_3
    (h4 : Statement7_8_4 (Syn := Syn))
    (h5 : Statement7_8_5 (Syn := Syn))
    (hnot3 : ¬ Statement7_8_3) : h6Permanent 𝒮 := by
  exact theorem7_3_2_if 𝒮 Syn
    (exists_lambdaEtaTheta5Square_eq_zero_of_statement7_8_4_5_and_not_3
      𝒮 Syn h4 h5 hnot3)

/-- The remaining implication in Proposition 7.8 proved on page 47: if
one of (3), (4), and (5) fails, then `h₆²` is a permanent cycle. -/
theorem h6Permanent_of_not_all_statement7_8_3_4_5
    (hnot : ¬ (Statement7_8_3 ∧ Statement7_8_4 (Syn := Syn) ∧
      Statement7_8_5 (Syn := Syn))) : h6Permanent 𝒮 := by
  by_cases h4 : Statement7_8_4 (Syn := Syn)
  · by_cases h5 : Statement7_8_5 (Syn := Syn)
    · by_cases h3 : Statement7_8_3
      · exact False.elim (hnot ⟨h3, h4, h5⟩)
      · exact h6Permanent_of_statement7_8_4_5_and_not_3 𝒮 Syn h4 h5 h3
    · exact h6Permanent_of_statement7_8_4_and_not_5 𝒮 Syn h4 h5
  · exact h6Permanent_of_not_statement7_8_4 𝒮 Syn h4

/-- The page-49 computation used in Lemma 7.16: under (3), the class
`λ⁶[h₁h₄x_{109,12}]` remains nonzero in `S/λ⁹`. -/
theorem lambdaSix_h1h4x109_12_nonzero_in_modLambdaNine_of_statement7_8_3
    (h3 : Statement7_8_3) :
    letI : AddCommGroup (BiHom 125 133 (sphereModLambdaNine Syn)) :=
      biHomotopyGroup 125 133 (sphereModLambdaNine Syn)
    ∃ y : BiHom 125 139 (S_0_0 : Syn),
      toSphereModLambdaNine Syn (lambdaSixH1H4X109_12 Syn y) ≠ 0 := by
  sorry

/-- A homotopy class detected by `λ⁴h₀²x_{125,9,2}` in `S/λ⁹`. -/
structure LambdaFourH0SqX125_9_2Class where
  val : BiHom 125 132 (sphereModLambdaNine Syn)

/-- Lemma 7.16, in the form used immediately in Corollary 7.18.  A Toda
bracket value detected by `λ⁴h₀²x_{125,9,2}` has the displayed nonzero
`[h₀]`-multiple. -/
theorem lemma7_16 :
    Statement7_8_3 → Statement7_11_5prime (Syn := Syn) →
      ∀ (A : Lemma7_14Data Syn) (bracketValue : LambdaFourH0SqX125_9_2Class Syn),
        ∃ y : BiHom 125 139 (S_0_0 : Syn),
          letI : AddCommGroup (BiHom 125 133 (sphereModLambdaNine Syn)) :=
            biHomotopyGroup 125 133 (sphereModLambdaNine Syn)
          syntheticSphereAction Syn A.h0 bracketValue.val =
            toSphereModLambdaNine Syn (lambdaSixH1H4X109_12 Syn y) ∧
          toSphereModLambdaNine Syn (lambdaSixH1H4X109_12 Syn y) ≠ 0 := by
  sorry

/-- Corollary 7.18.  Under (3) and (5′), every class detected by
`λ⁴h₀²x_{125,9,2}` has `[h₀]`-multiple a nonzero class detected by
`λ⁶h₁h₄x_{109,12}`. -/
theorem corollary7_18
    (h3 : Statement7_8_3) (h5prime : Statement7_11_5prime (Syn := Syn))
    (A : Lemma7_14Data Syn) (x : LambdaFourH0SqX125_9_2Class Syn) :
    ∃ y : BiHom 125 139 (S_0_0 : Syn),
      letI : AddCommGroup (BiHom 125 133 (sphereModLambdaNine Syn)) :=
        biHomotopyGroup 125 133 (sphereModLambdaNine Syn)
      syntheticSphereAction Syn A.h0 x.val =
        toSphereModLambdaNine Syn (lambdaSixH1H4X109_12 Syn y) ∧
      toSphereModLambdaNine Syn (lambdaSixH1H4X109_12 Syn y) ≠ 0 := by
  obtain ⟨y, hextension, hnonzero⟩ := lemma7_16 (Syn := Syn) h3 h5prime A x
  exact ⟨y, hextension, hnonzero⟩

/-- The synthetic representatives used in Lemma 7.20.  Their bidegrees
are those of `h₂`, `h₁x_{121,7}`, and `h₀²x_{125,9,2}` before the stated
λ-multiplications. -/
structure Lemma7_20Data where
  h2 : BiHom 3 4 (S_0_0 : Syn)
  h1X121_7 : BiHom 122 130 (S_0_0 : Syn)
  h0SqX125_9_2 : BiHom 125 136 (S_0_0 : Syn)

/-- Lemma 7.20.  The generalized Mahowald trick, applied to the ν-cofiber
triangle and then pushed from `S/λ⁵` to `S/λ⁹`, gives
`[λ⁴h₁x_{121,7}]·[h₂]=λ[λ⁵h₀²x_{125,9,2}]`. -/
theorem lemma7_20 :
    ∃ D : Lemma7_20Data Syn,
      syntheticSphereAction Syn D.h2
          (lambdaPowerAction Syn 4 (toSphereModLambdaNine Syn D.h1X121_7)) =
        lambdaPowerAction Syn 6
          (toSphereModLambdaNine Syn D.h0SqX125_9_2) := by
  sorry

/-- The final Table 1 computation in the proof of Proposition 7.9.  Under
(3) and (5′), Lemma 7.20 and Corollary 7.18 would force the class
`h₁h₄x_{109,12}[0]` in the classical Adams spectral sequence of `S/ν` to
be killed by a differential of length at most five, contrary to Table 1. -/
theorem proposition7_9_table1_contradiction
    (h3 : Statement7_8_3) (h5prime : Statement7_11_5prime (Syn := Syn)) : False := by
  sorry

/-- Proposition 7.9 in the statement-(3)/(5) formulation of Proposition
7.8: if (3) holds, then (5) is false. -/
theorem proposition7_9_statement7_8 :
    Statement7_8_3 → ¬ Statement7_8_5 (Syn := Syn) := by
  intro h3 h5
  exact proposition7_9_table1_contradiction Syn h3
    ((lemma7_11 (Syn := Syn)).mp h5)

/-- The original `Near126E2.C5` interface is precisely statement (5) in
the synthetic formulation of Proposition 7.8. -/
theorem statement7_8_5_iff_near126_C5 :
    Statement7_8_5 (Syn := Syn) ↔ Near126E2.C5 := by
  sorry

namespace Near126E2

/-- Proposition 7.9 in the original `C₃`/`C₅` interface. -/
theorem proposition7_9 (Syn : Type u') [Category.{v'} Syn] [Preadditive Syn]
    [HasZeroObject Syn] [HasShift Syn ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor Syn n)]
    [MonoidalCategory Syn] [Pretriangulated Syn] [SyntheticCategory Syn] : C3 → ¬ C5 := by
  intro h3 h5
  apply proposition7_9_statement7_8 (Syn := Syn) h3
  exact (statement7_8_5_iff_near126_C5 (Syn := Syn)).mpr h5

/-- Theorem 7.1: `h₆²` is a permanent cycle. -/
theorem h6Sq_permanent_cycle (Syn : Type u') [Category.{v'} Syn] [Preadditive Syn]
    [HasZeroObject Syn] [HasShift Syn ℤ]
    [∀ n : ℤ, Functor.Additive (shiftFunctor Syn n)]
    [MonoidalCategory Syn] [Pretriangulated Syn] [SyntheticCategory Syn] :
    SurvivesToEInfinity h6Sq := by
  rcases proposition7_8_dichotomy with ⟨hsurvives, _⟩ | ⟨hd12, _⟩
  · exact hsurvives
  · obtain ⟨hc3, _, hc5⟩ := proposition7_8_d12_iff.mp hd12
    exact False.elim (proposition7_9 Syn hc3 hc5)

end Near126E2

/-- Remark 7.17.  The nonzero class supplied by Lemma 7.16 and Fact 7.15
forces `d₅(h₀²x_{125,9,2})=0` under (3) and (5′). -/
theorem remark7_17 :
    Statement7_8_3 → Statement7_11_5prime (Syn := Syn) →
      ∃ D : Near126E2.Fact7_15Classes,
        ∀ target : KIPBase.SphereE2.E2,
          ¬ Near126E2.Differential 5 D.h0SqX125_9_2 target := by
  sorry

end KIPBase.Section7
