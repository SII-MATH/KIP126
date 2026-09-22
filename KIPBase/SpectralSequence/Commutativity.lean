/-
  KIPBase.SpectralSequence.Commutativity
  第 2.12–2.19 条：ESS 微分的交换性。

  对应 Blueprint 中的第 2.12–2.19 条。
  定义收敛谱序列的同伦交换方块，陈述第 2.12 条及其推论，
  并研究 ESS 页上的诱导映射。未完成的证明不得视为公理。
-/
import KIPBase.Mathlib
import KIPBase.SpectralSequence.Basic
import KIPBase.SpectralSequence.Convergence
import KIPBase.SpectralSequence.Crossing
import KIPBase.SpectralSequence.BoundedExtension

namespace KIPBase.SpectralSequence

open CategoryTheory CategoryTheory.Limits

universe u v w

set_option linter.dupNamespace false

variable {C : Type u} [Category.{v} C] [Abelian C]

/-- ESS 的 `ssData` 在双次数 `⟨s, k⟩` 处的 `V` 就是两项复形的关联分次
    `assocGraded s k`（`toPreSS`/`ofPreSS` 的 `ssData` 字段与
    `toSSData` 的 `V` 字段都是直接定义，`rfl` 可判等）。
    作为独立的 `rfl` 引理封装，供陈述中以 `Eq.mpr` 搬运元素，
    避免在大型类型表达式里反复触发 `whnf` 超时。 -/
theorem ess_ssData_V {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {E₁ E₂ : SpectralSequence C ω} {ω' : Type w}
    {A₁ A₂ : ω' → C} {F₁ : Filtration A₁} {F₂ : Filtration A₂}
    {conv₁ : Convergence E₁ A₁ F₁} {conv₂ : Convergence E₂ A₂ F₂}
    {cm : ConvergenceMorphism conv₁ conv₂}
    {bnd₁ : F₁.IsBounded} {bnd₂ : F₂.IsBounded}
    (ext : BoundedExtensionSS conv₁ conv₂ cm bnd₁ bnd₂)
    (t : ω') (s k : ℤ) :
    (((ext.complex t).toSpectralSequence (ext.bounded t)).ssData ⟨s, k⟩).V =
      (ext.complex t).assocGraded s k :=
  rfl

/-- ESS 的微分次数：`diffDeg r = (r, -1)`（`toPreSS` 的 `diffDeg` 字段定义）。 -/
theorem ess_diffDeg {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {E₁ E₂ : SpectralSequence C ω} {ω' : Type w}
    {A₁ A₂ : ω' → C} {F₁ : Filtration A₁} {F₂ : Filtration A₂}
    {conv₁ : Convergence E₁ A₁ F₁} {conv₂ : Convergence E₂ A₂ F₂}
    {cm : ConvergenceMorphism conv₁ conv₂}
    {bnd₁ : F₁.IsBounded} {bnd₂ : F₂.IsBounded}
    (ext : BoundedExtensionSS conv₁ conv₂ cm bnd₁ bnd₂)
    (t : ω') (r : ℤ) :
    ((ext.complex t).toSpectralSequence (ext.bounded t)).diffDeg r = (r, -1) :=
  rfl

/-! ### Homotopy commutative square in the category of converging spectral sequences -/

/-- **收敛谱序列范畴中的交换方块**（新定义，范畴化形式）：
    四个收敛谱序列对象 `V₁ V₂ V₃ V₄` 与四个范畴态射
    ```
    V₁ --f--> V₂
    |p        |q
    v         v
    V₃ --g--> V₄
    ```
    满足范畴复合交换律 `f ≫ q = p ≫ g`
    （`≫` 为 `ConvergingSS` 范畴中的复合，自动含 E∞ 页与极限对象
    两个层面的交换性，由范畴公理保证）。 -/
structure ConvergingSSSquare {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {ω' : Type w} where
  /-- 左上对象 -/
  V₁ : ConvergingSS C ω ω'
  /-- 右上对象 -/
  V₂ : ConvergingSS C ω ω'
  /-- 左下对象 -/
  V₃ : ConvergingSS C ω ω'
  /-- 右下对象 -/
  V₄ : ConvergingSS C ω ω'
  /-- 上边态射 f : V₁ ⟶ V₂ -/
  f : V₁ ⟶ V₂
  /-- 左边态射 p : V₁ ⟶ V₃ -/
  p : V₁ ⟶ V₃
  /-- 右边态射 q : V₂ ⟶ V₄ -/
  q : V₂ ⟶ V₄
  /-- 下边态射 g : V₃ ⟶ V₄ -/
  g : V₃ ⟶ V₄
  /-- 方块交换：`f ≫ q = p ≫ g`（范畴中的复合交换）。 -/
  comm : f ≫ q = p ≫ g

/-- 范畴方块交换律在极限对象上的分量形式。后续复形计算必须使用
这个 `aMap` 等式，而不能把四个 ESS 当成同一个谱序列。 -/
theorem ConvergingSSSquare.aMap_comm
    {ω : Type w} [AddCommGroup ω] [DecidableEq ω] {ω' : Type w}
    (sq : ConvergingSSSquare (C := C) (ω := ω) (ω' := ω')) (t : ω') :
    sq.f.aMap t ≫ sq.q.aMap t = sq.p.aMap t ≫ sq.g.aMap t := by
  have h := congrArg (fun h : sq.V₁ ⟶ sq.V₄ => h.aMap t) sq.comm
  exact h

/-- A homotopy commutative square of converging spectral sequences:
    ```
    V₁ --f--> V₂
    |p        |q
    v         v
    V₃ --g--> V₄
    ```
    Together with ESS data for each morphism and a commutativity condition
    expressing that `q ∘ f = g ∘ p` at the abutment level. -/
structure HomotopyCommSquare {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {E₁ E₂ E₃ E₄ : SpectralSequence C ω} {ω' : Type w}
    {A₁ A₂ A₃ A₄ : ω' → C}
    {F₁ : Filtration A₁} {F₂ : Filtration A₂}
    {F₃ : Filtration A₃} {F₄ : Filtration A₄}
    (conv₁ : Convergence E₁ A₁ F₁) (conv₂ : Convergence E₂ A₂ F₂)
    (conv₃ : Convergence E₃ A₃ F₃) (conv₄ : Convergence E₄ A₄ F₄) where
  /-- Top morphism: V₁ → V₂ -/
  cmf : ConvergenceMorphism conv₁ conv₂
  /-- Left morphism: V₁ → V₃ -/
  cmp : ConvergenceMorphism conv₁ conv₃
  /-- Right morphism: V₂ → V₄ -/
  cmq : ConvergenceMorphism conv₂ conv₄
  /-- Bottom morphism: V₃ → V₄ -/
  cmg : ConvergenceMorphism conv₃ conv₄
  /-- Boundedness of the F₁-filtration. -/
  bnd₁ : F₁.IsBounded
  /-- Boundedness of the F₂-filtration. -/
  bnd₂ : F₂.IsBounded
  /-- Boundedness of the F₃-filtration. -/
  bnd₃ : F₃.IsBounded
  /-- Boundedness of the F₄-filtration. -/
  bnd₄ : F₄.IsBounded
  /-- Bounded ESS data for the top morphism f -/
  extf : BoundedExtensionSS conv₁ conv₂ cmf bnd₁ bnd₂
  /-- Bounded ESS data for the left morphism p -/
  extp : BoundedExtensionSS conv₁ conv₃ cmp bnd₁ bnd₃
  /-- Bounded ESS data for the right morphism q -/
  extq : BoundedExtensionSS conv₂ conv₄ cmq bnd₂ bnd₄
  /-- Bounded ESS data for the bottom morphism g -/
  extg : BoundedExtensionSS conv₃ conv₄ cmg bnd₃ bnd₄
  /-- Commutativity at the abutment level: q ∘ f = g ∘ p on target objects -/
  abutment_comm : ∀ (k' : ω'),
    cmf.aMap k' ≫ cmq.aMap k' = cmp.aMap k' ≫ cmg.aMap k'
  /-- Commutativity at the E∞-page level: q ∘ f = g ∘ p on E∞ classes -/
  eInfty_comm : ∀ (k : ω),
    cmf.eMap k ≫ cmq.eMap k = cmp.eMap k ≫ cmg.eMap k

/-- 从旧定义 `HomotopyCommSquare` 提取范畴方块：对象与态射逐字继承，
    交换性由 eMap/aMap 两个分量等式经 `ConvergenceMorphism.ext` 合并。 -/
def HomotopyCommSquare.toSquare {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {E₁ E₂ E₃ E₄ : SpectralSequence C ω} {ω' : Type w}
    {A₁ A₂ A₃ A₄ : ω' → C}
    {F₁ : Filtration A₁} {F₂ : Filtration A₂}
    {F₃ : Filtration A₃} {F₄ : Filtration A₄}
    {conv₁ : Convergence E₁ A₁ F₁} {conv₂ : Convergence E₂ A₂ F₂}
    {conv₃ : Convergence E₃ A₃ F₃} {conv₄ : Convergence E₄ A₄ F₄}
    (sq : HomotopyCommSquare conv₁ conv₂ conv₃ conv₄) :
    ConvergingSSSquare (C := C) (ω := ω) (ω' := ω') where
  V₁ := ⟨E₁, A₁, F₁, conv₁⟩
  V₂ := ⟨E₂, A₂, F₂, conv₂⟩
  V₃ := ⟨E₃, A₃, F₃, conv₃⟩
  V₄ := ⟨E₄, A₄, F₄, conv₄⟩
  f := sq.cmf
  p := sq.cmp
  q := sq.cmq
  g := sq.cmg
  comm := ConvergenceMorphism.ext
    (funext fun k => sq.eInfty_comm k) (funext fun k' => sq.abutment_comm k')

/-- **新旧方块定义的等价性**（定理形式）：
    旧定义 `HomotopyCommSquare` 给出的范畴方块 `sq.toSquare`，
    其范畴复合交换律 `comm` 成立，当且仅当旧定义的两个分量
    交换条件 `eInfty_comm` 与 `abutment_comm` 同时成立。
    （`toSquare` 的 `comm` 字段正是由这两个条件构造，故此即
    构造的往返刻画。） -/
theorem HomotopyCommSquare.toSquare_comm {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {E₁ E₂ E₃ E₄ : SpectralSequence C ω} {ω' : Type w}
    {A₁ A₂ A₃ A₄ : ω' → C}
    {F₁ : Filtration A₁} {F₂ : Filtration A₂}
    {F₃ : Filtration A₃} {F₄ : Filtration A₄}
    {conv₁ : Convergence E₁ A₁ F₁} {conv₂ : Convergence E₂ A₂ F₂}
    {conv₃ : Convergence E₃ A₃ F₃} {conv₄ : Convergence E₄ A₄ F₄}
    (sq : HomotopyCommSquare conv₁ conv₂ conv₃ conv₄) :
    sq.toSquare.comm = ConvergenceMorphism.ext
      (funext fun k => sq.eInfty_comm k) (funext fun k' => sq.abutment_comm k') :=
  rfl

/-! ### ESS differential relation predicate -/

/-- The ESS differential `d_n` sends the class at bidegree `k₁` to the class
    at bidegree `k₂`: expressed as the ESS differential object being nontrivial
    and witnessing the relation. This is a Prop-level predicate abstracting the
    ESS differential relation from Proposition 2.5. -/
def ESSRelation {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {E₁ E₂ : SpectralSequence C ω} {ω' : Type w}
    {A₁ A₂ : ω' → C} {F₁ : Filtration A₁} {F₂ : Filtration A₂}
    {conv₁ : Convergence E₁ A₁ F₁} {conv₂ : Convergence E₂ A₂ F₂}
    {cm : ConvergenceMorphism conv₁ conv₂}
    {bnd₁ : F₁.IsBounded} {bnd₂ : F₂.IsBounded}
    (ext : BoundedExtensionSS conv₁ conv₂ cm bnd₁ bnd₂)
    (n : ℤ) (k₁ k₂ : ω) : Prop :=
  ¬IsZero (ext.essDiff n k₁ k₂)

/-- The ESS differential `d_n` sends the class at `k₁` to zero at `k₂`. -/
def ESSVanishes {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {E₁ E₂ : SpectralSequence C ω} {ω' : Type w}
    {A₁ A₂ : ω' → C} {F₁ : Filtration A₁} {F₂ : Filtration A₂}
    {conv₁ : Convergence E₁ A₁ F₁} {conv₂ : Convergence E₂ A₂ F₂}
    {cm : ConvergenceMorphism conv₁ conv₂}
    {bnd₁ : F₁.IsBounded} {bnd₂ : F₂.IsBounded}
    (ext : BoundedExtensionSS conv₁ conv₂ cm bnd₁ bnd₂)
    (n : ℤ) (k₁ k₂ : ω) : Prop :=
  IsZero (ext.essDiff n k₁ k₂)

/-- No-crossing condition for an ESS differential datum, bundled with the
    convergence data. Takes the differential datum as a parameter
    (following Extension.lean patterns). -/
def ESSNoCrossing {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {E₁ E₂ : SpectralSequence C ω} {ω' : Type w}
    {A₁ A₂ : ω' → C} {F₁ : Filtration A₁} {F₂ : Filtration A₂}
    {_conv₁ : Convergence E₁ A₁ F₁} {_conv₂ : Convergence E₂ A₂ F₂}
    {cm : ConvergenceMorphism _conv₁ _conv₂}
    {_bnd₁ : F₁.IsBounded} {_bnd₂ : F₂.IsBounded}
    (_ext : BoundedExtensionSS _conv₁ _conv₂ cm _bnd₁ _bnd₂)
    (dd : DifferentialDatum C ω) : Prop :=
  NoCrossing dd

/-- No-crossing-range condition for an ESS differential datum. -/
def ESSNoCrossingRange {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {E₁ E₂ : SpectralSequence C ω} {ω' : Type w}
    {A₁ A₂ : ω' → C} {F₁ : Filtration A₁} {F₂ : Filtration A₂}
    {_conv₁ : Convergence E₁ A₁ F₁} {_conv₂ : Convergence E₂ A₂ F₂}
    {cm : ConvergenceMorphism _conv₁ _conv₂}
    {_bnd₁ : F₁.IsBounded} {_bnd₂ : F₂.IsBounded}
    (_ext : BoundedExtensionSS _conv₁ _conv₂ cm _bnd₁ _bnd₂)
    (dd : DifferentialDatum C ω) (p : ℤ) : Prop :=
  NoCrossingRange dd p

/-! ### Blueprint-aligned extension relations -/

/-- A concrete extension differential relation.  Unlike the obsolete
`ESSRelation := ¬ IsZero (...)` shorthand below, this keeps the page, source,
target, and generalized element which occur in Theorem 2.12 of the Blueprint.
The test object is required to be projective because the representative
characterization of an extension differential lifts page classes back to the
filtered complex. -/
structure ExtensionDifferentialRelation {ι : Type w}
    [AddCommGroup ι] [DecidableEq ι]
    (E : SpectralSequence C ι) where
  page : ℤ
  index : ι
  /-- Filtration degree used by the crossing condition. -/
  filtDeg : ι → ℤ
  T : C
  [projective : Projective T]
  source : T ⟶ (E.ssData index).V
  target : T ⟶ (E.ssData (index + E.diffDeg page)).V
  relation : DifferentialRelation E page index source target

/-- 对应 Blueprint 的 `def:fess-crossing`：此具体扩张关系在目标过滤范围
`[p, s + page]` 内没有本质 crossing，其中 `s` 是源过滤次数。
零扩张同样适用；并不要求原关系本身是本质微分。 -/
def ExtensionDifferentialRelation.NoCrossingRange {ι : Type w}
    [AddCommGroup ι] [DecidableEq ι]
  {E : SpectralSequence C ι}
    (h : ExtensionDifferentialRelation E) (p : ℤ) : Prop :=
  ¬ ∃ (a : ℤ) (_ : 0 < a) (m : ℤ) (k' : ι)
      (x' : h.T ⟶ (E.ssData k').V)
      (y' : h.T ⟶ (E.ssData (k' + E.diffDeg m)).V),
      h.filtDeg k' = h.filtDeg h.index + a ∧
        EssentialDifferentialRelation E m k' x' y' ∧
        p ≤ h.filtDeg (k' + E.diffDeg m) ∧
        h.filtDeg (k' + E.diffDeg m) ≤ h.filtDeg h.index + h.page

/-- 不带范围限定的无 crossing：下界为源过滤次数加一。 -/
def ExtensionDifferentialRelation.NoCrossing {ι : Type w}
    [AddCommGroup ι] [DecidableEq ι]
  {E : SpectralSequence C ι}
    (h : ExtensionDifferentialRelation E) : Prop :=
  h.NoCrossingRange (h.filtDeg h.index + 1)

/-- 对非负页的扩张谱序列，Blueprint 的范围条件排除过滤复形代表元引理
使用的关系级 crossing。两个结构性前提说明：更高过滤的源，其目标不能
落在原源过滤次数以下。 -/
theorem ExtensionDifferentialRelation.not_crossed_of_noCrossing {ι : Type w}
    [AddCommGroup ι] [DecidableEq ι]
    {E : SpectralSequence C ι} (h : ExtensionDifferentialRelation E)
    (hnc : h.NoCrossing)
    (hpages : ∀ (m : ℤ) (k' : ι)
      (x' : h.T ⟶ (E.ssData k').V)
      (y' : h.T ⟶ (E.ssData (k' + E.diffDeg m)).V),
      EssentialDifferentialRelation E m k' x' y' → 0 ≤ m)
    (hdegree : ∀ (m : ℤ) (k' : ι),
      h.filtDeg (k' + E.diffDeg m) = h.filtDeg k' + m) :
    ¬ RelationCrossedBy E h.filtDeg h.page h.index h.source h.target h.relation := by
  intro hc
  rcases hc with ⟨a, ha, m, k', x', y', hk', hessential, hupper⟩
  apply hnc
  refine ⟨a, ha, m, k', x', y', hk', hessential, ?_, hupper⟩
  rw [hdegree m k', hk']
  have hm := hpages m k' x' y' hessential
  omega

/-- 将 ESS 中的一条具体微分关系及其过滤次数打包，再陈述无 crossing。
此处固定过滤次数为双指标第一分量，避免误用输入谱序列的指标。 -/
def ESSRelationNoCrossing
    {E : SpectralSequence C (ℤ × ℤ)} (r : ℤ) (index : ℤ × ℤ)
    {T : C} [Projective T]
    {x : T ⟶ (E.ssData index).V}
    {y : T ⟶ (E.ssData (index + E.diffDeg r)).V}
    (h : DifferentialRelation E r index x y) : Prop :=
  (⟨r, index, Prod.fst, T, x, y, h⟩ : ExtensionDifferentialRelation E).NoCrossing

/-- 带目标过滤下界的 ESS 无 crossing，仍绑定同一条具体微分关系。 -/
def ESSRelationNoCrossingRange
    {E : SpectralSequence C (ℤ × ℤ)} (r : ℤ) (index : ℤ × ℤ)
    {T : C} [Projective T]
    {x : T ⟶ (E.ssData index).V}
    {y : T ⟶ (E.ssData (index + E.diffDeg r)).V}
    (h : DifferentialRelation E r index x y) (p : ℤ) : Prop :=
  (⟨r, index, Prod.fst, T, x, y, h⟩ : ExtensionDifferentialRelation E).NoCrossingRange p

/-- 过滤复形版本的统一检测：所有已经落入目标过滤层的源代表元，
其实际微分都检测到同一个指定目标类。目标过滤层作为显式参数，
避免把“像落入该层”误写成由无 crossing 自动得到的结论。 -/
def UniformDetection
    (FC : FilteredComplex C) (bnd : FC.IsBounded)
    (r : ℤ) (hr : 0 ≤ r) (s k p : ℤ) {T : C} [Projective T]
    {x : T ⟶ FC.assocGraded s k}
    {y : T ⟶ FC.assocGraded (s + r) (k - 1)}
    (hrel : DifferentialRelation (FC.toSpectralSequence bnd) r ⟨s, k⟩ x y) : Prop :=
  ∀ (xl : T ⟶ Subobject.underlying.obj (FC.fil s k)),
    FC.IsLift s k xl x →
  ∀ (yl : T ⟶ Subobject.underlying.obj (FC.fil (s + r) (k - 1))),
    xl ≫ FC.filDiff s k =
      yl ≫ Subobject.ofLE (FC.fil (s + r) (k - 1)) (FC.fil s (k - 1))
        (FC.fil_anti_of_le (k - 1) (by omega)) →
    FC.IsLift (s + r) (k - 1) yl y

/-- 对过滤复形构造的 ESS，具体扩张关系的无 crossing 条件可转化为
过滤复形代表元引理使用的关系级无 crossing 条件。 -/
theorem ESSRelationNoCrossing.not_crossed_of_filteredComplex
    (FC : FilteredComplex C) (bnd : FC.IsBounded)
    (r : ℤ) (index : ℤ × ℤ) {T : C} [Projective T]
    {x : T ⟶ ((FC.toSpectralSequence bnd).ssData index).V}
    {y : T ⟶ ((FC.toSpectralSequence bnd).ssData
      (index + (FC.toSpectralSequence bnd).diffDeg r)).V}
    (hrel : DifferentialRelation (FC.toSpectralSequence bnd) r index x y)
    (hnc : ESSRelationNoCrossing r index hrel) :
    ¬ RelationCrossedBy (FC.toSpectralSequence bnd) Prod.fst
      r index x y hrel := by
  let h : ExtensionDifferentialRelation (FC.toSpectralSequence bnd) :=
    ⟨r, index, Prod.fst, T, x, y, hrel⟩
  apply h.not_crossed_of_noCrossing hnc
  · intro m k' x' y' hessential
    exact FC.essentialRelation_nonneg bnd m k' hessential
  · intro m k'
    rfl

/-- ESS 形式的零关系无 crossing 可直接产生更深过滤的代表元。 -/
theorem ESSRelationNoCrossing.zero_relation_deeper_lift
    (FC : FilteredComplex C) (bnd : FC.IsBounded)
    (r : ℤ) (hr : 0 ≤ r) (s k : ℤ) {T : C} [Projective T]
    {x : T ⟶ FC.assocGraded s k}
    (hrel : DifferentialRelation (FC.toSpectralSequence bnd) r ⟨s, k⟩ x 0)
    (hnc : ESSRelationNoCrossing r ⟨s, k⟩ hrel) :
    ∃ (xl : T ⟶ Subobject.underlying.obj (FC.fil s k))
      (yd : T ⟶ Subobject.underlying.obj (FC.fil (s + r + 1) (k - 1))),
      FC.IsLift s k xl x ∧
      xl ≫ FC.filDiff s k =
        yd ≫ Subobject.ofLE (FC.fil (s + r + 1) (k - 1)) (FC.fil s (k - 1))
          (FC.fil_anti_of_le (k - 1) (by omega)) := by
  apply FC.zero_relation_deeper_lift bnd r hr s k hrel
  exact ESSRelationNoCrossing.not_crossed_of_filteredComplex
    FC bnd r ⟨s, k⟩ hrel hnc

/-- 若指定关系在目标过滤次数所处范围内无 crossing，则同源同页的
目标是唯一的。竞争目标所产生的本质 crossing 恰命中原目标过滤次数。 -/
theorem ESSRelationNoCrossingRange.target_unique_of_filteredComplex
    (FC : FilteredComplex C) (bnd : FC.IsBounded)
    (r : ℤ) (s k p : ℤ) (hp : p ≤ s + r)
    {T : C} [Projective T]
    {x : T ⟶ FC.assocGraded s k}
    {y₁ y₂ : T ⟶ FC.assocGraded (s + r) (k - 1)}
    (h₁ : DifferentialRelation (FC.toSpectralSequence bnd) r ⟨s, k⟩ x y₁)
    (h₂ : DifferentialRelation (FC.toSpectralSequence bnd) r ⟨s, k⟩ x y₂)
    (hnc : ESSRelationNoCrossingRange r ⟨s, k⟩ h₁ p) :
    y₁ = y₂ := by
  by_contra hne
  obtain ⟨a, ha, m, index, x', y', hs, he, ht⟩ :=
    FC.differentialRelation_crossed_of_two_exact bnd r s k h₁ h₂ hne
  unfold ESSRelationNoCrossingRange ExtensionDifferentialRelation.NoCrossingRange at hnc
  apply hnc
  refine ⟨a, ha, m, index, x', y', hs, he, ?_, ?_⟩
  · change p ≤ (index + (FC.toSpectralSequence bnd).diffDeg m).1
    change (index + (FC.toSpectralSequence bnd).diffDeg m).1 = s + r at ht
    rw [ht]
    exact hp
  · exact le_of_eq ht

/-- 范围性无 crossing 的代表元结论：若源代表元的实际微分已经进入
目标过滤层，则该微分在目标关联分次上的类必为指定目标。
这里的进入目标过滤层仍是显式前提；完整统一检测还需证明此前提。 -/
theorem ESSRelationNoCrossingRange.lift_rel_of_filteredComplex
    (FC : FilteredComplex C) (bnd : FC.IsBounded)
    (r : ℤ) (hr : 0 ≤ r) (s k p : ℤ) (hp : p ≤ s + r)
    {T : C} [Projective T]
    {x : T ⟶ FC.assocGraded s k}
    {y : T ⟶ FC.assocGraded (s + r) (k - 1)}
    (hrel : DifferentialRelation (FC.toSpectralSequence bnd) r ⟨s, k⟩ x y)
    (hnc : ESSRelationNoCrossingRange r ⟨s, k⟩ hrel p)
    {xl : T ⟶ Subobject.underlying.obj (FC.fil s k)}
    (hx : FC.IsLift s k xl x)
    (yl : T ⟶ Subobject.underlying.obj (FC.fil (s + r) (k - 1)))
    (hd : xl ≫ FC.filDiff s k =
      yl ≫ Subobject.ofLE (FC.fil (s + r) (k - 1)) (FC.fil s (k - 1))
        (FC.fil_anti_of_le (k - 1) (by omega))) :
    FC.IsLift (s + r) (k - 1) yl y := by
  let y' := yl ≫ FC.filToAssocGraded (s + r) (k - 1)
  have hrel' : DifferentialRelation (FC.toSpectralSequence bnd)
      r ⟨s, k⟩ x y' :=
    FC.differentialRelation_of_lift bnd r hr s k hx rfl hd
  have heq := ESSRelationNoCrossingRange.target_unique_of_filteredComplex
    FC bnd r s k p hp hrel hrel' hnc
  exact heq.symm

/-- 范围性无 crossing 推出上述统一检测结论。 -/
theorem ESSRelationNoCrossingRange.uniformDetection_of_filteredComplex
    (FC : FilteredComplex C) (bnd : FC.IsBounded)
    (r : ℤ) (hr : 0 ≤ r) (s k p : ℤ) (hp : p ≤ s + r)
    {T : C} [Projective T]
    {x : T ⟶ FC.assocGraded s k}
    {y : T ⟶ FC.assocGraded (s + r) (k - 1)}
    (hrel : DifferentialRelation (FC.toSpectralSequence bnd) r ⟨s, k⟩ x y)
    (hnc : ESSRelationNoCrossingRange r ⟨s, k⟩ hrel p) :
    UniformDetection FC bnd r hr s k p hrel := by
  intro xl hx yl hd
  exact ESSRelationNoCrossingRange.lift_rel_of_filteredComplex
    FC bnd r hr s k p hp hrel hnc hx yl hd

/-- 零扩张的范围性无 crossing：只要代表元的像已进入零关系的
目标过滤层，就必能进一步提升到严格更深的一层。 -/
theorem ESSRelationNoCrossingRange.zero_lift_deeper_of_filteredComplex
    (FC : FilteredComplex C) (bnd : FC.IsBounded)
    (r : ℤ) (hr : 0 ≤ r) (s k p : ℤ) (hp : p ≤ s + r)
    {T : C} [Projective T]
    {x : T ⟶ FC.assocGraded s k}
    (hrel : DifferentialRelation (FC.toSpectralSequence bnd) r ⟨s, k⟩ x 0)
    (hnc : ESSRelationNoCrossingRange r ⟨s, k⟩ hrel p)
    {xl : T ⟶ Subobject.underlying.obj (FC.fil s k)}
    (hx : FC.IsLift s k xl x)
    (yl : T ⟶ Subobject.underlying.obj (FC.fil (s + r) (k - 1)))
    (hd : xl ≫ FC.filDiff s k =
      yl ≫ Subobject.ofLE (FC.fil (s + r) (k - 1)) (FC.fil s (k - 1))
        (FC.fil_anti_of_le (k - 1) (by omega))) :
    ∃ yd : T ⟶ Subobject.underlying.obj (FC.fil (s + r + 1) (k - 1)),
      yl ≫ (FC.fil (s + r) (k - 1)).arrow =
        yd ≫ (FC.fil (s + r + 1) (k - 1)).arrow := by
  have hy : FC.IsLift (s + r) (k - 1) yl 0 :=
    ESSRelationNoCrossingRange.lift_rel_of_filteredComplex
      FC bnd r hr s k p hp hrel hnc hx yl hd
  obtain ⟨yd, hdeeper⟩ := FC.lift_zero_deeper (s + r) (k - 1) yl hy
  refine ⟨yd, ?_⟩
  rw [← hdeeper, Category.assoc, Subobject.ofLE_arrow]

/-! ### Theorem 2.12 — Commutativity (main theorem) -/

/-! 下列方块有四个输入谱序列 `sq.V₁.E` 至 `sq.V₄.E`，以及对应四条边的
扩张谱序列 `extf.ess t`、`extp.ess t`、`extq.ess t`、`extg.ess t`。
每条边的构造涉及三个谱序列：两端的输入谱序列，以及由极限对象之间的映射
构造的新 ESS。输入谱序列的指标类型为 `ω`，ESS 的指标类型为 `ℤ × ℤ`。
收敛同构只将输入的 `E∞` 对象与 ESS 的 `E₀` 项联系起来，并不等同这些
谱序列。讨论 crossing 时必须写明具体关系及其所属谱序列；不能仅凭
`E₁`、`E₂` 记号或 `E∞` 对象同构转移 crossing 命题。 -/

section ESSCommutativityLemmas

variable {ω : Type w} [AddCommGroup ω] [DecidableEq ω] {ω' : Type w}
variable (sq : ConvergingSSSquare (C := C) (ω := ω) (ω' := ω'))
variable (bnd₁ : sq.V₁.F.IsBounded) (bnd₂ : sq.V₂.F.IsBounded)
variable (bnd₃ : sq.V₃.F.IsBounded) (bnd₄ : sq.V₄.F.IsBounded)
variable (extf : BoundedExtensionSS sq.V₁.conv sq.V₂.conv sq.f bnd₁ bnd₂)
variable (extp : BoundedExtensionSS sq.V₁.conv sq.V₃.conv sq.p bnd₁ bnd₃)
variable (extq : BoundedExtensionSS sq.V₂.conv sq.V₄.conv sq.q bnd₂ bnd₄)
variable (extg : BoundedExtensionSS sq.V₃.conv sq.V₄.conv sq.g bnd₃ bnd₄)
variable (n m l sfx : ℤ) (t : ω') {T : C}
variable (x : T ⟶ (extf.complex t).assocGraded sfx 1)
variable (y : T ⟶ (extf.complex t).assocGraded (sfx + n) 0)
variable (z : T ⟶ (extp.complex t).assocGraded (sfx + m) 0)
variable (w : T ⟶ (extg.complex t).assocGraded (sfx + m + l) 0)

/-- `w` 同时作为 ESS(g) 的目标与 ESS(q) 的目标出现：两者对象均为
    `F₄` 层在过滤 `sfx+m+l`、次数 `0` 的关联分次，定义性相等（`rfl`）。 -/
lemma ess_g_q_assocGraded :
    (extg.complex t).assocGraded (sfx + m + l) 0 =
      (extq.complex t).assocGraded (sfx + m + l) 0 := rfl

/-- **引理 B1**（lift 数据产生候选微分关系）：给定一个严格短于目标页的
    filtration-level 微分 lift，`FilteredComplex.differentialRelation_of_lift`
    将它降到 ESS(q) 的页微分关系。

    这一定理不凭空产生 `r'`：原先的陈述没有任何假设却要求
    `∃ r' < m + l - n`，在 `m + l - n ≤ 0` 时不可能成立。候选页与其
    lift 等式必须由 A1 后续的误差项分析提供。 -/
theorem essComm_auxB1
    (r' : ℤ) (hr' : 0 ≤ r') (_hr'_lt : r' < m + l - n)
    (yl : T ⟶ Subobject.underlying.obj ((extq.complex t).fil (sfx + n) 1))
    (wl : T ⟶ Subobject.underlying.obj ((extq.complex t).fil (sfx + n + r') 0))
    (hy : (extq.complex t).IsLift (sfx + n) 1 yl
      (Eq.mpr (congrArg (fun X : C => T ⟶ X)
        (show (((extq.complex t).toSpectralSequence (extq.bounded t)).ssData
          ⟨sfx + n, 1⟩).V = (extq.complex t).assocGraded (sfx + n) 1 from rfl)) y))
    (y₀ : T ⟶ (((extq.complex t).toSpectralSequence (extq.bounded t)).ssData
        (⟨sfx + n, 1⟩ + ((extq.complex t).toSpectralSequence (extq.bounded t)).diffDeg
          r')).V)
    (hw : (extq.complex t).IsLift (sfx + n + r') 0 wl
      (Eq.mpr (congrArg (fun X : C => T ⟶ X)
        (show (((extq.complex t).toSpectralSequence (extq.bounded t)).ssData
          (⟨sfx + n, 1⟩ + ((extq.complex t).toSpectralSequence (extq.bounded t)).diffDeg
            r')).V = (extq.complex t).assocGraded (sfx + n + r') 0 from by
          change (extq.complex t).assocGraded (sfx + n + r') 0 = _
          rfl)) y₀))
    (hd : yl ≫ (extq.complex t).filDiff (sfx + n) 1 =
      wl ≫ Subobject.ofLE ((extq.complex t).fil (sfx + n + r') 0)
        ((extq.complex t).fil (sfx + n) 0)
        ((extq.complex t).fil_anti_of_le 0 (by omega))) :
    DifferentialRelation ((extq.complex t).toSpectralSequence (extq.bounded t))
      r' ⟨sfx + n, 1⟩
      (Eq.mpr (congrArg (fun X : C => T ⟶ X)
        (show (((extq.complex t).toSpectralSequence (extq.bounded t)).ssData
          ⟨sfx + n, 1⟩).V = (extq.complex t).assocGraded (sfx + n) 1 from rfl)) y)
      y₀ := by
  exact FilteredComplex.differentialRelation_of_lift (extq.complex t)
    (extq.bounded t) r' hr' (sfx + n) 1 hy hw hd

/-- **引理 B3**（`_hq_vanish` 排除残余次数）：若竞争关系次数恰为 `kval-1`，
    则 `_hq_vanish` 迫使目标为 `0`。 -/
theorem essComm_auxB3
    (kval : ℤ) (_hk_pos : 0 < kval)
    (_hq_vanish : ∀ (y₀ : T ⟶ (((extq.complex t).toSpectralSequence (extq.bounded t)).ssData
        (⟨sfx + n, 1⟩ + ((extq.complex t).toSpectralSequence (extq.bounded t)).diffDeg
          (kval - 1))).V),
      DifferentialRelation ((extq.complex t).toSpectralSequence (extq.bounded t))
        (kval - 1) ⟨sfx + n, 1⟩
        (Eq.mpr (congrArg (fun X : C => T ⟶ X)
          (show (((extq.complex t).toSpectralSequence (extq.bounded t)).ssData
            ⟨sfx + n, 1⟩).V = (extq.complex t).assocGraded (sfx + n) 1 from rfl)) y)
        y₀ → y₀ = 0)
    (y₀ : T ⟶ (((extq.complex t).toSpectralSequence (extq.bounded t)).ssData
      (⟨sfx + n, 1⟩ + ((extq.complex t).toSpectralSequence (extq.bounded t)).diffDeg
        (kval - 1))).V)
    (hrel : DifferentialRelation ((extq.complex t).toSpectralSequence (extq.bounded t))
      (kval - 1) ⟨sfx + n, 1⟩
      (Eq.mpr (congrArg (fun X : C => T ⟶ X)
        (show (((extq.complex t).toSpectralSequence (extq.bounded t)).ssData
          ⟨sfx + n, 1⟩).V = (extq.complex t).assocGraded (sfx + n) 1 from rfl)) y)
      y₀) :
    y₀ = 0 :=
  _hq_vanish y₀ hrel

/-- 结论的 w 侧搬运：与主定理结论中的 cast 逐项相同，但写成
    「essq 的关联分次 = ESS(q) 页对象」方向，供 `Eq.mpr` 使用。 -/
lemma essComm_concl_cast :
    (((extq.complex t).toSpectralSequence (extq.bounded t)).ssData
      (⟨sfx + n, 1⟩ + ((extq.complex t).toSpectralSequence (extq.bounded t)).diffDeg
        (m + l - n))).V =
      (extg.complex t).assocGraded (sfx + m + l) 0 := by
  have h : (⟨sfx + n, 1⟩ +
      ((extq.complex t).toSpectralSequence (extq.bounded t)).diffDeg
        (m + l - n) : ℤ × ℤ) = ⟨sfx + m + l, 0⟩ := by
    show (⟨sfx + n, 1⟩ + (m + l - n, -1) : ℤ × ℤ) = ⟨sfx + m + l, 0⟩
    apply Prod.ext
    · show sfx + n + (m + l - n) = sfx + m + l; ring
    · rfl
  rw [h]
  show ((extq.complex t).toSSData (extq.bounded t) (sfx + m + l) 0).V =
    (extg.complex t).assocGraded (sfx + m + l) 0
  rw [ess_g_q_assocGraded sq bnd₂ bnd₃ bnd₄ extq extg m l sfx t]
  rfl

end ESSCommutativityLemmas

/-- **定理 2.12**：ESS 微分的交换方块传播。

    在 `ConvergingSS` 的交换方块中，设 `d_n^f(x)=y`、`d_m^p(x)=z`，
    其中至少一个关系无 crossing；又设 `d_l^g(z)=w` 在过滤次数
    `≥ s+n+k` 的范围无 crossing，`0<k≤m+l−n`，并且零扩张关系
    `d_{k-1}^q(y)=0` 无 crossing。结论是 `d_{m+l-n}^q(y)=w`。
    所有「`d(x) = y`」均按 `DifferentialRelation` 表述。
    **关键**：四个关系共享同一批广义元素——`x` 同时是 ESS(f) 与 ESS(p) 的源
    （两者在次数 `1` 处的关联分次定义性相同，均为 `F₁` 层），
    `y` 同时是 ESS(f) 的目标与 ESS(q) 的源（均为 `F₂` 层次数 `0`），
    `z` 同时是 ESS(p) 的目标与 ESS(g) 的源（均为 `F₃` 层次数 `0`），
    `w` 同时是 ESS(g) 的目标与 ESS(q) 的目标（均为 `F₄` 层次数 `0`）。 -/
theorem essCommutativity {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {ω' : Type w}
    (sq : ConvergingSSSquare (C := C) (ω := ω) (ω' := ω'))
    (bnd₁ : sq.V₁.F.IsBounded) (bnd₂ : sq.V₂.F.IsBounded)
    (bnd₃ : sq.V₃.F.IsBounded) (bnd₄ : sq.V₄.F.IsBounded)
    (extf : BoundedExtensionSS sq.V₁.conv sq.V₂.conv sq.f bnd₁ bnd₂)
    (extp : BoundedExtensionSS sq.V₁.conv sq.V₃.conv sq.p bnd₁ bnd₃)
    (extq : BoundedExtensionSS sq.V₂.conv sq.V₄.conv sq.q bnd₂ bnd₄)
    (extg : BoundedExtensionSS sq.V₃.conv sq.V₄.conv sq.g bnd₃ bnd₄)
    (n m l : ℤ) (sfx : ℤ) (t : ω')
    (_hn : 0 ≤ n) (_hm : 0 ≤ m) (_hl : 0 ≤ l)
    {T : C} [Projective T]
    (x : T ⟶ (extf.complex t).assocGraded sfx 1)
    (y : T ⟶ (extf.complex t).assocGraded (sfx + n) 0)
    (z : T ⟶ (extp.complex t).assocGraded (sfx + m) 0)
    (w : T ⟶ (extg.complex t).assocGraded (sfx + m + l) 0)
    -- 1. `d_n^f(x) = y`：ESS(f) 中的微分关系
    -- （`Eq.mpr` 精确搬运：对象等式均为 `rfl`，避免 `whnf` 超时）
    (_hf_rel : DifferentialRelation ((extf.complex t).toSpectralSequence (extf.bounded t))
      n ⟨sfx, 1⟩
      (Eq.mpr (congrArg (fun X : C => T ⟶ X)
        (show (((extf.complex t).toSpectralSequence (extf.bounded t)).ssData ⟨sfx, 1⟩).V =
          (extf.complex t).assocGraded sfx 1 from rfl)) x)
      (Eq.mpr (congrArg (fun X : C => T ⟶ X)
        (show (((extf.complex t).toSpectralSequence (extf.bounded t)).ssData
          (⟨sfx, 1⟩ + ((extf.complex t).toSpectralSequence (extf.bounded t)).diffDeg n)).V =
          (extf.complex t).assocGraded (sfx + n) 0 from rfl)) y))
    -- 2. `d_m^p(x) = z`：ESS(p) 中的微分关系（源与 (1) 共享同一个 `x`）
    (_hp_rel : DifferentialRelation ((extp.complex t).toSpectralSequence (extp.bounded t))
      m ⟨sfx, 1⟩
      (Eq.mpr (congrArg (fun X : C => T ⟶ X)
        (show (((extp.complex t).toSpectralSequence (extp.bounded t)).ssData ⟨sfx, 1⟩).V =
          (extp.complex t).assocGraded sfx 1 from rfl)) x)
      (Eq.mpr (congrArg (fun X : C => T ⟶ X)
        (show (((extp.complex t).toSpectralSequence (extp.bounded t)).ssData
          (⟨sfx, 1⟩ + ((extp.complex t).toSpectralSequence (extp.bounded t)).diffDeg m)).V =
          (extp.complex t).assocGraded (sfx + m) 0 from rfl)) z))
    (_hf_or_p_nc : ESSRelationNoCrossing n ⟨sfx, 1⟩ _hf_rel ∨
      ESSRelationNoCrossing m ⟨sfx, 1⟩ _hp_rel)
    -- 4. `d_l^g(z) = w`：ESS(g) 中的微分关系（源与 (2) 共享同一个 `z`）
    (_hg_rel : DifferentialRelation ((extg.complex t).toSpectralSequence (extg.bounded t))
      l ⟨sfx + m, 1⟩
      (Eq.mpr (congrArg (fun X : C => T ⟶ X)
        (show (((extg.complex t).toSpectralSequence (extg.bounded t)).ssData
          ⟨sfx + m, 1⟩).V =
          (extg.complex t).assocGraded (sfx + m) 1 from rfl)) z)
      (Eq.mpr (congrArg (fun X : C => T ⟶ X)
        (show (((extg.complex t).toSpectralSequence (extg.bounded t)).ssData
          (⟨sfx + m, 1⟩ + ((extg.complex t).toSpectralSequence (extg.bounded t)).diffDeg l)).V =
          (extg.complex t).assocGraded (sfx + m + l) 0 from rfl)) w))
    (kval : ℤ) (_hk_pos : 0 < kval) (_hk_bound : kval ≤ m + l - n)
    (_hg_nc_range : ESSRelationNoCrossingRange l ⟨sfx + m, 1⟩ _hg_rel
      (sfx + n + kval))
    -- 5. `d_{k-1}^q(y) = 0`：ESS(q) 中从 `y`（与 (1) 共享）出发的短微分消失
    (_hq_zero : DifferentialRelation
      ((extq.complex t).toSpectralSequence (extq.bounded t))
      (kval - 1) ⟨sfx + n, 1⟩
      (Eq.mpr (congrArg (fun X : C => T ⟶ X)
        (show (((extq.complex t).toSpectralSequence (extq.bounded t)).ssData
          ⟨sfx + n, 1⟩).V =
          (extq.complex t).assocGraded (sfx + n) 1 from rfl)) y) 0)
    (_hq_nc : ESSRelationNoCrossing (kval - 1) ⟨sfx + n, 1⟩ _hq_zero) :
    -- 结论：`d_{m+l-n}^q(y) = w`：ESS(q) 中 `y` 与 `w`（与 (4) 共享）的微分关系
    DifferentialRelation ((extq.complex t).toSpectralSequence (extq.bounded t))
      (m + l - n) ⟨sfx + n, 1⟩
      (Eq.mpr (congrArg (fun X : C => T ⟶ X)
        (show (((extq.complex t).toSpectralSequence (extq.bounded t)).ssData
          ⟨sfx + n, 1⟩).V =
          (extq.complex t).assocGraded (sfx + n) 1 from rfl)) y)
      (Eq.mpr (congrArg (fun X : C => T ⟶ X)
        (essComm_concl_cast sq bnd₂ bnd₃ bnd₄ extq extg n m l sfx t)) w) :=
  -- 这里必须使用上述四条扩张关系和无 crossing 假设来选取共同代表元。
  -- 旧版无前提的 auxC1 对任意 y、w 声称此结论，不是合法的证明桥梁。
  -- 四个无 crossing 条件现已绑定各边的具体扩张关系。
  -- 尚需证明 Blueprint `prop:no-crossing-iff-uniform-detection` 的代表元刻画。
  sorry

/- theorem essCommutativity_iso {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {E₁ E₂ E₃ E₄ : SpectralSequence C ω} {ω' : Type w}
    {A₁ A₂ A₃ A₄ : ω' → C}
    {F₁ : Filtration A₁} {F₂ : Filtration A₂}
    {F₃ : Filtration A₃} {F₄ : Filtration A₄}
    {conv₁ : Convergence E₁ A₁ F₁} {conv₂ : Convergence E₂ A₂ F₂}
    {conv₃ : Convergence E₃ A₃ F₃} {conv₄ : Convergence E₄ A₄ F₄}
    (sq : HomotopyCommSquare conv₁ conv₂ conv₃ conv₄)
    (n m l : ℤ) (kx ky kz kw : ω)
    (_hn : 0 ≤ n) (_hm : 0 ≤ m) (_hl : 0 ≤ l)
    (_hf_rel : ESSRelation sq.extf n kx ky)
    (_hp_rel : ESSRelation sq.extp m kx kz)
    (ddf : DifferentialDatum C ω)
    (_hddf : ddf.E = E₁ ∧ ddf.r = n ∧ ddf.k = kx)
    (ddp : DifferentialDatum C ω)
    (_hddp : ddp.E = E₁ ∧ ddp.r = m ∧ ddp.k = kx)
    (_hf_or_p_nc : NoCrossing ddf ∨ NoCrossing ddp)
    (_hg_rel : ESSRelation sq.extg l kz kw)
    (ddg : DifferentialDatum C ω)
    (_hddg : ddg.E = E₃ ∧ ddg.r = l ∧ ddg.k = kz)
    (s : ℤ) (kval : ℤ) (_hk_pos : 0 < kval) (_hk_bound : kval ≤ m + l - n)
    (_hg_nc_range : NoCrossingRange ddg (s + n + kval))
    (ddq : DifferentialDatum C ω)
    (_hddq : ddq.E = E₂ ∧ ddq.r = kval - 1 ∧ ddq.k = ky)
    (_hq_vanish : ESSVanishes sq.extq (kval - 1) ky kw)
    (_hq_nc : NoCrossing ddq) :
    Nonempty (sq.extq.essDiff (m + l - n) ky kw ≅ sq.extg.essDiff l kz kw) := by
  sorry
-/
/-! ### Corollary 2.15 — Simplified commutativity (no crossing everywhere) -/

/-- **Corollary 2.15**: Simplified commutativity — same as Thm 2.12 but with
    `d_l^g(z) = w` having no crossing at all (dropping the k parameter). -/
theorem essCommutativity_noCrossing {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {E₁ E₂ E₃ E₄ : SpectralSequence C ω} {ω' : Type w}
    {A₁ A₂ A₃ A₄ : ω' → C}
    {F₁ : Filtration A₁} {F₂ : Filtration A₂}
    {F₃ : Filtration A₃} {F₄ : Filtration A₄}
    {conv₁ : Convergence E₁ A₁ F₁} {conv₂ : Convergence E₂ A₂ F₂}
    {conv₃ : Convergence E₃ A₃ F₃} {conv₄ : Convergence E₄ A₄ F₄}
    (sq : HomotopyCommSquare conv₁ conv₂ conv₃ conv₄)
    (n m l : ℤ) (kx ky kz kw : ω)
    (_hn : 0 ≤ n) (_hm : 0 ≤ m) (_hl : 0 ≤ l)
    (_hf_rel : ESSRelation sq.extf n kx ky)
    (_hp_rel : ESSRelation sq.extp m kx kz)
    (ddf : DifferentialDatum C ω)
    (_hddf : ddf.E = E₁ ∧ ddf.r = n ∧ ddf.k = kx)
    (ddp : DifferentialDatum C ω)
    (_hddp : ddp.E = E₁ ∧ ddp.r = m ∧ ddp.k = kx)
    (_hf_or_p_nc : NoCrossing ddf ∨ NoCrossing ddp)
    (_hg_rel : ESSRelation sq.extg l kz kw)
    (ddg : DifferentialDatum C ω)
    (_hddg : ddg.E = E₃ ∧ ddg.r = l ∧ ddg.k = kz)
    (_hg_nc : NoCrossing ddg) :
    ESSRelation sq.extq (m + l - n) ky kw := by
  sorry
/- theorem essCommutativity_noCrossing_iso {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {E₁ E₂ E₃ E₄ : SpectralSequence C ω} {ω' : Type w}
    {A₁ A₂ A₃ A₄ : ω' → C}
    {F₁ : Filtration A₁} {F₂ : Filtration A₂}
    {F₃ : Filtration A₃} {F₄ : Filtration A₄}
    {conv₁ : Convergence E₁ A₁ F₁} {conv₂ : Convergence E₂ A₂ F₂}
    {conv₃ : Convergence E₃ A₃ F₃} {conv₄ : Convergence E₄ A₄ F₄}
    (sq : HomotopyCommSquare conv₁ conv₂ conv₃ conv₄)
    (n m l : ℤ) (kx ky kz kw : ω)
    (_hn : 0 ≤ n) (_hm : 0 ≤ m) (_hl : 0 ≤ l)
    (_hf_rel : ESSRelation sq.extf n kx ky)
    (_hp_rel : ESSRelation sq.extp m kx kz)
    (ddf : DifferentialDatum C ω)
    (_hddf : ddf.E = E₁ ∧ ddf.r = n ∧ ddf.k = kx)
    (ddp : DifferentialDatum C ω)
    (_hddp : ddp.E = E₁ ∧ ddp.r = m ∧ ddp.k = kx)
    (_hf_or_p_nc : NoCrossing ddf ∨ NoCrossing ddp)
    (_hg_rel : ESSRelation sq.extg l kz kw)
    (ddg : DifferentialDatum C ω)
    (_hddg : ddg.E = E₃ ∧ ddg.r = l ∧ ddg.k = kz)
    (_hg_nc : NoCrossing ddg) :
    Nonempty (sq.extq.essDiff (m + l - n) ky kw ≅ sq.extg.essDiff l kz kw) := by
  sorry
-/
/-! ### Corollary 2.16 — Triangle case -/

/-- **Corollary 2.16 (Triangle)**: When V₃ = V₄ and g = id.
    ```
    V₁ --f--> V₂
     \         |q
      p\       v
        \-->  V₃
    ```
    If `d_n^f(x) = y` and `d_m^p(x) = z` with no crossing on one of them,
    then `d_{m-n}^q(y) = z`. -/
theorem essCommutativity_triangle {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {E₁ E₂ E₃ : SpectralSequence C ω} {ω' : Type w}
    {A₁ A₂ A₃ : ω' → C}
    {F₁ : Filtration A₁} {F₂ : Filtration A₂} {F₃ : Filtration A₃}
    {conv₁ : Convergence E₁ A₁ F₁} {conv₂ : Convergence E₂ A₂ F₂}
    {conv₃ : Convergence E₃ A₃ F₃}
    (cmf : ConvergenceMorphism conv₁ conv₂)
    (cmp : ConvergenceMorphism conv₁ conv₃)
    (cmq : ConvergenceMorphism conv₂ conv₃)
    (bnd₁ : F₁.IsBounded) (bnd₂ : F₂.IsBounded) (bnd₃ : F₃.IsBounded)
    (extf : BoundedExtensionSS conv₁ conv₂ cmf bnd₁ bnd₂)
    (extp : BoundedExtensionSS conv₁ conv₃ cmp bnd₁ bnd₃)
    (extq : BoundedExtensionSS conv₂ conv₃ cmq bnd₂ bnd₃)
    (_abutment_comm : ∀ (k' : ω'), cmf.aMap k' ≫ cmq.aMap k' = cmp.aMap k')
    (_eInfty_comm : ∀ (k : ω), cmf.eMap k ≫ cmq.eMap k = cmp.eMap k)
    (n m : ℤ) (kx ky kz : ω)
    (_hn : 0 ≤ n) (_hm : 0 ≤ m) (_hmn : n ≤ m)
    (_hf_rel : ESSRelation extf n kx ky)
    (_hp_rel : ESSRelation extp m kx kz)
    (ddf : DifferentialDatum C ω)
    (_hddf : ddf.E = E₁ ∧ ddf.r = n ∧ ddf.k = kx)
    (ddp : DifferentialDatum C ω)
    (_hddp : ddp.E = E₁ ∧ ddp.r = m ∧ ddp.k = kx)
    (_hf_or_p_nc : NoCrossing ddf ∨ NoCrossing ddp) :
    ESSRelation extq (m - n) ky kz := by
  sorry
/- theorem essCommutativity_triangle_iso {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {E₁ E₂ E₃ : SpectralSequence C ω} {ω' : Type w}
    {A₁ A₂ A₃ : ω' → C}
    {F₁ : Filtration A₁} {F₂ : Filtration A₂} {F₃ : Filtration A₃}
    {conv₁ : Convergence E₁ A₁ F₁} {conv₂ : Convergence E₂ A₂ F₂}
    {conv₃ : Convergence E₃ A₃ F₃}
    (cmf : ConvergenceMorphism conv₁ conv₂)
    (cmp : ConvergenceMorphism conv₁ conv₃)
    (cmq : ConvergenceMorphism conv₂ conv₃)
    (bnd₁ : F₁.IsBounded) (bnd₂ : F₂.IsBounded) (bnd₃ : F₃.IsBounded)
    (extf : BoundedExtensionSS conv₁ conv₂ cmf bnd₁ bnd₂)
    (extp : BoundedExtensionSS conv₁ conv₃ cmp bnd₁ bnd₃)
    (extq : BoundedExtensionSS conv₂ conv₃ cmq bnd₂ bnd₃)
    (_abutment_comm : ∀ (k' : ω'), cmf.aMap k' ≫ cmq.aMap k' = cmp.aMap k')
    (_eInfty_comm : ∀ (k : ω), cmf.eMap k ≫ cmq.eMap k = cmp.eMap k)
    (n m : ℤ) (kx ky kz : ω)
    (_hn : 0 ≤ n) (_hm : 0 ≤ m) (_hmn : n ≤ m)
    (_hf_rel : ESSRelation extf n kx ky)
    (_hp_rel : ESSRelation extp m kx kz)
    (ddf : DifferentialDatum C ω)
    (_hddf : ddf.E = E₁ ∧ ddf.r = n ∧ ddf.k = kx)
    (ddp : DifferentialDatum C ω)
    (_hddp : ddp.E = E₁ ∧ ddp.r = m ∧ ddp.k = kx)
    (_hf_or_p_nc : NoCrossing ddf ∨ NoCrossing ddp) :
    Nonempty (extq.essDiff (m - n) ky kz ≅ extp.essDiff m kx kz) := by
  sorry
-/
/-! ### Corollary 2.17 — Composition case -/

/-- **Corollary 2.17 (Composition)**: When V₁ = V₂ and f = id.
    ```
    V₁ --p--> V₃
     \         |g
      q\       v
        \-->  V₄
    ```
    If `d_m^p(x) = z` and `d_l^g(z) = w` with no crossing on `g`, then
    `d_{m+l}^q(x) = w`. -/
theorem essCommutativity_composition {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {E₁ E₃ E₄ : SpectralSequence C ω} {ω' : Type w}
    {A₁ A₃ A₄ : ω' → C}
    {F₁ : Filtration A₁} {F₃ : Filtration A₃} {F₄ : Filtration A₄}
    {conv₁ : Convergence E₁ A₁ F₁}
    {conv₃ : Convergence E₃ A₃ F₃} {conv₄ : Convergence E₄ A₄ F₄}
    (cmp : ConvergenceMorphism conv₁ conv₃)
    (cmg : ConvergenceMorphism conv₃ conv₄)
    (cmq : ConvergenceMorphism conv₁ conv₄)
    (bnd₁ : F₁.IsBounded) (bnd₃ : F₃.IsBounded) (bnd₄ : F₄.IsBounded)
    (extp : BoundedExtensionSS conv₁ conv₃ cmp bnd₁ bnd₃)
    (extg : BoundedExtensionSS conv₃ conv₄ cmg bnd₃ bnd₄)
    (extq : BoundedExtensionSS conv₁ conv₄ cmq bnd₁ bnd₄)
    (_abutment_comm : ∀ (k' : ω'), cmp.aMap k' ≫ cmg.aMap k' = cmq.aMap k')
    (_eInfty_comm : ∀ (k : ω), cmp.eMap k ≫ cmg.eMap k = cmq.eMap k)
    (m l : ℤ) (kx kz kw : ω)
    (_hm : 0 ≤ m) (_hl : 0 ≤ l)
    (_hp_rel : ESSRelation extp m kx kz)
    (_hg_rel : ESSRelation extg l kz kw)
    (ddg : DifferentialDatum C ω)
    (_hddg : ddg.E = E₃ ∧ ddg.r = l ∧ ddg.k = kz)
    (_hg_nc : NoCrossing ddg) :
    ESSRelation extq (m + l) kx kw := by
  sorry
/- theorem essCommutativity_composition_iso {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {E₁ E₃ E₄ : SpectralSequence C ω} {ω' : Type w}
    {A₁ A₃ A₄ : ω' → C}
    {F₁ : Filtration A₁} {F₃ : Filtration A₃} {F₄ : Filtration A₄}
    {conv₁ : Convergence E₁ A₁ F₁}
    {conv₃ : Convergence E₃ A₃ F₃} {conv₄ : Convergence E₄ A₄ F₄}
    (cmp : ConvergenceMorphism conv₁ conv₃)
    (cmg : ConvergenceMorphism conv₃ conv₄)
    (cmq : ConvergenceMorphism conv₁ conv₄)
    (bnd₁ : F₁.IsBounded) (bnd₃ : F₃.IsBounded) (bnd₄ : F₄.IsBounded)
    (extp : BoundedExtensionSS conv₁ conv₃ cmp bnd₁ bnd₃)
    (extg : BoundedExtensionSS conv₃ conv₄ cmg bnd₃ bnd₄)
    (extq : BoundedExtensionSS conv₁ conv₄ cmq bnd₁ bnd₄)
    (_abutment_comm : ∀ (k' : ω'), cmp.aMap k' ≫ cmg.aMap k' = cmq.aMap k')
    (_eInfty_comm : ∀ (k : ω), cmp.eMap k ≫ cmg.eMap k = cmq.eMap k)
    (m l : ℤ) (kx kz kw : ω)
    (_hm : 0 ≤ m) (_hl : 0 ≤ l)
    (_hp_rel : ESSRelation extp m kx kz)
    (_hg_rel : ESSRelation extg l kz kw)
    (ddg : DifferentialDatum C ω)
    (_hddg : ddg.E = E₃ ∧ ddg.r = l ∧ ddg.k = kz)
    (_hg_nc : NoCrossing ddg) :
    Nonempty (extq.essDiff (m + l) kx kw ≅ extg.essDiff l kz kw) := by
  sorry
-/
/-! ### Corollary 2.18 — Induced map on ESS pages -/

/-- The ESS page map induced by the commutativity square: if the source E∞-pages
    have `E₀ = E_r` (degeneration at page r), then the commutativity data
    induces a well-defined map between the f-ESS and g-ESS pages. -/
theorem essCommutativity_induces_map {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {E₁ E₂ E₃ E₄ : SpectralSequence C ω} {ω' : Type w}
    {A₁ A₂ A₃ A₄ : ω' → C}
    {F₁ : Filtration A₁} {F₂ : Filtration A₂}
    {F₃ : Filtration A₃} {F₄ : Filtration A₄}
    {conv₁ : Convergence E₁ A₁ F₁} {conv₂ : Convergence E₂ A₂ F₂}
    {conv₃ : Convergence E₃ A₃ F₃} {conv₄ : Convergence E₄ A₄ F₄}
    (sq : HomotopyCommSquare conv₁ conv₂ conv₃ conv₄)
    (r : ℤ) (_hr : 0 ≤ r)
    (_hp_degen : E₁.DegeneratesAt r)
    (_hg_degen : E₃.DegeneratesAt r)
    (n : ℤ) (k₁ k₂ : ω) :
    Nonempty (sq.extf.essDiff n k₁ k₂ ⟶ sq.extg.essDiff n k₁ k₂) := by
  sorry

/-- **Corollary 2.18 (compatibility)**: The induced page map commutes with ESS
    differentials. -/
theorem essInducedPageMap_comm {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {E₁ E₂ E₃ E₄ : SpectralSequence C ω} {ω' : Type w}
    {A₁ A₂ A₃ A₄ : ω' → C}
    {F₁ : Filtration A₁} {F₂ : Filtration A₂}
    {F₃ : Filtration A₃} {F₄ : Filtration A₄}
    {conv₁ : Convergence E₁ A₁ F₁} {conv₂ : Convergence E₂ A₂ F₂}
    {conv₃ : Convergence E₃ A₃ F₃} {conv₄ : Convergence E₄ A₄ F₄}
    (sq : HomotopyCommSquare conv₁ conv₂ conv₃ conv₄)
    (r : ℤ) (_hr : 0 ≤ r)
    (_hp_degen : E₁.DegeneratesAt r)
    (_hg_degen : E₃.DegeneratesAt r)
    (n : ℤ) (k₁ k₂ k₃ : ω)
    (φ₁₂ : sq.extf.essDiff n k₁ k₂ ⟶ sq.extg.essDiff n k₁ k₂)
    (φ₂₃ : sq.extf.essDiff n k₂ k₃ ⟶ sq.extg.essDiff n k₂ k₃)
    (d_f : sq.extf.essDiff n k₁ k₂ ⟶ sq.extf.essDiff n k₂ k₃)
    (d_g : sq.extg.essDiff n k₁ k₂ ⟶ sq.extg.essDiff n k₂ k₃) :
    φ₁₂ ≫ d_g = d_f ≫ φ₂₃ := by
  sorry
/-! ### Corollary 2.19 — Null composition -/

/-- **Corollary 2.19**: If `g ∘ f` is null-homotopic and `d_n^f(x) = y`,
    then `y` is a permanent cycle in the g-ESS: `d_m^g(y) = 0` for all `m ≥ 0`. -/
theorem essCommutativity_null {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {E₁ E₂ E₃ E₄ : SpectralSequence C ω} {ω' : Type w}
    {A₁ A₂ A₃ A₄ : ω' → C}
    {F₁ : Filtration A₁} {F₂ : Filtration A₂}
    {F₃ : Filtration A₃} {F₄ : Filtration A₄}
    {conv₁ : Convergence E₁ A₁ F₁} {conv₂ : Convergence E₂ A₂ F₂}
    {conv₃ : Convergence E₃ A₃ F₃} {conv₄ : Convergence E₄ A₄ F₄}
    (sq : HomotopyCommSquare conv₁ conv₂ conv₃ conv₄)
    (n : ℤ) (kx ky : ω)
    (_hn : 0 ≤ n)
    (_hf_rel : ESSRelation sq.extf n kx ky)
    (_h_null : ∀ (k' : ω'), sq.cmf.aMap k' ≫ sq.cmq.aMap k' = 0) :
    ∀ (m : ℤ) (_hm : 0 ≤ m) (kw : ω),
    ESSVanishes sq.extq m ky kw := by
  sorry
/-! ### Supporting axioms — Commutativity functoriality -/

/-- Commutativity squares preserve boundary groups: the boundary in the q-ESS
    at page `m + l - n` is related to the boundary in the g-ESS at page `l`. -/
theorem essCommutativity_preserves_boundaries {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {E₁ E₂ E₃ E₄ : SpectralSequence C ω} {ω' : Type w}
    {A₁ A₂ A₃ A₄ : ω' → C}
    {F₁ : Filtration A₁} {F₂ : Filtration A₂}
    {F₃ : Filtration A₃} {F₄ : Filtration A₄}
    {conv₁ : Convergence E₁ A₁ F₁} {conv₂ : Convergence E₂ A₂ F₂}
    {conv₃ : Convergence E₃ A₃ F₃} {conv₄ : Convergence E₄ A₄ F₄}
    (sq : HomotopyCommSquare conv₁ conv₂ conv₃ conv₄)
    (n m l : ℤ) (kw : ω)
    (_hn : 0 ≤ n) (_hm : 0 ≤ m) (_hl : 0 ≤ l) :
    Nonempty (sq.extq.essBoundary (m + l - n) kw ⟶ sq.extg.essBoundary l kw) := by
  sorry
/-- The HomotopyCommSquare is natural in the following sense: the induced maps
    on ESS differentials respect composition of convergence morphisms. -/
theorem essCommutativity_naturality {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {E₁ E₂ E₃ E₄ : SpectralSequence C ω} {ω' : Type w}
    {A₁ A₂ A₃ A₄ : ω' → C}
    {F₁ : Filtration A₁} {F₂ : Filtration A₂}
    {F₃ : Filtration A₃} {F₄ : Filtration A₄}
    {conv₁ : Convergence E₁ A₁ F₁} {conv₂ : Convergence E₂ A₂ F₂}
    {conv₃ : Convergence E₃ A₃ F₃} {conv₄ : Convergence E₄ A₄ F₄}
    (sq : HomotopyCommSquare conv₁ conv₂ conv₃ conv₄)
    (n : ℤ) (k₁ k₂ : ω) :
    Nonempty (sq.extf.essDiff n k₁ k₂ ⟶ sq.extq.essDiff n k₁ k₂) := by
  sorry
/-- The commutativity data is compatible with the E∞ page maps. -/
theorem essCommutativity_eInfty_compat {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {E₁ E₂ E₃ E₄ : SpectralSequence C ω} {ω' : Type w}
    {A₁ A₂ A₃ A₄ : ω' → C}
    {F₁ : Filtration A₁} {F₂ : Filtration A₂}
    {F₃ : Filtration A₃} {F₄ : Filtration A₄}
    {conv₁ : Convergence E₁ A₁ F₁} {conv₂ : Convergence E₂ A₂ F₂}
    {conv₃ : Convergence E₃ A₃ F₃} {conv₄ : Convergence E₄ A₄ F₄}
    (sq : HomotopyCommSquare conv₁ conv₂ conv₃ conv₄)
    (n : ℤ) (k : ω) :
    sq.cmf.eMap k ≫ sq.cmq.eMap k = sq.cmp.eMap k ≫ sq.cmg.eMap k :=
  sq.eInfty_comm k
/-- 过滤数据跨方块相容：`f`、`q` 与 `p`、`g` 在过滤层上诱导的关联分次映射
    满足交换律 `gr(f) ≫ gr(q) = gr(p) ≫ gr(g)`（方块交换在 gr 层面的表现）。 -/
theorem essCommutativity_filtration_compat {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {E₁ E₂ E₃ E₄ : SpectralSequence C ω} {ω' : Type w}
    {A₁ A₂ A₃ A₄ : ω' → C}
    {F₁ : Filtration A₁} {F₂ : Filtration A₂}
    {F₃ : Filtration A₃} {F₄ : Filtration A₄}
    {conv₁ : Convergence E₁ A₁ F₁} {conv₂ : Convergence E₂ A₂ F₂}
    {conv₃ : Convergence E₃ A₃ F₃} {conv₄ : Convergence E₄ A₄ F₄}
    (sq : HomotopyCommSquare conv₁ conv₂ conv₃ conv₄)
    (s : ℤ) (k' : ω') :
    Filtration.inducedAssocGradedMap sq.cmf.aMap sq.cmf.filtration_compat s k' ≫
      Filtration.inducedAssocGradedMap sq.cmq.aMap sq.cmq.filtration_compat s k' =
    Filtration.inducedAssocGradedMap sq.cmp.aMap sq.cmp.filtration_compat s k' ≫
      Filtration.inducedAssocGradedMap sq.cmg.aMap sq.cmg.filtration_compat s k' := by
  have hL : Filtration.inducedAssocGradedMap
      (fun k'' => sq.cmf.aMap k'' ≫ sq.cmq.aMap k'')
      (ConvergenceMorphismData.fcComp sq.cmf sq.cmq) s k' =
    Filtration.inducedAssocGradedMap sq.cmf.aMap sq.cmf.filtration_compat s k' ≫
      Filtration.inducedAssocGradedMap sq.cmq.aMap sq.cmq.filtration_compat s k' :=
    Filtration.inducedAssocGradedMap_comp sq.cmf sq.cmq s k'
  have hR : Filtration.inducedAssocGradedMap
      (fun k'' => sq.cmp.aMap k'' ≫ sq.cmg.aMap k'')
      (ConvergenceMorphismData.fcComp sq.cmp sq.cmg) s k' =
    Filtration.inducedAssocGradedMap sq.cmp.aMap sq.cmp.filtration_compat s k' ≫
      Filtration.inducedAssocGradedMap sq.cmg.aMap sq.cmg.filtration_compat s k' :=
    Filtration.inducedAssocGradedMap_comp sq.cmp sq.cmg s k'
  have hcomp : (fun k'' => sq.cmf.aMap k'' ≫ sq.cmq.aMap k'') =
      fun k'' => sq.cmp.aMap k'' ≫ sq.cmg.aMap k'' :=
    funext fun k'' => sq.abutment_comm k''
  have hmain : Filtration.inducedAssocGradedMap
      (fun k'' => sq.cmf.aMap k'' ≫ sq.cmq.aMap k'')
      (ConvergenceMorphismData.fcComp sq.cmf sq.cmq) s k' =
    Filtration.inducedAssocGradedMap
      (fun k'' => sq.cmp.aMap k'' ≫ sq.cmg.aMap k'')
      (ConvergenceMorphismData.fcComp sq.cmp sq.cmg) s k' := by
    rw [Filtration.inducedAssocGradedMap_eq_inducedGradedMapOfMap
      (fun k'' => sq.cmf.aMap k'' ≫ sq.cmq.aMap k'')
      (ConvergenceMorphismData.fcComp sq.cmf sq.cmq)]
    rw [Filtration.inducedAssocGradedMap_eq_inducedGradedMapOfMap
      (fun k'' => sq.cmp.aMap k'' ≫ sq.cmg.aMap k'')
      (ConvergenceMorphismData.fcComp sq.cmp sq.cmg)]
    apply Filtration.inducedGradedMapOfMap_congr
    funext s₀ k₀
    apply (cancel_mono ((F₄.F s₀ k₀).arrow)).mp
    rw [(ConvergenceMorphismData.fcComp sq.cmf sq.cmq s₀ k₀).choose_spec,
      (ConvergenceMorphismData.fcComp sq.cmp sq.cmg s₀ k₀).choose_spec,
      congrFun hcomp k₀]
  rw [← hL, ← hR, hmain]
/-! ### Triangle and composition reductions -/

/-- 三角归约（Corollary 2.16 由全交换方块特化而来）：
    取 `V₃ = V₄`、`g = 𝟙` 时，`f ≫ q = p` 的方块交换数据，
    连同 `V₃` 上的恒等收敛态射及其有界 ESS 数据，
    可由方块数据构造——此即三角情形嵌入全方块情形的桥。 -/
theorem essTriangle_from_square {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {E₁ E₂ E₃ : SpectralSequence C ω} {ω' : Type w}
    {A₁ A₂ A₃ : ω' → C}
    {F₁ : Filtration A₁} {F₂ : Filtration A₂} {F₃ : Filtration A₃}
    {conv₁ : Convergence E₁ A₁ F₁} {conv₂ : Convergence E₂ A₂ F₂}
    {conv₃ : Convergence E₃ A₃ F₃}
    (cmf : ConvergenceMorphism conv₁ conv₂)
    (cmp : ConvergenceMorphism conv₁ conv₃)
    (cmq : ConvergenceMorphism conv₂ conv₃)
    (bnd₁ : F₁.IsBounded) (bnd₂ : F₂.IsBounded) (bnd₃ : F₃.IsBounded)
    (extf : BoundedExtensionSS conv₁ conv₂ cmf bnd₁ bnd₂)
    (extp : BoundedExtensionSS conv₁ conv₃ cmp bnd₁ bnd₃)
    (extq : BoundedExtensionSS conv₂ conv₃ cmq bnd₂ bnd₃)
    (_abutment_comm : ∀ (k' : ω'), cmf.aMap k' ≫ cmq.aMap k' = cmp.aMap k')
    (n m : ℤ) (kx ky kz : ω)
    (_hf_rel : ESSRelation extf n kx ky)
    (_hp_rel : ESSRelation extp m kx kz) :
    ∃ (idCm : ConvergenceMorphism conv₃ conv₃)
      (_idExt : BoundedExtensionSS conv₃ conv₃ idCm bnd₃ bnd₃),
    (∀ (k : ω), idCm.eMap k = 𝟙 _) ∧ (∀ (k' : ω'), idCm.aMap k' = 𝟙 _) := by
  refine ⟨{
    eMap := fun _ => 𝟙 _
    aMap := fun _ => 𝟙 _
    filtration_compat := F₃.fcId
    reindex_eq := rfl
    iso_compat := fun k => by
      simp only [Category.id_comp, Filtration.transportGraded_self, Category.comp_id,
        F₃.inducedAssocGradedMap_id (conv₃.reindex k).1 (conv₃.reindex k).2] },
    BoundedExtensionSS.mk' conv₃ conv₃ _ bnd₃ bnd₃, fun _ => rfl, fun _ => rfl⟩

/-- 复合归约（Corollary 2.17 由全交换方块特化而来）：
    取 `V₁ = V₂`、`f = 𝟙` 时，`p ≫ g = q` 的方块交换数据，
    连同 `V₁` 上的恒等收敛态射及其有界 ESS 数据，
    可由方块数据构造。 -/
theorem essComposition_from_square {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {E₁ E₃ E₄ : SpectralSequence C ω} {ω' : Type w}
    {A₁ A₃ A₄ : ω' → C}
    {F₁ : Filtration A₁} {F₃ : Filtration A₃} {F₄ : Filtration A₄}
    {conv₁ : Convergence E₁ A₁ F₁}
    {conv₃ : Convergence E₃ A₃ F₃} {conv₄ : Convergence E₄ A₄ F₄}
    (cmp : ConvergenceMorphism conv₁ conv₃)
    (cmg : ConvergenceMorphism conv₃ conv₄)
    (cmq : ConvergenceMorphism conv₁ conv₄)
    (bnd₁ : F₁.IsBounded) (bnd₃ : F₃.IsBounded) (bnd₄ : F₄.IsBounded)
    (extp : BoundedExtensionSS conv₁ conv₃ cmp bnd₁ bnd₃)
    (extg : BoundedExtensionSS conv₃ conv₄ cmg bnd₃ bnd₄)
    (extq : BoundedExtensionSS conv₁ conv₄ cmq bnd₁ bnd₄)
    (_abutment_comm : ∀ (k' : ω'), cmp.aMap k' ≫ cmg.aMap k' = cmq.aMap k')
    (m l : ℤ) (kx kz kw : ω)
    (_hp_rel : ESSRelation extp m kx kz)
    (_hg_rel : ESSRelation extg l kz kw) :
    ∃ (idCm : ConvergenceMorphism conv₁ conv₁)
      (_idExt : BoundedExtensionSS conv₁ conv₁ idCm bnd₁ bnd₁),
    (∀ (k : ω), idCm.eMap k = 𝟙 _) ∧ (∀ (k' : ω'), idCm.aMap k' = 𝟙 _) := by
  refine ⟨{
    eMap := fun _ => 𝟙 _
    aMap := fun _ => 𝟙 _
    filtration_compat := F₁.fcId
    reindex_eq := rfl
    iso_compat := fun k => by
      simp only [Category.id_comp, Filtration.transportGraded_self, Category.comp_id,
        F₁.inducedAssocGradedMap_id (conv₁.reindex k).1 (conv₁.reindex k).2] },
    BoundedExtensionSS.mk' conv₁ conv₁ _ bnd₁ bnd₁, fun _ => rfl, fun _ => rfl⟩
/-! ### Boundary transfer -/

/-- Boundary transfer under the commutativity square: an element in the
    ESS boundary of the q-differential maps to an element in the ESS boundary
    of the g-differential under appropriate conditions. -/
theorem essCommutativity_boundary_transfer {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {E₁ E₂ E₃ E₄ : SpectralSequence C ω} {ω' : Type w}
    {A₁ A₂ A₃ A₄ : ω' → C}
    {F₁ : Filtration A₁} {F₂ : Filtration A₂}
    {F₃ : Filtration A₃} {F₄ : Filtration A₄}
    {conv₁ : Convergence E₁ A₁ F₁} {conv₂ : Convergence E₂ A₂ F₂}
    {conv₃ : Convergence E₃ A₃ F₃} {conv₄ : Convergence E₄ A₄ F₄}
    (sq : HomotopyCommSquare conv₁ conv₂ conv₃ conv₄)
    (n : ℤ) (kw : ω) :
    Nonempty (sq.extq.essBoundary n kw ⟶ sq.extg.essBoundary n kw) := by
  sorry
/-! ### ESS page functoriality under commutativity -/

/-- The ESS page at level n is functorial: the page map induced by the commutativity
    square respects composition of convergence morphisms at each ESS page. -/
theorem essCommutativity_page_functorial {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {E₁ E₂ E₃ E₄ : SpectralSequence C ω} {ω' : Type w}
    {A₁ A₂ A₃ A₄ : ω' → C}
    {F₁ : Filtration A₁} {F₂ : Filtration A₂}
    {F₃ : Filtration A₃} {F₄ : Filtration A₄}
    {conv₁ : Convergence E₁ A₁ F₁} {conv₂ : Convergence E₂ A₂ F₂}
    {conv₃ : Convergence E₃ A₃ F₃} {conv₄ : Convergence E₄ A₄ F₄}
    (sq : HomotopyCommSquare conv₁ conv₂ conv₃ conv₄)
    (r : ℤ) (_hr : 0 ≤ r)
    (_hp_degen : E₁.DegeneratesAt r)
    (_hg_degen : E₃.DegeneratesAt r)
    (n : ℤ) (k₁ k₂ : ω)
    (φ : sq.extf.essDiff n k₁ k₂ ⟶ sq.extg.essDiff n k₁ k₂)
    (ψ : sq.extf.essDiff (n + 1) k₁ k₂ ⟶ sq.extg.essDiff (n + 1) k₁ k₂)
    (d_f : sq.extf.essDiff n k₁ k₂ ⟶ sq.extf.essDiff (n + 1) k₁ k₂)
    (d_g : sq.extg.essDiff n k₁ k₂ ⟶ sq.extg.essDiff (n + 1) k₁ k₂) :
    φ ≫ d_g = d_f ≫ ψ := by
  sorry
/-- 检测相容性所需的分量投影：把余核投影从 `reindex₄ k` 的 gr 对象
    沿指标相等 `reindex_eq` 搬到 `reindex₂ k` 的 gr 对象。
    端点显式写出（而非隐藏于 eqToHom 的证明项中），使调用方
    `rw`/`show` 重写时无需猜测 eqToHom 的类型。 -/
noncomputable def detectionGradedProj {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {E₂ E₄ : SpectralSequence C ω} {ω' : Type w}
    {A₂ A₄ : ω' → C} {F₂ : Filtration A₂} {F₄ : Filtration A₄}
    {conv₂ : Convergence E₂ A₂ F₂} {conv₄ : Convergence E₄ A₄ F₄}
    (cmq : ConvergenceMorphism conv₂ conv₄) (k : ω) :
    F₄.associatedGraded (conv₄.reindex k).1 (conv₄.reindex k).2 ⟶
      F₄.associatedGraded (conv₂.reindex k).1 (conv₂.reindex k).2 :=
  eqToHom (by rw [cmq.reindex_eq])

/-- 检测相容性所需的 gr 同构转移：conv₂ 的收敛同构与 cmq 的 gr 诱导映射复合，
    等于 eMap、conv₄ 的收敛同构、指标传输的复合（`iso_compat` 的搬运形式）。
    证明：把 `detectionGradedProj` 展开为 `transportGraded`，即 `iso_compat`。 -/
theorem detectionGradedProj_compat {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {E₂ E₄ : SpectralSequence C ω} {ω' : Type w}
    {A₂ A₄ : ω' → C} {F₂ : Filtration A₂} {F₄ : Filtration A₄}
    {conv₂ : Convergence E₂ A₂ F₂} {conv₄ : Convergence E₄ A₄ F₄}
    (cmq : ConvergenceMorphism conv₂ conv₄) (k : ω) :
    (conv₂.iso k).hom ≫
        Filtration.inducedAssocGradedMap cmq.aMap cmq.filtration_compat
          (conv₂.reindex k).1 (conv₂.reindex k).2 =
      cmq.eMap k ≫ (conv₄.iso k).hom ≫ detectionGradedProj cmq k := by
  show (conv₂.iso k).hom ≫
        Filtration.inducedAssocGradedMap cmq.aMap cmq.filtration_compat
          (conv₂.reindex k).1 (conv₂.reindex k).2 =
      cmq.eMap k ≫ (conv₄.iso k).hom ≫
        F₄.transportGraded (congrFun cmq.reindex_eq k).symm
  exact (cmq.iso_compat k).symm

/-- The detection set data is compatible with the commutativity square maps. -/
theorem essCommutativity_detection_compat {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {E₁ E₂ E₃ E₄ : SpectralSequence C ω} {ω' : Type w}
    {A₁ A₂ A₃ A₄ : ω' → C}
    {F₁ : Filtration A₁} {F₂ : Filtration A₂}
    {F₃ : Filtration A₃} {F₄ : Filtration A₄}
    {conv₁ : Convergence E₁ A₁ F₁} {conv₂ : Convergence E₂ A₂ F₂}
    {conv₃ : Convergence E₃ A₃ F₃} {conv₄ : Convergence E₄ A₄ F₄}
    (sq : HomotopyCommSquare conv₁ conv₂ conv₃ conv₄)
    {T : C} (k : ω) (y : T ⟶ (E₂.ssData k).eInfty)
    (yrep : DetectionSet conv₂ k y) :
    ∃ (z : T ⟶ (E₄.ssData k).eInfty),
      ∃ (x : T ⟶ Subobject.underlying.obj
          (F₄.F (conv₄.reindex k).1 (conv₄.reindex k).2)),
      Detects conv₄ z x := by
  sorry
/-- Commutativity is preserved under ESS page transition: if the commutativity
    relation holds at page n, it holds at page n+1 (assuming no new crossings). -/
theorem essCommutativity_page_transition {ω : Type w} [AddCommGroup ω] [DecidableEq ω]
    {E₁ E₂ E₃ E₄ : SpectralSequence C ω} {ω' : Type w}
    {A₁ A₂ A₃ A₄ : ω' → C}
    {F₁ : Filtration A₁} {F₂ : Filtration A₂}
    {F₃ : Filtration A₃} {F₄ : Filtration A₄}
    {conv₁ : Convergence E₁ A₁ F₁} {conv₂ : Convergence E₂ A₂ F₂}
    {conv₃ : Convergence E₃ A₃ F₃} {conv₄ : Convergence E₄ A₄ F₄}
    (sq : HomotopyCommSquare conv₁ conv₂ conv₃ conv₄)
    (n : ℤ) (ky kw : ω)
    (_hq_rel_n : ESSRelation sq.extq n ky kw)
    (_hg_rel_n : ESSRelation sq.extg n ky kw) :
    Nonempty (sq.extq.essDiff n ky kw ⟶ sq.extg.essDiff n ky kw) := by
  sorry
end KIPBase.SpectralSequence
