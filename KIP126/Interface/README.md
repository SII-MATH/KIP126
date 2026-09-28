# Interface：计算认证与通用接口证明

> 评估口径：以 issue #138 正文第 1–6 节为准。Interface 验证固定程序输出的确定性解释 C(M) 及相关比较，可使用必要内部辅助结论；A(M) 仅指其他论文的准确外部结果。两阶段按需共同发展 Def 的通用数学性质，陈述、模型绑定和证明进度分别记录。

## 当前边界

- [Axiom](Axiom/README.md) 通过一个 `Nonempty Challenge1` 开发期输入选定基础与 Milnor 数据；该基础包不再要求 CSV 基正确性。
- [Challenge](Challenge/README.md) 与 [Solution](Solution/README.md) 保留阶段交付的目标／证明配对。
- [Challenge2](../Challenge2.lean) 当前实际包含 `linBasis`、`presentation`、`sphereTable_sound`。三者由 Main 的同一个见证消费；完整规划清单仍未全部装入见证。
- [LinProgram](Solution/LinProgram/README.md) 负责固定基表认证、平方检测及指定次数的维数计算。基认证生产证明仍为 `sorry`，其消费者不回流到生产者。

## 本文新工具的归属

广义 Leibniz、广义 Mahowald 和有限 page stretching 的命题已移至 [Main/Solution/Tools](../Main/Solution/Tools/README.md)，不属于前人 A(M)，也不是 Challenge2 字段。旧错误 Tools theorem 继续退休。对象、extension/crossing 谓词留在 Def；已证明的通用页面、解纤维、限制和条件性相容塔接口继续在原处复用。

计算验证如果使用本文规则，需要这些规则独立完成的证明；不能借待认证的同一计算结果产生循环依赖。

## 已有工作与待办

固定 CSV 的基认证是本阶段辅助 theorem，证明仍为 `sorry`；它已迁出 Challenge1。`SphereBasisInterface` 通过同一个 presentation 交付实际 E₂ 坐标与 CSV 值相容性，Main 从 Challenge2 消费。另有 `h₆²` 关系检测证书和 227 个归档 chunk、指定次数的维数/候选结果；这些支撑结果保留既有证明和语义。

广义 Leibniz、广义 Mahowald 与有限 stretching 是本文新工具，其当前路线陈述位于 `Main/Solution/Tools`，使用 Def 中同一模型的实际 extensions、crossings 和三角。相关证明仍待完成；不能作为 A(M) 字段。Interface 若使用这些规则认证计算，必须依赖独立证明并检查不存在循环。

这仍不是完整 Interface。两道边界的 Solution theorem 都未证明，C(M) 也尚未完成全部原始数据到内部数学真实性的验证。内部页面性质、收敛、乘法和项目比较不能统称 A(M)，也不要求仅因列在历史清单中就加入总包。

## 3. 粗略完成度

> 尚无足够可靠的分母估算整个第一阶段的完成百分比。以下只报告现有声明的可核查状态，不混合基础输入与本阶段产出。

- **Challenge 1 陈述已对齐；完整构造：0/1。** Def theorem 与 Interface axiom 都是 `Nonempty Challenge1`，详见 [Axiom](Axiom/README.md)。
- **AM7 是本文中间结论。** 两个实际 law 及有限 stretching 陈述已有；具体条件和证明缺口以根 Challenge2 为准。路线陈述在 Main/Solution/Tools；跨阶段复用必须保持证明依赖无环。
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
