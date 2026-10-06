import KIP126.Def.SpectralSequence.Basic.Category.Data
import KIP126.Def.SpectralSequence.Computation.Predicates
import KIP126.Def.ClassicalAdams.PageRepresentatives.Predicates
import KIP126.Def.ClassicalAdams.PageRepresentatives.Quotient.Window.Data
import KIP126.Def.ClassicalAdams.PageRepresentatives.Quotient.Top.Equivalence.Data
import KIP126.Def.Comparison.ClassicalSynthetic.Data
import KIP126.Def.Comparison.ClassicalSynthetic.FirstQuotient.Data
import KIP126.Def.Synthetic.EInfty.Presentation.Predicates
import KIP126.Def.Synthetic.EInfty.Shift.Predicates
import KIP126.Def.Synthetic.PageExtension.Ambiguity.Predicates
import KIP126.Def.Synthetic.PageExtension.Solutions.Data
import KIP126.Def.Synthetic.PageExtension.Solutions.Permanent.Data
import KIP126.Def.Synthetic.ExtensionSS.Square.Construction.Data
import KIP126.Def.ClassicalAdams.MilnorCohomology.Comparison.Data
import KIP126.Def.ClassicalAdams.MilnorCohomology.Multiplication.Data
import KIP126.Def.Steenrod.MilnorExt.Resolution.Data
import KIP126.Def.Synthetic.Bockstein.Hom.Data
import KIP126.Def.Synthetic.QuotientFunctor.Data
import KIP126.Def.ClassicalAdams.Convergence.Tower.Predicates
import KIP126.Def.ClassicalAdams.Completion.Predicates

/-!
# Generic page and comparison interfaces

These mathematical types concern explicitly supplied spectra, spectral sequences,
representatives, and comparison maps. They use no stage witness, fixed CSV data,
or Interface/Main assumption. The legacy `KIP126.Challenge2` namespace is retained
for compatibility; declaring these types does not deliver a Challenge2 input.
Generic constructions and proofs are in `StageInterfaces/Proofs`.
-/
namespace KIP126.Challenge2

open CategoryTheory CategoryTheory.MonoidalCategory
open Classical.Adams Core.SpectralSequence

universe u v w

/-- am1：一般内部页面 calculus 的派生交付。页面与微分均来自同一个 E；
同调同构来自 nested Z/B 模型，不另选一套谱序列。 -/
structure PageCalculus {C : Type u} [Category.{v} C] [Abelian C]
    {ι : Type w} [AddCommGroup ι] [DecidableEq ι]
    (E : Core.SpectralSequence C ι) : Prop where
  homology : ∀ (r : ℤ) (k : ι), E.r₀ ≤ r →
    Nonempty (E.Page (r + 1) k ≅ (E.pageShortComplex r (k - E.diffDeg r)).homology)
  square_zero : ∀ (r : ℤ) (k : ι), E.d r k ≫ E.d r (k + E.diffDeg r) = 0

/-- am1：模页面的代表元、边界及非零微分条件。普通微分等式不能提供
非零存活；后两个字段明确保留 `HasNonzeroDifferential` 的非零前提。 -/
structure RepresentativeCalculus {R : Type u} [Ring R]
    (E : Core.SpectralSequence (ModuleCat.{v} R) (ℤ × ℤ)) : Prop where
  page_two : ∀ p (a b : E.Page 2 p), RepresentsOnPage E 2 p a b → a = b
  boundary_cycle : ∀ r p (a : E.Page r (p + E.diffDeg r)),
    IsPageBoundary E r p a → IsPageCycle E r (p + E.diffDeg r) a
  differential_source : ∀ r p q (x : E.Page 2 p) (y : E.Page 2 q),
    HasNonzeroDifferential E r p q x y → SurvivesTo E r p x
  differential_target : ∀ r p q (x : E.Page 2 p) (y : E.Page 2 q),
    HasNonzeroDifferential E r p q x y → SurvivesTo E r q y

/-- am1/am2/am7：论文的 Z_c、B_c 是实际 E₂ 内的子模，不能与尚未除去
第一微分边界的 raw ambient 混同。这里集中列出页码、商映射和 crossing
约定的派生交付；不新增可自由选择的 cycles、boundaries 或 differential。 -/
structure PaperCycleCalculus {C : Type u}
    [StableHomotopy.StableHomotopyCategory.{u, v} C]
    [StableHomotopy.HasFunctorialCofiber (C := C)]
    (H : StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C)) (X : C) : Prop where
  first_cycles : ∀ p, PageRepresentatives.cycles H X 1 p = ⊤
  first_boundaries : ∀ p, PageRepresentatives.boundaries H X 1 p = ⊥
  represents : ∀ r, 2 ≤ r → ∀ p (x : PageRepresentatives.Ambient H X p),
    PageRepresentatives.IsCycle H X (r - 1) p x ↔
      ∃ xr : (adamsTowerInternalSpectralSequence H.unit X).Page r p,
        RepresentsOnPage (adamsTowerInternalSpectralSequence H.unit X) r p x xr
  degree : ∀ r p q (x : PageRepresentatives.Ambient H X p)
    (y : PageRepresentatives.Ambient H X q),
    PageRepresentatives.DifferentialAt H X r p q x y → p + (r, r - 1) = q
  no_crossing_two : ∀ r, 2 ≤ r → ∀ p, PageRepresentatives.NoCrossingOn H X r 2 p

/-- am3：同一内部谱序列态射的派生自然性。所有页面映射由 f 的环境映射
诱导；不另选页面映射，也不把微分等式加强为非零结论。 -/
structure MorphismCalculus {R : Type u} [Ring R]
    (E E' : Core.SpectralSequence (ModuleCat.{v} R) (ℤ × ℤ))
    (f : SpectralSequenceMorphism E E') : Prop where
  differential_comm : ∀ (r : ℤ) (p : ℤ × ℤ),
    f.pageMap r p ≫ E'.d r p =
      E.d r p ≫ f.pageMap r (p + E.diffDeg r) ≫
        eqToHom (by rw [f.diffDeg_eq])
  page_identity : ∀ (r : ℤ) (p : ℤ × ℤ),
    (𝟙 E : E ⟶ E).pageMap r p = 𝟙 _
  page_composition : ∀ (E'' : Core.SpectralSequence (ModuleCat.{v} R) (ℤ × ℤ))
    (g : SpectralSequenceMorphism E' E'') (r : ℤ) (p : ℤ × ℤ),
    (CategoryStruct.comp (X := E) (Y := E') (Z := E'') f g).pageMap r p = f.pageMap r p ≫ g.pageMap r p
  infinity_identity : ∀ (p : ℤ × ℤ), (𝟙 E : E ⟶ E).eInftyMap p = 𝟙 _
  infinity_composition : ∀ (E'' : Core.SpectralSequence (ModuleCat.{v} R) (ℤ × ℤ))
    (g : SpectralSequenceMorphism E' E'') (p : ℤ × ℤ),
    (CategoryStruct.comp (X := E) (Y := E') (Z := E'') f g).eInftyMap p = f.eInftyMap p ≫ g.eInftyMap p
  representatives : ∀ (r : ℤ) (p : ℤ × ℤ) (x : E.Page 2 p) (y : E.Page r p),
    RepresentsOnPage E r p x y →
      RepresentsOnPage E' r p (f.pageMap 2 p x) (f.pageMap r p y)
  differential : ∀ (r : ℤ) (p q : ℤ × ℤ) (x : E.Page 2 p) (y : E.Page 2 q),
    HasDifferential E r p q x y →
      HasDifferential E' r p q (f.pageMap 2 p x) (f.pageMap 2 q y)

/-- am10 的对象绑定：classic 页面是实际 unit 塔的内部构造，synthetic
页面是同一 family 在 νX 的取值。该类型不声称比较已经构造或为同构。 -/
abbrev NuComparison {C : Type u} [StableHomotopy.StableHomotopyCategory.{u, v} C]
    [StableHomotopy.HasFunctorialCofiber (C := C)]
    {Syn : Type w} [Synthetic.Context.SyntheticCategory.{w, v} Syn]
    {H : C} (unit : 𝟙_ C ⟶ H) (N : Synthetic.Context.NuFunctorData C Syn)
    (F : Synthetic.SpectralSequence.SyntheticAdamsFamily Syn) (X : C) :=
  Comparison.ClassicalSynthetic.ReindexedSpectralSequenceMap
    (adamsTowerInternalSpectralSequence unit X) (F.nu N X)

section SyntheticEInfty

open StableHomotopy StableHomotopy.Cohomology Synthetic.Context Synthetic.SpectralSequence
open Classical.Adams.PageRepresentatives

variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn]
  [HasFunctorialCofiber (C := Syn)]
  (H : Mod2EilenbergMacLane (C := C)) (N : NuFunctorData C Syn)
  (F : SyntheticAdamsFamily Syn)

/-- am11：指定 X 的一阶 λ 商实际同伦群与经典 E₂ 的比较。
`a = 0` 对应 MainPaper `thm:17e90ac0`(1) / BHS `lemm:ctauE2`；
任意 a 的版本还需实际 shift 与 λ 商的比较。通用比较类型现归 Def；此处只保留交付接口的兼容别名。
不声称已构造模型见证，也不由 E∞ 的 specialFiber 字段直接推出。 -/
abbrev FirstQuotientHomotopyComparison (X : C) :=
  Comparison.ClassicalSynthetic.FirstQuotientHomotopyComparison H N X

/-- 只用同一比较的 a=0 分量及实际商函子的零移位同构，恢复 νX 本身的
一阶商比较；不选择另一份边缘同构。 -/
noncomputable def FirstQuotientHomotopyComparison.unshifted {X : C}
    (Q : FirstQuotientHomotopyComparison H N X)
    (cofib : FunctorialCofiberCoherence Syn) (s t : ℤ) :
    BiHom (t - s) t (XModLambdaN (N.functor.obj X) 1) ≃+ Ambient H X (s, t) := by
  let e := (XModLambdaN.functor cofib 1).mapIso
    (SyntheticCategory.biShift_zero.app (N.functor.obj X))
  let transport : BiHom (t - s) t (XModLambdaN (N.functor.obj X) 1) ≃+
      BiHom (t - s) t
        (XModLambdaN ((SyntheticCategory.biShift (0, 0)).obj (N.functor.obj X)) 1) :=
    { toFun := fun f => f ≫ e.inv
      invFun := fun f => f ≫ e.hom
      left_inv := by intro f; simp
      right_inv := by intro f; simp
      map_add' := by intro f g; simp only [Preadditive.add_comp] }
  exact transport.trans
    (Eq.mp (congrArg (fun weight : ℤ =>
      BiHom (t - s) weight
        (XModLambdaN ((SyntheticCategory.biShift (0, 0)).obj (N.functor.obj X)) 1) ≃+
          Ambient H X (s, t)) (Int.add_zero t)) (Q 0 s t))

/-- 把实际 β_q 的像放进同一经典 E₂ 的目标次数。β_q 降低 stem 一次、
增加 weight q，因此对应 d_(q+1) 的 (s+q+1,t+q)，不是 d_q。 -/
noncomputable def FirstQuotientHomotopyComparison.bocksteinTargetClass {X : C}
    (Q : FirstQuotientHomotopyComparison H N X)
    (cofib : FunctorialCofiberCoherence Syn) (q : ℕ) (s t : ℤ)
    (z : BiHom (t - s) t (XModLambdaN (N.functor.obj X) q)) :
    Ambient H X (s + (q : ℤ) + 1, t + (q : ℤ)) :=
  FirstQuotientHomotopyComparison.unshifted H N Q cofib
    (s + (q : ℤ) + 1) (t + (q : ℤ))
    (Eq.mp (congrArg (fun n => BiHom n (t + (q : ℤ))
      (XModLambdaN (N.functor.obj X) 1))
      (by omega : t - s - 1 = (t + (q : ℤ)) - (s + (q : ℤ) + 1)))
      (Synthetic.Bockstein.betaHom (N.functor.obj X) q (t - s) t z))

section FiniteBockstein
variable [CategoryTheory.Limits.HasProductsOfShape ℕ C]

/-- BHS A.1 的有限提升／微分部分，绑定同一一阶商比较及实际 λ 商映射。
同时保留原文的 E-nilpotent completeness 和同一实际 Adams 塔的强收敛。
q=1 对应无先行微分，q=2 对应 d₂=0；β_q 对应 d_(q+1)。
负号来自原文，消去它只需已比较 E₂ 的模二性质，不对所有 synthetic
同伦群假设 2=0。这里只断言存在合适的 lift，并按实际页上的关系比较像，
不把它加强成任意 lift 在 E₂ 上有唯一相同代表。该参数化文献接口不扩充总包。 -/
structure FiniteLambdaBocksteinInterface (coh : BiShiftCoherence Syn)
    (cofib : FunctorialCofiberCoherence Syn) (X : C)
    (Q : FirstQuotientHomotopyComparison H N X) : Prop where
  lifting : IsENilpotentComplete H.unit X → IsAdamsTowerStronglyConvergent H.unit X →
    ∀ (q : ℕ) (hq : 1 ≤ q) (s t : ℤ) (x : Ambient H X (s, t)),
      IsCycle H X (q : ℤ) (s, t) x ↔
        ∃ z : BiHom (t - s) t (XModLambdaN (N.functor.obj X) q),
          Synthetic.Bockstein.firstRestrictionHom coh (N.functor.obj X) q hq (t - s) t z =
            (FirstQuotientHomotopyComparison.unshifted H N Q cofib s t).symm x
  differential : IsENilpotentComplete H.unit X → IsAdamsTowerStronglyConvergent H.unit X →
    ∀ (q : ℕ) (hq : 1 ≤ q) (s t : ℤ) (x : Ambient H X (s, t)),
      IsCycle H X (q : ℤ) (s, t) x →
        ∃ z : BiHom (t - s) t (XModLambdaN (N.functor.obj X) q),
          Synthetic.Bockstein.firstRestrictionHom coh (N.functor.obj X) q hq (t - s) t z =
            (FirstQuotientHomotopyComparison.unshifted H N Q cofib s t).symm x ∧
          DifferentialAt H X ((q : ℤ) + 1) (s, t) (s + (q : ℤ) + 1, t + (q : ℤ)) x
            (-(FirstQuotientHomotopyComparison.bocksteinTargetClass H N Q cofib q s t z))

end FiniteBockstein


/-- Compatibility names for the generic Def comparison language. No fixed
CSV or stage input is needed to define these mathematical types. -/
abbrev NuEInftyFormula := KIP126.Synthetic.SpectralSequence.NuEInftyFormula H N F
abbrev FiniteEInftyFormula := KIP126.Synthetic.SpectralSequence.FiniteEInftyFormula H N F
abbrev SyntheticEInftyPresentation :=
  KIP126.Synthetic.SpectralSequence.SyntheticEInftyPresentation H N F
abbrev SyntheticEInftyMapCompatibility :=
  KIP126.Synthetic.SpectralSequence.SyntheticEInftyMapCompatibility H N F
namespace SyntheticEInftyPresentation
variable {H N F}

/-- 仅使用已有两个指数范围的比较；不在每次使用时重新选择同构。 -/
noncomputable def finite (P : SyntheticEInftyPresentation H N F)
    (X : C) (q : ℕ) (hq : 0 < q) (p : ℤ × ℤ) (w : ℤ) :
    ((F.nuQuotient N X q).sequence.ssData (p.1, p.2, w)).eInfty ≃ₗ[ℤ]
      finiteEInftyModel H X q p w := by
  by_cases hq1 : q = 1
  · subst q
    exact P.specialFiber X p w
  · exact P.quotient X q (by omega) p w

noncomputable def nuWindow (P : SyntheticEInftyPresentation H N F)
    (X : C) (p : ℤ × ℤ) (w : ℤ) (hw : w ≤ p.2) :
    ((F.nu N X).sequence.ssData (p.1, p.2, w)).eInfty ≃ₗ[ℤ]
      PermanentQuotient H X (1 + p.2 - w) p :=
  (P.nu X p w).trans (nuEInftyWindow H X p w hw)

noncomputable def finiteWindow (P : SyntheticEInftyPresentation H N F)
    (X : C) (q : ℕ) (hq : 0 < q) (p : ℤ × ℤ) (w : ℤ)
    (hw : 0 ≤ p.2 - w ∧ p.2 - w < q) :
    ((F.nuQuotient N X q).sequence.ssData (p.1, p.2, w)).eInfty ≃ₗ[ℤ]
      CycleQuotient H X (q - p.2 + w) (1 + p.2 - w) p :=
  (P.finite X q hq p w).trans (finiteEInftyWindow H X q p w hw)

end SyntheticEInftyPresentation

end SyntheticEInfty

section PageExtensionAmbiguity

open StableHomotopy StableHomotopy.Cohomology Synthetic.Context Synthetic.SpectralSequence
open Synthetic.PageExtension Classical.Adams.PageRepresentatives

variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn]
  [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {N : NuFunctorData C Syn}
  {F : SyntheticAdamsFamily Syn} {X Y : C} {f : X ⟶ Y}

/-- am6 的剩余模型绑定义务，逐一量化同一比较家族中的实际 extension。
kernel 是经典 Adams boundaries；shorterImages 是同一映射实际较短扩张目标
的 span。两条等式足以派生经典 target coset 与 essential 判据，但尚未由
任意 NormalizedPageFamily 自动构造。infinite 仍保留该家族的有界收敛前提。 -/
structure PageExtensionAmbiguityInterface (P : NormalizedPageFamily H N F f) : Prop where
  finite_kernel : ∀ {r : ℕ} {n s t : ℤ} {x : Ambient H X (s, t)}
    {y : Ambient H Y (s + n, t + n)} (W : FiniteExtensionWitness P r n s t x y),
    W.ClassicalBoundaryKernel
  finite_shorter : ∀ {r : ℕ} {n s t : ℤ} {x : Ambient H X (s, t)}
    {y : Ambient H Y (s + n, t + n)} (W : FiniteExtensionWitness P r n s t x y),
    W.ShorterImagesCompatible
  infinite_kernel : ∀ {n s t : ℤ} {x : Ambient H X (s, t)}
    {y : Ambient H Y (s + n, t + n)} (W : InfiniteExtensionWitness P n s t x y),
    W.ClassicalBoundaryKernel
  infinite_shorter : ∀ {n s t : ℤ} {x : Ambient H X (s, t)}
    {y : Ambient H Y (s + n, t + n)} (W : InfiniteExtensionWitness P n s t x y),
    W.ShorterImagesCompatible

end PageExtensionAmbiguity

section PageExtensionTargetComparison

open StableHomotopy StableHomotopy.Cohomology Synthetic.Context Synthetic.SpectralSequence
open Synthetic.PageExtension Classical.Adams.PageRepresentatives

variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn]
  [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {N : NuFunctorData C Syn}
  {F : SyntheticAdamsFamily Syn} {X Y : C} {f : X ⟶ Y}

/-- am6/am11：把同一 page-extension 家族已有的 top-weight 目标比较，
绑定到全 weight E∞ presentation 的规范代表元。它只要求比较图交换，
没有把待推出的 boundary kernel 等式放进输入。源比较、δ 和 shorter-image
相容性仍是另行交付的义务。 -/
structure PageExtensionTargetComparison
    (P : NormalizedPageFamily H N F f) (R : SyntheticEInftyPresentation H N F)
    (S : EInftyWeightShift F)
    (T : ∀ X : C, FiniteLambdaQuotientTower (N.functor.obj X)) : Prop where
  target_tower : P.targetTower = T Y
  finite : ∀ (q k : ℕ) (hkq : k < q) (s t : ℤ)
    (z : cycles H Y (q - k : ℕ) (s, t)),
    R.finiteWindow Y (q - k) (by omega) (s, t) t (by constructor <;> simp <;> omega)
        (S.lowerIso (XModLambdaN (N.functor.obj Y) (q - k)) k (s, t) t
          (P.finiteTarget q k hkq s t z)) =
      finiteTopClass H Y (q - k) (s, t) z
  infinite : ∀ (k : ℕ) (s t : ℤ) (z : permanentCycles H Y (s, t)),
    R.nuWindow Y (s, t) t le_rfl
        (S.lowerIso (N.functor.obj Y) k (s, t) t (P.infiniteTarget k s t z)) =
      permanentTopClass H Y (s, t) z

namespace SyntheticEInftyPresentation

/-- 用已给定的全 weight 比较、规范 top class 和 weight shift 直接构造
有限目标比较；不选择新的 E₂ 标签或线性等价。 -/
noncomputable def finiteCanonicalTarget (R : SyntheticEInftyPresentation H N F)
    (S : EInftyWeightShift F) (Y : C) (q k : ℕ) (hkq : k < q) (p : ℤ × ℤ) :
    cycles H Y (q - k : ℕ) p ≃ₗ[ℤ]
      ((F.obj ((SyntheticCategory.biShift (0, -(k : ℤ))).obj
        (XModLambdaN (N.functor.obj Y) (q - k)))).sequence.ssData
          (p.1, p.2, p.2 - k)).eInfty :=
  ((finiteTopEquiv H Y (q - k) p).trans
    (R.finiteWindow Y (q - k) (by omega) p p.2
      (by constructor <;> simp <;> omega)).symm).trans
        (S.lowerIso (XModLambdaN (N.functor.obj Y) (q - k)) k p p.2).symm

/-- 未截断目标比较使用同一个永久代表元的 top class。 -/
noncomputable def infiniteCanonicalTarget (R : SyntheticEInftyPresentation H N F)
    (S : EInftyWeightShift F) (Y : C) (k : ℕ) (p : ℤ × ℤ) :
    permanentCycles H Y p ≃ₗ[ℤ]
      ((F.obj ((SyntheticCategory.biShift (0, -(k : ℤ))).obj
        (N.functor.obj Y))).sequence.ssData (p.1, p.2, p.2 - k)).eInfty :=
  ((permanentTopEquiv H Y p).trans (R.nuWindow Y p p.2 le_rfl).symm).trans
    (S.lowerIso (N.functor.obj Y) k p p.2).symm

end SyntheticEInftyPresentation

/-- 保留原 normalized map、ESS、源比较和实际商塔，只将目标比较装配为
R 与 S 指定的规范比较。后续 witness 必须针对返回的同一家族重新使用，
不能把旧家族中的 extension 关系默认为不变。 -/
noncomputable def canonicalPageExtensionTargets (P : NormalizedPageFamily H N F f)
    (R : SyntheticEInftyPresentation H N F) (S : EInftyWeightShift F) :
    NormalizedPageFamily H N F f :=
  { P with
    finiteTarget := fun q k hkq s t => R.finiteCanonicalTarget S Y q k hkq (s, t)
    infiniteTarget := fun k s t => R.infiniteCanonicalTarget S Y k (s, t) }

end PageExtensionTargetComparison


section PageExtensionSolutions

set_option backward.isDefEq.respectTransparency false

open StableHomotopy StableHomotopy.Cohomology Synthetic.Context Synthetic.SpectralSequence
open Synthetic.PageExtension Classical.Adams.PageRepresentatives Core.SpectralSequence

variable {C : Type u} [StableHomotopyCategory.{u, v} C]
  [HasFunctorialCofiber (C := C)]
  {Syn : Type w} [SyntheticCategory.{w, v} Syn]
  [HasFunctorialCofiber (C := Syn)]
  {H : Mod2EilenbergMacLane (C := C)} {N : NuFunctorData C Syn}
  {F : SyntheticAdamsFamily Syn} {X Y : C} {f : X ⟶ Y}

/-- am6/am7：同一有限商塔的实际 ρ 同伦映射保持指定收敛滤过。
交换方块由 P.towerMap 导出，不另假设，也不选择独立的 ESS 映射。 -/
structure PageExtensionRestrictionFiltration (P : NormalizedPageFamily H N F f) : Prop where
  source_preserves : ∀ (i j : ℕ) (hi : 0 < i) (hj : 0 < j) (hij : i ≤ j) s p,
    ∃ φ : Subobject.underlying.obj ((P.finite j hj).source.filtration.F s p) ⟶
        Subobject.underlying.obj ((P.finite i hi).source.filtration.F s p),
      φ ≫ ((P.finite i hi).source.filtration.F s p).arrow =
        ((P.finite j hj).source.filtration.F s p).arrow ≫
          syntheticHomotopyMap (P.sourceTower.rho i j hij) p
  target_preserves : ∀ (i j : ℕ) (hi : 0 < i) (hj : 0 < j) (hij : i ≤ j) s p,
    ∃ φ : Subobject.underlying.obj ((P.finite j hj).target.filtration.F s p) ⟶
        Subobject.underlying.obj ((P.finite i hi).target.filtration.F s p),
      φ ≫ ((P.finite i hi).target.filtration.F s p).arrow =
        ((P.finite j hj).target.filtration.F s p).arrow ≫
          syntheticHomotopyMap (P.targetTower.rho i j hij) p

set_option linter.defProp false in
/-- 固定 normalized map 的实际商方块；comm 来自既有塔态射。 -/
def PageExtensionRestrictionFiltration.square {P : NormalizedPageFamily H N F f}
    (I : PageExtensionRestrictionFiltration P) (i j : ℕ)
    (hi : 0 < i) (hj : 0 < j) (hij : i ≤ j) :
    SyntheticExtensionData.FilteredSquare (P.finite j hj) (P.finite i hi)
      (P.sourceTower.rho i j hij) (P.targetTower.rho i j hij) where
  comm := P.towerMap.rho_naturality hij
  source_preserves := I.source_preserves i j hi hj hij
  target_preserves := I.target_preserves i j hi hj hij

/-- 限制链映射由实际 ρ 方块构造，不由自由的页面操作指定。 -/
noncomputable def PageExtensionRestrictionFiltration.complexMap
    {P : NormalizedPageFamily H N F f} (I : PageExtensionRestrictionFiltration P)
    (i j : ℕ) (hi : 0 < i) (hj : 0 < j) (hij : i ≤ j) (p : ℤ × ℤ) :
    FilteredComplex.Morphism ((P.finite j hj).complex p) ((P.finite i hi).complex p) :=
  (I.square i j hi hj hij).complexMap p

/-- am6/am7：实际 ρ 限制保留同一个经典 E₂ 标签。只列出源／靶的比较图；
解集、差群与限制函数随后由真实代表元方程构造。 -/
structure PageExtensionRestrictionLabels (P : NormalizedPageFamily H N F f)
    (I : PageExtensionRestrictionFiltration P) : Prop where
  source : ∀ (i j : ℕ) (hi : 0 < i) (hj : 0 < j) (hij : i ≤ j) (s t : ℤ)
    (xi : cycles H X i (s, t)) (xj : cycles H X j (s, t)), xi.val = xj.val →
      elementMap (P.finiteSourceMap j hj s t xj) ≫
          (I.complexMap i j hi hj hij (P.degree s t)).associatedGradedMap s 1 =
        elementMap (P.finiteSourceMap i hi s t xi)
  target : ∀ (i j : ℕ) (hi : 0 < i) (hj : 0 < j) (hij : i ≤ j) (n s t : ℤ)
    (hn : (normalizedExponent H f : ℤ) ≤ n)
    (hki : P.lambdaExponent n < i) (hkj : P.lambdaExponent n < j)
    (yi : cycles H Y (i - P.lambdaExponent n : ℕ) (s + n, t + n))
    (yj : cycles H Y (j - P.lambdaExponent n : ℕ) (s + n, t + n)), yi.val = yj.val →
      P.finiteTargetClass j hj n s t hn hkj yj ≫
          (I.complexMap i j hi hj hij (P.degree s t)).associatedGradedMap (s + n) 0 =
        P.finiteTargetClass i hi n s t hn hki yi

/-- 两个实际比较图给出经典标签固定后的解纤维限制。此定义不声称满射。 -/
noncomputable def restrictFiniteSolution {P : NormalizedPageFamily H N F f}
    (I : PageExtensionRestrictionFiltration P) (J : PageExtensionRestrictionLabels P I)
    (i j : ℕ) (hi : 0 < i) (hj : 0 < j) (hij : i ≤ j) (n s t : ℤ)
    (hn : (normalizedExponent H f : ℤ) ≤ n)
    (hki : P.lambdaExponent n < i) (hkj : P.lambdaExponent n < j)
    (xi : cycles H X i (s, t)) (xj : cycles H X j (s, t)) (hx : xi.val = xj.val)
    (yi : cycles H Y (i - P.lambdaExponent n : ℕ) (s + n, t + n))
    (yj : cycles H Y (j - P.lambdaExponent n : ℕ) (s + n, t + n)) (hy : yi.val = yj.val)
    (a : P.FiniteSolutions j hj n s t hn hkj xj yj) :
    P.FiniteSolutions i hi n s t hn hki xi yi := by
  dsimp only [NormalizedPageFamily.FiniteSolutions] at a ⊢
  have b := FilteredComplex.Solutions.restrict (I.complexMap i j hi hj hij (P.degree s t)) a
  erw [J.source i j hi hj hij s t xi xj hx] at b
  erw [J.target i j hi hj hij n s t hn hki hkj yi yj hy] at b
  exact b

set_option backward.isDefEq.respectTransparency true

/-- 在同一永久标签上特化实际限制；只使用永久 cycle 的规范包含。 -/
noncomputable def restrictPermanentFiniteSolution {P : NormalizedPageFamily H N F f}
    (I : PageExtensionRestrictionFiltration P) (J : PageExtensionRestrictionLabels P I)
    (i j : ℕ) (hij : i ≤ j) (n s t : ℤ)
    (hn : (normalizedExponent H f : ℤ) ≤ n)
    (hki : P.lambdaExponent n < i) (hkj : P.lambdaExponent n < j)
    (x : permanentCycles H X (s, t)) (y : permanentCycles H Y (s + n, t + n))
    (a : P.PermanentFiniteSolutions j n s t hn hkj x y) :
    P.PermanentFiniteSolutions i n s t hn hki x y :=
  restrictFiniteSolution (P := P) I J i j
    (lt_of_le_of_lt (Nat.zero_le _) hki) (lt_of_le_of_lt (Nat.zero_le _) hkj)
    hij n s t hn hki hkj
    (Submodule.inclusion (permanentCycles_le_cycles H X (s, t) i) x)
    (Submodule.inclusion (permanentCycles_le_cycles H X (s, t) j) x) rfl
    (Submodule.inclusion (permanentCycles_le_cycles H Y (s + n, t + n)
      (i - P.lambdaExponent n : ℕ)) y)
    (Submodule.inclusion (permanentCycles_le_cycles H Y (s + n, t + n)
      (j - P.lambdaExponent n : ℕ)) y) rfl a

/-- am7：固定永久标签在所有允许的有限商上的实际相容解。
每层必须提供真实方程的一个解，相邻层用同一实际 ρ 限制相容。
此类型不选择成员，也不声称各层非空就足以得到相容塔或无穷解。 -/
structure CoherentPageExtensionSolutions (P : NormalizedPageFamily H N F f)
    (I : PageExtensionRestrictionFiltration P) (J : PageExtensionRestrictionLabels P I)
    (n s t : ℤ) (hn : (normalizedExponent H f : ℤ) ≤ n)
    (x : permanentCycles H X (s, t)) (y : permanentCycles H Y (s + n, t + n)) : Type v where
  solution : ∀ (q : ℕ) (hkq : P.lambdaExponent n < q),
    P.PermanentFiniteSolutions q n s t hn hkq x y
  compatible : ∀ (q : ℕ) (hkq : P.lambdaExponent n < q),
    restrictPermanentFiniteSolution I J q (q + 1) (Nat.le_succ q)
      n s t hn hkq (lt_trans hkq (Nat.lt_succ_self q)) x y
      (solution (q + 1) (lt_trans hkq (Nat.lt_succ_self q))) = solution q hkq

end PageExtensionSolutions



/-- am9 的规范 E₂ 比较义务：每个 cocycle 都必须映到同一 Adams 塔中的
实际类。这个公式排除只给出任意线性等价的接口；不声称已定义导出 Ext。 -/
def CobarE2Comparison {C : Type u} [StableHomotopy.StableHomotopyCategory.{u, v} C]
    [StableHomotopy.HasFunctorialCofiber (C := C)]
    (H : StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C))
    (M : MilnorCooperations H) : Prop :=
  ∀ s t : ℕ, ∃ e : MilnorCohomology.Cohomology H M s t ≃ₗ[ℤ]
      (adamsTowerInternalSpectralSequence H.unit StableHomotopy.SphereSpectrum).Page 2
        ((s : ℤ), (t : ℤ)),
    ∀ (x : Steenrod.Milnor.cochains s t) (hx : Steenrod.Milnor.differential s t x = 0),
      e (MilnorCohomology.ofCocycle H M x hx) =
        MilnorCohomology.internalClassOfCocycle H M x hx

/-- am9 的独立导出 Ext 比较。分解的逐项 comodule、微分和增广都由实际
Milnor 多项式公式固定；每个 cocycle 的像必须是该分解中的 `extMk` 类。
因此不能用另一份任意线性等价替代。左 Steenrod-module 约定及 Yoneda
乘法相容性仍是单独义务，本组不从加法比较自动推出它们。 -/
structure CobarDerivedExtComparison {C : Type u}
    [StableHomotopy.StableHomotopyCategory.{u, v} C]
    [StableHomotopy.HasFunctorialCofiber (C := C)]
    (H : StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C))
    (M : MilnorCooperations H) where
  cobarResolution : Steenrod.Milnor.Ext.CobarResolution
  comparison : ∀ (s t : ℕ), MilnorCohomology.Cohomology H M s t ≃ₗ[Core.Algebra.F2]
    Steenrod.Milnor.Ext.SphereExt s (t : ℤ)
  representatives : ∀ (s t : ℕ) (x : Steenrod.Milnor.cochains s t)
      (hx : Steenrod.Milnor.differential s t x = 0),
    ∃ (f : Steenrod.Milnor.Ext.trivialAt (t : ℤ) ⟶
        cobarResolution.resolution.cocomplex.X s)
      (hf : f ≫ cobarResolution.resolution.cocomplex.d s (s + 1) = 0),
      cobarResolution.representativePolynomial f = Steenrod.Milnor.insertRight s x.val ∧
        comparison s t (MilnorCohomology.ofCocycle H M x hx) =
          cobarResolution.resolution.extMk f (s + 1) rfl hf

/-- 同一比较在内部 Adams E₂ 上的形式：只复合已固定的 cobar/E₂ 比较，
不重新选择页面坐标或另一份 Ext 等价。 -/
noncomputable def CobarDerivedExtComparison.internalEquiv {C : Type u}
    [StableHomotopy.StableHomotopyCategory.{u, v} C]
    [StableHomotopy.HasFunctorialCofiber (C := C)]
    {H : StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C)}
    {M : MilnorCooperations H} (E : CobarDerivedExtComparison H M) (s t : ℕ) :
    (adamsTowerInternalSpectralSequence H.unit StableHomotopy.SphereSpectrum).Page 2
      ((s : ℤ), (t : ℤ)) ≃ₗ[ℤ] Steenrod.Milnor.Ext.SphereExt s (t : ℤ) :=
  (MilnorCohomology.comparison H M s t).symm.trans
    ((E.comparison s t).restrictScalars ℤ)

/-- am9 的 cobar 乘法切片；使用从 cochain concatenation 真正下降的 cup，
不另选乘法。与内部 Adams 高页配对的相容性是另一个义务。 -/
structure CobarCupCalculus {C : Type u}
    [StableHomotopy.StableHomotopyCategory.{u, v} C]
    [StableHomotopy.HasFunctorialCofiber (C := C)]
    (H : StableHomotopy.Cohomology.Mod2EilenbergMacLane (C := C))
    (M : MilnorCooperations H) : Prop where
  representatives : ∀ {s t s' t' : ℕ} (x : Steenrod.Milnor.cochains s t)
    (y : Steenrod.Milnor.cochains s' t')
    (hx : Steenrod.Milnor.IsCycle x) (hy : Steenrod.Milnor.IsCycle y),
    MilnorCohomology.cup H M (MilnorCohomology.ofCocycle H M x hx)
      (MilnorCohomology.ofCocycle H M y hy) =
        MilnorCohomology.ofCocycle H M (Steenrod.Milnor.cup x y)
          (Steenrod.Milnor.cup_isCycle x y hx hy)
  standard_squares : ∀ i : ℕ, MilnorCohomology.hiSquare H M i =
    MilnorCohomology.cohomologyReindex H M rfl (Steenrod.Milnor.hiSquare_internalDegree i)
      (MilnorCohomology.cup H M (MilnorCohomology.hi H M i) (MilnorCohomology.hi H M i))

end KIP126.Challenge2
