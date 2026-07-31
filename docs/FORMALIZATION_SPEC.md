# KIP126 Formalization Specification

## 0. 文档定位

本文档是 KIP126 的**形式化规格**。它把

* `docs/ROADMAP.md` 中的共享内核路线；
* `PROJECT_BOUNDARY.md` 中的信任边界；
* Lin–Wang–Xu, *On the Last Kervaire Invariant Problem*（以下简称 AIM
  paper，源文件为 `aimpaper/main.tex`、`aimpaper/112.tex`）

改写成可以逐模块落地的 Lean 声明、依赖和验收条件。

这不是论文的逐字翻译，也不是把论文中的每一个叙述性 Remark 都变成
`theorem`。凡是数学上会被后续证明使用的内容，都必须在本蓝图中找到一个
可检查的接口；凡是论文、程序或表格提供的事实，都必须显式携带来源并作为
条件输入传入。最终包固定使用 Lean 4.32.2 / mathlib v4.32.2。

规范名称采用 `ExternalResult` / `ExternalEvidence`。`PROJECT_BOUNDARY.md`
中历史上出现的 `Exterresult` / `Exterevidence` 仅是旧拼写，不应成为新的
API。

## 1. 最终目标与信任边界

### 1.1 要交付的结论

在显式的文献结果和计算证据参数下，Lean 应给出：

1. `h₆²` 在经典二进 Adams 谱序列中是 permanent cycle；
2. 存在维数 126 的光滑 framed 流形，其 Kervaire invariant 为 1；
3. 这类维数恰为 `2, 6, 14, 30, 62, 126`。

第 2、3 项是 Browder/Pontryagin 型外部结果与第 1 项组合得到的**条件定理**，
不声明为无条件的全局事实。

### 1.2 不得越过的边界

* 不构造完整的稳定 ∞-范畴模型；使用一个能表达论文所需操作和公理的抽象
  stable-homotopy context。
* 不重做 Lin 程序的高 stem Ext 计算。程序输出、Appendix 表格和既有论文结论
  是带 provenance 的输入。
* 不把外部事实写成项目级 `axiom`、`sorry`、`admit`、无来源的 `opaque` 或隐藏
  在全局 instance 中的假设。
* 不把定义性相等当成论文所需的同构。例如 synthetic ESS 不能通过把两个
  record 定义成同一个 record 来“证明”相等。
* 开放问题只声明为 `Prop`；不作为假设，也不伪装成已解决定理。

### 1.3 基本可信性规则

```lean
structure SourceRef where
  source  : String
  locator : String
  note    : Option String := none

structure ExternalResult (P : Prop) where
  proof : P
  ref   : SourceRef

structure ExternalEvidence (P : Prop) where
  evidence : P
  ref      : SourceRef
  method   : String
```

`ExternalResult` 用于文献中的定理或已接受的基础接口，
`ExternalEvidence` 用于程序输出、表格行、有限计算和检测结论。二者都是
普通的显式参数；没有任何构造器可以把它们自动提升为项目公理。主定理的
`#print axioms` 结果只允许 Lean 基础机制的公理。

## 2. 统一索引和记号

所有分级都使用整数，避免页面平移和负的 suspension degree 被迫转换为
自然数。

```lean
abbrev Stem       := ℤ
abbrev Filtration := ℤ
abbrev Weight     := ℤ
abbrev Bidegree   := Filtration × ℤ       -- (s,t)
abbrev Tridegree  := Filtration × ℤ × Weight -- (s,t,w)

inductive PageLevel
  | finite (r : Nat) -- 论文中的 E_r，约定 r ≥ 0 或由谓词限制 r ≥ 2
  | infinity
```

在实现中页面算术（如 `r - n`）必须使用一个经过审计的 `PageLevel` API，
而不是散落的 `Nat.sub`。所有“页面至少为 `r`”和“`E_∞`”的条件都通过该
API 表达。

论文中的三个微分位移是规范常量：

```lean
classicalAdamsShift  (r : Nat) : Bidegree  := (r, r - 1)
syntheticAdamsShift  (r : Nat) : Tridegree := (r, r - 1, 0)
classicalEssShift    (n : Nat) : Bidegree  := (n, n)
syntheticEssShift    (n : Nat) : Tridegree := (n, n, 0)
```

第三 synthetic 权重按 AIM paper 的约定保存：经典类 `x ∈ E₂ˢ,ᵗ` 放在
`(s,t,t)`，`λ` 的度为 `(0,0,-1)`，三角平移是 smash `S^{1,0}`。

## 3. 目录和依赖层

下列路径是规范目标。当前仓库中的同名文件是占位入口；迁移时不得创建第二套
平行的 `SpectralSequence`、`AdamsSS` 或 `ExtensionSS` 定义。

```text
KIP126/
├── Core/
│   ├── Algebra/
│   │   ├── Graded.lean              -- 分级对象、分级群/模、商和线性组合
│   │   ├── Filtered.lean            -- 过滤、严格/弱过滤映射
│   │   └── Exact.lean               -- chain complex、同调、exact、cofiber 的代数接口
│   ├── Stable/
│   │   ├── Context.lean              -- 抽象 stable-homotopy context
│   │   ├── Triangle.lean             -- distinguished triangle、长 exact 序列
│   │   └── AdamsFiltration.lean      -- 类和映射的 Adams filtration
│   └── SpectralSequence/
│       ├── Basic.lean                -- Mathlib SpectralSequence 的直接导入边界
│       ├── FilteredComplex.lean      -- 必要时的 filtered-complex 适配器
│       ├── Convergence.lean          -- 项目专用的收敛接口
│       ├── Morphism.lean             -- 必要时的异分级/reindexed morphism
│       └── Extension.lean            -- 必要时的一般 filtered extension SS
├── Classical/
│   ├── Adams/
│   │   ├── Basic.lean                -- 经典 Adams SS 与微分度
│   │   ├── Ext.lean                  -- Steenrod algebra、Ext、乘法、h_j
│   │   └── Convergence.lean
│   ├── ExtensionSS/
│   │   ├── Basic.lean                -- f-ESS
│   │   ├── Crossing.lean             -- crossing/no-crossing
│   │   └── Naturality.lean           -- square、复合、exactness
│   ├── PageExtensions/
│   │   ├── Basic.lean                -- (f,E_r)-extension
│   │   ├── Crossing.lean
│   │   └── Stretching.lean
│   └── FExtension.lean
├── Synthetic/
│   ├── Category.lean                 -- Syn_HF、ν、smash、suspension
│   ├── Sphere.lean                   -- S^{s,w}、λ、λ^n-quotient
│   ├── Adams/
│   │   ├── Basic.lean                -- 三分级 synthetic Adams SS
│   │   ├── Bockstein.lean
│   │   └── Rigidity.lean
│   ├── ExtensionSS/
│   │   ├── Basic.lean                -- synthetic f-ESS
│   │   ├── LambdaRho.lean            -- λ^n、ρ 的 ESS
│   │   ├── Delta.lean                -- δ 的 ESS 及经典微分编码
│   │   └── Crossing.lean
│   ├── PageExtensions.lean
│   └── Toda.lean
├── Comparison/
│   ├── Reindex.lean                  -- (s,t,w) ↦ (s,t) 与 weight forget
│   ├── ClassicalSynthetic.lean       -- ν、λ-inversion、δ/ρ compatibility
│   └── Rigidity.lean
├── External/
│   ├── Results.lean                  -- 文献结果的结构化输入
│   ├── Evidence.lean                 -- 计算/表格证据
│   ├── AppendixData.lean              -- 全部 Appendix 行的编码
│   └── SourceInventory.lean           -- 每个根的 source/locator 账本
└── Kervaire/
    ├── Assumptions.lean              -- Browder、BJM/BX、tmf 等输入包
    ├── Near126.lean                  -- 126 终局数据与逻辑归约
    └── MainTheorem.lean              -- h₆² 与 Kervaire 条件结论
```

依赖方向只能向下：

```text
Kervaire → Comparison → Classical/Synthetic → Core
             ↘ External (只提供显式参数，不反向定义 Core)
```

## 4. Core：可复用的形式化内核

### 4.1 分级和过滤

当前实现直接采用 `CategoryTheory.GradedObject I C`，即 $I$-indexed 的对象族，
不另建 project-local graded-object record。`KIP126.Core.Algebra.Filtration A`
对每个 $(s,i)$ 给出子对象
$F^sA_i\subseteq A_i$，并要求 $F^{s+1}A_i\subseteq F^sA_i$。它在任意范畴中
定义；在 Abelian category 中，`associatedGraded` 用 cokernel 定义
$F^sA_i/F^{s+1}A_i$，`FilteredMorphism` 诱导各关联分次上的映射。

端点条件不被塞进过滤的定义字段：`IsExhaustive`、`IsEventuallyZero`、
`IsBoundedBelow`、`IsBoundedAbove` 与 `IsBounded` 是单独的谓词/结构。这使未来的
convergence 接口能明确选择它真正需要的假设，而不会把有限性或分离性错误地强加给
所有 filtered object。

### 4.2 谱序列

共同内核不定义新的 `SpectralSequence C ι`。规范的通用对象是 mathlib
v4.32.2 的 `CategoryTheory.SpectralSequence C c r₀`：它为每个 $r\ge r_0$
给出 shape 为 `c r` 的 homological complex，并给出该页同调与下一页之间的明确同构。
项目中的通用声明直接使用这一类型，不通过 `abbrev`、wrapper 或平行 record 改名。

因此，differential 的 source/target degree 和 `d \circ d = 0` 由 page complex
及其 `ComplexShape` 表示，page passage 由相邻页同调同构表示。`Z/B`、$E_\infty$、
乘法和 Leibniz 规则不是这一定义的强制字段：若某个 filtered-complex 或 extension
构造需要它们，应以该构造的专用呈现和定理提供，而不倒灌进通用内核。

`FilteredComplex.lean` 现以 Mathlib `ChainComplex` 为底层：其额外字段仅断言微分保持
过滤，并构造关联分次上的微分，证明其平方为零。它尚不声称从任意 filtered complex
自动构造出一个谱序列；这一步需要 concrete page shape 与构造数据。
`Convergence.lean` 只在下游确定强收敛、完备性、分离性及
$E_\infty \cong \operatorname{gr}_F(\text{abutment})$ 的精确需求后，再定义相应证据
接口。

### 4.3 异分级态射

阶段 2 的关键缺口是 mathlib 现有同-index-type 态射以外的 comparison。只有在一个
具体 classical--synthetic comparison 的 page map、shape map 和 degree convention 都已
确定后，才定义最小的 reindexed/heterogeneous morphism 接口；该接口直接以 mathlib 的
`CategoryTheory.SpectralSequence` 为输入，不能要求一套新的 `Z/B/E∞` 基础 record。

至少支持 `(s,t,w) \mapsto (s,t)`、`(s,t,w) \mapsto (s,t,t-w)` 和 suspension 平移的
实际用例。比较层不得再手写两套 project-local spectral-sequence record 的逐字段翻译。

### 4.4 Stable-homotopy context

`Core.Stable.Context` 是抽象接口，不是稳定 ∞-范畴的模型。它要暴露：

* 2-complete connective finite spectra、映射和同伦类；
* `π_n`、加法、复合、smash、suspension/desuspension；
* cofiber、distinguished triangle、长 exact 序列；
* HF₂-homology 与 Adams filtration；
* maps on filtered homotopy groups；
* naturality 所需的同伦交换图。

所有操作的同伦/三角公理都放在 context 的字段中，或由明确的
`ExternalResult` 提供；不在领域文件里散落新公理。

## 5. Classical Adams 层

### 5.1 代数对象和页

`Classical.Adams.Ext` 需要形式化：

* `𝔽₂`、Steenrod algebra `A`（至少论文所用模块/余模接口）；
* graded modules、cobar/Ext 接口；
* Ext 的加法和乘法；
* `h j : ExtClass`，其度 `(1, 2^j)`；
* `h_j²`、`h_i h_j` 和论文中使用的有限乘法关系；
* Adams `E₂`、`Z_r`、`B_r` 的统一表示；
* `d_r : (s,t) ↦ (s+r,t+r-1)`；
* 强收敛到 `π_{t-s}` 及“被某 Ext 类检测”的关系。

`h_j` 的一般定义和低层代数关系属于 Lean；高 stem 的具体群维数、差分和
永久性来自 `ExternalEvidence`。

### 5.2 Section 2：一般 f-ESS

对 `f : X ⟶ Y`，`ExtensionSS` 必须在具体的目标范畴、index type、page shape 和起始页
都确定后，构造一个 `CategoryTheory.SpectralSequence C c r₀`；它不能返回项目本地的通用
谱序列 record。其精确 Lean 签名暂不固定，直到该 concrete construction 的输入与
abutment 已经确定。

在该构造上，`ZESS`、`BESS`、`FExtension`、`Essential`、`Inessential` 和 `DetectedBy`
是计划中的 paper-specific 概念：它们的 source、target、length 与 detection relation
须以该 extension construction 提供的专用 $E_\infty$ 呈现来表述，而不是假设通用
谱序列对象本身存有 `Z/B/E∞` 字段。

`ExtensionSS` 的 `E₀` 必须是
`E∞(X) ⊕ E∞(Y)`，abuts 到
`ker (π_* f) ⊕ coker (π_* f)`；ESS 微分度为 `(n,n)`。检测类用集合/谓词
表示，不能把检测代表元选成唯一元素。

下列声明必须从内核和强收敛证明出来（对应 AIM paper 的标签）：

* `extension_iff_detected`（Proposition 2.1(1)）；
* `inessential_iff_higher_extension` 和同源两个 extension 的比较
  （Proposition 2.1(2–3)）；
* `adamsFiltration_map_zero_before`（`AF(f)=k ⇒ d_i^f=0`，`i<k`）；
* `Crossing`、`NoCrossingAt`、`NoCrossing`，包括“允许先取非 essential crossing
  再缩短为 essential crossing”的语义；
* `noCrossing_iff_uniform_detection` 及其三条特例；
* `commutativeSquare_extension`（Theorem 2.2）；
* 四个 square/identity/composition corollaries：
  `extension_naturality`、`extension_shift`、`extension_composition`、
  `ess_map_of_stable_pages`；
* `zero_composite_makes_permanent` 和
  `exact_middle_makes_boundary`；
* cofiber triangle 作为上述两个命题的标准实例。

论文中的 η-ESS 例子（`d₁(h₅d₀)=h₁h₅d₀`、`d₂(Δh₁g)=d₀l`、
`d₃(h₁g₂)=Δh₂c₁`、`d₄(h₃²h₅)=Mh₁`，以及 crossing/inessential 例子）
作为 `Classical.ExtensionSS.Regression` 的有限回归数据；具体 Ext 值由
带 locator 的证据提供。

## 6. HF₂-synthetic 层

### 6.1 Synthetic context

定义 `SynHF` 的抽象 context 和 functor：

```lean
structure SyntheticContext extends StableContext where
  SynSpectrum : Type
  nu          : Spectrum → SynSpectrum
  lambda      : ∀ X, Shift (0, -1) (SynSpectrum X) ⟶ SynSpectrum X
  ...
```

必须表达：

* 稳定、对称幺半 synthetic category；
* `ν : Sp → Syn_HF`、smash、suspension；
* synthetic sphere `S^{s,w} := Σ^(s-w) ν(S^w)`；
* `λ : S^{0,-1} ⟶ S^{0,0}` 与 `X/λ^n`；
* `λ`-inversion generic fiber 和 mod-`λ` special fiber；
* `ρ_{n,m}`、`δ_{n,m}` 的 distinguished triangles；
* `ν` 对 cofiber 的条件保持性（HF₂-homology short exact criterion）。

Pstrągowski、BHS 等关于 category、cofiber、rigidity 和 Bockstein 的结果
通过 `ExternalResult` 字段注入；形式化的 comparison/ESS 推理仍在 Lean 中
完成。

### 6.2 Synthetic Adams SS 与 rigidity

`Synthetic.Adams.Basic` 固定：

```lean
SynE₂ (ν X) (s,t,w) ≅ ClassicalE₂ X (s,t) ⊗ 𝔽₂[λ]
d_r : (s,t,w) ↦ (s+r, t+r-1, w)
```

以下接口/结果必须可被主证明调用：

* `syntheticAdamsSS` 及强收敛；
* `lambdaLinear`；
* `rigidity_classical_to_synthetic`：
  `d_r^cl x = y ↔ d_r^syn x = λ^(r-1)y`；
* `lambdaBocksteinIso`；
* `Einf_syn_nu`：
  `E∞^{s,t,w}(νX) ≅ Z∞^{s,t}(X)/B_{1+t-w}^{s,t}(X)`（`t ≥ w`，否则 0）；
* `Einf_syn_quotient`：
  `E∞(νX/λ^r) ≅ Z_{r-t+w}/B_{1+t-w}`（`0 ≤ t-w < r`，否则 0）；
* `λ`、`ρ` 诱导映射对应 quotient/inclusion；
* Adams filtration `k` 的 synthetic lift `\tilde f`；
* distinguished triangle 的 `\hat f`、`e(f) ∈ {0,1}` 和 cofiber equivalence。

低 stem 的例子（`d₂(h₄)=h₀h₃²`、`d₃(h₀h₄)=h₀d₀`及
`λ^r`-truncation）作为 rigidity 回归测试，而不是主定理的隐藏假设。

## 7. Synthetic ESS、δ 编码和 classical page extension

### 7.1 Synthetic f-ESS

对保持 `(s,t,w)` 的 synthetic map 定义
`SynExtensionSS f`，其微分为 `(n,n,0)`，其 `E₀`/abutment 为
`E∞ X ⊕ E∞ Y` / `ker π_{*,*} f ⊕ coker π_{*,*} f`。

Section 2 的所有 ESS 定义、检测、essentiality、crossing、naturality
都要通过一个 weight-generic 定理复用，而不是复制一份 synthetic 专用证明。

### 7.2 λ、ρ、δ 的特殊 ESS

为 `n < m ≤ ∞` 固定三角：

```text
Σ^(0,-n) νX/λ^(m-n) --λ^n--> νX/λ^m --ρ--> νX/λ^n
                                      --δ--> Σ^(1,-n) νX/λ^(m-n)
```

必须实现并证明：

* `lambda_rho_ESS_only_d0`：`λ^n` 和 `ρ` 的 ESS 只有 `d₀`，且无 crossing；
* `delta_ESS_formula`（AIM Proposition 4.2）：
  若经典 `d_r(x)=y`，则
  * `r ≥ n+1` 时 `d_r^δ(x)=λ^(r-n-1)y`；
  * `r < n+1` 时 `d_r^δ(λ^(n+1-r)x)=y`；
  * 超出 `m` 的幂次为 0；
* 幂次推广 `d_r^δ(λ^a x)=λ^(a+r-n-1)y`；
* δ-ESS 与 classical Adams differential 的等信息性。

### 7.3 Classical crossing 与 `(f,E_r)`-extension

定义：

```lean
def ClassicalCrossing (n r : Nat) (d : AdamsDifferential) : Prop
def PageExtension (f : X ⟶ Y) (r : PageLevel) where
  source : Z_(r-1) X
  target : Z_(r-1-n+e(f)) Y
  length : Nat
  relation : d_n^(f,E_r) source = target
  essential : Prop
```

`(f,E_r)`-extension 的规范语义是 synthetic
`\hat f_{r-1}`-ESS 中的
`d_n(x)=λ^(n-e(f))y`；目标是 coset，并携带
`B_{1+n-e(f)}` 与较短 synthetic 微分造成的 indeterminacy。

必须形式化：

* `pageExtension_iff_synthetic`；
* `pageExtension_crossing_iff_synthetic`（AIM Proposition 5.2）；
* E₂ 无 crossing 的 degree reason；
* `E∞`-extension 反映到 classical f-ESS；
* `pageExtension_mono`（`E_r` 向较早页面退化）；
* `pageExtension_stretch` 及其 no-crossing 反命题；
* `extension_stretch_to_Einf`（AIM Corollary 6.3）。

回归样例至少包括：

* `f = ν : S³ → S⁰` 的 `d₁^{f,E₂}(h₅)=h₂h₅`；
* `d₂^{f,E₃}(h₀h₄²)=h₀p` 及拉伸到 `E∞`；
* `f=2` 的 `d₂^{f,E∞}(h₀h₃²)=0` 和被 `d₁(d₀)=h₀d₀` crossing；
* `e₁/h₁t` 与 `h₀h₃h₅/h₀²x` 的 classical crossing 例子。

## 8. 推广规则

### 8.1 Generalized Leibniz Rule

定理的输入必须使用结构体承载，避免调用点丢失页面和 crossing 条件：

```lean
structure LeibnizInput where
  f : X ⟶ Y
  n r m l : Nat
  bounds : 2 ≤ n ∧ n ≤ r ∧ e f ≤ m ∧ m ≤ n - 2 + e f ∧ e f ≤ l
  x : Z_(r-1) X
  y : Z_(r-1-m+e f) Y
  x∞ : Z∞ X
  y∞ : Z∞ Y
  dx  : AdamsDiff r x x∞
  fxy : PageExtension f n r x y
  fxy∞ : PageExtension f l infinity x∞ y∞
  noCrossing : ...

theorem generalized_leibniz (h : LeibnizInput) :
  AdamsDiff (r + l - m) h.y h.y∞
```

实现中要保留 AIM 的五个条件，特别是：

1. `d_r(x)=x∞`；
2. `d_m^(f,E_n)(x)=y`；
3. `d_l^(f,E∞)(x∞)=y∞`；
4. 前两者至少一个满足相应 no-crossing；
5. 第三个满足 no-crossing。

`d₃(h₂h₅)=h₀p` 是正向回归测试；`f=2`、忽略 no-crossing 会导出错误
`d₃(h₀h₄)=0` 的例子必须作为 negative regression，确保定理不能被错误地
弱化。

### 8.2 May smash lemma

在抽象 stable context 中形式化四个 cofiber 三角 smash 成的交换图。输入
`a ∈ π_n(X∧Z')`、`b ∈ π_n(Y∧Y')` 在 `π_n(Y∧Z')` 中相等，结论是存在
`c ∈ π_n(Z∧X')`，并满足 AIM Lemma 6.1 的两个边界/像相等。

### 8.3 Generalized Mahowald Trick

以 `MahowaldInput` 结构体表达：

* 三角 `X --f→ Y --g→ Z --h→ ΣX`；
* `e(f)+e(g)+e(h)=1`；
* `r=n+m+l` 及 `n₁,m₁,l₁` 的页面边界；
* `d_l^(h,E_{r'}) \bar x=x`；
* `d_r(\bar x)=\bar y`；
* 前两者至少一个满足 no-crossing；
* `d_m^(g,E_{m₁+2}) y=\bar y`。

结论必须精确保留：

```text
x ∈ Z_(n+m+e(h))(X)
d_n^(f,E_(n+m+1+e(h)))(x) ≡ y mod B_(r')
```

`S³ --ν→ S⁰ → S⁰/ν → S⁴` 是第一个实例，产生
`d₂^{ν,E₃}(h₀h₄²)=h₀p`；第二个实例是
`d₃^{[h₂],E₄}(h₁x₁₂₁,₇)=h₀²x₁₂₅,₉,₂`。

### 8.4 不同页面之间的延拓

实现 `pageExtension_mono`、`pageExtension_inessential_criterion`、
`pageExtension_stretch`，准确保留 AIM Proposition 6.4 和 Corollary 6.5
中的 `a,b,e(f)` 范围和 `Z/B` indeterminacy。

## 9. 126 终局的声明和依赖

### 9.1 输入包

`Kervaire.Assumptions` 不声明公理，而定义一个待传入的输入包：

```lean
structure MainInput where
  classicalSphere : ClassicalAdamsSS S0
  syntheticSphere : SyntheticAdamsSS (ν S0)
  browder : ExternalResult (BrowderCriterion ...)
  bjm_bx : ExternalResult (BJM_BXCriterion ...)
  rigidity : ExternalResult (Rigidity ...)
  priorSynthetic : ExternalResult (PriorSyntheticInterfaces ...)
  priorExt : ExternalResult (PriorExtFacts ...)
  tmfDetection : ExternalEvidence (TmfDetectionFacts ...)
  appendix : AppendixEvidence
  lin : LinComputationEvidence
```

`MainInput` 的字段可以按实现拆成多个包，但所有主定理都必须显式接收它们。

### 9.2 论文中的终局对象

以下命名必须在 `Kervaire.Near126` 中稳定下来：

```text
h₆²
θ₅ = [h₅²]
η = [h₁]
h₁h₄x₁₀₉,₁₂
x₁₂₆,₈,₄ + x₁₂₆,₈
h₀²x₁₂₄,₈
g⁴Δh₁g
x₁₂₃,₉ + h₀x₁₂₃,₈
h₀²x₁₂₅,₉,₂
h₁x₁₂₁,₇
h₆Md₀
h₅x₉₁,₁₁
Δe₁ + C₀ + h₀⁶h₅²
```

这些名字不是无类型的字符串；实现时每个名字都绑定到 spectrum、stem、
filtration、classical/synthetic page 和来源 locator。

### 9.3 必须形式化的逻辑链

1. `BJM_BXCriterion`：
   `h₆²` permanent iff 某个 `θ₅` 满足
   `λ η θ₅² = 0 ∈ π_{125,125+4}(S^{0,0})`。
2. `FactTheta5AF`：
   * `x₁₂₆,₈,₄+x₁₂₆,₈` 存活到 `E₆`；
   * `h₁h₄x₁₀₉,₁₂` permanent，唯一潜在 killer 是
     `d₆(x₁₂₆,₈,₄+x₁₂₆,₈)` 或 `d₁₂(h₆²)`；
   * `h₀²x₁₂₄,₈` permanent；
   * `g⁴Δh₁g` 是 `(25,125+25)` 中唯一存活到 `E₅` 的类。
3. `possible_h62`：
   精确表达论文 Proposition 7.2 的互斥二分：
   `h₆²` permanent，或 `d₁₂(h₆²)=h₁h₄x₁₀₉,₁₂`；
   第二种等价于三个条件：
   `d₆(x₁₂₆,₈,₄+x₁₂₆,₈)=0`、`θ₅²` 被
   `λ⁶h₀²x₁₂₄,₈` 检测、以及对应的 η-extension。
4. `equiv_state4`、`equiv_state5`：
   将“存在某个代表元”强化为“所有代表元”，并保留 filtration
   indeterminacy。
5. `lemma_x1239`：
   在 `S^{0,0}/λ⁹` 中构造 `α₁`、`α₂`、`α₃`，证明
   `λ³ηα₁ = λ³[h₀²x₁₂₄,₈]+λ⁶α₂`、
   `ηα₂=λα₃` 和 `λ³α₁[h₀]=0`。
6. `lemma_toda2ext`：
   在条件 (3)、(5') 下，合成 Toda bracket
   `⟨λ³α₁,[h₀],η⟩` 非零且由 `λ⁴h₀²x₁₂₅,₉,₂` 检测。
7. `corollary_2ext125`：
   `[\lambda⁴h₀²x₁₂₅,₉,₂]·[h₀] =
   λ⁶[h₁h₄x₁₀₉,₁₂] ≠ 0`（在 `S/λ⁹`）。
8. `lemma_nuext125`：
   `[\lambda⁴h₁x₁₂₁,₇]·[h₂] =
   λ[\lambda⁵h₀²x₁₂₅,₉,₂]`（在 `S/λ⁹`）。
9. `state5_false`：
   若条件 (3) 成立，则条件 (5) 不成立；证明中必须形式化
   `S^{0,0}/(\lambda[h₂]) ≃ ν(S⁰/ν)`、低页差分排除和
   `S⁰/ν` 的 `h₁h₄x₁₀₉,₁₂[0]` 在 `r≤5` 不被杀。
10. `h6_sq_permanent`：
    由 `state5_false` 和 `possible_h62` 得到 `h₆²` permanent。

其中具体的 Ext 存活性、Lin 程序差分、tmf 检测和 `S⁰/ν` 表格行是
`ExternalEvidence`；“由这些事实推出矛盾/推出 permanent”必须是 Lean 证明。

### 9.4 最终定理接口

```lean
theorem h6_sq_permanent
    (I : MainInput) :
    PermanentCycle I.classicalSphere (h 6 * h 6)

theorem kervaire_126
    (I : MainInput) :
    ∃ M : FramedSmoothManifold, M.dimension = 126 ∧ M.kervaireInvariant = 1

theorem kervaire_dimensions_exact
    (I : MainInput) (n : Nat) :
    KervaireOneDimension n ↔
      n = 2 ∨ n = 6 ∨ n = 14 ∨ n = 30 ∨ n = 62 ∨ n = 126
```

第二、第三个定理应通过 `I.browder` 与已知维数的外部
`ExternalResult`/`ExternalEvidence` 参数化，而不是把 Browder、Mahowald–Tangora、
BJM、HHR 的结论编写为本项目 axiom。

`Question`/`StrongKervaireQuestion` 只保留：

```lean
def ExistsOrderTwoTheta6 : Prop := ...
def ExistsTheta5WithSquareZero : Prop := ...
```

## 10. Appendix 和 Lin 计算账本

### 10.1 统一行结构

Appendix 的每一行都必须被编码，即使它没有进入最后的证明。建议结构如下：

```lean
inductive TableStatus
  | permanent
  | differential (length : Nat) (target : Option ClassExpression)
  | preimage (length : Nat) (target : ClassExpression)
  | unknown

structure AppendixEntry where
  table       : String
  spectrum    : SpectrumId
  stem        : Int
  filtration  : Nat
  className   : String
  bidegree    : Bidegree
  status      : TableStatus
  ambiguity   : Option String
  ref         : SourceRef

structure AppendixEvidence where
  entries : List AppendixEntry
  complete : ∀ table, table ∈ appendixTableNames → AllRowsEncoded table entries
```

`d_r^{-1}`（被某 differential hit）和 `Permanent` 不能折叠为同一个状态；
未决目标（`?`）必须保留为 `unknown` 或带有限候选集合；“possibly …”必须
保存为显式的 `AmbiguousSum`，不能擅自选一个目标。

### 10.2 必须覆盖的表格

`appendixTableNames` 至少包含 AIM paper 中的全部表：

| 表名 | spectrum/stem 范围 |
|---|---|
| `Cnu126` | `S⁰/ν`，stem 126，`9 ≤ s ≤ 14` |
| `S122` | `S⁰`，stem 122，`s ≤ 25` |
| `S123` | `S⁰`，stem 123，`s ≤ 25` |
| `S124.13` | `S⁰`，stem 124，`13 ≤ s ≤ 25` |
| `S124.12` | `S⁰`，stem 124，`s ≤ 12` |
| `S125.20` | `S⁰`，stem 125，`20 ≤ s ≤ 25` |
| `S125.19` | `S⁰`，stem 125，`s ≤ 19` |
| `S126.11` | `S⁰`，stem 126，`11 ≤ s ≤ 25` |
| `S126.10` | `S⁰`，stem 126，`s ≤ 10` |
| `S127.21` | `S⁰`，stem 127，`21 ≤ s ≤ 25` |
| `S127.20` | `S⁰`，stem 127，`10 ≤ s ≤ 20` |
| `S127.9` | `S⁰`，stem 127，`s ≤ 9` |

表格外还必须编码：

* 所有 CW spectrum 的 `E₂` 页；
* 它们之间的 map；
* 各指定 spectrum 的 `d₂`；
* 三条人工输入：
  `d₅(h₀²⁴h₆)=h₀²P⁶d₀`、
  `d₆(h₀⁵⁵h₇)=h₀²x₁₂₆,₆₀`、
  `d₃(v₂¹⁶)=β⁵g`（tmf）；
* 程序给出的 propagated differential、extension 和 disproof；
* Appendix 中的未决/部分排除结论，例如
  `d₄(x₁₂₆,₂₁)` 的有限候选式。

每一条记录的 `SourceRef` 必须能定位到 `aimpaper/main.tex` 表标签、
`reference/LWXMachine/` 的程序/输出或对应论文/Zenodo 记录。不能只写
`"Lin computation"`。

## 11. 形式化/外部化分类表

| 内容 | Lean 中证明 | 显式外部输入 |
|---|---:|---:|
| 分级、过滤、谱序列 page/Z/B/E∞ | 是 | 否 |
| filtered complex → SS 与收敛 | 是（在抽象假设下） | 具体 convergence hypotheses |
| f-ESS 定义、检测、essential/crossing | 是 | 具体 Adams 数据 |
| square/复合/exactness ESS 定理 | 是 | stable context 公理字段 |
| synthetic category 的存在性和 rigidity | 接口 + 使用 | Pstrągowski/BHS `ExternalResult` |
| λ/ρ/δ ESS 公式 | 是（依赖 synthetic 接口） | rigidity/Bockstein 输入 |
| `(f,E_r)`、crossing、page stretching | 是 | 具体 Ext 页 |
| Generalized Leibniz Rule | 是 | 无（仅所需 SS 假设） |
| May smash lemma | 是/或抽象三角接口证明 | 既有三角公理可由外部结果注入 |
| Generalized Mahowald Trick | 是 | synthetic 三角/页面数据 |
| Appendix 具体行和 Lin 输出 | 否 | `AppendixEvidence` |
| tmf detection、低 stem 群和 prior paper theorem | 否 | `ExternalResult`/`ExternalEvidence` |
| `h₆²` permanent 的逻辑归约 | 是 | 上述所有必要证据 |
| Kervaire 流形结论 | 是（条件组合） | Browder/Pontryagin 输入 |
| 开放问题 | 仅声明 Prop | 不允许假设 |

## 12. 分阶段实现和验收

### Stage 0：账本

完成 `SourceInventory`、表格 schema、外部结果清单和 module owner；扫描旧来源
中的 `sorry`/`admit`/`axiom`，只提取语义已审计的定义和证明。

### Stage 1：Core

在 Lean 4.32.2 下独立构建直接导入 mathlib 的
`CategoryTheory.SpectralSequence` 边界，并以最小例子验证 page、微分和 page passage。
只为已确认的缺口实现 filtered-complex 适配器或 convergence 接口；此阶段不得导入
Classical 或 Synthetic 领域，也不得迁入旧的 `SSData` 作为通用对象。

### Stage 2：异分级

在 concrete comparison 用例确定后，实现最小的异分级 comparison 接口，验证
`(s,t,w)` 的忘记 weight、平移及实际所需的 page/differential/convergence 相容性。
若某个专用构造使用 `Z/B/E∞` 呈现，其相容性在该构造层验证。

### Stage 3：Classical

接入 Ext/Adams、classical convergence、f-ESS、crossing、F-extension 和
Section 2 全部定理。`ess₂` 不得退化为原 ESS 的定义相等。

### Stage 4：Synthetic

接入 synthetic context、sphere、λ quotient、synthetic Adams、Bockstein、
rigidity、synthetic ESS 与 δ 公式。

### Stage 5：Comparison/rules

实现 classical/synthetic comparison、`(f,E_r)`、Generalized Leibniz、
May lemma、Generalized Mahowald、page stretching。

### Stage 6：Endpoint

编码全部 Appendix 行，注入 near-126 证据，完成
`possible_h62`、`state5_false`、`h6_sq_permanent` 和两个 Kervaire 条件结论。

### Stage 7：审计

* `lake build` 在干净环境通过；
* `rg -n '\b(sorry|admit|axiom)\b' KIP126` 无项目占位；
* 每个 Appendix 表行可枚举且有来源；
* 对 `h6_sq_permanent`、`kervaire_126`、
  `kervaire_dimensions_exact` 运行 `#print axioms`；
* 只允许 Lean 基础公理，不允许项目自定义公理；
* 删除旧 namespace shim 和重复内核。

## 13. AIM paper 声明清单

下面的清单是从 `aimpaper/main.tex` 的有效（非注释）声明逐项建立的迁移
索引。Lean 名称是建议名；迁移时可以调整 namespace，但不能删除对应的
数学内容。`example` 和 `remark` 若在后续证明中使用，作为同一行所标示的
regression/evidence；纯叙述性 remark 不单独生成声明。

### Introduction

| AIM locator | Lean 目标 | 分类 |
|---|---|---|
| `thm:main` | `kervaire_126` | 条件定理 |
| 无 label 的 corollary | `kervaire_dimensions_exact` | 条件定理 |
| `thm:browder` | `BrowderCriterion` | `ExternalResult` |
| `thm:h62` / `thm:126survives` | `h6_sq_permanent` | Lean 证明 |
| `cor:2line` | `adams_two_line_survivors` | Lean 证明 + 外部 differential data |
| `que:2theta6` | `ExistsOrderTwoTheta6` | open `Prop` |
| `que:theta5sq` | `ExistsTheta5WithSquareZero` | open `Prop` |

### Section 2：A Spectral Sequence for Extensions

| AIM locator | Lean 目标 |
|---|---|
| `def:ess` | `ExtensionSS` |
| `nota:6fb333a2` | `ZESS` / `BESS` / quotient differential notation |
| `def:768fba8a` | `FExtension`, `Essential`, `Inessential` |
| `prop:8154e6f1` | `extension_iff_detected`, `inessential_iff_higher_extension` |
| `def:98skj23` | `Crossing`, `NoCrossingAt`, `NoCrossing` |
| `prop:i8r47oe` | `noCrossing_iff_uniform_detection` |
| `thm:4114f70c` | `commutativeSquare_extension` |
| `cor:0012nik` | `extension_naturality` |
| `cor:166dc180` | `extension_shift` |
| `cor:290d35ce` | `extension_composition` |
| `cor:e7b20ae2` | `ess_map_of_stable_pages` |
| `cor:aed3d1a4` | `zero_composite_makes_permanent` |
| `prop:cfe810af` | `exact_middle_makes_boundary` |
| unlabelled η example | `Classical.ExtensionSS.Regression.eta` |

### Section 3：HF₂-synthetic spectra

| AIM locator | Lean 目标 | 分类 |
|---|---|---|
| `prop:1f7950df` | `nu_cofiber_iff_HF2_exact` | `ExternalResult` |
| Definition 4.6 | `syntheticSphere` | interface |
| Definition 4.27 | `lambda`, `lambdaQuotient` | interface |
| `thm:rigid` | `synthetic_rigidity` | `ExternalResult` + adapter |
| `thm:17e90ac0` | `lambdaBocksteinIso` | `ExternalResult` + adapter |
| `prop:30e8b746` | `Einf_syn_nu` | `ExternalResult` + Lean transport |
| `prop:59f111f` | `Einf_syn_quotient` | `ExternalResult` + Lean transport |
| `prop:ef21f9bc` | `syntheticLift_of_filtration` | `ExternalResult` |
| `prop:41561db2` | `nu_triangle_lift` | `ExternalResult` |
| `not:fhat` | `eMap`, `hatMap`, `cofiber_hatMap` | definition/interface |
| `exam:synEinfty` | synthetic 14-stem regression | evidence-backed regression |

### Section 4：Synthetic Extensions

| AIM locator | Lean 目标 |
|---|---|
| `not:deltaandrho` | `lambdaRhoDeltaTriangle` |
| `prop:9770ae6e` | `lambda_rho_ESS_only_d0` |
| `prop:6de7d130` | `delta_ESS_formula` |
| `cor:2a636737` | `delta_ESS_lambda_multiples` |
| `rmk:qvoewfj` | `delta_classical_equivalence` |
| `def:classicalcrossdiff` | `ClassicalCrossing` |
| `prop:cross-dr-En` | `classicalCrossing_iff_deltaCrossing` |
| `nocrossE2` | `E2_no_crossing` |
| `exam:classcrossdiff` | classical crossing regression |

### Section 5：Extensions on a classical \(E_r\)-page

| AIM locator | Lean 目标 |
|---|---|
| `def:6c076a33` | `PageExtension` / `PageEssential` |
| `def:fErextess` | `PageExtensionCoset` |
| `def:41d51149` | `PageCrossing` |
| `prop:cross-f-Er` | `pageCrossing_iff_syntheticCrossing` |
| unlabelled proposition after examples | `EinfPageExtension_to_classicalESS` |
| `exam:extonEn` | ν and 2 page-extension regressions |
| `exam:Ercross` | page-crossing regressions |

### Section 6：Generalized rules

| AIM locator | Lean 目标 |
|---|---|
| `thm:e73f481e` | `generalized_leibniz` |
| `exam:Leibnizyes` | positive Leibniz regression |
| `exam:Leibnizno` | no-crossing negative regression |
| `rem:chuaerror` | `ChuaRuleCounterexample` (证明不成立的条件记录) |
| `lem:452d218c` | `may_smash_boundary_lemma` |
| `thm:158d451a` | `generalized_mahowald` |
| `exam:Mahowald` | ν/cofiber Mahowald regression |
| `prop:dec738d3` | `pageExtension_mono` |
| `cor:dfc6043e` | `pageExtension_stretch` |
| `exam:stretchext` | E₃ 到 E∞ stretch regression |

### Section 7：126 终局

| AIM locator | Lean 目标 | 分类 |
|---|---|---|
| `thm:bjmbx` | `BJM_BXCriterion` | `ExternalResult` |
| `rem:theta5choice` | `theta5_choice_independence` | 由外部 order/filtration facts 证明 |
| `fact:theta5sqAF` | `FactTheta5AF` | `ExternalEvidence` |
| `prop:possibleh62` | `possible_h62` | Lean 归约 |
| `prop:state5false` | `state5_false` | Lean 证明 |
| `lem:equistate4` | `equiv_state4` | Lean 证明 |
| `lem:equistate5` | `equiv_state5` | Lean 证明 |
| `fact:x1239` | `FactX1239` | `ExternalEvidence` |
| `lem:x1239` | `lemma_x1239` | Lean 证明 |
| `fact:h02x1259` | `FactH02X1259` | `ExternalEvidence` |
| `lem:toda2ext` | `lemma_toda2ext` | Lean 证明 |
| `rem:h02x1259` | `h02x1259_conditional_permanence` | Lean consequence |
| `cor:2ext125` | `corollary_2ext125` | Lean 证明 |
| `fact:h1x1217` | `FactH1X1217` | `ExternalEvidence` |
| `lem:nuext125` | `lemma_nuext125` | Lean 证明 |
| `fact:stem122` | `FactStem122` | `ExternalEvidence` |

### Appendix

`sec:App` 的 prose、Lin program 输入、12 张表、`Cnu126` 的低页排除和所有
`Permanent`/`d_r`/`d_r⁻¹`/`?`/`possibly` 行，统一迁移为第 10 节的
`AppendixEvidence`。图 `112.tex` 不作为图片公理导入；它显示的 near-126
关系必须以带分级的 `AppendixEntry`、`AdamsDifferential` 或
`PageExtension` 重新编码。

## 14. 每个新声明的强制模板

每次迁入一个论文声明时，提交必须同时包含：

1. 唯一 Lean 名称和所属模块；
2. 精确的 index/degree convention；
3. `proved`、`external-result`、`external-evidence` 或 `open-proposition`
   分类；
4. 若为外部输入，`SourceRef` 和 locator；
5. 依赖的 Core/Classical/Synthetic 声明；
6. 最小回归例或反例（特别是 no-crossing 条件）；
7. `#print axioms` 影响说明。

这样，蓝图既覆盖 AIM paper 的数学内容，也把每一个以后需要在 Lean 中实现、
审计和追责的边界固定下来。
