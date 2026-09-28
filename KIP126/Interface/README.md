# Interface：计算认证与通用接口证明

本阶段在共同数学对象及 Challenge1 基础上交付 Challenge2。固定计算数据的认证属于 C(M)；前人结果 A(M) 与项目通用基础推论按来源和证明责任区分，不能仅因使用内部谱序列就混为同一类。

## 当前边界

- [Axiom](Axiom/README.md) 通过一个 `Nonempty Challenge1` 开发期输入选定基础与 Milnor 数据；该基础包不再要求 CSV 基正确性。
- [Challenge](Challenge/README.md) 与 [Solution](Solution/README.md) 保留阶段交付的目标／证明配对。
- [Challenge2](../Challenge2.lean) 当前实际包含 `linBasis`、`presentation`、`sphereTable_sound`。三者由 Main 的同一个见证消费；完整规划清单仍未全部装入见证。
- [LinProgram](Solution/LinProgram/README.md) 负责固定基表认证、平方检测及指定次数的维数计算。基认证生产证明仍为 `sorry`，其消费者不回流到生产者。

## 本文新工具的归属

广义 Leibniz、广义 Mahowald 和有限 page stretching 的命题已移至 [Main/Solution/Tools](../Main/Solution/Tools/README.md)，不属于前人 A(M)，也不是 Challenge2 字段。旧错误 Tools theorem 继续退休。对象、extension/crossing 谓词留在 Def；已证明的通用页面、解纤维、限制和条件性相容塔接口继续在原处复用。

计算验证如果使用本文规则，需要这些规则独立完成的证明；不能借待认证的同一计算结果产生循环依赖。

## 已有工作与待办

已有页面、cobar、自然性及条件性代表元解接口，另有 Lin 平方检测和维数证明。两道总包的存在性生产证明仍未完成；固定基认证也仍未完成。原始数据、哈希和成功解析不能替代其数学真实性证明。

下一步认证 `linBasis` 与 presentation／差分表，扩展条件分支、其他谱、extension、sentinel 及带范围的消失与穷尽解释；同时按 Main 的实际消费需求补齐通用数学比较。本文工具的证明任务由 Main 负责，模型条件须明确后再证明。
