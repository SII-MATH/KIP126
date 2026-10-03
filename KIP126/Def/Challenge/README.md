# Def Challenge：唯一基础交付目标

本目录只保留 [Challenge1.lean](Challenge1.lean) 中的
`theorem challenge1 : Nonempty KIP126.Challenge1`，正文按约定为 `by sorry`。
根 [Challenge1](../../Challenge1.lean) 定义共享见证类型，并不是另一条目标。

对应构造由 [Solution/Challenge1.lean](../Solution/Challenge1.lean) 承担；其完整
类型与这里一致。实际见证仍待构造，陈述存在和编译通过都不表示证明完成。

FoundationConsequences、Toda、synthetic localization/completion 等内部目标的
陈述和证明只在 [Def/Solution](../Solution/README.md) 维护，不再建立 Challenge
镜像。公共数学组件仍按原 Data/Predicates/Proofs 职责组织。本轮不修改它们的
数学内容，也不增加模型字段或独立公理。

修改根交付规格时同步核对唯一目标与 Solution 的完整类型。生产证明不能借用
Challenge 占位，也不能依赖自己要解除的 Interface 阶段消费公理。
