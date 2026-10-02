# Section 7 路线的 C(M)：选取范围与交付边界

本文件对应 `Challenge2/Route/Data.lean` 的 `Inputs D L G` / `CInput D L G`。
这是**计算结果及其解释的交付类型**，没有默认实例、全局公理或生产证明。
阶段二可显式接受 `I : Inputs D L G`；阶段一的任务是构造这样的值。
本次完成接口定义和来源筛选，不宣称已证明 C(M)，也不宣称已证明其蕴涵主定理。

路线 `Inputs` 已由根 `Challenge2.ComputationInterface.route` 交付；它是 computation
总接口的一个组成部分，不能把局部 `CInput` 与整个总接口等同。
`route_presentation` 显式约束其球谱解释与原 presentation 在 t≤261 相同。
它是待整合的路线交付规格，不是第二套全局阶段公理。统一接口的目标、当前差异与
参数化解释与消费适配的归属见 [C(M) 交付说明](COMPUTATION_DELIVERY_SPEC.md)。

依据是仓库保存的论文 v2 `Main/Axiom/Literature/MainPaper/main.tex` 第 7 节及附录，
逐段重新核对；历史 `Lin-program/summary.md` 不作为权威清单。
论文中一般工具的证明和示例不需要额外固定数值数据；第 7 节消费的数值数据来自球谱和 Cν。
认证这些结果可能涉及另外 47 个谱，消费接口不要求先引入它们。

## 1. 数学对象和入口

```lean
import KIP126.Challenge2.Route.Data
-- D : Kervaire.Route.Model H M Syn
-- L : Kervaire.Route.Labels H
-- G : Literature.Route.TmfLabels H
-- I : Computation.Route.Inputs D L G
```

此处已有参数名 `M : MilnorCooperations H` 只是整个数学 M 的一部分。
整个上下文、`D`、`L`、`G` 在 A(M)、C(M)、T(M) 之间保持不变。

| 字段 | 数学交付 |
| --- | --- |
| `realization` | 选定的球谱 CSV 商代数解释、两谱的逐次数基标签；本身不保证正确 |
| `basis` | 每个选定次数的**全部明确基标签**给出实际 E₂ 加法群的 F₂ 坐标；也包括空基位置 |
| `csv` | 球谱每个基标签等于指定 CSV 单项式在同一解释下的值，并携带齐次性证据 |
| `products` | 指定次数对上，关系商环乘积与实际 Milnor/cobar E₂ 乘积相容；不保存乘法表 |
| `labels` | h₀、h₁、h₂、h₄、h₅、h₆、三个平方及 L/G 的名字均绑定同一比较 |
| `results` | 选中记录对实际谱序列、实际微分的数学断言；公共循环代表关系仍为必需 |
| `bottom` | 四个胞腔底部标签由 `cofibι D.auxiliary.nuMap` 的实际 E₂ 映射给出 |
| `top` | 选定顶部标签经过实际 `cofibδ`，再通过 D 的塔悬移比较，得到 X=h₁x₁₂₁,₇ |

没有另选球谱序列、Cν 序列、页微分、乘法或胞腔映射。
Cν 的其余局部基值是同一个 `realization` 中明确的基标签；这里只要求证明消费的
胞腔映射值，不额外要求整个 Cν 模的乘法表/全部映射。
ν 的几何识别、标准 Hopf 类检测及比较适用性沿用 A(M) 的条件。
不能对任意未识别的 `nuMap` 无条件声称已认证了 Cν 文件。

## 2. 实际筛选范围

所有坐标均为 **(s,t)**，stem=t−s；内部次数上界不是 stem 上界。

| 核心切片 | 范围 | 消费用途 |
| --- | --- | --- |
| S⁰，stem 62 | 0≤s≤10 | θ₅、B、Massey 定义系统，阶数向 synthetic 传输中的低权重检查 |
| S⁰，stem 63 | 0≤s≤9 | 上述类的潜在入射、d₂ 定义系统、Moss crossing |
| S⁰，stem 122 | 0≤s≤12 | X、P、Q 与最后矛盾的低过滤候选 |
| S⁰，stem 123 | 0≤s≤17 | V、α₁ 所用 λ¹¹/λ⁹ 窗口以及 d₇/d₃ 排除 |
| S⁰，stem 124 | 0≤s≤13 | U、correction、θ₅² 候选和 η 不定性 |
| S⁰，stem 125–127 | s≥0、t≤261 | 目标、潜在来源、高过滤排除，以及 E₅ 的高类唯一性 |
| Cν，stem 125 | 0≤s≤19 | 局部微分靶和边界 |
| Cν，stem 126 | 0≤s≤14 | Lemma 7.20 的源、Table Cν126、短入射排除 |
| Cν，stem 127 | 0≤s≤12 | 前一组来源的较早边界和线性组合 |

然后只补入这些记录的端点、具名因子和指定乘积查询所需的次数位置。
补入端点并不递归导入那个谱的所有记录。
高过滤的 125–127 茎不能只截到附录显示的 s≤25：证明里“只有”和“无其他候选”
需要控制显示窗口之外的尾部。这里保留该范围内程序给出的实际记录和空 E₂ 位置。

当前生成数据：**648 个次数位置、963 个基单项式、671 条带来源的记录断言、
73 对乘积次数、4 个底胞腔映射值和 1 个顶部映射值**。
671 条中，579 条为等式、84 条为循环页数下界、8 条为根层反证约束。
正向和反向快照行可能描述同一等式，因此这不是“671 个独立计算定理”。
空基、全部线性组合、微分端点都保留；没有只选名字却漏掉其余候选。
这是按证明用途及端点闭包选择的切片，不声称已做逻辑上最小的去冗余。

已有完整球谱 CSV 关系商环继续作为计算载体复用；新 C(M) 只要求以上次数和乘积查询的
数学正确性，不接受整个旧 `Challenge2` 或全部 10,907 条日志微分作为输入。

## 3. 具名微分与数据库记录

`Route/selected.json` 给出**每条**断言的完整原始行、来源表、原行 id、源/靶次数和
局部基编号；同文件的 `degrees` 保留每个基的全局行号、单项式及局部编号。
`Route/Selected.lean` 是这个清单的机械生成版本；`Route/Records.lean` 提供具名投影定理，均显式依赖 `I : Inputs D L G`。

| 论文使用的等式/排除 | 原始来源 | 正确读取方式 |
| --- | --- | --- |
| d₂(x₁₂₅,₈)=h₁V+U | `proofs.db/log` 5990 | (8,133)[1] → (10,134)[2,4] |
| d₂(h₆)=h₀h₅² | log 5541 | (1,64)[0] → (3,65)[0] |
| d₂(h₀⁶h₆)=h₀B | `S0_AdamsE2_basis.d2` 513 | (7,70)[2] → (9,71)[0]；没有编造独立 log 行 |
| d₃(h₄x₁₀₉,₁₂)=h₁x₁₂₂,₁₅,₂ | log 153768 | (13,137)[2] → (16,139)[0] |
| d₃(h₀²x₁₂₃,₁₃,₂)=h₀²x₁₂₂,₁₆ | log 462481 | (15,138)[2] → (18,140)[2] |
| d₃(x₁₂₆,₄)=h₀²x₁₂₅,₅ | log 929469 | (4,130)[0] → (7,132)[0] |
| d₇(x₁₂₃,₁₁,₂+x₁₂₃,₁₁+h₀h₆B₄)=h₁x₁₂₁,₁₇ | log 2671068 | (11,134)[0,1,3] → (18,140)[1] |
| Cν 所需 d₃(x̄)=Y[0] | log 212838；`Cnu_AdamsE2_ss` 3872、3873、3874 | 三条 d₃ 相加：(8,134)[0,3,4] → (11,136)[3]；不是把 212838 单独冒充完整等式 |
| d₃(x₁₂₆,₆) 的候选排除 | log 2047477、2047478 | 分别排除 0 和目标 [2]；结合完整 E₃ 循环空间，才推出论文的两个候选 |
| 高过滤 E₅ 唯一性所需 d₄ 约束 | log 154532–154537；154545 | 前六条是排除，最后一条是正向等式；必须结合局部基和较早微分 |
| P h₂ 属于 d₂ 边界 | `S0_AdamsE2_basis.d2`，源 `419,1` at (10,136) | 行 2855；关系计算识别靶与 P h₂ |
| Q h₂ 属于 d₂ 边界 | 同表，源 `427,1`、`0,1,419,1` at (11,137) | 行 2923、2926 相加；关系计算识别靶与 Q h₂ |

所有 log 行保留 `depth/reason/name/stem/s/t/r/x/dx/info`。
8 条反证行均为 depth=1 的根层 T 试探，没有未绑定的父分支假设；它们在声明中是
`¬ HasDifferential`，不是 `HasDifferential`。
解释根据发布源码 `ss/deduce.cpp:329–389` 的 `TryDiff`：无矛盾的试探回滚日志，
有矛盾的试探保留。这里要求将反驳作为阶段一的证明义务，**没有把保留文本当 Lean 证明**。
更深的条件树和其他谱不在本次结果消费接口内。

### Cν 标签的核对

- 顶部基行 3869 的模单项式是 `323,1,1`；module generator 1 名为 h₁[4]。
- `map_AdamsE2_Cnu_to_S0` 第 1 行的值是 `1,1`，把这个单项式送到 h₁x₁₂₁,₇。
- `ss.json` 明确 `Cnu__S0` 为 suspension 4 的 top-cell map，`S0__Cnu` 为乘 module generator 0。
- Y[0] 是 Cν 基行 4090，(11,136) 的局部编号 3；T[0] 是行 4412，(14,139) 的局部编号 2。
- d₃ 的完整源为顶部局部编号 0，加底部 x₁₂₆,₈、x₁₂₆,₈,₂ 的编号 4、3。
- `TopCorrect` 使用实际 q 映射、两次规范 shift-addition 映射和四次 D 的塔悬移关系；没有任意选择一个线性“q”。

## 4. 逐段消费清单：哪些是 C，哪些仍需论文推导

| 论文位置 | 此次计算输入 | 留在推导中的工作 |
| --- | --- | --- |
| Remark 7.5 / Lemma 7.10 | stem 62/63 的低过滤基、微分 | 结合 IWX 的 π₆₂ 阶数和 BHS，传输 synthetic 阶数/θ₅ 选择 |
| Fact 7.6、Remark 7.7 | W/T/U/高类的局部基、快照和 8 条排除 | 求页上核/像、非零存活、两个 d₃ 候选、T 的唯一入射可能 |
| Lemma 7.11 | stem124 AF11–13 的记录，h₁ 乘积相容 | 从 classical 线性代数推出 η 不定性的过滤提升 |
| Proposition 7.8 | stem125 AF≤4 空基、stem124 AF≤13、stem125–127 高过滤数据、g⁴Δh₁g 绑定 | θ₅² 的检测分支、tmf 检测论证、C₃/C₄/C₅ 与 d₁₂ 的关系 |
| Fact 7.13 / Lemma 7.14 | V 的 row2569，log5990，log153768/462481/2671068，stem123/124 完整窗口 | 选择 α₁、α₂、α₃，有限 λ 商映射、乘 h₀ 消失 |
| Fact 7.15 / Lemma 7.16 | Y 的 row2852、d₃(x₁₂₆,₄)、候选排除、Massey 所需 d₂ 与乘积查询 | Toda 检测、零不定性、Moss 条件与过滤比较 |
| Corollary 7.18 | 上项和 h₀ 乘积查询 | 对任意代表元的 h₀-extension；不预设 extension 结论 |
| Fact 7.19 / Lemma 7.20 | X 的 row2433、实际 Cν 映射、三条 d₃、AF10 纠正项窗口 | 广义 Mahowald、λ³→λ⁵ 提升，再推到 λ⁹ |
| Fact 7.21 / Proposition 7.9 | P/Q rows2622/2684、两个 h₂ 乘积边界、stem125 AF13、Cν 短入射源的完整基 | 线性组合穷尽、过滤提升、最后矛盾 |
| Appendix 高过滤补充 | log154532–154537、154545，源与靶的完整 E₂ 坐标 | 由候选排除计算 E₅ 商空间；不能只检查某个单独向量 |

这里的编号按 v2 文本中的引用顺序；查找以同文件的 TeX labels
`fact:theta5sqAF`、`fact:x1239`、`lem:toda2ext`、`lem:nuext125`、`fact:stem122`
及 `prop:state5false` 为准。计算层不预设上述推导所得的 synthetic 等式。

特别注意：`Statement` 的普通等式不额外断言靶在 Eᵣ 非零。
需要非零时应利用基、较早微分和核/像计算证明；这是输入集合的代数使用，不能拿 E₂
非零直接替代。`reaches` 也允许后页为零。

## 5. 有限数据与无限结论

- 9000 层只被解释为 `ReachesPage ... 1000`。它本身不是 `NonzeroSurvival`。
- 数据范围外没有采用“查不到便是零”的规则。
- 从有限计算推到非零 E∞ 存活，需要一般的 Adams 过滤下界/消失线、实际页代表的稳定性，
  再排除所有可能入射。这些是基于 M 的数学范围引理，**不伪装成 CSV 输出**。
- 本接口按 t≤261 保存有关高过滤空位置；超出 t≤261 的命题不能仅从这些空位置推出。
- 有限 λ 商、synthetic 检测、Toda 不定性和过滤穷尽的传输使用 A(M) 的比较结果，并作为
  论文推导的一部分证明；不将它们塞入 C(M)。

因此“接口定义完成”不等于已经证明整个消费链充分。阶段二必须实际证明所列代数/范围/
比较引理；发现依赖需要增加时应以明确源记录审查接口版本，不能临时悄悄增加外部结论。

## 6. 重生成与信任边界

```bash
python3 KIP126/LinProgram/Translate/select-route.py --check
lake build KIP126.Checks.Computation.Route
```

生成器先校验 8 个输入的 SHA-256；球谱三份 CSV 与 DB 的生成元、关系、基、d₂ 列逐项匹配。
Cν 从其 DB 读取，另核对 top-cell map DB 和 ss.json。
所有原始文件为只读打开；每个基单项式的次数、局部编号和每个目标编号都检查。
选定核心 staircase 的基矩阵在 F₂ 上经过消元，检查其向量数、独立性及完整性。
这一步只保证归档坐标的一致性，不证明它们是实际 Adams 的循环/边界。

`--check` 从本地 Raw 重新生成并逐字比较 JSON/Lean，失败即退出，不接受缺失数据。
Lean 回归同时检查全部记录的次数/编号，及缺失、重复、乱序、越界坐标不会变成零。
生成数据和解码回归没有 `sorry`、全局 `axiom`、默认数学正确性实例；
Main 的待证推导另见下节，不能与生成数据校验混为一谈。

新增 Cν DB、top-map DB、ss.json 来自本地发布目录
`Lin-program/program/upstream/kervaire-49`，按完整文件字节固定摘要；
这不额外声称已经验证原始分发压缩包的真实性。所有 8 个摘要均列在 `Route/selected.json`。
计算认证还必须证明源数据与实际数学对象的比较、各条结果及反证的可靠性。
若重放使用本文新工具，先独立证明工具，再用于认证；不准调用最终定理反过来认证 C。

## 7. 本批提交前验证

- `select-route.py --check` 通过，检查 8 个固定输入及所有机械生成文件。
- `lake build KIP126.Main.Solution.Computation.LinProgram.Route.Records KIP126.Checks.Computation.Route`
  定向编译通过（2721 jobs），记录次数/坐标和解码边界回归通过。
- 移除新增 Records/Checks 中的额外 `maxHeartbeats` 设置，并同步生成器；
  按默认 heartbeat 预算验证，不调整 CI 的预算规则。
- `git diff --check` 通过；未修改依赖版本、共享缓存或既有数据库。

这些验证不构造 `Inputs` 的数学见证，也不证明有限数据足以推出最终结论。

## 8. Main 的配对推导目标（PR #150 设计提取）

`Main/Challenge/Computation/Route.lean` 和 `Lambda.lean` 保存准确目标，
`Main/Solution/Computation/Route.lean` 和 `Lambda.lean` 保存同签名的证明或 `sorry`。
它们都显式接收同一 `D`、`L`、`G` 上的 `Inputs`；没有选取另一个全局见证。
根 `Challenge2` 已绑定路线 `Inputs`，Main 的 `StageInput.routeComputation`
直接投影它；`routeLiterature` 使用相同模型与 tmf 标签。
`Main/{Challenge,Solution}/Route/Selected.lean` 把 Cν、λ 单步单射特化到此见证，
并列出 Proposition 7.8/7.9 的实际消费目标。最终定理调用这两条待证命题再逻辑收尾。
这些 Proposition 仍为 `sorry`，有限页到永久存活、消失线、过滤分离等步骤并未完成。

| 推导组 | 精确边界 |
| --- | --- |
| 页范围与尾部 | 从显式 `SphereVanishingLine H` 推出页上消失；原始有限记录仍只表示到达 E₁₀₀₀ |
| 永久性 | `ReachesPage` 只用于永久循环；非零永久存活另需 `SurvivesTo` 和后续入射排除 |
| 候选与 Cν | 两个 d₃ 候选、E₅ 高类穷尽、Cν 三项之和及有限入射排除，都需要全部基和页上核/像 |
| 过滤与检测 | F²⁶ 消失和高类代表唯一性保留实际 classical 过滤分离前提 |
| λ 条件 | (62,64)、(124,128) 要求所有有限幂；(125,130) 只要求单步单射；(62,70) 不断言单射 |
| 后续传输 | realization 单射、有限 BX 规范化、θ₅ 阶数与 B 的 torsion 窗口保留同一 A/C 输入 |

`Route/Consequences.lean` 只定义这些结论的语言，不把 `SphereFacts` 加入交付字段。
通用页微分消失、经典消失/分离及 λ 幂单射条件位于 `Def`；单步条件复用已有
`Synthetic.Context.LambdaInjectiveAt`，不另造一套 λ 操作。

经典消失线本次仅作为显式前提：PR 原稿的无额外前提 `sphere_vanishing_line` 未提取。
其文献陈述和通往实际球谱 E₂ 的比较须另行交付。强收敛到分离、已有页消失定理的
范围特化可以直接证明；其余尚未完成的代数、比较、尾部代表及过滤论证仍明确为 `sorry`。
λ 数值特例通过一般条件命题推导，其依赖中的 `sorry` 仍然存在，不能计为完整数学证明。

`Checks/Computation/RouteGoals.lean` 检查两侧完整类型及 Challenge 占位；
布局检查禁止 Interface/LinProgram 的生产认证反向依赖这些 Main 推导。
这些目标不改变最终命题、标准 h₆² 定义或现有阶段公理。

本批验证：32 对完整签名的 Lean 内核检查和四个受影响 Main 模块定向编译通过；
10 项目录依赖检查通过。32 条 Solution 中 8 条有证明体、24 条保留直接 `sorry`；
其中 3 条有证明体的 λ 特例依赖本批待证的一般命题。没有据此宣称证明完成，未跟踪 CI。

## 9. 固定模型接线验证

- `Challenge1.routeInput`、根 Challenge2 的共享绑定和 Main.StageInput 已相连；
  Cν 与 λ 单步单射的固定实例、Proposition 7.8/7.9 的配对目标及最终逻辑调用已接通。
- 定向编译 `Checks.ClassicalAdams.StageInputDeclarations`、`Checks.Computation.RouteGoals`、
  `Checks.Kervaire.RouteBoundary`、`Checks.Kervaire.RouteFixedFinal` 和两个迁移后的文献消费模块
  通过（3318 jobs）。核对 38 对 Main 声明以及两阶段生产声明类型、同一见证投影、
  sphere presentation 相容和最终标准 h₆² 定义。
- 10 项目录依赖检查通过；28 组文献来源覆盖及 17 个原始文件哈希校验通过。
- 未删除原有 theorem/lemma 声明；最终 Challenge 文件保持不变。
- Def/Interface 的整包构造仍为 `sorry`。Main 新增两条 Proposition 的显式证明占位；
  最终定理的逻辑收尾因此仍有这些证明依赖。经典消失线、过滤分离、数据认证和
  模型比较没有因为接线或编译成功而得到证明。未检查 CI。
