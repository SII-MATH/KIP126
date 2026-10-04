# Interface：统一输入的生产证明

本目录从 Def 的固定实现和明确的上游输入构造 [Challenge2](Challenge/Challenge2.lean)。`foundation` 保留原 Challenge1 的球塔完成与收敛义务；`LiteratureInterface`、`ComputationInterface` 分别陈述文献与计算输入，`ModelBindings` 和 `InternalApplications` 保留模型比较与内部适配责任。

- [Challenge](Challenge/README.md) 定义完整合同；结构本身就是构造目标。
- [Solution](Solution/README.md) 构造直接的 Challenge2 值，不消费 Main 的公理。
- [LinProgram 证明](Solution/LinProgram/README.md) 将固定数据认证运输到同一模型。
- 独立 [LinProgram 管线](../LinProgram/README.md) 保存原始数据、生成数据、数学解释和局部证书。

Lean 字段只陈述数学，来源与 locator 由 [统一清单](../../docs/external-inputs.json) 管理。没有独立 Challenge1 阶段、Interface 公理、implementation 相等运输或第二套来源 registry。

foundation、基认证、乘法、staircase、来源适用性及完整见证仍有未完成证明。已有局部证书不表示实际模型认证完成。广义 Leibniz、广义 Mahowald 和 stretching 仍是 Main 的独立证明义务；认证使用这些工具时须避免循环依赖。

最终以完整 Challenge2 构造替换 Main 的唯一直接 witness 公理；目录名 Solution 和编译成功都不表示数学证明完成。
