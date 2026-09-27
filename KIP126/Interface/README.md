# Interface：第一阶段证明接口

> 评估口径：Interface 消费 issue #138 中的 A₀，产出 A(M)、C(M)。基础输入的上游构造／证明进度与本阶段输出进度分别记录。Challenge 的目标陈述本身就是工作成果，其中约定保留的 `sorry` 只说明证明轨状态。

**下层导航**

- [Axiom](./Axiom/README.md)：第 0 阶段的产出，作为第 1 阶段的基础输入；目前有两组输入，已在 Lean 中逐字段展开。
- [Challenge / Tools](./Challenge/Tools/README.md)：generalized Leibniz、generalized Mahowald 与 page stretch 的目标声明。
- [Solution / Tools](./Solution/Tools/README.md)：上述三项接口的证明轨。
- [Solution / LinProgram](./Solution/LinProgram/README.md)：basis、square detection 与 dimension 的复演/验证结果。

## 1. 预期

Interface 在共同数学对象和不使用内部 M 的基础输入 A₀ 上，证明 Main 所消费的 A(M)、C(M)。第 0 阶段负责 A₀ 的构造／证明，第一阶段通过 `Interface/Axiom` 使用其冻结声明；第一阶段产出在 `Interface/Challenge`、`Interface/Solution` 中陈述和证明，第二阶段通过 `Main/Axiom` 使用对应接口。两道边界都要对齐完整类型，使各阶段 agent 专注自己的证明任务。Lin 输出经确定性机制形成待验证的陈述；原始记录不自动成为数学真实性假设。

## 2. 现有

基础输入已有 `Axiom/StandardFoundation.lean` 和 `Axiom/StandardMilnor.lean`，保存从 Main 迁入的两组基础输入，现已拆为 20 条显式字段声明，并用 `def` 组装旧接口。它们的完整类型不使用内部 M；上游构造尚未完成。

现有证明工作主要有两组。第一组是从 Def 迁来的 Lin 验证结果：基表正确性的冻结 theorem（证明仍有一个 `sorry`）及在该 theorem 条件下构造的实际 basis、`h₆²` 关系检测证书和 227 个归档 chunk、指定次数的维数/候选结果。后两类已有 kernel-checked 实质证明；它们使用 Def 中的 Lin 模型、解析器和 certificate 数据。第二组是 `generalized_leibniz`、`generalized_mahowald`、`page_extension_stretch` 三对 Challenge/Solution；按 issue #138，它们属于 AM7 的 Interface 目标，而不是 Main 的 near-126 结论。三项 Lean 目标声明已经写出，这部分陈述工作不能因为 Challenge 使用 `sorry` 而抹去；但 #133/#134 说明其中两项 statement 本身尚未通过数学验收，page stretch 也受其上游影响。

这仍不是完整 Interface。A₀ 的上游构造／证明与第一阶段消费端尚未形成完整对齐；A(M) 的内部页面 calculus、收敛、乘法、Moss、classical–synthetic coherence 等大多没有形成对应 Challenge/Solution。C(M) 也尚未完成“原始数据 → 确定性翻译 → 内部 M 命题 → Lean 验证”的完整闭环。

## 3. 粗略完成度

> 尚无足够可靠的分母估算整个第一阶段的完成百分比。以下只报告现有声明的可核查状态，不混合基础输入与本阶段产出。

- **基础输入归位：2/2；对应完整构造替代：0/2。** 详见 [Axiom](Axiom/README.md)。其余规划基础接口仍待核对消费端与声明。
- **输出陈述：三组 Tools 的 Challenge/Solution 已存在，另有 Lin basis/detection/dimension 的现有实现。** Challenge 声明按陈述成果计入；#133/#134 属于 statement 正确性缺口，不是因为证明体含 `sorry` 才被扣除。
- **两组现有 Main 输入的完整证明替代：0/2。** `linE2Presentation`、`sphereTable_sound` 尚无可直接替换的、类型严格一致的 Interface 交付。现有 square detection 与 dimension 是独立而有价值的支撑结果；basis 层仍受 `basisTable_correct` 的未完成证明阻断。`linE2Presentation` 现由三条字段输入组装；其叶子数据和性质仍需上游构造／证明，不能用非 Prop 类型的 Lean theorem 代替。
- #133 已证明当前 generalized Leibniz 的 `Input` 为空；#134 已给出当前 generalized Mahowald 陈述的反例。修正后的 statement 仍是应交付的 Interface 成果，随后才单独评价证明是否完成。

## 4. 待做

1. 先修 #133 与 #134，并把三项工具绑定到同一个内部 M 的 extension/page/crossing 结构；同步修改 Challenge/Solution 的声明。
2. 分别对齐第 0 阶段与 Interface/Axiom、Interface 产出与 Main/Axiom；保留既有数据接口的构造义务，区分“项目要内部证明”和“最终仍作为显式文献参数”的输入。
3. Lin program 的 Raw、Translate、Generated、Interpretation 已归位并通过本地重生成检查；下一步补数学验证与 CI 接入，不能靠 agent 逐条手译。
4. 扩展 C(M) 到条件分支、其他谱、extension、sentinel、带范围的消失/维数/穷尽，同时保留原数据库语义和范围。
5. 建立接口类型漂移 CI；迁移期间没有镜像的 axiom、反向 import 和未绑定内部 M 的 statement 必须出现在清单中。

## 5. 建议步骤

1. 以现有 Lin basis/detection/dimension 为第一条可验证纵切面，区分其已证公共支撑、未证基础输入和阶段输出，再补缺失的阶段镜像。
2. 冻结 Main 当前实际消费的最小 C(M) 类型，建立 Main axiom 与 Interface theorem 的 `#check`/定义相等回归。
3. 修正 generalized Leibniz，再修 generalized Mahowald，最后修 page stretch；三者均增加可构造的论文次数实例回归。
4. 按消费顺序补内部页面/态射/乘法/收敛，再补 synthetic 与 Moss 接口。
5. 每完成一个 Interface 结果，就在单独 PR 中替换对应 Main axiom 依赖锥并运行 `#print axioms`，不等待全部 Interface 一次完成。
