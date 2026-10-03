# 所选 §7 路线的 A(M) 陈述清单

合并 PR #139 远程更新后的联合审查见 [STAGED_INTERFACE_REVIEW.md](STAGED_INTERFACE_REVIEW.md)。本文件保留各自批次的范围和验证记录，不能据此宣称 M/A/C/T 已全部冻结。

本清单与 [M 的冻结范围](M_INPUT_FREEZE.md) 相同：LWX v2 Theorem 7.1，经
Proposition 7.8、7.9 及其实际调用的工具、Toda/Moss、Cν、tmf 路线。
**冻结的是输入的类型、数学含义、来源和适用条件；没有证明这些输入成立，
也没有构造满足它们的实际模型。** 不以导入所有参考文献代替依赖分析。

直接导入：`import KIP126.Challenge2.Route.Literature.Data`，不再经过单导入兼容入口。
接口位于 `KIP126/Challenge2/Route/Literature/Data.lean`：

```lean
KIP126.Literature.Route.Inputs D η L
KIP126.Literature.Route.A D η L  -- 历史兼容名：Nonempty (Inputs D η L)
KIP126.Literature.Route.Statements D η L B  -- 当前 A(M)，B 是同一组 Bindings
```

其中 `D : Kervaire.Route.Model H M Syn` 是已经冻结的同一个模型；这里局部变量
`M : MilnorCooperations H` 沿用旧 API 名称，并不是另一个项目数学背景。
`η` 属于该模型的实际 `BiHom 1 2 S00`；`L : TmfLabels H` 只命名实际球谱
E₂ 的 `g : E₂^(4,24)` 和 `Δh₁g : E₂^(9,54)`，其 CSV 识别仍属于 C(M)。
`g⁴Δh₁g : E₂^(25,150)` 由现有标准 cup product 构造，没有自由乘法字段。

原 `Inputs`/`A` 作为已应用结论的兼容 API 保留；它们包含内部比较的结果，
不等于新分离的纯来源 `Statements`。这些记录不选择默认实例或声明独立公理。
`Bindings.nuE2` 使用实际页映射，其定义暂依赖两条显式待证的 cycle/boundary
保持定理；来源记录本身没有隐藏证明占位。
`Inputs.differentialLift` 和 `Inputs.nuTriangle` 只是已证明的投影适配，
不是 BHS 或 Mahowald 的证明。

当前接线：根 `Challenge2.ModelBindings.route` 保存 `Bindings D η G`，把 realization
坐标、代数比较、May 的结构选择和来源适用条件与外部结论分开。
`LiteratureInterface.route` 保存这些绑定上的 `Statements D η G`；
`Statements.toInputs` 仅组装原参数化 API，不产生第二个见证。
模型来自同一个 Challenge1，η 和 tmf 标签来自同一个 Challenge2。
来源对象的 classical/tmf 结果分别由 `ClassicalSourceResults`、`TmfSourceResults` 陈述。
实际 lift 三角、May 带符号边界、Toda 二次运算、λ 核运输、Moss 收敛运输和 tmf 路线结论单独放在根 `Challenge2.routeApplication`，由 Interface
交付；它们不再作为 A(M) 的直接来源字段。`Statements.toInputs` 同时接收这两部分。
原始商代数 `QuotientAlgebraStructures` 不含所选 restriction/sphere-action 比较。

`TmfHigh125Detection` 保持“存在一个被指定类检测且 tmf 像非零”的消费结论。
来源适配还需显式证明该首项非零存活；不能由非零同伦像直接推断。
对任意同检测类的推广仍归 Main，保留消失线和过滤分离前提。
全部已择取设计、收尾接线和未完成证明见 [PR150 设计提取说明](PR150_SELECTED_DESIGN.md)。

## 输入内容与来源

下列路径相对于 `KIP126/Challenge2/Route/Literature/`；文献原文的本地路径、
SHA-256、稳定定位及每项分类另见同目录 `sources.json`（schema 2，分别记录来源结果、模型比较、内部应用和适配证明状态）。TeX label 优先于
可能随版本变化的行号。`MainPaper` 只用于确定消费点，不能证明 A(M)。

| 文件 / 声明 | 准确内容和条件 | 外部来源；论文消费点 |
| --- | --- | --- |
| `Classical.lean` / `Theta5Existence` | 标准 h₅² 非零永久存活，存在被它检测且 2θ=0 的经典 θ | BJM84，亦可用 Xu Corollary 1.3；§7 BX 判据、Moss |
| `Stem62ExponentTwo` | 实际经典 π₆₂ 的每个元素满足 α+α=0 | IWX 的完整 62-stem 计算；Lemma 7.16。不是从“存在一个二阶 θ”推出 |
| `Theta5FiltrationGap` | 两个经典 h₅² 检测的选择之差位于实际 AF≥6 子群 | IWX 62-stem 的 AF 2、6、8、10；Lemma 7.10 的经典输入 |
| `TwoDetection`、`HopfInput` | 真实 2、η、ν 的 h₀、h₁、h₂ 检测；η/ν 非零生存；同一个 synthetic η 与选定 normalized η 相等 | Adams 的低维 Hopf 类；BHS 低维计算。最后的相等是模型运输义务 |
| `BX.lean` / `BXDistinguishedInput` | **一个共同 θ** 上的原始有限判据、实际 total boundary δ₁(h₆²)=ληθ²、无限判据 | BX Proposition 7.19 及证明；LWX Theorem 7.3 的来源 |
| `Synthetic.lean` / `SyntheticInputs.lifts` | ν 保存三角 iff 完整同调短正合；正 AF 给出 λ 因子提升；同一三角的提升兼顾连接映射与 λ-torsion 比较 | Pstrągowski Lemma 4.23；BHS Lemma 9.15 及证明；LWX §3 |
| `FiniteLiftCriterion` | x∈Z_q iff x 沿实际 ρ 提升到 νX/λ^q；q>0，允许零及边界 | BHS A.1(1a–b)；有限页解释 |
| `BocksteinDifferential` | 可选择上述提升，使实际 δ_(q,q+1) 的第一商标签代表 d_(q+1)x | BHS A.1(1c)。目标 `(s+q+1,t+q)`；不是任意提升的精确 E₂ 等式 |
| `PermanentLiftCriterion` | 共同 Z∞ 代表 iff 存在 untruncated νX 提升 | BHS A.1(2) 与商塔比较；不要求类非零 |
| `DifferentialRigidity` | 同一 classical dᵣ(x)=y 与同一 synthetic dᵣ(λᵏx)=λ^(k+r−1)y 对应 | BHS A.8；LWX Theorem 3.6；r≥2，双向且保留实际页代表 |
| `EInftyInput` | νX、νX/λ^q 的 E∞ 公式，actual cycles/boundaries 商，λ/ρ 相容及共同 E₂ 标签对应 | BHS A.9/A.11；LWX §3。仅给抽象等价不够 |
| `E2WeightVanishing` | 在 shifted νX 的 w>t+a 区域 E₂=0；其余区域使用 M 已指定的 nuE2 | BHS A.8 的 E₂ 公式 |
| `RealizationKernelSourceResults` → `RealizationKernel` | 完整来源范畴中，所选对象的 inclusion 上的类经 λ-localization 为零 iff 被某个有限 λ 幂消去；再沿实际 completion adjunction 运输 | Pstrągowski telescope 和来源紧球面；`RealizationKernelBinding` 单列 λ 与 realization 比较，不假设 hypercomplete 球谱紧致 |
| `FiltrationLambda` | 在 s≥w−m 时，νX 中 AF≥s iff 为 λ^(m+s−w) 的倍数 | BHS `cor:tau-surj`；§7 的过滤估计。没有把某个 θ² 的过滤作为输入 |
| `Realization.lean` / `RealizationCoordinates` | 同一 realization 在双分次球上的比较；unit 与 λ 归一化显式固定 | Pstrągowski λ 反演的球面比较，实际模型运输 |
| `RealizationDetection.lifetime` | 永久 cycle 的每个提升：非零存活至 E_(r+1) ⇒ λ^(r−1) 倍非零 | BHS A.1(2a) |
| `.detection`、`.prescribed_lift` | 非零永久类的任意顶权重提升实现同一经典检测；指定被检测的经典类有相应提升 | BHS A.1(2b)、(3b) |
| `.boundary_lift` | 对于被 dᵣ 击中的永久 cycle，**存在某个**提升被 λ^(r−1) 消去 | BHS A.1(3a)；不要求每个提升都被消去 |
| `Algebra.lean` / `AlgebraInput` | 同一 tensor 的对称结构、同一 realization 的幺半结构；实际 S/λ^q 的相容交换代数；实际检测谱及其 ν 对象的交换代数 | Pstrągowski；BHSmot Appendices B/C；BX `cnstr:bock-maps`；tmf 的环谱结构 |
| `QuotientAlgebras`、`DetectorAlgebra` | unit 固定为实际商映射/Hurewicz map，ρ 保乘法，乘法扩张 M 已定义的 sphereAction | 上述代数定理的同伦范畴后果。不是新造另一种乘法，也不宣称 `MonObj` 构造了完整 E∞ 结构 |
| `May.lean` / `MaySourceResults` → `MayInput` | 固定 tensor exact/shift 见证，来源 pushpull 顶点与带负号边界；Interface 证明带符号的逐元素结论 | May 2001 TC3 pp.12–13、Lemma 4.6 p.14。无符号投影另需实际加法像满足 exponent two |
| `Moss.lean` / `MossSourceInput` → `MossInput` | 在来源 classical convergence 上给出条件结论，再沿 `ClassicalSourceBinding.convergence` 等式运输；同一 E₃ `<h₅²,h₀,B>` 中存在永久成员检测真实 `<θ,2,β>` 的一个成员 | Moss Theorem 1.2；Belmont–Kong 2021 Theorem 1.1/4.11 可核对；LWX Lemma 7.16 |
| `Toda.lean` / `TodaSourceResults` | 同一个 `[h₀]` 的第一商标签、λ[h₀]=2、[h₀]η=0 和低维不定性消失 | BHS `prop:syn-toda-range` (0)、(9) 及低维群。η² 的具体 Toda 隶属另属 `TodaApplication` |
| `.symmetric_two` | 若 θ∈π_(62,64) 且 2θ=0，则 λ²ηθ∈<2,θ,2> | Toda 1962 Theorem 3.6 的 symmetric-bracket 后果；IWX §6 `cor:2-symmetric` 核对“包含”约定；`TodaSecondaryComparison` 显式要求实际 star 运算、括号结论和 λ²η 乘积识别；运输仍是内部义务 |
| `Tmf.lean` / `TmfTheta5Vanishing` | 经典 θ₅ 经实际 detectorUnit 映为零 | BMQ Theorem 1.2、Figure 1.1 的 tmf 62-stem |
| `TmfHigh125Detection` | g⁴Δh₁g 非零生存；存在被它检测且经实际 unit 映为非零的经典类 | BMQ §7，κ̄⁴w 的 Hurewicz 结果；Prop. 7.8 |
| `TmfLowFiltration63` | 该 detector 的经典 E₂ 在 stem63、s≤0 为零 | BMQ §2 的 H_*tmf=(A//A(2))_* 及 change of rings；供上述零像的 synthetic 运输 |
| `Applicability.lean` / `Applicability` | Moss 的实际塔 residual injectivity；Cν 三条实际映射的 exponent=1,0,0、选定 normalized ν 的 h₂ 标签及其三角 distinguished | 外部结果到固定模型的应用/选择义务；不是某个 ν-extension 计算结论 |

Moss 输入保留：三个检测假设、两个零复合、完整 Massey 定义系统存在性、
两个 no-crossing 假设、residual-tower 条件。它不提供任何指定 Massey 值、
零不定性、具体 no-crossing 结果，也不说每个括号成员都永久。
这些局部验证仍由 C(M) 和论文推导完成。

## 来源结果与模型运输必须区别

A(M) 的来源对象由同一组 `Bindings` 关联到 D；来源陈述与内部运输分开，**不**宣称它们对任意抽象 `Model` 自动成立。
尤其应注意：

1. BHS A.1 原文的 E-nilpotent completeness、强收敛及正确 ν/Adams 解释，是
   将原文定理提供给所选模型的适用责任。这里要求其在选定完备对象上的精确
   特化，不另引入一个没定义的 `Complete : Prop` 来掩盖责任，也不推广到所有谱。
2. 文献给出的几何提升存在性，不自动等于 D 随意选择的 normalized map。
   `Applicability.nuCofiber` 显式要求两者相容；`exponent_sum` 已证明其前提
   可以形成。此绑定的证明/见证以后必须交付，不能仅用 Lemma 9.15 的名字填入。
3. synthetic Toda 中 suspension 增加 `(1,0)`。`<2,θ,2>` 的值在 `(63,64)`，
   因而应是 λ²ηθ。IWX 的 C-motivic τ 权重不被直接照抄为这里的 λ 权重。
   新类型直接使用已有 `Toda.Relation`、shift 和 sphereProduct。`TodaSourceResults` 的低维环关系不蕴含两条二次运算公式；后者必须由 `TodaSecondaryComparison` 交付。
4. 检测谱和 unit 必须作为 2-completed connective tmf 的实例供给。
   本包只导入路线实际消费的后果，不以一个“tmf”名字构造 tmf。
5. 同伦群按现有整数加法群使用，不能因为 E₂ 为 F₂ 向量空间就删掉 Toda 符号。
   Bockstein 的负号仅在 mod-2 E₂ 标签中消失。May 也保留负号；`may_boundary_projected_of_exponent_two` 只有在显式证明投影像 exponent two 后才去掉它。
6. `RealizationKernelSourceData` 区分完整来源范畴与所选完备模型，代表比较由 completion/inclusion adjunction 定义。来源有限幂核结论只运输到 `SyntheticObject` 闭包；不声称完备球面紧致，也不把有限 λ 幂消去改成单步 λ 消去。

来源审核状态：BHS、Pstrągowski、BX、Xu、IWX、BHSmot、BMQ 已核对仓库原文；
BMQ 的图表也作了视觉核对。May 作者 PDF 已在线核对。Moss 1970 原始扫描本
本次未取得，不能说已读过；用前于 LWX 的 Belmont–Kong v1 原文
Theorem 1.1/4.11、Definition 2.10 核对了所需结论和 crossing 方向。
Toda 原书没有本地核验副本，保留原始引用，同时明确标记通过 IWX §6 的原文
复述及 BHS 低维计算核对、向 synthetic 模型的运输尚未证明。
没有把这两项标为已完成原书证明核验。

## 完整性范围与未归入 A(M) 的内容

这是当前**选定证明路线的输入清单**，不是 LWX 全文参考文献清单。

| 依赖段 | 本包提供 | 留给后续证明/C(M) |
| --- | --- | --- |
| §3，解释 classical/synthetic 数据 | Pst/BHS 的提升、微分、E∞、实现、代数 | LWX 自己推导的公式与特殊化 |
| §4–6，扩张和新工具 | 同一对象、比较、May 边界、提升三角适用性 | Generalized Leibniz、Mahowald、stretching、no-crossing 推论 |
| Theorem 7.3、Remarks 7.4/7.5、Lemmas 7.10/7.11 | 原始 BX 的一个 θ，经典 θ/π₆₂/过滤缺口，BHS | λ 规范化、任意选择版本、synthetic 阶及选择无关性 |
| Proposition 7.8 | 上述输入及经典 tmf 后果 | `DetectorInjectiveAt D 125 130 15`、过滤估计、C₃/C₄/C₅ 与 d₁₂ 的等价 |
| Lemma 7.14 | 第一商、有限 λ 商、相容乘法、BHS | α₁/α₂/α₃ 的构造和所有局部等式 |
| Lemma 7.16、Corollary 7.18 | Moss、Toda、π₆₂ 的阶、真实 λ/乘法/商映射 | 指定 Massey 值、零不定性、排除低过滤候选、2-extension |
| Lemma 7.19 | Cν 真实三角及其模型适用性、标准 h₂ 标签 | Cν 的 d₃、胞腔标签、no-crossing 和 ν-extension |
| Proposition 7.9 的反证 | 同一 Cν、quotient/λ 操作及 BHS rigidity | 表中潜在微分的穷尽性、两候选的排除和最终矛盾 |
| T(M) | 标准 h₆²、现有同一内部谱序列（M 已定义） | 从上述 Main 命题推出它；未新增第二个 Final |

明确排除：

- CSV 基正确性、Lin 的 relations/basis、具体 proofs.db 结果仍属于 C(M)。
  未将“未知 d₅=0”“d₃ 的可能修正项=0”或含不定性的关系变成精确等式。
- LWX 的新工具及 Proposition 7.8/7.9 没有进入 A(M)。
- 经典 Toda coset/juggling、商映射/代表元传递等通用基础引理仍在 Def/内部证明。
- 不为原始 BX 的内部证明重复要求 BJM 的全部归纳论证；使用其精确结论即可。
- 不为本轮“接受 C(M) 的结果”路线导入机器证明重放需要的全部辅助谱、image-J
  或 Appendix 手工 tmf differential 等额外输入。
- Browder/HHR 的流形解释及非存在性用于论文引言的其他结论，不是当前唯一
  T(M)=h₆² 非零永久存活的依赖，故不放入此包。
- 本路线直接使用 BX 的无限判据。没有采用“任意有限提升 ⇒ 相容无限提升”，
  因而不额外索取无限 homotopy limit 或一个无来源的紧致性公理。

原有 56 行 claim ledger 服务历史原型、机器规则和其他目标，分类粒度不同；
**不能将它的行数视为本路线 A(M) 的完成度**。本包使用独立且可检查的来源清单，
不删除仍有其他消费者的历史接口。

## 原文中需要保留的归一化备注

LWX v2 Proposition 7.9 证明末尾写出 `S/(λ[h₂]) ≃ ν(Cν)`。
与同文 §3 Notation 3.19 的 `C(hat f) ≃ ν(Cf)` 及
`hat ν=[h₂] : S^(3,4)→S` 相比，这里的 λ 因子有归一化疑点。
本包不把该印刷等式作为外部输入，而要求实际 normalized Cν triangle。
后续反证只需“λ[h₂] 的倍数也是 [h₂] 的倍数，所以在 C(hat ν) 中为零”，
再用该三角的 ν(Cν) 识别即可。此调整不改变 T(M)、所用经典 Cν 或机器表。

## 分阶段使用和验证

第二阶段的证明显式接收 `(a : Inputs D η L)` 和独立的 C(M) 输入。
先用其字段证明模型上的选择无关性、工具、局部引理和两个 proposition，
再接现有 `permanent_of_propositions`。不要为省略参数添加全局实例。
之后构造实际 D、各文献运输证据和 C(M) 认证，是独立证明任务。

验收检查包括统一入口定向编译、`Checks/Kervaire/LiteratureBoundary.lean`
遍历新增命名空间的公理依赖、已有 M/Final 边界回归、来源文件 SHA/声明定位、
Blueprint 声明检查及 diff 空白检查。Lean 编译能检查类型和依赖，不能认证
文献的数学正确性或这个输入包确有见证。

2026-09-28 本地验收结果：

```text
lake build +KIP126 \
  KIP126.Checks.Kervaire.LiteratureBoundary \
  KIP126.Checks.Kervaire.RouteBoundary \
  KIP126.Checks.Kervaire.RouteFixedFinal \
  KIP126.Checks.Kervaire.ChoiceBoundary \
  KIP126.Checks.Interfaces.FoundationAndPaperTools
```

通过（3240 jobs，未改依赖版本或共享缓存）。新增 A(M) 命名空间的公理检查
通过，仅允许 Lean 的 `propext`、`Classical.choice`、`Quot.sound`。
既有基础设施中的 `sorry`/开发公理仍保留，不属于本次证明成果。

`python3 scripts/check_route_literature.py --lean-check /tmp/kip126-am-source-declarations.lean`
通过：10 个总包字段、28 组来源条目、41 个声明引用、17 个本地源文件校验值；
生成的 Lean 声明存在性检查也通过。28 是来源分组数，不是已证明定理数。
`git diff --check` 和新增文件空白检查通过。

`leanblueprint web` 生成成功；当前环境缺少 pdflatex/dvisvgm，因此不声称完成
PDF 或矢量图渲染验证。生成的 1333 个 Lean 声明引用已在 `import KIP126`
环境中全部核对，并再次检查只导出一个 Final 目标对应的 Challenge/Solution
定理对。检查直接使用当前库，未构建旧 KIPBase。

M 的 Lean 定义和唯一 T(M) 的两个现有文件在本轮均未改动；所有修改留在本地。
