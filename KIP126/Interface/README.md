# Interface：第一阶段证明接口

> 评估口径：Interface 消费 issue #138 中的 A₀，产出 A(M)、C(M)。基础输入的上游构造／证明进度与本阶段输出进度分别记录。Challenge 的目标陈述本身就是工作成果，其中约定保留的 `sorry` 只说明证明轨状态。

**下层导航**

- [Axiom](./Axiom/README.md)：以 `Nonempty Challenge1` 接收 Def 的一个完整见证。
- [Challenge2](./Challenge/Challenge2.lean)：Interface 交付给 Main 的共享包目标。
- [Challenge / Tools](./Challenge/Tools/README.md)：旧工具声明的退休记录及准确接口位置。
- [Solution / Tools](./Solution/Tools/README.md)：工具规则的剩余证明与模型绑定义务。
- [Solution / LinProgram](./Solution/LinProgram/README.md)：basis、square detection 与 dimension 的复演/验证结果。

## 1. 预期

Interface 在共同数学对象和 Challenge 1 基础见证上，构造 Main 所消费的 Challenge 2。Def 与 Interface 分别证明 `Nonempty Challenge1`、`Nonempty Challenge2`；下一阶段的 Axiom 直接使用同一个共享类型，因此无需复制长陈述或另建类型对齐 CI。Lin 输出经确定性机制形成待验证的陈述；原始记录不自动成为数学真实性假设。

## 2. 现有

基础输入现在由 `Axiom/Challenge1.lean` 的唯一存在性 axiom 提供；`standardFoundation` 和 `standardMilnorCooperations` 都从同一个见证投影。对应的 Def Challenge/Solution theorem 已建立，证明仍待完成。Interface 的输出由根目录 `Challenge2` 结构统一描述，Challenge/Solution 均陈述 `Nonempty Challenge2`；Main 通过同型 axiom 消费它。

现有 Lin 验证结果包括基表正确性的冻结 theorem（证明仍有一个 `sorry`），以及在该 theorem 条件下构造的实际 basis、`h₆²` 关系检测证书和 227 个归档 chunk、指定次数的维数/候选结果。后两类已有 kernel-checked 实质证明；它们使用 Def 中的 Lin 模型、解析器和 certificate 数据。

AM7 的旧三对 Tools 声明已同步删除：#133/#134 暴露了次数及 crossing 条件错误，旧 page stretch 也没有表达实际跨页结论；退休原因是陈述错误，不是占位证明的存在。[根 Challenge2](../Challenge2.lean) 现在定义 `GeneralizedLeibnizLaw` 与 `GeneralizedMahowaldLaw`，使用实际 Adams 页面、微分、同一 normalized page family 的 extensions/crossings；Mahowald 另以真实塔／层的 suspension comparison 关联代表元。这两条是待交付 law 的精确类型，尚未证明，不声称任意比较家族满足它们。Stretching 仍需实际代表元解族、限制映射及无穷相容条件，未用自由操作或无关结论补位。

这仍不是完整 Interface。两道边界的共享陈述已经固定，但 Challenge 1、Challenge 2 的 Solution theorem 都未证明。A(M) 的内部页面 calculus、收敛、乘法、Moss、classical–synthetic coherence 等大多还没有进入 Challenge 2；C(M) 也尚未完成“原始数据 → 确定性翻译 → 内部 M 命题 → Lean 验证”的完整闭环。

## 3. 粗略完成度

> 尚无足够可靠的分母估算整个第一阶段的完成百分比。以下只报告现有声明的可核查状态，不混合基础输入与本阶段产出。

- **Challenge 1 陈述已对齐；完整构造：0/1。** Def theorem 与 Interface axiom 都是 `Nonempty Challenge1`，详见 [Axiom](Axiom/README.md)。
- **AM7 陈述：两个实际 law 已定义，stretching 的完整类型仍待真实解族前置。** 旧六个 Tools 文件已退休；law 的定义与证明完成分别计量。
- **Challenge 2 陈述已对齐；完整构造：0/1。** Lin presentation 与微分表真实性属于同一个见证，Interface theorem 与 Main axiom 均为 `Nonempty Challenge2`。现有 square detection 与 dimension 是有价值的支撑结果；basis 层仍受 `basisTable_correct` 的未完成证明阻断。
- #133 的空 `Input` 与 #134 的错误 Mahowald 陈述已从 canonical 源码移除；准确 law 的模型绑定及证明仍是待交付工作。

## 4. 待做

1. 从同一实际模型的 ν、δ、ρ、λ 相容图证明两个 AM7 law，并构造 Mahowald 所需的塔 suspension comparison；补全 stretching 的实际解族前置后再建立准确配对目标。
2. 完成 `Def/Solution/Challenge1.lean` 和 `Interface/Solution/Challenge2.lean`，保留数据构造义务，并区分项目内部证明与最终显式文献参数。
3. Lin program 的 Raw、Translate、Generated、Interpretation 已归位并通过本地重生成检查；下一步补数学验证与 CI 接入，不能靠 agent 逐条手译。
4. 扩展 C(M) 到条件分支、其他谱、extension、sentinel、带范围的消失/维数/穷尽，同时保留原数据库语义和范围。
5. 审核两个共享 Challenge 结构的字段；反向 import 和未绑定内部 M 的 statement 必须继续出现在清单中。

## 5. 建议步骤

1. 以现有 Lin basis/detection/dimension 为第一条可验证纵切面，区分已证公共支撑、Challenge 1 输入和 Challenge 2 输出。
2. 审核 Challenge 2 是否恰好覆盖 Main 当前实际消费的最小 C(M)，所有依赖字段都引用同一 presentation。
3. 按 generalized Leibniz、generalized Mahowald、page stretch 的依赖顺序补模型绑定与证明，以论文次数实例核对最终类型。
4. 按消费顺序补内部页面/态射/乘法/收敛，再补 synthetic 与 Moss 接口。
5. 每完成一个 Interface 结果，就在单独 PR 中替换对应 Main axiom 依赖锥并运行 `#print axioms`，不等待全部 Interface 一次完成。
