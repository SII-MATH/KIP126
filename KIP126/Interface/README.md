# Interface：第一阶段证明接口

> 评估口径：Interface 的规划估算按 issue #138 中 A₀、A(M)、C(M) 的声明覆盖和真实证明覆盖分别判断；它不是由文件数或 `sorry` 数推出的统计。Challenge 的目标陈述本身就是工作成果，其中约定保留的 `sorry` 只说明证明轨状态。

**下层导航**

- [Challenge / Tools](./Challenge/Tools/README.md)：generalized Leibniz、generalized Mahowald 与 page stretch 的目标声明。
- [Solution / Tools](./Solution/Tools/README.md)：上述三项接口的证明轨。
- [Solution / LinProgram](./Solution/LinProgram/README.md)：basis、square detection 与 dimension 的复演/验证结果。

## 1. 预期

Interface 应承载 Main 论文推导所消费的稳定接口：阶段 0 证明不依赖内部 M 的 A₀，阶段 1 证明依赖 M 的 A(M)，并从固定 Lin 原始输出经确定性机制复演、验证 C(M)。每个 Main 阶段 axiom 最终都应有类型完全一致的 Interface theorem；目标是让 Main 只消费冻结声明，不要求 Main agent 顺手补 Interface 的证明。

## 2. 现有

当前非空实现主要有两组。第一组是从 Def 迁来的 Lin 验证结果：基表正确性的冻结 theorem（证明仍有一个 `sorry`）及在该 theorem 条件下构造的实际 basis、`h₆²` 关系检测证书和 227 个归档 chunk、指定次数的维数/候选结果。后两类已有 kernel-checked 实质证明；它们使用 Def 中的 Lin 模型、解析器和 certificate 数据。第二组是 `generalized_leibniz`、`generalized_mahowald`、`page_extension_stretch` 三对 Challenge/Solution；按 issue #138，它们属于 AM7 的 Interface 目标，而不是 Main 的 near-126 结论。三项 Lean 目标声明已经写出，这部分陈述工作不能因为 Challenge 使用 `sorry` 而抹去；但 #133/#134 说明其中两项 statement 本身尚未通过数学验收，page stretch 也受其上游影响。

这仍不是完整 Interface。A₀ 的稳定基础、Adams 塔以下结果、synthetic 文献接口，以及 A(M) 的内部页面 calculus、收敛、乘法、Moss、classical–synthetic coherence 等大多没有形成对应 Challenge/Solution。C(M) 也尚未完成“原始数据 → 确定性翻译 → 内部 M 命题 → Lean 验证”的完整闭环。

## 3. 粗略完成度

> 下列比例仅是面向路线安排的主观估算；唯一精确的替代指标是当前四条 Main 项目公理的 Interface proof replacement 为 **0/4**。

- **冻结接口 statement 覆盖：主观估计约 15%–25%。** issue #138 列出的 14 项 A₀、16 项 A(M)、6 项 C(M) 中，目前只有 Lin 的少量 A₀/计算支撑结果和 AM7 工具有直接目录承载。已有 Challenge 声明按陈述成果计入；#133/#134 属于 statement 正确性缺口，不是因为证明体含 `sorry` 才被扣除。
- **四条现有 Main axiom 的证明替代：0/4。** `standardFoundation`、`standardMilnorCooperations`、`linE2Presentation`、`sphereTable_sound` 尚无可直接替换的、类型严格一致的 Interface theorem。现有 square detection 与 dimension 是独立而有价值的支撑结果，不能虚报成这四条 axiom 已被部分替代；basis 层仍受 `basisTable_correct` 的未完成证明阻断。
- #133 已证明当前 generalized Leibniz 的 `Input` 为空；#134 已给出当前 generalized Mahowald 陈述的反例。修正后的 statement 仍是应交付的 Interface 成果，随后才单独评价证明是否完成。

## 4. 待做

1. 先修 #133 与 #134，并把三项工具绑定到同一个内部 M 的 extension/page/crossing 结构；同步修改 Challenge/Solution 的声明。
2. 为 Main 的每一条阶段 axiom补建同类型 Interface 目标，区分“项目要内部证明”和“最终仍作为显式文献参数”的输入。
3. 把 Lin program 管线补成可复现的四层：固定 raw、确定性 Translate、typed Generated、连接内部 M 的 Interpretation；不能靠 agent 逐条手译。
4. 扩展 C(M) 到条件分支、其他谱、extension、sentinel、带范围的消失/维数/穷尽，同时保留原数据库语义和范围。
5. 建立接口类型漂移 CI；迁移期间没有镜像的 axiom、反向 import 和未绑定内部 M 的 statement 必须出现在清单中。

## 5. 建议步骤

1. 以现有 Lin basis/detection/dimension 为第一条可验证纵切面，确认它们对 Def 的依赖纯净并补对应 Challenge 入口。
2. 冻结 Main 当前实际消费的最小 C(M) 类型，建立 Main axiom 与 Interface theorem 的 `#check`/定义相等回归。
3. 修正 generalized Leibniz，再修 generalized Mahowald，最后修 page stretch；三者均增加可构造的论文次数实例回归。
4. 按消费顺序补内部页面/态射/乘法/收敛，再补 synthetic 与 Moss 接口。
5. 每完成一个 Interface 结果，就在单独 PR 中替换对应 Main axiom 依赖锥并运行 `#print axioms`，不等待全部 Interface 一次完成。
