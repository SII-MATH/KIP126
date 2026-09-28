# Interface：第一阶段证明接口

> 评估口径：以 issue #138 正文第 1–6 节为准。Interface 验证固定程序输出的确定性解释 C(M) 及相关比较，可使用必要内部辅助结论；A(M) 仅指其他论文的准确外部结果。两阶段按需共同发展 Def 的通用数学性质，陈述、模型绑定和证明进度分别记录。

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

固定 CSV 的基认证是本阶段辅助 theorem，证明仍为 `sorry`；它已迁出 Challenge1。`SphereBasisInterface` 通过同一个 presentation 交付实际 E₂ 坐标与 CSV 值相容性，Main 从 Challenge2 消费。另有 `h₆²` 关系检测证书和 227 个归档 chunk、指定次数的维数/候选结果；这些支撑结果保留既有证明和语义。

AM7 的旧三对 Tools 声明已同步删除：#133/#134 暴露了次数及 crossing 条件错误，旧 page stretch 也没有表达实际跨页结论；退休原因是陈述错误，不是占位证明的存在。[根 Challenge2](../Challenge2.lean) 现在定义 `GeneralizedLeibnizLaw` 与 `GeneralizedMahowaldLaw`，使用实际 Adams 页面、微分、同一 normalized page family 的 extensions/crossings；Mahowald 另以真实塔／层的 suspension comparison 关联代表元。这两条是待证明的本文中间命题，不声称任意比较家族满足它们。Stretching 的实际解族、限制及障碍类型已定义，模型比较和未截断恢复仍待完成；精确范围见根 Challenge2 清单。本轮不将这些中间工具新增为外部输入或决定其最终证明位置。

这仍不是完整 Interface。两道边界的 Solution theorem 都未证明，C(M) 也尚未完成全部原始数据到内部数学真实性的验证。内部页面性质、收敛、乘法和项目比较不能统称 A(M)，也不要求仅因列在历史清单中就加入总包。

## 3. 粗略完成度

> 尚无足够可靠的分母估算整个第一阶段的完成百分比。以下只报告现有声明的可核查状态，不混合基础输入与本阶段产出。

- **Challenge 1 陈述已对齐；完整构造：0/1。** Def theorem 与 Interface axiom 都是 `Nonempty Challenge1`，详见 [Axiom](Axiom/README.md)。
- **AM7 是本文中间结论。** 两个实际 law 及有限 stretching 陈述已有；具体条件和证明缺口以根 Challenge2 为准。本轮不决定它们的最终证明位置或两阶段复用方式。
- **Challenge 2 陈述已对齐；完整构造：0/1。** Lin presentation 与微分表真实性属于同一个见证，Interface theorem 与 Main axiom 均为 `Nonempty Challenge2`。现有 square detection 与 dimension 是有价值的支撑结果；basis 层仍受 `basisTable_correct` 的未完成证明阻断。
- #133 的空 `Input` 与 #134 的错误 Mahowald 陈述已从 canonical 源码移除；准确 law 的模型绑定及证明仍是待交付工作。

## 4. 待做

1. 完成固定 CSV 认证及各类程序输出的解释／验证；按实际消费需求使用内部辅助结论，保留模型相容与文献前提。
2. 完成 `Def/Solution/Challenge1.lean` 和 `Interface/Solution/Challenge2.lean`，保留数据构造义务，并区分项目内部证明与最终显式文献参数。
3. Lin program 的 Raw、Translate、Generated、Interpretation 已归位并通过本地重生成检查；下一步补数学验证与 CI 接入，不能靠 agent 逐条手译。
4. 扩展 C(M) 到条件分支、其他谱、extension、sentinel、带范围的消失/维数/穷尽，同时保留原数据库语义和范围。
5. 审核两个共享 Challenge 结构的字段；反向 import 和未绑定内部 M 的 statement 必须继续出现在清单中。

## 5. 建议步骤

1. 以现有 Lin basis/detection/dimension 为第一条可验证纵切面，区分已证公共支撑、Challenge 1 输入和 Challenge 2 输出。
2. 审核 Challenge 2 是否恰好覆盖 Main 当前实际消费的最小 C(M)，所有依赖字段都引用同一 presentation。
3. 通用定义与证明按需在 Def 开发；广义规则等本文中间结果的证明分工与复用不作为本轮接口冻结的前置条件。
4. 按消费顺序补内部页面/态射/乘法/收敛，再补 synthetic 与 Moss 接口。
5. 每完成一个 Interface 结果，就在单独 PR 中替换对应 Main axiom 依赖锥并运行 `#print axioms`，不等待全部 Interface 一次完成。
