# 固定 h₆² 目标：按论文消费者核对输入

日期：2026-09-26。状态：部分审计完成，输入尚未接齐。

本文件是工作核查记录，不替代 Blueprint 的数学节点、Lean 的实际声明、
或外部来源台账。目标是准备证明条件，不在这里证明论文主定理，
也不把论文自己的关键推论重新标成 Lin 计算事实。

## 1. 固定终点和验收含义

唯一目标为

```lean
NonzeroSurvival sphereAdamsData (2, 128) computedH6Square
```

- 对象是固定基础上由 Adams tower 构造的 `sphereAdamsData`。
- 元素是现有 `linToSphereE2` 送入该对象的 `dataH6Sq`，不是一个待另选的类。
- `NonzeroSurvival` 要求共同的 `Z ⊤` 代表元和非零的无限页像。
  不能把“每个有限页上各存在某个类”未经证明地替代这一条件。
- `ComputationalReduction/Proofs.lean` 的
  `computedH6Square_nonzeroSurvival_iff` 已把它等价化为：存在一个固定 tower
  ambient 代表元，属于所有后续 cycle 子模，并在第二页代表该元素。
  其证明调用现有初始非零和入射排除结果；这里记录的是源码依赖，
  本轮没有重新运行 Lean 审计。

“接齐”要求：每个叶子有精确数学命题和出处，消费者使用的都是上述对象或
与它有明确比较的对象。已有公理、外部输入、尚待证明的项目引理分别登记。
结构能定义、文件能编译，均不足以证明这些要求。

## 2. 从论文终点往回看

论文最终推理（`aimpaper/main.tex:2181–2215`）是：

1. `prop:possibleh62`：要么永久存活，要么有非零 `d₁₂(h₆²)=T`；
   后一种情况等价于 C3、C4、C5 同时成立。
2. `prop:state5false`：C3 蕴含非 C5，排除后一种情况。
3. 将这里的存活和元素解释回固定 SSData 目标，包括其非零语义。

其中 `T=h₁h₄x₁₀₉,₁₂`，C3 是 `d₆(W)=0`；C4、C5 是论文指定的
synthetic 检测条件，不能仅用两个任意 `Prop` 代替其数学内容。
“仅剩 d₁₂”与“排除 d₁₂”是本论文待证明推论，不是准备输入时可新增的公理。

下表列出主链。计算叶子的已有字段及剩余候选见
[计算事实包清单](NEAR126_COMPUTATION_FACTS.md) 的 D/S/P/V 与 R1–R11。

| 消费点 | 所需条件与来源 | 如何关联固定目标 | 当前缺口 |
| --- | --- | --- | --- |
| BJM/BX 判据及总微分，`thm:bjmbx`，2117–2140、2300–2311 | θ₅ 检测 h₅²、阶二；`δ₁(h₆²)=ληθ₅²`；有限/无限存活判据。来源为论文引用 BX、BJM；阶数引用 Xu/IWX | classical 输入必须是固定球面，h₆² 必须比较到 `computedH6Square`；synthetic 检测不能是自由谓词 | 现有文献包装有来源，但 `Theta5ChoiceContext` 尚需这些具体解释；有限页到共同无限代表元的连接不得遗漏 |
| 代表元选择，`lem:equistate4/5`，2221–2258 | θ₅ 差的过滤至少 6；平方差至少 12；U 代表元差乘 η 的过滤至少 15。计算 R1/R2 加群结构和乘法比较 | 全部 classical 类来自同一 Lin→sphere 比较，检测在同一 synthetic 球面 | 已有部分消失字段，不是完整差项/检测证明；两个选择不应被默认为相等 |
| 排除 d₁₂ 以外的出射，`prop:possibleh62` 证明，2300–2360 | θ₅² 的低过滤和高过滤候选、T 的入射穷尽、W 的 d₆ 候选；synthetic rigidity、tmf 检测，R3 | 使用固定球面的真实 d、Z/B，tmf 映射及检测也必须来自该球面 | 现有 E₅ 单个分量穷尽不能控制全部高过滤尾部；需范围定理与 tmf 文献输入 |
| α₁/α₂/α₃，`lem:x1239`，2387–2454 | V 存活；D1/D4/D5/D7；截断群候选穷尽 R4、乘法及商映射相容 | `V,U,correction` 的固定坐标；mod λ¹¹→mod λ⁹ 的同一代表元 | 不能分别选无关系的截断类；升降截断和过滤推理未接齐 |
| Toda 检测，`lem:toda2ext`，2470–2568 | D2/D3/D6/D9；AF≤12 生成项及所有和、Massey 零不定性、Moss crossing、阶数/乘法，R5/R6 | 三个候选由固定 E₂ 类检测；Moss 的 crossing 与论文后面使用的 crossing 区分 | 不是给出三个名字即可穷尽；这些 synthetic/Toda 推论不是原始 Lin 输出 |
| 对所有代表元的 2-extension，`cor:2ext125`，2571–2585 | Toda 结论、吸收高过滤项和换代表元的不定性控制，R7 | 要与下一步 Hopf extension 选择的 Y 代表元兼容 | 一条对某个代表元的关系不足以组成最后等式 |
| ν-extension，`lem:nuext125`，2613–2673 | X 存活，实际 cofiber 的 D8、i/q 关系，Mahowald 及截断提升 R8/R9 | 同一球面、同一 ν、同一 cofiber、同一组元素；详见下节 | 当前只有部分 cofiber 构造和二条计算事实接口；不是完整 Mahowald 输入 |
| 最后矛盾，`prop:state5false` 证明，2698–2778 | P/Q 的候选穷尽与乘 h₂ 的边界，R10；synthetic cofiber/rigidity 比较；Cν 的 T[0] 无短入射 R11 | 两条 extension 必须在同一截断群可组合，最后 T[0] 必须是实际 i(T) | `tbar_short_incoming` 有类型，尚无证据值；synthetic cofiber 比较不能由 h₂ 的名字推出 |

这些行给出已核对的主链，不声称所有隐含数学引理已经穷尽。特别是线性组合、
过滤完备性/分离性、检测和代表元选择，需要在具体消费者中继续逐项展开。

## 3. ν-extension：需要的是相容输入，不是唯一的 X[4]

来源：`lem:nuext125`，以及通用定理 `thm:158d451a`（1780–1802）。
此节的 X、Y 是元素，不是通用定理里的谱对象 X、Y。

```text
X = h₁ x₁₂₁,₇          ∈ E₂^(8,130)(S⁰)
Y = h₀² x₁₂₅,₉,₂       ∈ E₂^(11,136)(S⁰)
barx = u + i(x₁₂₆,₈) + i(x₁₂₆,₈,₂) ∈ E₂^(8,134)(Cν)
bary = i(Y)             ∈ E₂^(11,136)(Cν)
```

论文 2631–2635 的 `X[4]` 是选取某个 `u` 后的记号，意思是 `q_*(u)=X`
（先作 S⁴ 的悬移比较），不是另一个唯一指定的标准元素。
改变 u 可以改变 barx；必须对同一组选定元素断言以下所有性质。

| ID | 精确要求与消费位置 | 来源/性质 | 当前实现状态 |
| --- | --- | --- | --- |
| M1 | 固定球面中的 ν，以及 distinguished triangle `S³→S⁰→Cν→S⁴`；规范化指数 `(1,0,0)` | 2625–2630；参考 `exam:Mahowald`，1930 起。对象及比较输入 | 给定稳定映射可构造实际 cofiber；`SphereHopfInput` 只附带 h₂ 的 filtration-one 代表条件，不自动给出经典 ν 的识别或完整规范化 synthetic triangle |
| M2 | i/q 的 E₂、所用后续页映射及悬移比较；与实际微分、代表元传递相容 | 将 triangle 解释为页 extension 所需的结构比较 | tower/page 映射已部分构造；全页微分交换、悬移/分次比较不能从定义存在自动推得 |
| M3 | Ext 长正合列的连接映射是乘 h₂；或明确给出本次应用实际需要的局部后果 | 2630、2647、2655；推得提升存在、非零边缘 extension | 现有 `represents_h2` 字段没有断言此长正合列；不可从名字补出此性质 |
| M4 | 同一个 u 满足 q-image 等式，barx 用同一 u 和固定底胞腔修正构成，bary=i(Y) | 2638–2648；把计算类与 geometric i/q 接起来 | `N.xbar topLift` 固定修正，但 `topLift` 尚无 q-image 条件；仅 q-image 也不足以保证 D8 |
| M5 | 指定 barx、bary 的真实非零 `d₃(barx)=bary`，包含它们在 E₃ 上的共同代表关系 | 2648；外部计算 D8 | `HopfCofiberFacts.d3_xbar` 已精确定型；没有全局证据值，没有指定 u 的联合证据 |
| M6 | 通用定理要求的 `x∈Z₂, y∈Z₁, barx∈Z₂, bary∈Z∞`，以及在所需页上的 edge extensions | 1786–1799；数学转换义务 | X 到 E₆、Y 到 E₅ 已有输入字段；须明确与这些 Z-index 的对应。bary 是微分靶，可是无限循环代表而最终成边界，绝不能要求其 `NonzeroSurvival` |
| M7 | `q` 的零长度 extension 无 crossing **或** D8 在 E₃ 上无 crossing | 1794 的析取，2649–2652 的核查 | 可选择自动无 crossing 的 q 分支；不必强加两项独立数据。见下面页数核算 |
| M8 | Mahowald 结论先得到 mod B₃ 的 ν-extension，再解释成同一 synthetic 群 mod λ³ 的关系 | 1800–1802、2657–2660 | 需页 extension、边界和 synthetic 检测的比较；不能把计算 D8 直接等同于同伦乘法关系 |
| M9 | 升到 mod λ⁵ 时所有 AF10 纠正项不存在或可选为零，再经 λ⁴ 推到 mod λ⁹ | 2661–2673；R9 计算证据加商映射推理 | 此步独立于 D8；目前未接齐，不应把整个提升结论作为“微分数据” |

### 页数、分次与 crossing 的实际核算

采用论文所用 `e(ν)=1,e(i)=e(q)=0` 及 D8 的 `r=3`，有

```text
n=3, m=0, l=0; n₁=2, m₁=0, l₁=0; r′=3.
```

因此通用定理要求的是 `d₀^(q,E₃)(barx)=X`，而应用段落 2647 写的是 E₂。
这里需要一个从 E₂ 等式到 E₃ extension 的传输论证，不是把 r′ 改成 2。
`i` 一侧确实使用 `E_(m₁+2)=E₂`；结论确实在 `E₄`，模 `B₃`。
取通用定理 `s=8,t=134` 时，其 X 谱中的次数为 `(8,133)`，对应 S³
悬移后的球面 `(8,130)`；Y 侧次数为 `(11,136)`。这些比较必须显式实现。

对于 M7，论文 `def:41d51149`（1437 起）要求一个 crossing 的参数满足
`a>0` 和 `0≤b≤长度-a-e(q)`。长度为 0，`e(q)=0`，不可能满足，
所以 q 分支可由度数排除；仍须先建立正确页上的 q-extension。
若选择另一分支，由 `def:classicalcrossdiff`（1165 起）核算 D8 在 E₃
上的可能 crossing：只有 `a=1,b=0`，即 Cν 上
`d₂ : E₂^(9,135) → E₂^(11,136)` 的非零微分。
仅排除某个指定源、或者只排除它命中 bary，不等于该定义下的全面排除。

### 同一 Cν 在最后矛盾中的再次使用

R11 排除命中 `i(T)∈E_r^(14,139)` 的 `2≤r≤5` 微分。所有可能源依次是
`(12,138),(11,137),(10,136),(9,135)`，均为 stem 126。
表 `Table:Cnu126` 的 s=9…14 覆盖这些源的次数，但覆盖次数不等于穷尽
每个源分量的线性组合。这里不能换用与 D8 不相关的另一个 Cν。

另外，现有 Blueprint 的 `prop:synthetic-hopf-cofiber-equivalence` 已记录
论文 2730 附近的规范化问题：应比较 `C([h₂])` 与 synthetic Cν，
而不是无条件把 `C(λ[h₂])` 与它等同。本文只记录这一既有待证比较，
没有据此宣称构造正确或比较已证明。

## 4. 现有消费者缺口：不是填入实例就能完成

以下均从当前源码核对，不能被先前的编译成功抵消。

1. `Def/Kervaire/SphereAdams.lean` 的 `Near126Adams` 使用旧 Adams 接口；
   `c3,c4,c5` 是自由 `Prop`，`d12_value/target` 是独立 Carrier 中的值。
   没有在这些字段的类型中要求它们是固定 `sphereAdamsData` 的实际 d₁₂
   和 synthetic 检测条件。其 Challenge 不是当前目标的已接通归约。
   后续已新增固定对象版本 `Sphere.C3`、`Sphere.D12`，以及消费现有事实包的
   `SphereSurvivalFacts.c3_iff_not_d6`、`hit_t_iff_d12`，位置为
   `External/Computation/Near126/Sphere/Conditions/`。这些是固定页条件与局部
   条件推理；旧接口尚未整体迁移，C4/C5 的 synthetic 解释仍待实现。
2. `Def/Kervaire/Theta5/Data.lean` 的 `h6Survives`、`is_permanent`、
   `finiteZero` 等仍由调用者给出。文献来源包装不能替代固定对象上的解释。
3. `Challenge/Tools/generalized_mahowald.lean` 及对应 Solution 的
   `crossingChoice` 第二分支是 `noCrossingG`（i-extension），不是论文
   的 Z 谱 Adams differential 无 crossing；Blueprint 的正文则符合论文。
4. 同一文件把 `hExtension` 参数声明为 `(page length ...)`，却传入
   `(l rPrime ...)`；`gExtension` 同样传入 `(m (m1+2) ...)`。
   按当前参数名，其页数与长度颠倒，必须在绑定实际语义前统一。
5. 该 `Operations` 允许任意 `survivesX`、`moduloBoundary`、cycle 类型和操作，
   `Input` 没有保证它们来自实际 triangle/SSData。因而不能仅修正两个字段名
   就宣称通用定理可证；需有数学结构和相容性的真正约束。

本轮停止对这些冲突接口追加实例，先记录冲突。后续修正时必须同步
Challenge/Solution 的声明和 Blueprint 链接；Solution 不得调用 Challenge
中的 `sorry` 得出证明。

## 5. 下一步与验收检查

顺序由消费者决定，不要求先完成经典 Hopf 映射的底层构造：

1. 把 near-126 的 C3/d₁₂/存活解释绑定固定 SSData，C4/C5 绑定具有明确
   检测比较的 synthetic 球面；保留文献和计算输入为带来源的显式参数。
2. 修正 Mahowald 消费端上述不一致，并明确 M1–M9 哪些来自结构、哪些由
   计算支持、哪些为内部待证引理。允许用明确的比较输入，不要求构造唯一 ν。
3. 按 R1–R11 补候选空间、线性组合、范围和截断比较；每项记录具体消费位置。
4. 对每个接入后的分支检查从外部叶子到固定目标的对象/次数/代表元没有断开；
   不通过新增“该分支已经成立”字段掩盖论文自己的待证推论。

本次验证：成功 fetch 后 `origin/main=5a6c12efc85ce5e6169fb183c98eae09467a42c9`，
当前 HEAD `88c64d6f73929d62b386aabb28261606e04a5b33`，ahead 22 / behind 0；
本地 main 与 origin/main 一致。保留现有 dirty worktree。
本轮只修改 Markdown 核查记录，不修改 Lean、Blueprint、最终命题或证明。
这不是输入齐备或最终目标完成报告。

### 后续实现：固定页条件

`Sphere.C3` 要求 W 非零存活到 E₆，且其所有继续代表元的 d₆ 为零。
`Sphere.D12` 直接使用 `computedH6Square`、固定 Lin T 和实际球面 d₁₂。
`d12_iff_differential` 证明它与已有表坐标微分谓词是同一条件。

条件引理仅消费现有 `w_to_e6`、`w_d6_targets`、`t_only_incoming` 三项输入：

- C3 当且仅当不存在非零 d₆(W)=T；
- 在 C3 下，T 在 r 页被打中，当且仅当 r=12 且 D12 成立。

没有假设 C3、C4、C5 或 D12 为真，没有假设最终存活，也没有新增计算证据字段。
此步服务于最后矛盾中对 T 的入射控制；它不是“h₆² 仅剩 d₁₂”的完整归约。

实现将逐页零微分及其候选穷尽抽出为通用 `DifferentialVanishesOn` 和
`DifferentialTargets`，后者替换原 `D6WTargets` 的内联表达式，数学条件不变。
通用代表元引理在 SSData 层证明，再应用于固定球面，避免展开整个 tower
比较数值分次；没有提高最终代码的 heartbeat 限制或隐藏证明占位。

验证：`KIP126.Checks.ClassicalAdams.ComputationFacts` 编译及内置依赖审计通过；
通用引理只允许 Lean 基础公理，固定球面引理只额外允许既有
`standardFoundation` 与 `linE2Presentation`。`lake build +KIP126` 导出检查通过；
`leanblueprint web`、`lake exe checkdecls blueprint/lean_decls` 均成功，
新节点保留 `notready`，不宣称基础假设已消除。
最终 Challenge/Solution 命题未改动。
