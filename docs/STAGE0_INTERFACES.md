# 第0步数学接口与证明责任

第0步要求准确确定数学语言、对象来源、次数、条件、范围和证明责任。它允许明确的模型构造、比较、认证和本文证明暂用 `sorry`，不允许弱化目标、无来源新增假设或在模型中预设本文结论。目录职责以 [AGENTS.md](../AGENTS.md) 和 [PROJECT_BOUNDARY.md](../PROJECT_BOUNDARY.md) 为准。

历史修正报告中的验收结论限于当时检查的范围。目前完整第0步仍有文献覆盖、来源忠实性等待核验项，不能冻结 Literature 或宣称全体接口验收完成。C₂/Cη 等计算认证中间谱按用户决定留给 Interface 的证明过程，不再列为 Challenge2 接口完整性缺口。已有声明、已完成证明和实际验证分别记录；统一输入结构不改变模型构造、计算认证和论文推导中的证明责任。

按用户决定，当前目标止于标准 h₆² 的非零永久存活：流形模型、Browder/Pontryagin–Thom 几何比较、低维流形存在性及几何 HHR 不存在性不再属于 Challenge2 或当前验收。Blueprint 中对应文献仅作未来/背景记录，不是待补的当前输入。主路线需要的经典 θ₅ 存在、h₅² 检测与二阶性输入仍须交付；Hopf 映射、cofiber 和谱乘法等同伦模型义务也不受影响。

## 同一个 M 与标准 T

Def 内固定的基础必须有实际谱模型的实现/识别接口。来源不能只是另一个任意稳定范畴或一个未定义的 `isActualSpectrum : Prop`：具体 prespectrum、稳定等价及 HF₂-local 反射给出可审核的经典对象来源。论文引言明确 S⁰ 为 2-completed sphere，源另列这个单位与 Moore-2 完成的比较，未声称所有无界谱的两种完成相同。比较须关联球谱、悬移、cofiber、乘法、HF₂ 及其单位映射。构造与识别证明可以待补；比较的数学内容不能省略。

标准 Adams 塔来自同一 HF₂.unit。Milnor cooperation/cobar 坐标绑定实际第一页面及 d₁，并与 ring/Künneth/basis 比较。标准 h₆ 在 (s,t)=(1,64)，标准 h₆² 在 (2,128)，stem 分别63、126。最终目标是

```lean
NonzeroSurvival sphereAdamsData (2, 128) standardH6Square
```

这里存在同一个 Z∞ 代表，其 E₂ 像为指定标准类，E∞ 像非零。它不是只要求出微分为零、到有限页，或各页独立存在代表。该类型全部定义依赖只来自 Def 和基础库；A/C 只能进入证明。

实际同伦群仍是整数模，不因 E₂ 为 F₂ 向量空间而全体变为特征2。上同调 Hⁿ(X;E)=[X,ΣⁿE]=π₋ₙF(X,E)；UCT 的 Hₙ 与 Hⁿ 对应，Steenrod degree n 同样对应 π₋ₙF(HF₂,HF₂)。

## 统一 Challenge2

Def 固定经典实现，包括实际完成球、HF₂、Milnor 坐标及 tensor/cooperation 比较。`KIP126.Def.standardSphereApplicability` 对这个固定实现陈述实际球塔的 HF₂ nilpotent completeness 和强收敛，证明保留明确的 `sorry`；下游可直接引用其准确陈述。原 Challenge1 的实质义务仍在，但不是 Challenge2 字段。独立 Challenge1、重复 implementation 和相等运输已删除；countable-products 等结构仍来自固定实现。

Challenge2 在这一固定经典背景上，一起交付 `routeInput`、`ModelBindings routeInput`、A、presentation 与 C；所有字段依赖同一个见证。内部适配由 Main 在取得该见证后证明。Def 不先从较弱的 RouteInput 中任选 ν、Hopf maps 或 detector 再要求它们恰好满足文献定理。`Interface/Solution/Literature/Route/SourceExistence.lean` 单独列出关联存在性责任：从 Pstrągowski 的实际球面谱层构造及各项前人结果得到路线、绑定与 A。该定理不是对 synthetic 范畴的唯一性刻画，也不声称这里已经实现其 ∞-site；其构造证明仍待补，不含 C、Application、high125 或本文新工具。

供人工逐项判断的汇总视图见[统一输入清单](challenge-input-inventory.html)。该 HTML 直接读取唯一机器清单 `external-inputs.json`；数学接口仍以 Lean 结构为准。来源、locator、制品和 declaration 对应关系全部在 JSON 中维护，不再编译一份 Lean 来源目录。文献 package 是陈述撰写清单，保留 F12、C08–C10 等当前范围外的几何条目作来源记录；不能当作当前 Challenge2 字段清单或已核实的完整外部定理集合。

唯一临时阶段公理直接给出 `Main.Axiom.challenge2 : KIP126.Challenge2`；Main 不再经过 `Nonempty` 或 witness choice。生产者不得使用这一消费公理。完整 Challenge2 的构造须在同一路线见证上完成模型绑定与认证，不能分别选择两个存在性见证后视为同一对象。固定球谱适用性与分离性是独立的 Def 证明责任；Main 为 BHS 完成适用性、完成比较、realization 比较、Toda 二级运算比较及 ν 来源结论分别保留明确的 `sorry`；`routeApplication` 再从这五项和已有来源陈述组装，不能把它们当作现有字段的投影。

来源的四层分别是 `Bindings`（对象及比较）、`Statements`（前人结果）、`Application`（Main 待证的内部来源适配）、`Inputs`（供 Main 消费的组装结果）。`Inputs` 还需要 Main 独立证明的 tmf 高过滤结论，因此它既不等于纯 A，也不是 Challenge2 字段。无实际用途的旧 `Literature.Route.A = Nonempty Inputs` 包装已删除。

## C 的固定范围和语义

数据版本为 Zenodo 14875701 / v126.3.cw49。目标仓的大 Raw 文件可为 LFS pointer；只在实体字节与固定 SHA 一致时使用外部本地实体。`select-route.py --check` 检查筛选/解析/坐标可重复，不证明实际 Adams 命题。

当前 selected 保留648个次数、963个基向量、671条来源记录、73对乘积次数与4个 bottom maps。其中包括用于零群与穷尽性的空基，不因看起来没有元素就删除。忽略来源后可有相同 Statement 的重复 payload；这不是删除来源记录的理由。

| 所需事实 | 精确交付及责任 |
|---|---|
| 维数、零群、任意线性组合 | `BasisCorrect` 的实际 E₂ 与有限坐标模等价；同时给线性无关和生成。缺次数/越界/解码失败不当零。 |
| CSV 单项式与命名类 | `SphereBasisValue`、`LabelsCorrect`、同一 root `route_presentation`；标准目标的定义不依赖 CSV 标签。 |
| 乘法 | `ProductCorrect` 对所选 degree pairs 的所有元素成立；另外比较 cobar product、presentation product 与实际塔层乘法。指定平方身份不替代一般乘法。 |
| Cν 胞腔映射 | `BottomCorrect` 与 `TopCorrect` 使用同一几何 Hopf ν 的 actual cofiber ι/δ 与悬移比较。 |
| 日志与 staircase | 普通 differential、非零 differential、reach、boundary、refutation 分开。depth1根反证不是正向等式；深层分支必须保留祖先条件。 |
| 有限至无限 | level9000解释为到E1000。非零永久存活还需有限页非零、入微分排除及实际球塔消失线；滤过尾部还需经典分离性。 |
| 认证 | `CertifiedRealization` 七项是数学证明目标；接收七项证明的组装、从未完成总目标取字段、原始日志存在都不是认证实现。 |

论文主定理§7的逐段需求映射、原始行定位及覆盖状态见[主定理计算依赖对照](audits/main-paper-computation-inventory-20261003.md)，不纳入引言推论或教学示例。`Main/Solution/Computation/Route/Consequences.lean` 与 `Route.lean` 区分基础 C 和内部派生目标。原 `e5_high125_other` 已删除；AF15 与 AF18 的两个非零 d₅ 现有独立精确声明，保留为 Main 证明责任。`Computation/High125.lean` 改用实际 `π_(125,130)`：F15=F25、F26=0、λ¹⁰ 可除性及 λ²⁰G 的两元素穷尽，保留 BHS 比较、来源得到的 G 永久性和分离性前提。相关 Massey、不定性、crossing、候选穷尽和 quotient-lift 条件不能凭表名省略。

## 来源适用性与内部推导

- 球谱正 stem 消失线保留 `0<t-s<2s-3` 的实际 E₂ 结论；来源为 Ravenel 第二版 Thm3.4.5(a) 的保守弱化。它的模型运输与标准球塔分离性有独立生产责任，不能从有限 CSV 推断。
- BHS 有限商与无限结论分开。有限部分原文有更一般论证；永久 lift 与 filtration 比较必须保留所用完成/收敛条件。来源的适用性和到所选对象的运输使用同一完成映射、实际页面/ν 映射及精确像、滤过、λ 可除性比较。所选经典源采用论文的完成球；仍不把任意谱的不同完成概念无条件等同。
- BHS `cor:synth-ctau-ASS` (1)/(3) 的 `FiniteQuotientPageVanishing` 另交付 q>0、r≥2 的**所有有限页**零区：w>t 或 t−w≥q。`SyntheticSourceInputs` 与 `SyntheticInputs` 原样传递这一前人结果；E∞ 公式不代替 E₃/E₇ 零区。Q9 的 `π_(123,130)` 只有过滤7…15可能具有非零关联分次；结合实际ρ的过滤自然性和分离性可消去更高过滤。任何这类论证均不预设 λ⁹ 在一般 Q9 同伦群上作用为零。
- tmf 与 detector 的谱对象、单位和乘法都绑定；2-local 文献模型与所选完成对象的比较另列。BMQ 图支持 π₆₂(tmf₍₂₎)=0，但实际同伦像非零不自动推出指定关联分次非零。high125 的永久存活由 Main 从来源、乘法比较、C、消失线和分离性推出，不随 Challenge2 的 Application 传递。
- `Computation/Lambda.lean` 为同一 synthetic tmf 单列 (62,64) 的全幂 λ 单射、实际 realization 单射、θ₅ 及 ηθ₅² 单位像为零的推导。所需低过滤 stem63 零群来自 `TmfSourceResults.low_filtration63`，不能套用球谱专用单射引理。这些结论仍是 Main 的证明责任。
- Xu 的“存在一个二阶 θ₅”、整个62-stem的指数2、任意选择的 synthetic 二阶性分开；BX 原式与论文 λ 规范化分开。
- May 保留边界负号；消去负号所需的指数2条件另列。Moss 保留 convergence、defining system、crossing 与不定性条件。Toda 的二级运算比较与 ν 的相容三角属于内部适配。
- image-J 与 BR21 手工种子不因 reason=M 成为程序证明。可选精确来源特化或独立数学证明；所选 Statement 已承担认证责任，不必为每行额外添加外部公理。
- 广义 Leibniz、广义 Mahowald、stretching、选择无关性、C₃/C₄/C₅ 关系及 Propositions7.8/7.9 都是本文证明。C₃需真实E₆代表，D₁₂需E₁₂非零，C₄非零检测与C₅允许零leading class的检测不能混淆。

`Main/Solution/Route/AlphaOne.lean` 明确列出 stem124 的低过滤 E∞ 消失、AF10/AF13全分量生成、θ₅²三分支、Q9/Q11的指定非零微分和实际ρ零像，以及兼容α₁的存在目标。`AlphaOneProperties` 保留同一Q11代表的真实Q9投影，对每个U代表分别选择α₂、α₃，并准确使用α₂的权重137。`Main/Solution/Route/Section7.lean` 单列Massey全不定性、Moss crossing、乘后Toda不定性、完整主要bracket检测、条件性d₅(Y)=0、任意Y代表的h₀扩张、Q5/Q9的ν关系和最终Cν incoming矛盾。这些是Main目标，不能变成基础模型字段或文献/计算输入；未独立命名的细分步骤仍须在相应证明中完成。

`ModuleTripleToda` 的实际箭头依次为球上的η、球上的h₀、最后到Q9的λ³α₁，Toda悬移后落在π_(125,132)Q9。这保留π_(124,130)(Q9)·η与(λ³α₁)·π_(2,3)(S)两项不定性；最初把α₁放在第一条箭头会产生额外End(Q9)不定性的定义已修正。次数能够编译不代替这一语义检查。

Generalized Mahowald 在此处的实际参数为 n=3、m=l=0、r=r′=3。正文写出的E2零长度top extension须沿实际页面/循环比较适配到工具所需E3；Cν无crossing的精确目标是 `NoCrossingOn 3 3 (8,134)`，唯一潜在crossing为d₂:(9,135)→(11,136)，由完整五维空间排除。最终ν关系的Q3到Q5提升仍须处理全部AF10 correction，不能因为已有Q3关系就省略。

计算的某些原始推导使用本文新规则、窗口外的谱或 tmf。选择重放这条路径时，须先取得独立规则证明及其全部前提；不得用同一待认证 C 或最终 T 证明规则，再回头认证 C。其他直接证明路径仍可采用。通用规则证明不应接收整个 Challenge2 或包含 high125 内部推论的消费总包。

## C₂/Cη：Interface 证明内部依赖

Cη 顶胞腔自然性记录 462481 参与 `lem:x_123_9` 所用球谱 d₃ 的程序推导；C₂ 的 filtration-1 映射记录 212838 参与 `lem:nuext125` 所用 Cν d₃ 的程序推导。这两条最终微分结论已经纳入 C。当前 Route 数据解释只含 Main 直接消费的 S⁰/Cν，不因此遗漏这两条输入；但输入陈述存在也不代表计算认证已完成。

按用户决定，现在不补 C₂/Cη 的交付接口，也不增加 Challenge2 字段。这两个谱是否需要展开，由 Interface 证明同一最终计算命题时选择的路线决定：若重放上述程序路径，再按需构造 C₂=cofiber(2:S⁰→S⁰)、Cη=cofiber(η:S¹→S⁰)，并处理具体映射、源数据、坐标比较和证明；若采用独立证明，可以不经过它们。可复用的数学语言仍归 Def，固定制品及参数化解释仍归 LinProgram；不必为证明中的中间对象另建公共输入包。

历史报告将这些认证中间依赖列为第0步接口缺口的判断，不再适用。最终 C 结论的认证责任仍属于 Interface，不能从 Main 已承认的 C 倒推其正确性；其他文献覆盖、来源忠实性和数学绑定问题也不因本次职责澄清自动通过验收。

## 验收与未完成证明

第0步分别检查语义、计算覆盖、外部结果覆盖、职责、传递性依赖、目录及实际编译。完整认证、全部来源重证和最终 T 的无 sorry 证明属于后续目标。原始来源尚未核实、明确性质缺少绑定，或尚无可信充分前提时，应记录为未完成/证据缺口，不用通过编译代替判断。

数学接口以当前 Lean 源码为准，来源、locator 与声明对应关系以 [external-inputs.json](external-inputs.json) 为准。保留的来源审查与计算依赖表是注明日期的检查证据，不是另一份权威清单；旧迁移、集成和验收记录可从 Git 历史追溯，不能沿用其完成结论。
