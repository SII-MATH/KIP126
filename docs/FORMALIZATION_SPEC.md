# KIP126 Formalization Architecture and Contracts

## 0. 文档职责与权威顺序

本文档只记录 KIP126 中跨模块、长期稳定的形式化架构和语义合同。它不再重复
Lean Blueprint 的数学节点，也不再维护 Roadmap 的阶段计划。

各类信息的权威来源如下：

1. [`PROJECT_BOUNDARY.md`](../PROJECT_BOUNDARY.md) 规定项目范围、信任边界、
   非目标和最终验收条件；
2. 当前 Lean 源码规定已经实现的类型、声明和依赖；
3. [`blueprint/src/content.tex`](../blueprint/src/content.tex) 及其章节规定数学
   陈述、证明计划、`\uses` 依赖、来源和完成标记；
4. 本文档规定这些声明跨模块实现时必须遵守的架构和语义约束；
5. [`ROADMAP.md`](ROADMAP.md) 规定实施顺序和阶段完成条件；
6. 实时进度和下一项工作维护在项目的 Multica wiki issue 中。

若本文档中的示意名称与已编译 Lean 声明不一致，以 Lean 声明为准并修订本文档。
本文档中的代码形状只有在明确标记为现有声明时才是可调用 API；其他代码形状仅是
非规范示意，不得据此假定某个声明已经存在。

本文档不维护：

- AIM paper 的逐声明清单；该清单由 Blueprint 的稳定 label、`\lean` 和 coverage
  章节表达；
- 定理级依赖图和证明草图；它们属于 Blueprint；
- Stage 0--7 或当前里程碑；它们属于 Roadmap 和 Multica wiki；
- 每个 `.lean` 文件的目标目录树；实际模块树由仓库源码给出。

## 1. 全局记号与页面约定

### 1.1 分级

所有需要平移或负 suspension degree 的分级使用整数。核心坐标约定是：

```text
Bidegree  = (s,t)
Tridegree = (s,t,w)
stem      = t-s
```

经典 Adams 微分的位移为 `(r,r-1)`，synthetic Adams 微分的位移为
`(r,r-1,0)`，extension spectral sequence 微分的位移为 `(n,n)` 或
`(n,n,0)`。第三个 synthetic 坐标始终保留；经典类进入 synthetic 页时必须通过
显式 regrading/transport，而不是靠注释约定。

有限页和无穷页必须通过可审计的页面类型或分支表达。不得对 `∞` 做自然数减法，
也不得把散落的 `Nat.sub` 当成页面算术。需要 `r ≥ 2` 的公式必须在类型或假设中
保留该范围。

### 1.2 AIM page convention

项目采用 AIM 的 predecessor 下标：显示页为

```text
E_r = Z_(r-1) / B_(r-1),  r ≥ 2.
```

对显示的 `d_r` 取同调后才得到下一页 `Z_r/B_r`。从 filtered complex 的
`E_0` 或其他页编号进入 AIM convention 时，必须使用显式 reindexing；不得通过
重命名隐藏偏移。

### 1.3 状态和来源

数学节点的完成状态只在 Blueprint 中维护：

- `\leanok` 表示陈述或证明已由对应 Lean 声明实现；
- `\mathlibok` 表示已在锁定的 Mathlib 版本中核验；
- `\notready` 表示仍是计划义务。

本文档不复制节点状态。外部事实即使已有可靠来源，也不是 `\leanok` 的项目证明。

## 2. 架构层和依赖方向

项目分为六个职责层：

- **Core**：与 Kervaire、classical 或 synthetic 领域无关的过滤、复形、谱序列
  适配和收敛证据；
- **Classical**：classical Adams、Ext、extension SS、crossing 和 page extension；
- **Synthetic**：synthetic context、`ν`、`λ`、quotient、synthetic Adams、
  rigidity 和 synthetic ESS；
- **Comparison**：不同分级间的 reindex、classical--synthetic comparison 及
  `λ/ρ/δ` compatibility；
- **External**：来源、locator、显式结果/证据包装、source inventory 和 claim
  ledger；
- **Kervaire**：typed computation input、共同解释数据、near-126 归约和条件性
  几何结论。

数学依赖方向必须保持：

```text
Kervaire → Comparison → Classical / Synthetic → Core
     ↘ External ←───────────────────────────────┘
```

`External` 只提供显式参数和可审计元数据，不得反向定义 Core 数学。Core 不得导入
Classical、Synthetic、Comparison 或 Kervaire。共享结构只有在两侧出现真实用例后
才进入 Core；领域专用的 `Z/B/E∞`、Ext、`λ` 或 Kervaire 数据不得为了复用方便而
抽象成失去语义的通用字段。

## 3. Core 合同

### 3.1 唯一的通用谱序列对象

通用谱序列直接使用锁定 Mathlib 中的
`CategoryTheory.SpectralSequence C c r₀`。项目不得创建第二个同义 wrapper、
平行 record 或把旧项目的 `SSData` 迁入为共同内核。

页的 source/target degree、微分平方为零和 page passage 由 Mathlib 的
homological complex 与相邻页同调同构表达。`Z/B`、`E∞`、乘法、Leibniz 规则和
detection 不是所有谱序列的强制字段；需要它们的 concrete 构造应单独提供呈现和
定理。

### 3.2 过滤和 filtered complex

递减过滤以 graded object 上的 subobject 表达。associated graded 通过相邻过滤
层 inclusion 的 cokernel 构造。exhaustive、eventually zero、bounded、complete、
separated 等端点性质必须是独立谓词或 witness，不能塞入每个 filtration 的定义。

filtered morphism 和 filtered-complex morphism 必须诱导 associated-graded map，
并证明 differential compatibility、identity 和 composition。filtered complex 到
spectral object/spectral sequence 的桥必须显式给出 exactness、page 和 endpoint
所需数据；不得从任意 filtered complex 无条件宣称强收敛。

### 3.3 Stable-homotopy context

稳定同伦基础采用满足论文所需操作和定律的抽象 context，不在本项目构造完整的
stable infinity-category 模型。context 只暴露实际需要的 spectrum、suspension、
homotopy class/group、cofiber/distinguished triangle、smash、homology 和 Adams
filtration 接口。

context 的定律必须是有明确语义的结构字段或带来源的显式输入。不得在领域模块中
临时添加项目 `axiom`，也不得用过强的无结构字段一次性假设待证结论。

## 4. Classical 与 extension 合同

### 4.1 Classical Adams

Classical 层负责 Steenrod algebra/comodule、bigraded Ext、Adams tower、页、
收敛和 detection。低层代数与一般构造在 Lean 中证明；高 stem 的具体群、微分、
乘法和永久性通过带 locator 的外部输入提供。

对一般 spectra `X,Y`，规范结构是 external pairing
`E_r(X) ⊗ E_r(Y) → E_r(X ∧ Y)`，且 `E_r(X)` 是 sphere sequence 的 module。
只有球谱或显式携带 unital multiplication 的 ring spectrum 才有 internal
multiplication。不得从任意 Adams spectral sequence 推出内部乘法或单位元。

### 4.2 Extension spectral sequence

对 map `f : X → Y` 的 extension spectral sequence 必须是一个 concrete
`CategoryTheory.SpectralSequence` 构造，明确其 index、shape、起始页、
`E_0` presentation 和 abutment。paper-specific 的 extension、detection、
essentiality、inessentiality 和 crossing 定义建立在该具体构造之上，不扩张通用
谱序列 record。

检测目标是 coset/谓词而非唯一代表元。所有把 page-level 关系提升到代表元的定理
必须携带准确的 no-crossing 条件；不得用自然性、定义相等或任意选择的代表元替代
该条件。具体定理、反例和 proof-only dependency 由 Blueprint 维护。

## 5. Synthetic endpoint 与 normalized-lift 合同

Synthetic 层必须显式区分三类 endpoint：

1. 有限 `λ^r` quotient，且公式的合法范围包含 `r ≥ 2`；
2. 指数一的 special-fiber edge interface；
3. 未截断的 `νX`/无穷 endpoint。

三类情况不能靠零下标约定互相外推。`λ` 乘法必须保留 source suspension 和 weight
shift；reduction `ρ` 保持 weight；无穷 endpoint 的 quotient/inclusion 公式必须
单独证明。finite 与 infinite `δ`/ESS 证明也必须分支，不能把 `∞` 代入有限公式。

Classical--synthetic comparison 应通过最小的 reindexed/heterogeneous map 表达，
并验证实际需要的 page shape、differential degree 和 convergence compatibility。
不得在两个无关的项目 record 之间手写逐字段翻译来冒充 comparison。

normalized cofiber 必须携带一个 tagged exactness case、互斥 filtration pattern、
相应的 homology exactness，以及一次选定的 lifted triangle 和 component equalities。
同一证明中使用的 normalized maps 必须来自这一个 chosen triangle。任意其他 full
lift 即使只差 `λ`-torsion，也不能静默继承相同的 cofiber equivalence。

## 6. Page-extension 与 inverse-limit 合同

`(f,E_r)`-extension 是 normalized synthetic map 的 finite-page reduction 所产生的
特定 ESS 关系，不是新的 classical spectral sequence。它必须保留：

- finite 与 infinite page 的不同 typing；
- source/target 的 `Z` membership；
- target coset 和较短微分造成的 indeterminacy；
- crossing 的实际、较短且 essential witness；
- map filtration `e(f)` 及全部 grading shift。

有限页 restriction/stretching 必须给出精确的 first-obstruction 或 loss
certificate，记录首次失败页、cycle difference、较短 extension 和完整 target
coset。逐页存在解不自动给出 `E∞` 解。进入无穷页必须给出 coherent solution
tower，或给出足以消除 `lim¹` obstruction 的 surjectivity/Mittag--Leffler 证据，
再与 `λ`-adic completeness 组合。

Generalized Leibniz、Mahowald 和 page-stretching 的完整陈述、范围、回归例和依赖图
只在 Blueprint 中维护。本文档只规定它们不得丢失 page、grading、coset、crossing
和同一个 lifted-triangle 的约束。

## 7. Provenance 和显式输入合同

### 7.1 Proposition-bearing wrappers

文献定理通过 `ExternalResult P`，计算、表格和有限证据通过
`ExternalEvidence P` 进入。二者都包含 proposition-bearing value 与 `SourceRef`；
evidence 还包含 method 和可选 artifact metadata。它们始终是定理的显式参数，
不得注册为项目 `axiom`、无来源 `opaque` 或隐藏 global instance。

实际字段以 `KIP126/External/Provenance.lean` 为准。本文档只规定以下语义：

- locator 表示去哪里核验，不自动证明命题；
- artifact path、digest 和 version 是复现元数据，不自动证明命题；
- external wrapper 的 proof/evidence 字段是条件性输入，不是项目内部推导。

### 7.2 三层验证

验证职责分为：

1. `Valid`：可复用结构字段的局部有效性；
2. `InventoryValid`：source-relative 路径、locator 和 digest 形状等 Lean 可检查
   条件；
3. `CataloguedExternalResult` / `CataloguedExternalEvidence`：把实际 wrapper
   绑定到 canonical claim root、trust class 和 locator。

Lean 不读取工作区文件。artifact membership、`required=true`、文件存在性、
canonical kind 和 SHA-256 equality 由 `reference/source-inventory.json` 与
`scripts/check_source_inventory.py` 负责。单个来源的获取状态以其
`source-status.json` 为准；claim root、owner 和依赖以
`KIP126.External.Claims.externalClaimLedger` 为准。

claim ledger 是元数据，不能由 root 自动生成外部数学命题。一个 family-level root
可以覆盖多个 Blueprint evidence nodes，因此不得假设每个 Blueprint label 都有一条
一一对应的 claim row。

## 8. Near-126 shared-context 合同

near-126 与几何终点必须由一个有序、dependent 的主输入组合，而不是由多个互不
相干的全局包提供。该输入至少保持以下关系：

1. 一个 stable context；
2. 建立在同一 stable context 上的 synthetic context；
3. 恰好一个选定的 sphere classical Adams sequence；
4. 恰好一个建立在同一 sphere 上的 synthetic Adams sequence；
5. sphere object、unit/product、grading 和 class-name transport 的 coherence；
6. 全部 literature inputs 均 typed over 上述同一组 contexts/sequences；
7. context-independent 的 raw computation catalogue；
8. 把 raw catalogue 解释到同一个 classical sequence 的 classical coherence；
9. 依赖该 classical interpretation 和指定 rigidity/Bockstein inputs 的 synthetic
   coherence；
10. 使用同一个 stable context 和同一个 classical sphere sequence 的 geometric
    input。

sphere coherence 本身不得包含 rigidity、differential、convergence 或 computation
结论；这些结论必须来自各自命名的 Lean proof 或 external input。raw computation
catalogue 不包含 context 对象；classical/synthetic coherence 在后续字段中解释 raw
IDs、maps 和 classes。

Browder criterion 必须谈论与 permanent-cycle theorem 完全相同的 selected classical
sphere sequence。若对象相等不是 definitional equality，应保存并使用显式 transport，
不得选择第二个 sequence 后假定二者相同。

主定理的精确自然语言陈述和定理级 dependency cone 由 Blueprint 的 near-126 与
conditional-geometry 章节维护。

## 9. Catalogue 完整性与解释合同

Appendix 和 Lin 数据必须是 finite、typed、versioned 的 raw catalogue，并通过
`ExternalEvidence` 携带来源。至少保持以下不可弱化的完整性条件：

- 论文 Appendix 的全部 401 个非空行和 9 个零带均编码，而非只编码主证明所需行；
- 12 个表具有稳定 table ID、spectrum、stem 和 filtration range；
- 49 个 CW spectra 及其指定 `E_2` pages 具有稳定且无重复的 ID；
- 180 个 maps 具有 typed source、target、degree、relation ID 和 locator，且两端均
  属于 spectrum catalogue；
- initial `d_2`、三条 manual inputs、propagated differential/extension/disproof 和
  unresolved finite candidates 均有独立记录；
- outgoing 与 incoming display 若表示同一 differential，必须共享 relation ID；
- `Permanent`、incoming differential、outgoing differential、unknown 和有限歧义
  不得折叠成同一状态；
- 每条记录均可定位到 AIM paper、LWXMachine archive/Zenodo 或对应来源，不能只写
  “Lin computation”。

raw strings 或 archive rows 只有通过 classical/synthetic catalogue coherence 后，
才能成为指定 page 上的数学对象。解释层必须保存 sums、products、module actions、
map actions、compositions、cofiber keys、suspensions、`λ/ρ` operations 和 detection
所需的 typing/compatibility。不得从名称相同推断对象相同。

具体表格、字段、evidence nodes 和 near-126 使用点只在 Blueprint 与实际 Lean/JSON
schema 中维护；本文档不复制逐行清单。

## 10. 证明与外部输入边界

| 内容 | Lean 内部责任 | 显式输入责任 |
| --- | --- | --- |
| 过滤、associated graded、filtered maps/complexes | 定义与一般定理 | 无 |
| spectral-object adapter 与抽象收敛接口 | 构造与传输 | concrete convergence hypotheses |
| classical/synthetic Adams 和 ESS calculus | 一般结构、比较与逻辑推导 | 基础 category/rigidity 及具体页数据 |
| crossing、page extensions、Leibniz、Mahowald | 定义、范围与定理证明 | 具体 Ext/differential/extension facts |
| Appendix/Lin catalogues | schema、typing、完整性与解释 | 每个具体计算/表格 proposition |
| near-126 contradiction 与 permanent-cycle reduction | 全部逻辑组合 | 文献结论和有限计算证据 |
| Kervaire 几何结论 | 条件性组合 | Browder、低维存在、HHR 等外部结果 |
| open questions | 仅声明 proposition | 不得作为假设 |

任何进入主依赖锥的项目定理都必须通过 axiom audit，不含 `sorryAx`、项目自定义
`axiom` 或未声明的外部根。

## 11. 设计审查清单

新增或修改实质性声明时，PR 应能回答：

1. 数学节点、稳定 label 和完整 `\uses` 是否已在 Blueprint 中维护？
2. 当前 Lean 声明的 namespace、参数和 degree/page convention 是否与节点一致？
3. 该概念属于 Core 还是领域层，是否造成重复谱序列或重复 Adams/ESS 模型？
4. finite、exponent-one 和 infinite endpoint 是否被正确区分？
5. crossing、coset、representative indeterminacy 和 grading shift 是否完整保留？
6. 外部事实是否通过 proposition-bearing wrapper 和精确 locator 显式传入？
7. computation raw data 与 classical/synthetic interpretation 是否保持分层？
8. 是否复用了同一个 selected context、sphere sequence 和 lifted triangle？
9. 是否增加了对应 regression/negative regression？
10. 是否运行相关构建、Blueprint declaration check、source checker 和 axiom audit？

实施阶段、当前前沿和下一项工作不在本文档更新；分别查阅 Roadmap、Blueprint 和
Multica wiki。
