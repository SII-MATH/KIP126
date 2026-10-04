# Challenge2：统一数学输入合同

[Challenge2.lean](Challenge2.lean) 定义 Interface 向 Main 交付的完整结构。结构本身规定构造目标，不再附加同型的占位 theorem。

合同包含 foundation、同一模型上的文献、计算、对象绑定及内部应用。数学命题保留条件；来源及 locator 独立记录于 [external-inputs.json](../../../docs/external-inputs.json)，不进入 Lean 类型。

实际构造归 [Interface/Solution](../Solution/README.md)。原 Challenge1 的球塔完成/收敛义务归 `FoundationInputs.sphereApplicability`；内部路线适配与球塔分离性归 `InternalApplications`。生产证明不能消费 Main 的 Challenge2 公理，也不能把本文新工具或最终结论加入输入来回避证明。
