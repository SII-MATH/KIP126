# C(M) 到底交付什么

**C(M) 应当陈述：同一个已经选定的数学模型 M，在明确范围内满足固定计算数据所表达的数学性质。**
它不是运行程序的过程，也不是让 Main 再把 CSV 解释一遍的任务清单。
`LinProgram/` 提供数据、确定性解释和局部证书；`Interface/` 负责证明这些解释在 M 上成立；
`Main/` 接受交付的结论，继续证明论文。

本文说明当前交付边界、已经完成的模型接线及仍待证明的生产义务；接口存在不等于生产证明已完成。
具体实现以 [Challenge2](../KIP126/Challenge2.lean) 和
[路线输入](../KIP126/Challenge2.lean) 为准。

## 1. 数学陈述：对象、标签和性质

先固定 M：需要使用的谱、Adams 塔、谱序列、页微分、乘法、胞腔映射，以及文献结论所用的比较。
这里的 M 是整个数学上下文的简称，不等于路线代码中单个 `M : MilnorCooperations H` 参数。
同一个标准类必须在文献输入、计算输入和最终命题中指向同一个元素。

再固定数据版本 Δ，包括表格、有效范围及记录来源。数据中的编号或单项式不是自动属于 M 的元素；
需要解释 φ，把它们对应到 M 的页元素或基向量。概念上可以写成：

```text
C_Δ(M, φ) :=
  φ 与标准类、基、乘法和映射的指定对应关系成立
  ∧ Δ 中选定的数学断言在 M 上成立。

C_Δ(M) := 存在这样的 φ，使 C_Δ(M, φ) 成立。
```

这是数学示意，不是当前 Lean 声明的逐字转写。如果 φ 已由上游选定，就直接交付其性质；
如果交付还需要提供坐标或比较映射，就用一个 structure 同时保存这些数据及其正确性证明。
**含有数据字段不违背“对象满足性质”的理解；关键是数据选择受明确的相容性条件约束。**

φ 不能为了让表格正确而随意重定义 M 的微分或乘法。若实现中暂存一个 `product` 字段，
必须同时要求它等于已指定的模型乘法。若 A(M) 或最终命题也使用 φ 中的名字，必须共享该见证，
不能分别从两个存在命题中各选一套标签。

## 2. Main 应当得到哪些数学结论

下面列出当前球面接口与第 7 节路线涉及的交付种类。各自范围见下一节；
这不是声称当前 `Challenge2` 已经包含表中所有字段。

| 交付种类 | Main 可使用的数学含义 |
| --- | --- |
| 基与坐标 | 指定次数的所列元素是实际 E₂ 的完整基，因此既线性无关又生成；明确空基的位置为零空间 |
| 标准标签 | 表格中的 h₆、h₆² 等标签对应独立定义的标准类；其他具名元素与文献使用的名字一致 |
| 乘法 | 指定次数对内，表格商代数的乘积经同一比较后等于指定的模型乘积 |
| 微分 | 指定元素在实际谱序列中具有相容的页代表，并满足指定的 dᵣ 等式 |
| 循环与边界 | 指定元素可以到达某一页，或在某页之前成为边界；保留断言的准确强度 |
| 候选排除 | 在记录明示的条件和范围内，某个微分候选不成立 |
| 胞腔映射 | 所列元素在同一个 Cν 的实际底胞腔、顶胞腔映射下具有指定像，并保留悬移比较 |

这些性质可以用 `∀ row ∈ fixedRows, Statement M φ row` 统一陈述，不必手写数百个字段。
但 `Statement` 必须公开定义为上述数学命题，Main 使用具名结论时不应承担解析或认证义务。
保留来源索引有利于追溯，不意味着 CSV 的存储格式应成为 Main 推导的中心。

特别需要避免以下含义扩大：

- E₂ 非零不等于 Eᵣ 非零；普通微分等式不自动带有非零靶的断言。
- `ReachesPage` 允许后页的类为零，不等于非零存活。
- 当前 9000 标记解释为到达 E₁₀₀₀，不是到达 E∞。
- 范围外或查不到的记录不是零；只有经认证的空基位置才能提供相应零空间结论。
- 根层候选反证不能自动推广成任意嵌套分支的无条件结论。

有限计算如何排除全部潜在入射、如何得到非零 E∞ 存活，仍需要 Main 的范围论证和论文推导。
不能为了使接口“足够用”，直接把这些推导或最终结论加进 C(M)。

## 3. 当前统一交付与路线子接口

| 当前接口 | 交付范围 | 连接状态 |
| --- | --- | --- |
| `Challenge2.ComputationInterface B P` | 球面坐标 `t ≤ 261`；总内部次数 `t+t′ ≤ 261` 的乘法；固定微分、staircase 记录；h₆² 的非零、穷尽与标准标签 | 是根 Challenge2 的 computation 字段；与文献部分使用同一个 Challenge1 模型 |
| `Computation.Route.Inputs D L G` | 第 7 节选定球谱与 Cν 的次数、基、乘积、记录、标准标签及胞腔映射 | 已作为 `ComputationInterface.route` 接入；`route_presentation` 明确球谱解释与同一个 presentation 相容 |
| `CertifiedRealization R L G` | 基、CSV、乘法、标签、记录、底胞腔、顶胞腔七类认证 | 明确的 Interface 认证入口；与 `Inputs` 互相组装时不重新选择模型或标签 |

`ModelBindings` 给出共享路线标签、tmf 标签、η 与比较数据，
`Main.StageInput` 从同一个 Challenge2 见证投影所有消费入口。
参数化的 `CInput D L G := Nonempty (Inputs D L G)` 仍可用于明确参数的条件定理，
但不是另一条独立阶段公理。唯一阶段输入仍是 `Nonempty Challenge2`。

根接口的模型是已选定的 Challenge1 模型，不能由此宣称任意 M 都满足这些计算结果。
路线精确范围见 [C_INPUT_FREEZE](C_INPUT_FREEZE.md)。
路线 `ProductCorrect` 的 Milnor/cobar E₂ 乘积与实际 Adams 乘法之间，
仍需履行声明中的相容证明；字段已接入不能代替 Interface 的证明。

## 4. 用 h₆² 看清交付与最终目标的差别

最终命题使用独立定义的 `standardH6Square`，不以 CSV 中某一行作为最终目标的定义。
令 `q = P.comparison 2 128 … dataH6Sq`，当前 `SphereSquareInterface P` 精确交付：

```text
q ≠ 0；
任意 x ∈ E₂^(2,128)，x = 0 或 x = q；
q = standardH6Square。
```

所以 Main 可以把表格关于 q 的结论用于标准 h₆²。标签等式的证明属于 Interface；
当前 [Square 生产模块](../KIP126/Interface/Solution/LinProgram/Square.lean)
已用固定数据的穷尽证书和标准类的独立非零性证明这一局部交付。
这条特定元素等式不等于已经证明标准 cobar 乘法、表格乘法与实际 Adams 乘法的一般相容性。

Main 的最终目标仍是：

```lean
NonzeroSurvival sphereAdamsData (2, 128) standardH6Square
```

这是 [最终定理](../KIP126/Main/Solution/h6_sq_permanent.lean) 的命题。
其最后一步已通过同一见证接到 Main 的 Propositions 7.8/7.9；这两个命题及部分上游生产
证明仍含 `sorry`，所以最终定理尚未成为独立完成的数学证明。它不属于计算输入。

## 5. 当前目录边界

| 内容 | 归属 |
| --- | --- |
| 通用数学对象、操作与坐标工具 | `Def` |
| 固定数据、参数化解码、解释及局部证书 | `LinProgram` |
| 项目模型、交付范围与关联条件 | 根 `Challenge1` / `Challenge2` 及其子模块 |
| 固定计算认证和与模型的比较证明 | 只在 `Interface/Solution` 保存内部陈述与证明 |
| 完整阶段交付目标 | Def 仅配对 `Nonempty Challenge1`，Interface 仅配对 `Nonempty Challenge2` |
| 唯一阶段存在性假设和显式输入 statement | `Main/Axiom` |
| 同一见证的选择与字段投影 | `Main/Solution/StageInput.lean` |
| 交付后的消费构造与中间推论 | 只在 `Main/Solution` 保存陈述与证明，不设中间 Challenge 镜像 |
| 唯一最终定理 | `Main/Challenge/h6_sq_permanent.lean` 与 `Main/Solution/h6_sq_permanent.lean` 配对 |

`Main/Axiom/LinProgram` 的实现和过时说明均已迁出。
固定 Hopf cofiber、塔与 E₂ 映射也已归消费构造，Mathlib 球谱适配归 Mathlib。
Axiom 内没有解释器、坐标传输、catalogue 构造或提取证明。
纯 selected 元数据保存在独立管线，生成的条件定理保存在消费证明轨道。

现在应分别审查：statement 是否准确、是否绑定同一见证、生产证明是否完成。
前两项已经接入；完整模型构造、文献适用性和计算认证的剩余证明义务继续显式保留。
