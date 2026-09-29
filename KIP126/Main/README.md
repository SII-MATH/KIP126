# Main：论文推导与最终目标

Main 使用同一数学模型上的文献结果 A(M) 和计算结果 C(M)，完成论文自身的推导并证明 T(M)。项目通用对象与谓词由 Def 定义。本文新证明的中间结论属于推导任务，不能因为尚未证明就列为外部事实。

## 目录职责

- [Axiom](Axiom/README.md)：文献来源、模型上的计算消费适配和明确披露的阶段输入；固定程序工件见独立 [LinProgram](../LinProgram/README.md)。
- [Challenge](Challenge/README.md)：只保留 Final 的最终目标陈述。
- [Solution](Solution/README.md)：按 Tools、ChoiceIndependence、DifferentialReduction、ExtensionObstruction、Computation 和 Final 组织中间推导及最终证明。

原 `Main/Challenge/Near126` 的五个文件没有定义 M 的新对象或给出原始外部输入，均为中间命题。用户确认将其与已有 Solution 合并；两个 Near126 目录已移除。Solution 的历史公开声明名保留，Blueprint 现在引用这些 Solution 声明，节点状态仍保持未完成。

## 当前实现与限制

标准最终目标为 `NonzeroSurvival sphereAdamsData (2, 128) standardH6Square`，要求共同 Z∞ 代表及非零 E∞ 像。标准元素来自同一内部塔上的 Milnor cocycle，定义和目标类型不使用 C(M)。Final 只保留这一条命题及其配对 Solution，证明仍为 `sorry`。计算比较层保留两标签在同一 E₂ 上的等式供证明使用，不再设计算版最终定理。

Main 的阶段存在性输入仍为 `challenge2 : Nonempty Challenge2`。其中 `LiteratureInterface` 与 `ComputationInterface` 分开，只有计算部分称为 C(M)；共享 `ModelBindings` 及同一个 Challenge1 模型约束两者。计算部分使用同一 presentation，交付实际 E₂ 坐标、平方非零与穷尽结论，以及固定微分和 staircase 的解释。`Main/Solution/Computation` 从该接口消费，其依赖链不再导入 Interface/Solution；Main 其他历史消费链的直接导入仍待整理。两道边界的生产证明仍未完成；计划清单并不等于全部条目已装入实际见证。

程序解释已有固定 E₂ 数据和 10,907 条闭合有限页球谱微分等式；等式不自动提供后续页非零。条件树、其他谱、extension、sentinel 和候选穷尽仍须逐项核验及接入。手写 D/S/P/V 需求接口不自动成为程序认证结果。

BJM/BX 的选择传输保留已有条件证明。其余已移动的中间接口仍含 `sorry`，且 `Near126Adams`、`ChoiceConditions` 中的自由谓词尚未绑定实际微分和检测条件，部分陈述在现有一般性下不成立。此次是归位与去重，不是数学修复或证明完成。

## 下一步

1. 修正中间命题的数学对象、条件和次数，再冻结准确陈述。
2. 将消费端每项需求归为前人结果、经过来源核对的计算事实或本文推导，不把中间结论塞进输入。
3. 完成选择无关性、微分归约、Toda／扩张及最终矛盾的依赖链。
4. 证明最终内部目标；相关构造、公理和 `sorry` 的证明债务分别验收。

阶段分类修订意见见 [#138 评论](https://github.com/SII-MATH/KIP126/issues/138#issuecomment-5862837307)。本文新工具已移至 Main/Solution/Tools；CSV 基认证是 Interface 的辅助认证，实际 E₂ 坐标由 Challenge2 的计算部分交付。标准内部元素的封装及 CSV 识别已经接入；完整 M/A/C 接口审核仍是后续工作。
