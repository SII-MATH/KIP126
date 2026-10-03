# Challenge2：模型上的交付合同

[Challenge2.lean](Challenge2.lean) 定义 Interface 向 Main 交付的完整合同，并声明目标 `challenge2 : Nonempty KIP126.Challenge2 := by sorry`。根 `KIP126/Challenge2.lean` 仅导出这里的内容。

合同区分同一模型上的 A(M)、C(M)、对象绑定和内部比较责任。来源定理保留条件；完成对象到路线对象的运输、有限数据到论文消费事实的推导不冒充外部结果。原始文献及精确来源台账在 `Source/` 和 `docs/challenge2-route-sources.json`。

实际生产证明归 [Interface/Solution](../Solution/README.md)。本文新工具由 Main/Solution 独立证明，计算认证可使用这些证明，但不能反向消费 Main 的 Challenge2 假设或最终结论。任何生产证明都不能借用本目录的目标占位证明。
