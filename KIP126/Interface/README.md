# Interface：第一阶段证明接口

> 评估口径：Interface 消费 issue #138 中的 A₀，产出 A(M)、C(M)。基础输入的上游构造／证明进度与本阶段输出进度分别记录。Challenge 的目标陈述本身就是工作成果，其中约定保留的 `sorry` 只说明证明轨状态。

**下层导航**

- [Axiom](./Axiom/README.md)：以 `Nonempty Challenge1` 接收 Def 的一个完整见证。
- [Challenge2](./Challenge/Challenge2.lean)：Interface 交付给 Main 的共享包目标。
- [Challenge / Tools](./Challenge/Tools/README.md)：generalized Leibniz、generalized Mahowald 与 page stretch 的目标声明。
- [Solution / Tools](./Solution/Tools/README.md)：上述三项接口的证明轨。
- [Solution / LinProgram](./Solution/LinProgram/README.md)：basis、square detection 与 dimension 的复演/验证结果。

## 1. 预期

Interface 在共同数学对象和 Challenge 1 基础见证上，构造 Main 所消费的 Challenge 2。Def 与 Interface 分别证明 `Nonempty Challenge1`、`Nonempty Challenge2`；下一阶段的 Axiom 直接使用同一个共享类型，因此无需复制长陈述或另建类型对齐 CI。Lin 输出经确定性机制形成待验证的陈述；原始记录不自动成为数学真实性假设。

## 2. 现有

基础输入现在由 `Axiom/Challenge1.lean` 的唯一存在性 axiom 提供；`standardFoundation` 和 `standardMilnorCooperations` 都从同一个见证投影。对应的 Def Challenge/Solution theorem 已建立，证明仍待完成。Interface 的输出由根目录 `Challenge2` 结构统一描述，Challenge/Solution 均陈述 `Nonempty Challenge2`；Main 通过同型 axiom 消费它。

现有证明工作主要有两组。第一组是从 Def 迁来的 Lin 验证结果：基表正确性的冻结 theorem（证明仍有一个 `sorry`）及在该 theorem 条件下构造的实际 basis、`h₆²` 关系检测证书和 227 个归档 chunk、指定次数的维数/候选结果。后两类已有 kernel-checked 实质证明；它们使用 Def 中的 Lin 模型、解析器和 certificate 数据。第二组是 `generalized_leibniz`、`generalized_mahowald`、`page_extension_stretch` 三对 Challenge/Solution；按 issue #138，它们属于 AM7 的 Interface 目标，而不是 Main 的 near-126 结论。三项 Lean 目标声明已经写出，这部分陈述工作不能因为 Challenge 使用 `sorry` 而抹去；但 #133/#134 说明其中两项 statement 本身尚未通过数学验收，page stretch 也受其上游影响。

这仍不是完整 Interface。两道边界的共享陈述已经固定，但 Challenge 1、Challenge 2 的 Solution theorem 都未证明。A(M) 的内部页面 calculus、收敛、乘法、Moss、classical–synthetic coherence 等大多还没有进入 Challenge 2；C(M) 也尚未完成“原始数据 → 确定性翻译 → 内部 M 命题 → Lean 验证”的完整闭环。

## 3. 粗略完成度

> 尚无足够可靠的分母估算整个第一阶段的完成百分比。以下只报告现有声明的可核查状态，不混合基础输入与本阶段产出。

- **Challenge 1 陈述已对齐；完整构造：0/1。** Def theorem 与 Interface axiom 都是 `Nonempty Challenge1`，详见 [Axiom](Axiom/README.md)。
- **输出陈述：三组 Tools 的 Challenge/Solution 已存在，另有 Lin basis/detection/dimension 的现有实现。** Challenge 声明按陈述成果计入；#133/#134 属于 statement 正确性缺口，不是因为证明体含 `sorry` 才被扣除。
- **Challenge 2 陈述已对齐；完整构造：0/1。** Lin presentation 与微分表真实性属于同一个见证，Interface theorem 与 Main axiom 均为 `Nonempty Challenge2`。现有 square detection 与 dimension 是有价值的支撑结果；basis 层仍受 `basisTable_correct` 的未完成证明阻断。
- #133 已证明当前 generalized Leibniz 的 `Input` 为空；#134 已给出当前 generalized Mahowald 陈述的反例。修正后的 statement 仍是应交付的 Interface 成果，随后才单独评价证明是否完成。

## 4. 待做

1. 先修 #133 与 #134，并把三项工具绑定到同一个内部 M 的 extension/page/crossing 结构；同步修改 Challenge/Solution 的声明。
2. 完成 `Def/Solution/Challenge1.lean` 和 `Interface/Solution/Challenge2.lean`，保留数据构造义务，并区分项目内部证明与最终显式文献参数。
3. Lin program 的 Raw、Translate、Generated、Interpretation 已归位并通过本地重生成检查；下一步补数学验证与 CI 接入，不能靠 agent 逐条手译。
4. 扩展 C(M) 到条件分支、其他谱、extension、sentinel、带范围的消失/维数/穷尽，同时保留原数据库语义和范围。
5. 审核两个共享 Challenge 结构的字段；反向 import 和未绑定内部 M 的 statement 必须继续出现在清单中。

## 5. 建议步骤

1. 以现有 Lin basis/detection/dimension 为第一条可验证纵切面，区分已证公共支撑、Challenge 1 输入和 Challenge 2 输出。
2. 审核 Challenge 2 是否恰好覆盖 Main 当前实际消费的最小 C(M)，所有依赖字段都引用同一 presentation。
3. 修正 generalized Leibniz，再修 generalized Mahowald，最后修 page stretch；三者均增加可构造的论文次数实例回归。
4. 按消费顺序补内部页面/态射/乘法/收敛，再补 synthetic 与 Moss 接口。
5. 每完成一个 Interface 结果，就在单独 PR 中替换对应 Main axiom 依赖锥并运行 `#print axioms`，不等待全部 Interface 一次完成。
